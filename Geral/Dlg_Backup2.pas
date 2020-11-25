unit Dlg_Backup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel,
  TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel,
  dxfProgressBar, backup, dxCntner, dxExEdtr, dxEdLib,
  TS_CheckBox, IBServices, Psock, TS_RadioButton, TS_GroupBox,
  IBDatabase, Db, TS_ModuloStyle, Menus, TS_PopupMenu, dxEditor, TS_Memo,
  BTOdeum, NMFTP, Placemnt, CheckLst, TS_CheckListBox, TS_Shape, ComCtrls,
  TS_PageControl;

type
  TDlgBackup = class(TFrmModeloCadastros)
    BackupZIP: TBackupFile;
    SaveDialog: TSaveDialog;
    ConfigService: TIBConfigService;
    DB: TIBDatabase;
    IBTransaction1: TIBTransaction;
    msGeral: TTS_ModuloStyle;
    esGeral: TdxEditStyleController;
    IBBackup: TIBBackupService;
    pgAssistente: TTS_PageControl;
    tsIntroducao: TTS_TabSheet;
    tsTipo: TTS_TabSheet;
    dxfLabel2: TdxfLabel;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    tsArquivos: TTS_TabSheet;
    tsAdicionais: TTS_TabSheet;
    tsLocal: TTS_TabSheet;
    TS_Shape2: TTS_Shape;
    TS_Shape3: TTS_Shape;
    lbUltimoBackup: TTS_Label;
    Image1: TImage;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    dxfLabel3: TdxfLabel;
    TS_Shape4: TTS_Shape;
    TS_Shape5: TTS_Shape;
    rgBackup: TTS_RadioButton;
    rgAgendar: TTS_RadioButton;
    dxfLabel4: TdxfLabel;
    TS_Shape6: TTS_Shape;
    TS_Shape7: TTS_Shape;
    cklEmpresas: TTS_CheckListBox;
    dxfLabel5: TdxfLabel;
    TS_Shape1: TTS_Shape;
    TS_Shape8: TTS_Shape;
    ckEtiquetas: TTS_CheckBox;
    ckTemplatesRelatorios: TTS_CheckBox;
    ckTextosDiversos: TTS_CheckBox;
    dxfLabel6: TdxfLabel;
    TS_Shape9: TTS_Shape;
    TS_Shape10: TTS_Shape;
    ckbAutomatico: TTS_RadioButton;
    ckbOutroLocal: TTS_RadioButton;
    cbkEnviarPorEmail: TTS_RadioButton;
    cbkFTP: TTS_RadioButton;
    lbLocal: TTS_Label;
    tsBackup: TTS_TabSheet;
    Barra: TdxfProgressBar;
    lbProgresso: TTS_Label;
    dxfLabel1: TdxfLabel;
    TS_Shape11: TTS_Shape;
    TS_Shape12: TTS_Shape;
    btBackup: TTS_SpeedButton;
    lbNovoBackup: TTS_Label;
    procedure BackupZIPProgress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    procedure BackupZIPNeedDisk(Sender: TObject; DiskID: Word;
      var Continue: Boolean);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ckbAutomaticoClick(Sender: TObject);
    procedure cbkEnviarPorEmailClick(Sender: TObject);
    procedure cbkFTPClick(Sender: TObject);
    procedure TS_Label7Click(Sender: TObject);
    procedure lbLocalClick(Sender: TObject);
    procedure btBackupClick(Sender: TObject);
    procedure tsBackupShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure tsIntroducaoShow(Sender: TObject);
    procedure pgAssistenteChange(Sender: TObject);
    procedure lbNovoBackupClick(Sender: TObject);
  private
    sArquivoBase, sHost, sUserID, sSenha : string;
    slProgramAls : TStringList;
    EnviarFTP: TNMFTP;
    function 	ExtractCaminhoArquivo(sArquivo : string) : string;
    procedure FazerBackup;
    procedure EnviarArquivoFTP(sArquivo: string; Barra: TdxfProgressBar;
      MeuLabel: TLabel);
    procedure Progresso(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    Constructor Create(AOwner: TComponent; sNomeUsuario : String);
  end;

var
  DlgBackup: TDlgBackup;

implementation

uses funcoes, Dlg_BackupHist, DM_Projeto, Dlg_SelecionarPasta;

{$R *.DFM}

Constructor TDlgBackup.Create;
Begin
  inherited Create(AOwner);
end;

procedure TDlgBackup.FazerBackup;
var slArquivos, slInfo, slFilesBck : TStringList;
		sComando, sLocalBackup, sLocal, sArquivos,
    sServidor, sBaseDados, sBaseServidor, sCaminhoCompleto : string;
    i : integer;
begin
  try
    sLocal := lbLocal.Caption;
    if (sLocal = 'Selecionar Local') and (ckbOutroLocal.Checked) then begin
    	DlgMsg.ShowMsg( 86 );
      btLimpar.Click;
      Exit;
    end;

  	Barra.Position := 0;
  	{BackupGBAK}
    {
    lbProgresso.Caption := 'Conectando com a base de dados...';
    Application.ProcessMessages;
    with ConfigService do begin
      try
      	try
    			Active := false;
      		ServerName 		:= sServidor;
      		DatabaseName 	:= sBaseDados;
          if ServerName='' then
          	Protocol := Local
          else if pos('\\',ServerName)>0 then
          	Protocol := NamedPipe
          else
            Protocol := TCP;
      		Params.Clear;
      		Params.Add('user_name='+DMProjeto.sUserMestre);
      		Params.Add('password='+DMProjeto.sPassMestre);
          Active := true;
        except
        	DlgMsg.ShowMsg(85, [sCaminhoCompleto] );
          Active := false;
          lbProgresso.Caption := '';
          Exit;
        end;
      finally
      	Active := false;
      end;
    end;
    }
    lbProgresso.Caption := 'Iniciando...';
    Application.ProcessMessages;

    Barra.Max := cklEmpresas.QuantidadeSelecionados;

    {No próprio servidor}
  	if ckbAutomatico.checked then begin

      for i:=0 to cklEmpresas.Items.Count-1 do begin
        if cklEmpresas.Checked[i] then begin
	    		sBaseServidor := getBaseDados( i, true );
    			sServidor 		:= getServidor( i );
    			sBaseDados		:= getBaseDados( i );
    			sCaminhoCompleto := getCaminhoCompleto( i );

  				sComando 			:= ExtractFilePath(Application.ExeName)+
                    	 	 	 'gbak -b -user '+DMProjeto.sUserMestre+' -password '+DMProjeto.sPassMestre+' '+iif(sServidor='','',' -se ')+
                    	 	 	 sServidor+iif(sServidor='','',iif(pos('\\',sServidor)>0,'\',':'))+iif(sServidor='','','service_mgr ')+
                    	 	 	 sBaseServidor+' '+Copy(sBaseServidor,1,length(sBaseServidor)-3)+'gbk';

					ExecutePrograma(PChar(sComando));
          Barra.Position := Barra.Position + 1;
					lbProgresso.Caption := 'Compactando Base de dados '+'"'+cklEmpresas.Items[i]+'"';
          Application.ProcessMessages;

          GeraBackupLog('BACKUP',sCaminhoCompleto,DMProjeto.sLoginName);
        end;
      end;

  	end else begin

      sArquivos := '';
      for i:=0 to cklEmpresas.Items.Count-1 do begin
        if cklEmpresas.Checked[i] then begin
          sArquivoBase := 'Backup_'+RetiraAcentos(PrimeiraPalavra(SeparaStrings(slProgramAls[i],';',2)));
      		sComando := ExtractFilePath(Application.ExeName)+'gbak -b -user '+DMProjeto.sUserMestre+' -password '+DMProjeto.sPassMestre+' '+ExtractCaminhoArquivo(getCaminhoCompleto( i ))+' c:\'+sArquivoBase+'.gbk';
  				ExecutePrograma(PChar(sComando));
					Barra.Position := Barra.Position + 1;
          sArquivos := CExp(sArquivos,',') + 'c:\'+sArquivoBase+'.gbk'+'='+ExtractCaminhoArquivo(getCaminhoCompleto( i ))+'='+
                       iif(SeparaStrings(slProgramAls[i],';',2)<>'',RetiraAcentos(SeparaStrings(slProgramAls[i],';',2)),replace(SeparaStrings(SeparaStrings(slProgramAls[i],';',1),'\',ContaStrings(SeparaStrings(slProgramAls[i],';',1),'\')),'.gdb',''));
          lbProgresso.Caption := 'Compactando Base de dados "'+cklEmpresas.Items[i]+'"';
      		Application.ProcessMessages;
        end;
      end;

    end;

    {BackupZIP}
    if not ckbAutomatico.checked then begin
      Barra.Max := 100;
    	Barra.Position:= 0;
    	Application.ProcessMessages;
	  	with BackupZIP do begin
  			if uppercase(copy(lbLocal.caption, 1, 1)) = 'A' then begin
    			MaxSize := 1400000;  //backup to floppy
  			end	else
  				MaxSize := 0;

    		slArquivos := TStringList.Create;

      	{Fazer Backup da Base de Dados}
        for i:=1 to ContaStrings(sArquivos,',') do begin
          slArquivos.Clear;
        	{Listagem dos arquivos}
        	slArquivos.Add('c:\filesbck.txt');
    			slArquivos.Add(SeparaStrings(SeparaStrings(sArquivos,',',i),'=',1));

          slFilesBck := TStringList.Create;
          slFilesBck.Add(SeparaStrings(SeparaStrings(sArquivos,',',i),'=',1)+';'+
          							 SeparaStrings(SeparaStrings(sArquivos,',',i),'=',2)+';'+
                         SeparaStrings(SeparaStrings(sArquivos,',',i),'=',3));
          slFilesBck.SaveToFile('c:\filesbck.txt');
          lbProgresso.Caption := 'Fazendo Backup de '+SeparaStrings(SeparaStrings(sArquivos,',',i),'=',3);
          Application.ProcessMessages;
          sLocalBackup := iif(not ckbOutroLocal.Checked,'c:',lbLocal.Caption)+'\Backup_'+SeparaStrings(SeparaStrings(sArquivos,',',i),'=',3)+' em '+formatdatetime('ddmmmyy',date)+'.bck';
    			Backup(slArquivos, sLocalBackup);

     			GeraBackupLog('BACKUP',sLocalBackup+';'+
                        iif(cbkEnviarPorEmail.Checked,'Email',iif(cbkFTP.Checked,'FTP',lbLocal.Caption)),DMProjeto.sLoginName);
        end;

        {Textos Diversos}
        if ckTextosDiversos.Checked then begin
          slArquivos.Clear;
          slArquivos.Add('c:\filesbck.txt');
        	slArquivos.Add(DMProjeto.ProgPath+'Textos\*.rtf');
          slFilesBck := TStringList.Create;
          slFilesBck.Add('Textos Diversos');
          slFilesBck.SaveToFile('c:\filesbck.txt');
          lbProgresso.Caption := 'Fazendo backup de textos diversos';
          Application.ProcessMessages;
//          sLocalTextos := iif(not ckbOutroLocal.Checked,'c:',lbLocal.Caption)+'\Textos Diversos'+' em '+formatdatetime('ddmmmyy',date)+'.bck';
//					Backup(slArquivos, sLocalTextos);
				end;
        {Templates Relatorios}
        if ckTemplatesRelatorios.Checked then begin
          slArquivos.Clear;
          slArquivos.Add('c:\filesbck.txt');
        	slArquivos.Add(DMProjeto.ProgPath+'Templates\*.rpt');
          slArquivos.Add(DMProjeto.ProgPath+'Templates\*.rtm');
          slFilesBck := TStringList.Create;
          slFilesBck.Add('Templates');
          slFilesBck.SaveToFile('c:\filesbck.txt');
          lbProgresso.Caption := 'Fazendo backup de templates de relatório';
          Application.ProcessMessages;
//          sLocalTemplates := iif(not ckbOutroLocal.Checked,'c:',lbLocal.Caption)+'\Templates'+' em '+formatdatetime('ddmmmyy',date)+'.bck';
//					Backup(slArquivos, sLocalTemplates);
        end;

        {Etiquetas}
        if ckEtiquetas.Checked then begin
          slArquivos.Clear;
          slArquivos.Add('c:\filesbck.txt');
        	slArquivos.Add(DMProjeto.ProgPath+'Etiquetas\*.etq');
          slArquivos.Add(DMProjeto.ProgPath+'Etiquetas\*.mod');
          slFilesBck := TStringList.Create;
          slFilesBck.Add('Etiquetas');
          slFilesBck.SaveToFile('c:\filesbck.txt');
          lbProgresso.Caption := 'Fazendo backup de etiquetas';
          Application.ProcessMessages;
//          sLocalEtiquetas := iif(not ckbOutroLocal.Checked,'c:',lbLocal.Caption)+'\Etiquetas'+' em '+formatdatetime('ddmmmyy',date)+'.bck';
//					Backup(slArquivos, sLocalEtiquetas);
        end;

      end;

      slArquivos.Free;

      if cbkEnviarPorEmail.Checked then begin
        slInfo := TStringList.Create;
        with slInfo do begin
           Add(DMProjeto.sNomeEmpresa);
           Add(DMProjeto.sEnderecoEmpresa);
           Add(DMProjeto.sCidadeEmpresa);
           Add(DMProjeto.sUFEmpresa);
           Add(DMProjeto.sFone1Empresa);
           Add(DMProjeto.sFone2Empresa);
           Add('Usuário: '+DMProjeto.sLoginName);
        end;
      	SendMail( 'Backup '+DateToStr(Date)+' '+TimeToStr(Time),
                  slInfo.Text,
        					sLocalBackup, '', '', '', '' );
        slInfo.Free;
      end;

   		if cbkFTP.Checked then
  			EnviarArquivoFTP( sLocalBackup, Barra, lbProgresso );

  	end;
 		lbProgresso.Caption := 'Backup Concluído.';
 		Application.ProcessMessages;
	except
    on E : Exception do begin
			GeraBackupLog('BACKUP','Falha!'+iif(cbkEnviarPorEmail.Checked,'Email',iif(cbkFTP.Checked,'FTP',sLocalBackup)),DMProjeto.sLoginName);
 			DlgMsg.ShowMsg( 548, e.message );
    end;
  end;
end;

function TDlgBackup.ExtractCaminhoArquivo(sArquivo : string) : string;
begin
  if pos(' ',trim(sArquivo))<=0 then
  	result := sArquivo
  else
  	result := ExtractShortPathName(sArquivo);
end;

procedure TDlgBackup.BackupZIPProgress(Sender: TObject; Filename: String;
  Percent: TPercentage; var Continue: Boolean);
begin
  inherited;
  Barra.Position := Percent;
  Application.ProcessMessages;
end;

procedure TDlgBackup.BackupZIPNeedDisk(Sender: TObject; DiskID: Word;
  var Continue: Boolean);
begin
  inherited;
  Continue := DlgMsg.ShowMsg(547,['# '+IntToStr(DiskID)]) = 100;
end;

procedure TDlgBackup.FormsComponentBeforeClearParams(Sender: TObject);
var i : integer;
		sNome : string;
begin
  inherited;
  lbProgresso.Caption := '';
  Barra.Position:= 0;
  ckbAutomatico.Checked := true;
  sHost 	:= DMProjeto.Parametro('HostFTP');
  sUserID := DMProjeto.Parametro('UserIDFTP');
  sSenha  := DMProjeto.Parametro('SenhaFTP');
  lbProgresso.Caption := '';
	slProgramAls := TStringList.Create;
  {Último Backup}
  if fileexists( DMProjeto.ProgPath + 'backup.log' ) then begin
		slProgramAls.LoadFromFile( DMProjeto.ProgPath + 'backup.log' );
  	for i:=slProgramAls.Count-1 downto 0 do
  		if SeparaStrings(slProgramAls[i],';',5)='BACKUP' then
     		break;
  	if i <> -1 then begin
			lbUltimoBackup.Caption := replace(lbUltimoBackup.Caption,'99/99/9999',SeparaStrings(slProgramAls[i],';',1));
			lbUltimoBackup.Caption := replace(lbUltimoBackup.Caption,'00:00',Copy(SeparaStrings(slProgramAls[i],';',2),1,5));
			lbUltimoBackup.Caption := replace(lbUltimoBackup.Caption,'Usuario',SeparaStrings(slProgramAls[i],';',4));
  	end else
			lbUltimoBackup.Caption := 'Ainda não fez nenhum backup. Faça agendamento de backup.';
  end else
  	lbUltimoBackup.Caption := 'Ainda não fez nenhum backup. Faça agendamento de backup.';

  slProgramAls.LoadFromFile( DMProjeto.ProgPath + 'Program.als' );
	with cklEmpresas do begin
  	Items.Clear;
    for i:=0 to slProgramAls.Count-1 do begin
      sNome := SeparaStrings(slProgramAls[i],';',2);
   		Items.Add( iif( sNome <> '', sNome, SeparaStrings(slProgramAls[i],';',1) ) );
		end;
    UpdateItems;
    ItemIndex := DMProjeto.IndiceAlias;
    Checked[DMProjeto.IndiceAlias] := true;
  end;
  pgAssistente.ActivePage := tsIntroducao;
end;

procedure TDlgBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fileexists('c:\backup.gbk') then
  	Deletefile('c:\backup.gbk');
  if fileexists('c:\backup.bck') then
  	Deletefile('c:\backup.bck');
//  if fileexists('c:\filesbck.txt') then
//  	Deletefile('c:\filesbck.txt');
  if fileexists('c:\Backup'+formatdatetime('ddmm',DMProjeto.dDataSistema)+'.bck') then
  	Deletefile('c:\Backup'+formatdatetime('ddmm',DMProjeto.dDataSistema)+'.bck');
end;

procedure TDlgBackup.Progresso( Sender : TObject );
begin
	Barra.Position := Trunc((EnviarFTP.BytesSent/EnviarFTP.BytesTotal)*100);
  Application.ProcessMessages;
end;

procedure TDlgBackup.EnviarArquivoFTP( sArquivo : string; Barra : TdxfProgressBar; MeuLabel : TLabel );
begin
  EnviarFTP := TNMFTP.Create(self);

	with EnviarFTP do begin

    if Barra <> nil then begin
    	Barra.Position := 0;
  		OnPacketSent := Progresso;
    end;
  	Host 		:= '192.168.10.115'; //'www.tsoft.com.br';// sHost;
    UserID 	:= 'andre'; //'tsoft';						// sUserID;
    PassWord:= 'gabriela'; //'pipocaamr';				// sSenha;
    if MeuLabel <> nil then
    	MeuLabel.Caption := 'Conectando...aguarde...';
    Application.ProcessMessages;
    try
    	try
    		Connect;
      except
      	  ShowMessage('Não foi possível fazer a conexão com o endereço: '+Host+#13+'Tenha certeza que esteja conectado na Internet.');
          Exit;
      end;
      Mode(MODE_BYTE);
      if MeuLabel <> nil then
      	MeuLabel.Caption := 'Enviando arquivo...aguarde...';
      UpLoad( sArquivo, sArquivoBase+'.bck' );
    finally
    	Disconnect;
    end;
    if MeuLabel <> nil then
     	MeuLabel.Caption := 'Arquivo enviado com Sucesso.';
  	Free;
  end;
end;

procedure TDlgBackup.ckbAutomaticoClick(Sender: TObject);
begin
  inherited;
	lbLocal.caption := 'No Servidor';
end;

procedure TDlgBackup.cbkEnviarPorEmailClick(Sender: TObject);
begin
  inherited;
	lbLocal.caption := 'Enviar por Email';
end;

procedure TDlgBackup.cbkFTPClick(Sender: TObject);
begin
  inherited;
	lbLocal.caption := 'Enviar para o FTP TradeSoft';
end;

procedure TDlgBackup.TS_Label7Click(Sender: TObject);
begin
  inherited;
	DlgBackupHist := TDlgBackupHist.Create(self);
  DlgBackupHist.ShowModal;
  DlgBackupHist.Free;
end;

procedure TDlgBackup.lbLocalClick(Sender: TObject);
begin
  inherited;
  ckbOutroLocal.Checked := true;
  
  DlgSelecionarPasta := TDlgSelecionarPasta.Create(self);

	if DlgSelecionarPasta.ShowModal = mrOk then
    lbLocal.Caption := DlgSelecionarPasta.Pastas.SelectedFolder.PathName;

  DlgSelecionarPasta.Free;
end;

procedure TDlgBackup.btBackupClick(Sender: TObject);
begin
  inherited;
  try
		FazerBackup;
  finally
    lbNovoBackup.Visible := true;
  end;
end;

procedure TDlgBackup.tsBackupShow(Sender: TObject);
begin
  inherited;
	lbProgresso.Caption := '';
  Barra.Position 			:= 0;
  btGravar.Enabled    := false;
end;

procedure TDlgBackup.btGravarClick(Sender: TObject);
begin
  inherited;
	pgAssistente.NextPage;
  btLimpar.Enabled := true;
end;

procedure TDlgBackup.btLimparClick(Sender: TObject);
begin
  inherited;
	pgAssistente.NextPage( false );
  btGravar.Enabled := true;
end;

procedure TDlgBackup.tsIntroducaoShow(Sender: TObject);
begin
  inherited;
	btGravar.Enabled := true;
  btLimpar.Enabled := false;
end;

procedure TDlgBackup.pgAssistenteChange(Sender: TObject);
begin
  inherited;
  if pgAssistente.ActivePage.CanFocus then
  	ActiveControl := FindNextControl( pgAssistente.ActivePage, true, true, false );
end;

procedure TDlgBackup.lbNovoBackupClick(Sender: TObject);
begin
  inherited;
	pgAssistente.ActivePage := tsIntroducao;
  lbNovoBackup.Visible := false;
end;

end.


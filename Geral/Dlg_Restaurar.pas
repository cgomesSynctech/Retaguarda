unit Dlg_Restaurar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel,
  TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel,
  dxfProgressBar, dxCntner, dxExEdtr, dxEdLib, TS_CheckBox, IBServices,
  backup, TS_RadioButton, Psock, NMFtp, TS_ModuloStyle, IBDatabase, Menus,
  TS_PopupMenu, dxEditor, TS_Memo, BTOdeum, Placemnt, TS_Edit, CheckLst,
  TS_CheckListBox, TS_Shape, ComCtrls, TS_PageControl;

type
  TDlgRestaurar = class(TFrmModeloCadastros)
    BackupZIP: TBackupFile;
    ConfigService: TIBConfigService;
    SaveDialog: TSaveDialog;
    esGeral: TdxEditStyleController;
    msGeral: TTS_ModuloStyle;
    Powersock: TPowersock;
    pgAssistente: TTS_PageControl;
    tsIntroducao: TTS_TabSheet;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    lbUltimoBackup: TTS_Label;
    Image1: TImage;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    tsLocal: TTS_TabSheet;
    dxfLabel6: TdxfLabel;
    lbLocal: TTS_Label;
    ckbAutomatico: TTS_RadioButton;
    ckbOutroLocal: TTS_RadioButton;
    ckbFTP: TTS_RadioButton;
    tsBackup: TTS_TabSheet;
    dxfLabel7: TdxfLabel;
    btBackup: TTS_SpeedButton;
    lbNovaRestauracao: TTS_Label;
    tsNovaEmpresa: TTS_TabSheet;
    ckbNovaEmpresa: TTS_CheckBox;
    lbNovaEmpresa: TTS_Label;
    edNovaEmpresa: TTS_Edit;
    dxfLabel3: TdxfLabel;
    Barra: TdxfProgressBar;
    lbProgresso: TTS_Label;
    TS_MaxPanel2: TTS_MaxPanel;
    TS_MaxPanel1: TTS_MaxPanel;
    dxfLabel2: TdxfLabel;
    TS_MaxPanel3: TTS_MaxPanel;
    TS_MaxPanel4: TTS_MaxPanel;
    TS_MaxPanel5: TTS_MaxPanel;
    TS_MaxPanel6: TTS_MaxPanel;
    TS_MaxPanel7: TTS_MaxPanel;
    TS_MaxPanel8: TTS_MaxPanel;
    procedure ckbAutomaticoClick(Sender: TObject);
    procedure BackupZIPNeedDisk(Sender: TObject; DiskID: Word;
      var Continue: Boolean);
    procedure BackupZIPProgress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    procedure ckbFTPClick(Sender: TObject);
    procedure ckbNovaEmpresaChange(Sender: TObject);
    procedure BackupZIPListaArquivos(Sender: TObject; var Filename: String;
      FA: Integer; var DoRestore: Boolean);
    procedure TS_Label7Click(Sender: TObject);
    procedure btBackupClick(Sender: TObject);
    procedure lbLocalClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure lbNovaRestauracaoClick(Sender: TObject);
    procedure tsBackupShow(Sender: TObject);
    procedure tsIntroducaoShow(Sender: TObject);
  private
    sArquivoBase: string;
    ReceberFTP : TNMFTP;
    Database, IDS   : TIBDatabase;
    sServidor, sBaseDados, sCaminhoCompleto : string;
    slProgramAls : TStringList;
    bSolicitarSenha : boolean;
    procedure FazerRestauracao;
    function ReceberArquivoFTP(sArquivo: string; Barra: TdxfProgressBar;
      MeuLabel: TLabel) : boolean;
    procedure Progresso(Sender: TObject);
    function getNomeMaquina: string;
    procedure BackupZIPBaseDados(Sender: TObject; var Filename: String;
													  FA: Integer; var DoRestore: Boolean);
    function ExisteProgramAls(sBase: string): boolean;
    procedure BackupZIPEtiquetas(Sender: TObject; var Filename: String;
      FA: Integer; var DoRestore: Boolean);
    procedure BackupZIPTemplates(Sender: TObject; var Filename: String;
      FA: Integer; var DoRestore: Boolean);
    procedure BackupZIPTextos(Sender: TObject; var Filename: String;
      FA: Integer; var DoRestore: Boolean);
    function NomeEmpresa: string;

    { Private declarations }
  public
    { Public declarations }
    Constructor Create(AOwner: TComponent; sNomeUsuario : string;DBDatabase, DBIds : TIBDataBase);
  end;

var
  DlgRestaurar: TDlgRestaurar;

implementation

uses funcoes, DM_Projeto, Dlg_BackupHist;

{$R *.DFM}

Constructor TDlgRestaurar.Create;
Begin
  Database 	:= DBDatabase;
  IDS 			:= DBIds;
  inherited Create(AOwner);
end;

procedure TDlgRestaurar.FazerRestauracao;
var slArquivos, slFilesBck : TStringList;
		sComando, sLocalBackup,
    sSenha, sNovaBase : string;
    i : integer;
begin

  if bSolicitarSenha then begin
  	sSenha := InputBox('Autorização para restaurar backup','Informe a Senha:','');
    if StrToIntDef(Trim(sSenha),0) <> ValidaSenha then begin
      ShowMessage('Senha Inválida. Lique para o suporte a solicitar a senha.');
    	Exit;
    end;
  end;

  try

	lbProgresso.Caption := 'Verificando se este computador é o servidor...';
  Application.ProcessMessages;

  sServidor := getServidor( DMProjeto.IndiceAlias );
  sBaseDados:= getBaseDados( DMProjeto.IndiceAlias );
  sCaminhoCompleto := getCaminhoCompleto( DMProjeto.IndiceAlias );

  if pos('\\',sCaminhoCompleto) > 0 then begin
  	if uppercase(trim(getNomeMaquina)) <> uppercase(trim(getNomeComputador(DMProjeto.IndiceAlias))) then begin
      ShowMessage('Este computador não é atualmente o servidor. '#13+'A restauração só poderá ser realizada no computador servidor.');
      Exit;
    end;
  end else if pos(':',sCaminhoCompleto) > 0 then begin
   if pos('.',SeparaStrings(sCaminhoCompleto,':',1))>0 then begin
    	if trim(PowerSock.LocalIP) <> trim(SeparaStrings(sCaminhoCompleto,':',1)) then begin
      	ShowMessage('Este computador não é atualmente o servidor. '+#13+'A restauração só poderá ser realizada no computador servidor.');
      	Exit;
      end;
    end else begin
  		if (Copy(sCaminhoCompleto,2,1)<>':') and (uppercase(trim(getNomeMaquina)) <> uppercase(trim(getNomeComputador(DMProjeto.IndiceAlias)))) then begin
   			ShowMessage('Este computador não é atualmente o servidor. A restauração só poderá ser realizada no computador servidor.');
      	Exit;
    	end;
    end;
  end;

	lbProgresso.Caption := 'Iniciando...';
  Application.ProcessMessages;

  if lbLocal.Caption = '' then begin
    DlgMsg.ShowMsg( 86 );
    btLimpar.Click;
  	Exit;
  end;

  Barra.Position := 0;

  sServidor := getServidor( DMProjeto.IndiceAlias );
  if ckbNovaEmpresa.Checked then
    sNovaBase := DMProjeto.ProgPath+RetiraAcentos(edNovaEmpresa.Text)+'.gdb';

	lbProgresso.Caption := 'Verificando se existe algum usuário acessando o sistema...';
  Application.ProcessMessages;

    if DataBase <> nil then begin
      try
     		Database.Connected := false;
        Ids.Connected := false;
      except
          ShowMessage('Verifique se existe algum computador com o sistema aberto. '+#13+
                      'Não foi possível fazer a desconexão com a banco de dados.');
          Exit;
      end;
    end else begin
      try
        with DMProjeto do begin
     			DB_Projeto.Connected := false;
        	DB_IDS.Connected 		 := false;
        end;
      except
          ShowMessage('Verifique se existe algum computador com o sistema aberto. '+#13+
                      'Não foi possível fazer a desconexão com a banco de dados.');
          Exit;
      end;
    end;

	if (fileexists( Copy(sBaseDados,1,length(sBaseDados)-4)+'_Renomeado.gdb' )) and
		 (Trunc(FileDateToDateTime(FileAge(Copy(sBaseDados,1,length(sBaseDados)-4)+'_Renomeado.gdb' )))<>Trunc(Date)) then begin

   	DeleteFile(Copy(sBaseDados,1,length(sBaseDados)-4)+'_Renomeado.gdb');
		if not RenameFile( sBaseDados, Copy(sBaseDados,1,length(sBaseDados)-4)+'_Renomeado.gdb' ) then begin
       ShowMessage( 'Verifique se existe algum computador com o sistema aberto. '+#13+
                    'Para fazer a restauração é preciso que nenhum computador esteja usando o sistema.' );
     	 Exit;
    end;

	end;

  if (not fileexists( Copy(sBaseDados,1,length(sBaseDados)-4)+'_Renomeado.gdb' )) and (not ckbNovaEmpresa.Checked) then
		if not RenameFile( sBaseDados, Copy(sBaseDados,1,length(sBaseDados)-4)+'_Renomeado.gdb' ) then begin
       ShowMessage( 'Verifique se existe algum computador com o sistema aberto. '+#13+
                    'Para fazer a restauração é preciso que nenhum computador esteja usando o sistema.' );
       Exit;
    end;

  sCaminhoCompleto := getCaminhoCompleto( DMProjeto.IndiceAlias );

  if (ckbAutomatico.Checked) then begin

  	lbProgresso.Caption := 'Restaurando backup...aguarde...';
  	Application.ProcessMessages;

  	sComando :=     ExtractFilePath(ExtractShortPathName(Application.ExeName))+
                    'gbak -'+iif(ckbNovaEmpresa.Checked,'c','r')+' -user '+DMProjeto.sUserMestre+' -password '+DMProjeto.sPassMestre+' '+
                    '"'+Copy(sBaseDados,1,length(sBaseDados)-3)+'gbk" "'+
                    iif(ckbNovaEmpresa.Checked,sNovaBase,Copy(sBaseDados,1,length(sBaseDados)-3)+'gdb ')+'"';//getBaseDados;
		ExecutePrograma(PChar(sComando));
    GeraBackupLog('RESTAURADO',lbLocal.caption+';'+'Sucesso!',DMProjeto.sLoginName);

  end else if ckbOutroLocal.Checked then begin

  	Barra.Position:= 0;
   	Barra.Visible := true;
   {BackupZIP}
	  with BackupZIP do begin
      if Busy then
      	Stop;

  		if uppercase(copy(lbLocal.caption, 1, 1)) = 'A' then begin
    		MaxSize := 1400000;  //backup to floppy
  		end	else
  			MaxSize := 0;

      {Restaurando a lista dos arquivos do backup}
  		BackupZIP.OnRestoreFile := BackupZIPListaArquivos;
    	Restore(lbLocal.Caption, 'C:\' );
      slFilesBck := TStringList.Create;
      slFilesBck.LoadFromFile('C:\filesbck.txt');
      lbProgresso.Caption := 'Restaurando base de dados...aguarde...';
  		Application.ProcessMessages;
      BackupZIP.OnRestoreFile := BackupZIPBaseDados;
      BackupZIP.Restore( lbLocal.Caption, 'C:\' );

      for i:=0 to slFilesBck.Count-1 do begin
         if UpperCase(ExtractFileExt(SeparaStrings(slFilesBck[i],';',1)))='.GBK' then begin
      			sComando := ExtractFilePath(ExtractShortPathName(Application.ExeName))+
                        'gbak -'+iif(ckbNovaEmpresa.Checked,'c ','r ')+
                        '-user '+DMProjeto.sUserMestre+' -password '+DMProjeto.sPassMestre+' '+
                        '"c:\'+ExtractFileName(SeparaStrings(slFilesBck[i],';',1))+'" "'+
                        iif(not ckbNovaEmpresa.Checked,SeparaStrings(slFilesBck[i],';',2),sNovaBase)+'"';
      			lbProgresso.Caption := 'Descompactando base de dados...aguarde...';
            Application.ProcessMessages;
						ExecutePrograma(PChar( sComando ));
            DeleteFile('C:\'+ExtractFileName(SeparaStrings(slFilesBck[i],';',1)));
         end;
      end;

      {Restaurando arquivo texto}
      BackupZIP.OnRestoreFile := BackupZIPTextos;
      BackupZIP.Restore( lbLocal.Caption, DMProjeto.ProgPath+'Textos' );

      {Restaurando arquivo templates}
      BackupZIP.OnRestoreFile := BackupZIPTemplates;
      BackupZIP.Restore( lbLocal.Caption, DMProjeto.ProgPath+'Templates' );

      {Restaurando arquivo templates}
      BackupZIP.OnRestoreFile := BackupZIPEtiquetas;
      BackupZIP.Restore( lbLocal.Caption, DMProjeto.ProgPath+'Etiquetas' );

			GeraBackupLog('RESTAURADO',lbLocal.caption+';'+'Sucesso!',DMProjeto.sLoginName)

  	end;
  end else begin {Por FTP}
    sArquivoBase := 'Backup_'+NomeEmpresa;
  	if not ReceberArquivoFTP( sArquivoBase+'.bck', Barra, lbProgresso ) then
    	Exit;
   	lbProgresso.Caption := 'Descompactando...aguarde...';
  	Application.ProcessMessages;
	  with BackupZIP do begin

    	try

      if Busy then
      	Stop;

  		if uppercase(copy(lbLocal.caption, 1, 1)) = 'A' then begin
    		MaxSize := 1400000;  //backup to floppy
  		end	else
  			MaxSize := 0;

        {Restaurando a lista dos arquivos do backup}
  			BackupZIP.OnRestoreFile := BackupZIPListaArquivos;
    		Restore('c:\'+sArquivoBase+'.bck', 'C:\' );
      	slFilesBck := TStringList.Create;
      	slFilesBck.LoadFromFile('C:\filesbck.txt');
      	lbProgresso.Caption := 'Restaurando base de dados...aguarde...';
  			Application.ProcessMessages;
      	BackupZIP.OnRestoreFile := BackupZIPBaseDados;
      	BackupZIP.Restore( 'c:\'+sArquivoBase+'.bck', 'C:\' );

      	for i:=0 to slFilesBck.Count-1 do begin
        	if UpperCase(ExtractFileExt(SeparaStrings(slFilesBck[i],';',1)))='.GBK' then begin
      			sComando := ExtractFilePath(ExtractShortPathName(Application.ExeName))+
                        'gbak -'+iif(ckbNovaEmpresa.Checked,'c ','r ')+
                        '-user '+DMProjeto.sUserMestre+' -password '+DMProjeto.sPassMestre+' '+
                        '"c:\'+ExtractFileName(SeparaStrings(slFilesBck[i],';',1))+'" "'+
                        iif(not ckbNovaEmpresa.Checked,SeparaStrings(slFilesBck[i],';',2),sNovaBase)+'"';
      			lbProgresso.Caption := 'Descompactando base de dados...aguarde...';
            Application.ProcessMessages;
						ExecutePrograma(PChar( sComando ));
            DeleteFile('C:\'+ExtractFileName(SeparaStrings(slFilesBck[i],';',1)));
         end;
      	end;

    	GeraBackupLog( 'RESTAURADO', lbLocal.caption+';'+'Sucesso!', DMProjeto.sLoginName )

      except
        on E:Exception do begin
 					GeraBackupLog( 'RESTAURADO', lbLocal.caption+';'+'Erro!', DMProjeto.sLoginName );
     			DlgMsg.ShowMsg( 548 );
        end;
      end;
    end;
  end;
  if ckbNovaEmpresa.Checked then begin
    slProgramAls := TStringList.Create;
    slProgramAls.LoadFromFile(DMProjeto.ProgPath+'program.als');
  	slProgramAls.Add(getNomeMaquina+':'+sNovaBase+';'+EdNovaEmpresa.Text+';');
    slProgramAls.SaveToFile(DMProjeto.ProgPath+'program.als');
    slProgramAls.Free;
  	if (not fileexists(sBaseDados)) then
			RenameFile( Copy(sBaseDados,1,length(sBaseDados)-4)+'_Renomeado.gdb', sBaseDados);
  end;

  	{Verificação de Conexão}
    lbProgresso.Caption := 'Conectando com a base de dados...';
    Application.ProcessMessages;
    with ConfigService do begin
      try
      	try
    			Active := false;
      		ServerName 	:= sServidor;
      		DatabaseName:= iif(ckbNovaEmpresa.Checked,getNomeMaquina+':'+sNovaBase,getBaseDados(DMProjeto.IndiceAlias));
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
  if ckbNovaEmpresa.Checked then begin
    with DMProjeto.Q_SQL do begin
    	close;
      sql.text := 'update favorecidos set nome = :nome where favorecido = -1';
      parambyname('nome').Asstring := EdNovaEmpresa.Text;
      execsql;
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    end;
    DMProjeto.DB_Projeto.Close;
  	DMProjeto.DB_Projeto.DatabaseName := getNomeMaquina+':'+sNovaBase;
  end;
  DMProjeto.DB_Projeto.Connected := true;
  DMProjeto.AtualizaParametros;
 	lbProgresso.Caption := 'Restauração do Backup Concluída com Sucesso.';
 	Application.ProcessMessages;
  except
    on E:Exception do begin
   		GeraBackupLog('RESTAURADO',lbLocal.caption+';'+'Falha!',DMProjeto.sLoginName);
   		DlgMsg.ShowMsg( 548, e.Message, '' );
  		if (not fileexists(sBaseDados)) then
				RenameFile( Copy(sBaseDados,1,length(sBaseDados)-4)+'_Renomeado.gdb', sBaseDados);
    end;
  end;
  lbNovaRestauracao.Visible := true;
end;

function TDlgRestaurar.getNomeMaquina : string;
var
  b: DWORD;
  ArrayMaquina: array[0..100] of Char;
begin
  result := '';
  b := 101;

  if GetComputerName(ArrayMaquina,b) then
     result := StrPas(ArrayMaquina);
end;

procedure TDlgRestaurar.ckbAutomaticoClick(Sender: TObject);
begin
  inherited;
  btLimpar.Enabled	:= ckbOutroLocal.Checked;
  if btLimpar.Enabled then
  	btLimpar.Click;
end;


procedure TDlgRestaurar.BackupZIPNeedDisk(Sender: TObject; DiskID: Word;
  var Continue: Boolean);
begin
  inherited;
  Continue := DlgMsg.ShowMsg(547,['# '+IntToStr(DiskID)]) = 100;
end;

procedure TDlgRestaurar.BackupZIPProgress(Sender: TObject;
  Filename: String; Percent: TPercentage; var Continue: Boolean);
begin
  inherited;
  Barra.Position := Percent;
  Application.ProcessMessages;
end;

procedure TDlgRestaurar.Progresso( Sender : TObject );
begin
	Barra.Position := Trunc((ReceberFTP.BytesRecvd/ReceberFTP.BytesTotal)*100);
  Application.ProcessMessages;
end;

function TDlgRestaurar.ReceberArquivoFTP( sArquivo : string; Barra : TdxfProgressBar; MeuLabel : TLabel ) : boolean;
begin
  result := false;
  ReceberFTP := TNMFTP.Create(self);

	with ReceberFTP do begin

    if Barra <> nil then begin
    	Barra.Position:= 0;
      Barra.Visible := true;
  		OnPacketRecvd	:= Progresso;
    end;

  	Host 		:= DMProjeto.Parametro('HostFTP');
    UserID 	:= DMProjeto.Parametro('UserIDFTP');
    PassWord:= DMProjeto.Parametro('SenhaFTP');

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
      	MeuLabel.Caption := 'Recebendo arquivo...aguarde...';

      try
        ChangeDir('Clientes');            
      	ChangeDir(RetiraAcentos(DMProjeto.sNomeEmpresa));
      except
      end;

      DownLoad( sArquivo, 'c:\'+sArquivo );

    finally
    	Disconnect;
  		if (not fileexists(sBaseDados)) and (not fileexists(Copy(sBaseDados,1,length(sBaseDados)-4)+'.gbk')) then
				RenameFile( Copy(sBaseDados,1,length(sBaseDados)-4)+'_Renomeado.gdb', sBaseDados);
    end;
    if MeuLabel <> nil then
     	MeuLabel.Caption := 'Arquivo recebido com Sucesso.';
  	Free;
  end;
  result := true;
end;

procedure TDlgRestaurar.ckbFTPClick(Sender: TObject);
begin
  inherited;
	btLimpar.Enabled	:= ckbOutroLocal.Checked;
  lbLocal.Caption		:= 'FTP TradeSoftPlus';
end;

procedure TDlgRestaurar.ckbNovaEmpresaChange(Sender: TObject);
begin
  inherited;
  lbNovaEmpresa.Enabled := ckbNovaEmpresa.Checked;
  edNovaEmpresa.Enabled := ckbNovaEmpresa.Checked;
  if ckbNovaEmpresa.Checked then
  	edNovaEmpresa.SetFocus;
end;

procedure TDlgRestaurar.BackupZIPListaArquivos(Sender: TObject;
  var Filename: String; FA: Integer; var DoRestore: Boolean);
begin
  inherited;
  DoRestore := pos('FILESBCK',UpperCase(FileName))>0;
end;

procedure TDlgRestaurar.BackupZIPBaseDados(Sender: TObject;
  var Filename: String; FA: Integer; var DoRestore: Boolean);
begin
  inherited;
	DoRestore := UpperCase(ExtractFileExt(FileName)) = '.GBK';
end;

procedure TDlgRestaurar.BackupZIPTextos(Sender: TObject;
  var Filename: String; FA: Integer; var DoRestore: Boolean);
begin
  inherited;
	DoRestore := UpperCase(ExtractFileExt(FileName)) = '.RTF';
end;

procedure TDlgRestaurar.BackupZIPTemplates(Sender: TObject;
  var Filename: String; FA: Integer; var DoRestore: Boolean);
begin
  inherited;
	DoRestore := (UpperCase(ExtractFileExt(FileName)) = '.RTM') or
  						 (UpperCase(ExtractFileExt(FileName)) = '.RPT');
end;

procedure TDlgRestaurar.BackupZIPEtiquetas(Sender: TObject;
  var Filename: String; FA: Integer; var DoRestore: Boolean);
begin
  inherited;
	DoRestore := (UpperCase(ExtractFileExt(FileName)) = '.MOD') or
  						 (UpperCase(ExtractFileExt(FileName)) = '.ETQ');
end;

function TDlgRestaurar.ExisteProgramAls( sBase : string ): boolean;
var i : integer;
begin
    result := false;
    slProgramAls := TStringList.Create;
    with slProgramAls do begin
    	LoadFromFile(DMProjeto.ProgPath+'program.als');
    	for i:=0 to Count-1 do begin
      	if UpperCase(SeparaStrings(slProgramAls[i],';',1))=UpperCase(sBase) then begin
        	result := true;
          break;
        end;
      end;
    	Free;
    end;
end;

function TDlgRestaurar.NomeEmpresa : string;
begin
    slProgramAls := TStringList.Create;
    with slProgramAls do begin
    	LoadFromFile(DMProjeto.ProgPath+'program.als');
     	result := RetiraAcentos(SeparaStrings(slProgramAls[DMProjeto.IndiceAlias],';',2));
    	Free;
    end;
end;

procedure TDlgRestaurar.TS_Label7Click(Sender: TObject);
begin
  inherited;
	DlgBackupHist := TDlgBackupHist.Create(self);
//  DlgBackupHist.Tipo := 'RESTAURADO';
  DlgBackupHist.ShowModal;
  DlgBackupHist.Release;
end;

procedure TDlgRestaurar.btBackupClick(Sender: TObject);
begin
  inherited;

  try
    	btGravar.Enabled := false;
			FazerRestauracao;
  finally
	  btGravar.Enabled := true;
  end;

end;

procedure TDlgRestaurar.lbLocalClick(Sender: TObject);
begin
  inherited;
	if SaveDialog.Execute then
  	lbLocal.Caption := SaveDialog.FileName;
end;

procedure TDlgRestaurar.btLimparClick(Sender: TObject);
begin
  inherited;
	pgAssistente.NextPage( false );
  btGravar.Enabled := true;
end;

procedure TDlgRestaurar.btGravarClick(Sender: TObject);
begin
  inherited;
  if pgAssistente.ActivePage = tsNovaEmpresa then begin
  	if ckbNovaEmpresa.Checked and (edNovaEmpresa.Text='') then begin
    	DlgMsg.ShowMsg( 929, ['o nome da nova empresa'] );
      Exit;
    end;
	end;
	pgAssistente.NextPage;
  btLimpar.Enabled := true;
end;

procedure TDlgRestaurar.FormsComponentBeforeClearParams(Sender: TObject);
var i : integer;
begin
  inherited;
  Barra.Position := 0;

  lbProgresso.Caption := '';
	slProgramAls := TStringList.Create;

  {Última Restauração}
  if fileexists( DMProjeto.ProgPath + 'backup.log' ) then begin
		slProgramAls.LoadFromFile( DMProjeto.ProgPath + 'backup.log' );
  	for i:=slProgramAls.Count-1 downto 0 do
  		if SeparaStrings(slProgramAls[i],';',5)='RESTAURADO' then
     		break;
  	if i <> -1 then begin
			lbUltimoBackup.Caption := replace(lbUltimoBackup.Caption,'99/99/9999',SeparaStrings(slProgramAls[i],';',1));
			lbUltimoBackup.Caption := replace(lbUltimoBackup.Caption,'00:00',Copy(SeparaStrings(slProgramAls[i],';',2),1,5));
			lbUltimoBackup.Caption := replace(lbUltimoBackup.Caption,'Usuario',SeparaStrings(slProgramAls[i],';',4));
  	end else
			lbUltimoBackup.Caption := 'Ainda não foi feito nenhuma restauração.';
  end else
  	lbUltimoBackup.Caption := 'Ainda não foi feito nenhuma restauração.';

	pgAssistente.ActivePage := tsIntroducao;

  bSolicitarSenha := false;
  if DMProjeto.ExisteParametrosForm then begin
  	if DMProjeto.getParametrosForm(0) = 'Login' then
    	bSolicitarSenha := true;
  end;
end;

procedure TDlgRestaurar.lbNovaRestauracaoClick(Sender: TObject);
begin
  inherited;
  pgAssistente.ActivePage := tsIntroducao;
	lbNovaRestauracao.Visible := false;
end;

procedure TDlgRestaurar.tsBackupShow(Sender: TObject);
begin
  inherited;
	lbNovaRestauracao.Visible := false;
  btGravar.Enabled := false;
end;

procedure TDlgRestaurar.tsIntroducaoShow(Sender: TObject);
begin
  inherited;
  btLimpar.Enabled := false;
end;

end.

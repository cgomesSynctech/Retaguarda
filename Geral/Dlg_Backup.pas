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
  BTOdeum, Placemnt, CheckLst, TS_CheckListBox, TS_Shape, ComCtrls,
  TS_PageControl, TS_DateTimePicker, TS_TimeEdit, TS_ImageEdit, TS_SpinEdit,
  NMFtp, TS_ComboBox, TS_Edit;

type
  TDlgBackup = class(TFrmModeloCadastros)
    SaveDialog: TSaveDialog;
    ConfigService: TIBConfigService;
    DB: TIBDatabase;
    IBTransaction1: TIBTransaction;
    msGeral: TTS_ModuloStyle;
    esGeral: TdxEditStyleController;
    IBBackup: TIBBackupService;
    pgAssistente: TTS_PageControl;
    tsIntroducao: TTS_TabSheet;
    tsAgendamento: TTS_TabSheet;
    dxfLabel2: TdxfLabel;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    tsArquivos: TTS_TabSheet;
    tsAdicionais: TTS_TabSheet;
    tsLocal: TTS_TabSheet;
    lbUltimoBackup: TTS_Label;
    Image1: TImage;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    dxfLabel3: TdxfLabel;
    dxfLabel4: TdxfLabel;
    cklEmpresas: TTS_CheckListBox;
    dxfLabel5: TdxfLabel;
    ckEtiquetas: TTS_CheckBox;
    ckTemplatesRelatorios: TTS_CheckBox;
    ckTextosDiversos: TTS_CheckBox;
    dxfLabel6: TdxfLabel;
    ckbAutomatico: TTS_RadioButton;
    ckbOutroLocal: TTS_RadioButton;
    cbkEnviarPorEmail: TTS_RadioButton;
    cbkFTP: TTS_RadioButton;
    lbLocal: TTS_Label;
    tsBackup: TTS_TabSheet;
    Barra: TdxfProgressBar;
    lbProgresso: TTS_Label;
    dxfLabel1: TdxfLabel;
    btBackup: TTS_SpeedButton;
    lbNovoBackup: TTS_Label;
    ckbAgendar: TTS_CheckBox;
    rgDia: TTS_RadioButton;
    rgSemana: TTS_RadioButton;
    rgMensalmente: TTS_RadioButton;
    rgHora: TTS_RadioButton;
    edHora: TTS_SpinEdit;
    TS_Label1: TTS_Label;
    edDia: TTS_SpinEdit;
    TS_Label2: TTS_Label;
    cmbDiaSemana: TTS_ImageEdit;
    edDiaMes: TTS_SpinEdit;
    TS_Label5: TTS_Label;
    edHoraIniciar: TTS_TimeEdit;
    TS_Label8: TTS_Label;
    dtData: TTS_DateTimePicker;
    btExcluir: TTS_SpeedButton;
    Label1: TLabel;
    TS_Label9: TTS_Label;
    EnviarFTP: TNMFTP;
    tsNovoExistente: TTS_TabSheet;
    TS_Label10: TTS_Label;
    dxfLabel7: TdxfLabel;
    TS_MaxPanel13: TTS_MaxPanel;
    rbNovoBackup: TTS_RadioButton;
    rbBackup: TTS_RadioButton;
    edNomeBackup: TTS_Edit;
    cmbBackup: TTS_ComboBox;
    TS_MaxPanel1: TTS_MaxPanel;
    TS_MaxPanel2: TTS_MaxPanel;
    TS_MaxPanel3: TTS_MaxPanel;
    TS_MaxPanel4: TTS_MaxPanel;
    TS_MaxPanel5: TTS_MaxPanel;
    TS_MaxPanel6: TTS_MaxPanel;
    BackupBCK: TBackupFile;
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
    procedure tsAgendamentoShow(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure EnviarFTPPacketSent(Sender: TObject);
    procedure ckbAgendarChange(Sender: TObject);
    procedure BackupBCKProgress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
  private
    sArquivoBase : string;
    slProgramAls : TStringList;
    bCriar : boolean;
    function  BasedeDadosSelecionados : string;
    function  CarregueConfBackup(sBackup: string) : boolean;
//    procedure Progresso(Sender: TObject);
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
    UltData : TDatetime;
begin
  inherited;
	dtData.Date := Date;
  edHoraIniciar.Time := Time;
  lbProgresso.Caption := '';
  Barra.Position:= 0;
  ckbAutomatico.Checked := true;
  lbProgresso.Caption := '';
	slProgramAls := TStringList.Create;
  cmbBackup.Items := getFileList(DMProjeto.ProgPath+'*.bkp');
  UltData := 0;
  for i:=0 to cmbBackup.Items.Count - 1 do
  	if FileDateToDateTime(FileAge(DMProjeto.ProgPath+cmbBackup.items[i])) > UltData then begin
    	UltData := FileDateToDateTime(FileAge(DMProjeto.ProgPath+cmbBackup.items[i]));
      cmbBackup.ItemIndex := i;
      rbBackup.Checked := true;
    end;

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
{
procedure TDlgBackup.Progresso( Sender : TObject );
begin
	Barra.Position := Trunc((EnviarFTP.BytesSent/EnviarFTP.BytesTotal)*100);
  Application.ProcessMessages;
end;
}

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
	DlgBackupHist.Tipo := 'BACKUP';
  DlgBackupHist.ShowModal;
  DlgBackupHist.Release;
end;

procedure TDlgBackup.lbLocalClick(Sender: TObject);
begin
  inherited;
  ckbOutroLocal.Checked := true;
  
  DlgSelecionarPasta := TDlgSelecionarPasta.Create(self);

	if DlgSelecionarPasta.ShowModal = mrOk then
    lbLocal.Caption := DlgSelecionarPasta.Pastas.SelectedFolder.PathName;

  DlgSelecionarPasta.Release;
end;

procedure TDlgBackup.btBackupClick(Sender: TObject);
var sIndices : string;
		i : integer;
    slBackup : TStringList;
begin
  inherited;
  try
    sIndices := '';
    for i:=0 to cklEmpresas.Items.Count-1 do
       if cklEmpresas.Checked[i] then
         sIndices := CExp(sIndices,',') + IntToStr( i ) ;

		DMProjeto.FazerBackup(iif(ckbAutomatico.checked,'SERVIDOR',iif(ckbOutroLocal.Checked,'OUTROLOCAL',
    						iif(cbkEnviarPorEmail.Checked,'EMAIL','FTP'))),
                sIndices,
                lbLocal.Caption,
                ckTextosDiversos.Checked,
                ckTemplatesRelatorios.Checked,
                ckEtiquetas.Checked,Barra,lbProgresso, EnviarFTP, BackupBCK);
  finally
    lbNovoBackup.Visible := true;
  end;
  slBackup := TStringList.Create;
  with slBackup do begin
    {Criação do Arquivo}
      Add('IndiceBaseDados='+BasedeDadosSelecionados);
      Add('TipoBackup='+iif(ckbAutomatico.checked,'SERVIDOR',
                        iif(ckbOutroLocal.Checked,'OUTROLOCAL',
    	 							    iif(cbkEnviarPorEmail.Checked,'EMAIL','FTP'))));
      Add('Local='+lbLocal.Caption);
      Add('Textos='+iif(ckTextosDiversos.Checked,'S','N'));
      Add('Templates='+iif(ckTemplatesRelatorios.Checked,'S','N'));
      Add('Etiquetas='+iif(ckEtiquetas.Checked,'S','N'));
      SaveToFile(DMProjeto.ProgPath+iif(rbNovoBackup.checked,edNomeBackup.Text+'.bkp',cmbBackup.text));
      Free;
	end;
end;

procedure TDlgBackup.tsBackupShow(Sender: TObject);
begin
  inherited;
	lbProgresso.Caption := '';
  Barra.Position 			:= 0;
  btGravar.Enabled    := false;
end;

function TDlgBackup.BasedeDadosSelecionados : string;
var i : integer;
		sIndices : string;
begin
  sIndices := '';
	for i:=0 to cklEmpresas.Items.Count-1 do
  	if cklEmpresas.Checked[i] then
    	sIndices := CExp(sIndices,',') + IntToStr( i );
  result := sIndices;
end;

function TDlgBackup.CarregueConfBackup( sBackup : string ) : boolean;
var slBackup : TStringList;
		sTipo : string;
    i : integer;
begin
	slBackup := TStringList.Create;
  result := false;
  with slBackup do begin
    if FileExists(DMProjeto.ProgPath+sBackup) then
    	LoadFromFile( DMProjeto.ProgPath+sBackup )
    else begin
    	ShowMessage('Este arquivo não existe! tente outro.');
      Exit;
    end;
  	sTipo := Values['TipoBackup'];
    ckbAutomatico.Checked := sTipo = 'SERVIDOR';
    ckbOutroLocal.OnClick := nil;
    ckbOutroLocal.Checked := sTipo = 'OUTROLOCAL';
    ckbOutroLocal.OnClick := lbLocalClick;
    cbkEnviarPorEmail.Checked := sTipo = 'EMAIL';
    cbkFTP.Checked := sTipo = 'FTP';
    for i:=0 to cklEmpresas.Items.Count-1 do
			cklEmpresas.Checked[i] := false;
    for i:=1 to ContaStrings('IndiceBaseDados',',') do
  		cklEmpresas.Checked[StrToInt(SeparaStrings(Values['IndiceBaseDados'],',',i))] := true;
    lbLocal.Caption := Values['Local'];
    ckTextosDiversos.Checked := Values['Textos'] = 'S';
    ckTemplatesRelatorios.Checked := Values['Templates'] = 'S';
    ckEtiquetas.Checked := Values['Etiquetas'] = 'S';
    Free;
  end;
  result := true;
end;

procedure TDlgBackup.btGravarClick(Sender: TObject);
var slAgenda : TStringList;
		sComando : string;
begin
  inherited;
  with pgAssistente do begin
    if ActivePage = tsNovoExistente then begin
      if rbBackup.Checked and (cmbBackup.Text='') then begin
      	DlgMsg.ShowMsg( 929, ['selecionar o backup existente'] ) ;
        cmbBackup.SetFocus;
        Exit;
      end;
      if rbBackup.Checked then begin
      	if CarregueConfBackup( cmbBackup.Text ) then
        	pgAssistente.ActivePage := tsBackup;
    	end else
        NextPage;
    end else if ActivePage = tsAgendamento then begin
    	if ckbAgendar.Checked then begin
      	if fileexists(DMProjeto.ProgPath+'Agendamento.age') then
        	btExcluir.Click;
        slAgenda := TStringList.Create;
        with slAgenda do begin
          {Criação do Arquivo}
          if SysLocale.PriLangID = LANG_ENGLISH then
        		Add('TipoAgendamento='+iif(rgHora.Checked,'hourly',iif(rgDia.Checked,'daily',
                                   iif(rgSemana.Checked,'weekly','monthly'))))
          else
        		Add('TipoAgendamento='+iif(rgHora.Checked,'horalmente',iif(rgDia.Checked,'diariamente',
                                   iif(rgSemana.Checked,'semanalmente','mensalmente'))));

          Add('Atributo='+iif(rgHora.Checked,edHora.Text,iif(rgDia.Checked,edDia.Text,
                          iif(rgSemana.Checked,cmbDiaSemana.Text,edDiaMes.Text))));
          Add('Data='+formatdatetime(iif(SysLocale.PriLangID = LANG_ENGLISH,'mm/dd/yyyy','dd/mm/yyyy'),dtData.date));
          Add('Hora='+TimeToStr(edHoraIniciar.Time));
          Add('IndiceBaseDados='+BasedeDadosSelecionados);
          Add('TipoBackup='+iif(ckbAutomatico.checked,'SERVIDOR',
                            iif(ckbOutroLocal.Checked,'OUTROLOCAL',
    											  iif(cbkEnviarPorEmail.Checked,'EMAIL','FTP'))));
          Add('Local='+lbLocal.Caption);
          Add('Textos='+iif(ckTextosDiversos.Checked,'S','N'));
          Add('Templates='+iif(ckTemplatesRelatorios.Checked,'S','N'));
          Add('Etiquetas='+iif(ckEtiquetas.Checked,'S','N'));
          SaveToFile(DMProjeto.ProgPath+'Agendamento.age');
          {Criação do Agendamento}
          sComando := 'schtasks /create /tn "Backup Maxshop" '+
          						'/tr '+DMProjeto.ProgPath+'ExecutarBackup.exe '+
                      '/sc '+Values['TipoAgendamento']+' '+
                      iif(iif(SysLocale.PriLangID = LANG_ENGLISH,Values['TipoAgendamento']='monthly',Values['TipoAgendamento']='mensalmente'),'/mo 1 /d '+edDiaMes.Text,
                      iif(iif(SysLocale.PriLangID = LANG_ENGLISH,Values['TipoAgendamento']='hourly',Values['TipoAgendamento']='horalmente'),'/mo '+edHora.Text,
                      iif(iif(SysLocale.PriLangID = LANG_ENGLISH,Values['TipoAgendamento']='daily',Values['TipoAgendamento']='diariamente'),'/mo '+edDia.Text,'/d '+cmbDiaSemana.Text)))+' '+
                      '/st '+TimeToStr(edHoraIniciar.time)+' /sd '+ Values['Data'] + ' /ru system';
          ExecutePrograma( PChar(sComando) );
        end;
      end;
      NextPage;
    end else if ActivePage = tsLocal then begin
    	if fileexists(SystemDir+'\'+'schtasks.exe') then 
      	NextPage
      else
      	ActivePage := tsBackup;
    end else
			NextPage;
  end;
  btLimpar.Enabled := true;
end;

procedure TDlgBackup.btLimparClick(Sender: TObject);
begin
  inherited;
  if pgAssistente.ActivePage = tsBackup then begin
  	if fileexists(SystemDir+'\'+'schtasks.exe') then
      pgAssistente.NextPage( false )
    else
    	pgAssistente.ActivePage := tsLocal;
  end else
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

procedure TDlgBackup.tsAgendamentoShow(Sender: TObject);
begin
  inherited;
	btExcluir.Visible := FileExists(DMProjeto.ProgPath+'Agendamento.age');
end;

procedure TDlgBackup.btExcluirClick(Sender: TObject);
begin
  inherited;
	ExecutePrograma( PChar( SystemDir + '\' + 'schtasks.exe /delete /tn "Backup Syncloja" /f') );
  DeleteFile( DMProjeto.ProgPath+'Agendamento.age' );
  btExcluir.Enabled := false;
end;

procedure TDlgBackup.EnviarFTPPacketSent(Sender: TObject);
begin
  inherited;
	Barra.Position := Trunc((EnviarFTP.BytesSent/EnviarFTP.BytesTotal)*100);
  Application.ProcessMessages;
end;

procedure TDlgBackup.ckbAgendarChange(Sender: TObject);
var i : integer;
begin
  inherited;
		for i:=0 to ComponentCount-1 do
    	if Components[i].Tag <> 0 then
      	TControl(Components[i]).Enabled := ckbAgendar.Checked;
      {
      if Components[i].Tag = -5 then
        if Components[i] is TLabel then
      		TTS_Label(Components[i]).Font.Color := iif(ckbAgendar.Checked,clBlack,clGray)
        else
        	TTS_RadioButton(Components[i]).Font.Color := iif(ckbAgendar.Checked,clBlack,clGray);
    	}
end;

procedure TDlgBackup.BackupBCKProgress(Sender: TObject; Filename: String;
  Percent: TPercentage; var Continue: Boolean);
begin
  inherited;
	Barra.Position := Percent;
  Application.ProcessMessages;
end;

end.


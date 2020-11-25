unit Dlg_AuditoriaFinanceira;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DlgMsg, ppDevice,
  Buttons, ComCtrls, TS_DateTimePicker,
  ExtCtrls, TS_RadioGroup, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppCtrls, ppPrnabl, ppStrtch, ppRegion, ppBands, ppCache, Db,
  IBCustomDataSet, IBQuery, ppDB, ppDBPipe, ppMemo, ppSubRpt, ppViewr,
  ppModule, daDataModule, TxTraDev, TS_LastDataObject,
  FRM_MODELOCADASTROS, dxfProgressBar, TS_Label,
  TS_SpeedButton, TS_Bevel, TS_BitBtn, Provider, DBClient,
  DBCtrls, TS_DBLookupComboBox, dxExEdtr, dxEdLib, dxCntner, dxEditor,
  dxDBEdtr, dxDBELib, FormsComponent, TS_Image, dxfLabel, TS_MaxPanel,
  TS_LookupComboBox, teCtrls, TS_EffectsPanel, TS_PopupEdit, Dlg_PopupContas,
  Menus, TS_PopupMenu, Variants, Placemnt, BTOdeum;

type
  TDlgAuditoriaFinanceira = class(TFrmModeloCadastros)
    ppAuditoria: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    lbPeriodo: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    Barra: TdxfProgressBar;
    Q_Auditoria: TIBQuery;
    Q_AuditoriaDS: TDataSource;
    dbAuditoria: TppDBPipeline;
    Q_AuditoriaDet: TIBQuery;
    Q_AuditoriaDetDS: TDataSource;
    dbAuditoriaDet: TppDBPipeline;
    Q_AuditoriaTIPO: TIntegerField;
    Q_AuditoriaGRUPO: TIBStringField;
    Q_AuditoriaDESCRICAO: TIBStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppShape2: TppShape;
    ppDBText2: TppDBText;
    Sub: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDBText3: TppDBText;
    regCab: TppRegion;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    Q_AuditoriaDetDATA: TDateField;
    Q_AuditoriaDetHORA: TTimeField;
    Q_AuditoriaDetDESCRICAO: TIBStringField;
    Q_AuditoriaDetVALOR: TIBBCDField;
    Q_AuditoriaDetIDGERADOR: TIntegerField;
    Q_AuditoriaDetIDTABELA: TIntegerField;
    Q_AuditoriaDetTIPOOPERACAO: TIntegerField;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel3: TppLabel;
    ppShape5: TppShape;
    ppLabel4: TppLabel;
    ppShape6: TppShape;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppData: TppDBText;
    ppLine2: TppLine;
    ppDBText5: TppDBText;
    Q_AuditoriaDetLOGINNAME: TIBStringField;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine3: TppLine;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    Q_Usuarios: TIBQuery;
    C_Usuarios: TClientDataSet;
    C_UsuariosDS: TDataSource;
    P_Usuarios: TDataSetProvider;
    C_UsuariosLOGINNAME: TStringField;
    C_UsuariosUSUARIO: TIntegerField;
    dtDataI: TTS_DateTimePicker;
    dtDataF: TTS_DateTimePicker;
    Q_AuditoriaDetTIPO: TIntegerField;
    cmbUsuario: TTS_LookupComboBox;
    cmbConta: TTS_PopupEdit;
    Label1: TLabel;
    Q_AuditoriaTOTAL: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure ppDataDrawCommandClick(Sender, aDrawCommand: TObject);
    procedure ppDataDrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  protected
  	DlgPopup : TDlgPopupContas;
  private
    { Private declarations }
    i : integer;
    nTotal : single;
  public
    { Public declarations }
  end;

var
  DlgAuditoriaFinanceira: TDlgAuditoriaFinanceira;

implementation

uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.DFM}

procedure TDlgAuditoriaFinanceira.FormCreate(Sender: TObject);
begin
  inherited;
	dtDataI.Date := DMProjeto.dDataSistema;
  dtDataF.Date := DMProjeto.dDataSistema;
end;

procedure TDlgAuditoriaFinanceira.FormShow(Sender: TObject);
begin
  inherited;
	DMFinanceiro.C_ContasCxBc.Open;
  C_Usuarios.Open;
end;

procedure TDlgAuditoriaFinanceira.btGravarClick(Sender: TObject);
var sWhere : string;
begin
  inherited;
  Barra.Position := 0;
  Barra.Visible  := true;

  lbPeriodo.Caption := 'No período de '+DateToStr(dtDataI.Date)+' à '+DateToStr(dtDataF.Date);

  sWhere := '';
  if cmbUsuario.LookupKeyValue <> null then
  	sWhere := sWhere + ' and a.Usuario = '+C_UsuariosUsuario.AsString;

  if cmbConta.LookupKeyValue <> 0 then
  	sWhere := sWhere + ' and a.Conta = '+IntToStr(cmbConta.LookUpKeyValue);

  Barra.Position := Barra.Position + 1;
  with Q_Auditoria do begin
  	close;
    sql.text := 'select a.tipo, t.grupo, t.descricao, sum(a.valor) as Total '+
    						'from Auditorias a inner join TiposAuditoria t on a.tipo = t.tipo '+
                'where a.data >= :datai and a.data <= :dataf '+sWhere+' '+
								'group by a.tipo, t.grupo, t.descricao '+
								'order by t.grupo desc, a.tipo ';
    parambyname('datai').asdatetime := dtDataI.Date;
    parambyname('dataf').asdatetime := dtDataF.Date;
    open;
  end;
  Barra.Position := Barra.Position + 1;
  with Q_AuditoriaDet do begin
  	close;
    sql.text := 'select a.DATA, a.HORA, u.LOGINNAME, a.DESCRICAO, a.VALOR, a.TIPO, a.IDGERADOR, a.IDTABELA, a.TIPOOPERACAO from AUDITORIAS a left join USUARIOS u on a.usuario = u.usuario '+
								'where a.data >= :datai and a.data <= :dataf and a.TIPO = :TIPO '+sWhere+' '+
                'order by a.data';
    parambyname('datai').asdatetime := dtDataI.Date;
    parambyname('dataf').asdatetime := dtDataF.Date;
    open;
  end;
	Barra.Position := Barra.Position + 1;
  ppAuditoria.Publisher.Publish;
  DMProjeto.ImprimirCabecalho( regCab );
  Barra.Position := Barra.Position + 1;
  Application.ProcessMessages;
  ppAuditoria.Print;
  Barra.Visible  := false;
end;

procedure TDlgAuditoriaFinanceira.ppDataDrawCommandClick(Sender,
  aDrawCommand: TObject);
var TipoOperacao, Tipo : integer;
begin
  inherited;
  TipoOperacao := StrToIntDef(SeparaStrings(TppDrawCommand(aDrawCommand).ExpansionKey,',',1),0);
  Tipo				 := StrToIntDef(SeparaStrings(TppDrawCommand(aDrawCommand).ExpansionKey,',',2),0);
  if TipoOperacao = 0 then begin
  	DMProjeto.SetParametrosForm([TppDrawCommand(aDrawCommand).Tag]);
    if Tipo in [1,2,3] then
    	DMProjeto.CriarForm('FrmA_Receber',self,true)
    else if Tipo in [17,18,19] then
      DMProjeto.CriarForm('FrmA_Pagar',self,true);
    DMProjeto.LimparParametrosForm;
  end else begin
  	with DMProjeto do begin
    	SetParametrosForm([TppDrawCommand(aDrawCommand).Tag]);
    	CriarForm(getTelaGeradora(TipoOperacao),self,true);
    end;
  end;
end;

procedure TDlgAuditoriaFinanceira.ppDataDrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  if Q_AuditoriaDetIDGerador.Value <> 0 then
  	TppDrawCommand(aDrawCommand).tag := Q_AuditoriaDetIDGerador.Value
  else
		TppDrawCommand(aDrawCommand).tag := Q_AuditoriaDetIDTabela.Value;
  TppDrawCommand(aDrawCommand).ExpansionKey 	:= Q_AuditoriaDetTipoOperacao.AsString+','+Q_AuditoriaDetTipo.AsString;
end;

procedure TDlgAuditoriaFinanceira.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
	DlgPopup.SetEventos(TTS_PopupEdit(sender));
end;

procedure TDlgAuditoriaFinanceira.FormActivate(Sender: TObject);
begin
  inherited;
	cmbConta.popupcontrol := DlgPopup.pnPopup;
end;

procedure TDlgAuditoriaFinanceira.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasCxBcDS, nil, false);
end;

end.

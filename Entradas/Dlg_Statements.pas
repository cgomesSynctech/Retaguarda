unit Dlg_Statements;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg, Menus,
  TS_PopupMenu, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton, 
  StdCtrls, TS_BitBtn, TS_ComboBox, TS_Label, TS_GroupBox, TS_RadioButton,
  TS_Edit, ComCtrls, TS_PageControl, TS_CheckBox, TS_Memo, Db, Provider, DBClient,
  IBCustomDataSet, IBQuery, DBCtrls, TS_DBMemo, Mask, TS_DBEdit, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl,
  ppStrtch, ppRegion, ppBands, ppCache, ppCtrls, ppMemo, ppSubRpt, DBTables,
  Grids, DBGrids, ppVar, TS_MaxPanel, dxfLabel, ppModule,
  daDataModule, dxCntner, dxEditor, dxEdLib, dxExEdtr, dxDBELib,
  FormsComponent, TS_Image, TS_DateTimePicker, teCtrls,
  TS_EffectsPanel, ppDevice, BTOdeum, Placemnt;

type
  TDlgStatements = class(TFrmModeloCadastros)
    cbTipo: TTS_ComboBox;
    TS_Label1: TTS_Label;
    gbClientes: TTS_GroupBox;
    rbTodos: TTS_RadioButton;
    rbSelecionados: TTS_RadioButton;
    btSelecionados: TTS_SpeedButton;
    ckClientesEmDia: TTS_CheckBox;
    Q_Config: TIBQuery;
    C_Config: TClientDataSet;
    Q_ConfigProvider: TDataSetProvider;
    C_ConfigDS: TDataSource;
    C_ConfigDIAS_CAB_0: TStringField;
    C_ConfigDIAS_ROD_0: TStringField;
    C_ConfigDIAS_CAB_30: TStringField;
    C_ConfigDIAS_ROD_30: TStringField;
    C_ConfigDIAS_CAB_60: TStringField;
    C_ConfigDIAS_ROD_60: TStringField;
    C_ConfigOUTROS_CAB: TStringField;
    C_ConfigOUTROS_ROD: TStringField;
    rbStatements: TppReport;
    bdpStatements: TppDBPipeline;
    ppDetailBand1: TppDetailBand;
    C_InfGeraisDS: TDataSource;
    C_InfGerais: TClientDataSet;
    Q_InfGeraisProvider: TDataSetProvider;
    Q_InfGerais: TIBQuery;
    C_StatementsDS: TDataSource;
    C_Statements: TClientDataSet;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    bdpInfGerais: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText6: TppDBText;
    ppLabel3: TppLabel;
    Q_MasterDS: TDataSource;
    C_InfGeraisQ_Statements: TDataSetField;
    rbsrStatements: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine6: TppLine;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppTitleBand1: TppTitleBand;
    rbrgCabGrupo: TppRegion;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    rbmeMsgINI: TppDBMemo;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppDBText24: TppDBText;
    ppLabel8: TppLabel;
    rbrgCabDetalhe: TppRegion;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    rbrgCabecalho: TppRegion;
    C_InfGeraiscfMENSAGEM_INI: TStringField;
    C_InfGeraiscfMENSAGEM_FIM: TStringField;
    C_InfGeraisFAV: TIntegerField;
    C_InfGeraisNOME: TStringField;
    C_InfGeraisENDERECO: TStringField;
    C_InfGeraisCIDADE: TStringField;
    C_InfGeraisUF: TStringField;
    C_InfGeraisCEP: TStringField;
    C_InfGeraisTELEFONE: TStringField;
    C_InfGeraisCODIGO: TStringField;
    C_InfGeraisSALDOANTERIOR: TBCDField;
    C_InfGeraisDATAATRASO: TDateField;
    C_InfGeraisMESESAVENCER: TBCDField;
    C_InfGeraisMESES01: TBCDField;
    C_InfGeraisMESES01VOL: TBCDField;
    C_InfGeraisMESES02: TBCDField;
    C_InfGeraisMESES02VOL: TBCDField;
    C_InfGeraisMESES03: TBCDField;
    C_InfGeraisMESES03VOL: TBCDField;
    C_InfGeraisMESES04: TBCDField;
    C_InfGeraisMESES04VOL: TBCDField;
    ppLine7: TppLine;
    pnCompleto: TTS_Panel;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    pcMensagens: TTS_PageControl;
    ts1: TTS_TabSheet;
    TS_Label10: TTS_Label;
    TS_Label9: TTS_Label;
    ed1Rod: TTS_DBEdit;
    me1Cab: TTS_DBMemo;
    ts2: TTS_TabSheet;
    TS_Label11: TTS_Label;
    TS_Label12: TTS_Label;
    ed2Rod: TTS_DBEdit;
    me2Cab: TTS_DBMemo;
    ts3: TTS_TabSheet;
    TS_Label13: TTS_Label;
    TS_Label14: TTS_Label;
    ed3Rod: TTS_DBEdit;
    me3Cab: TTS_DBMemo;
    ts4: TTS_TabSheet;
    TS_Label15: TTS_Label;
    TS_Label16: TTS_Label;
    ed4Cab: TTS_DBEdit;
    me4Cab: TTS_DBMemo;
    pnAberto: TTS_Panel;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    ppLine9: TppLine;
    ppLine8: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    rblbPeriodo: TppLabel;
    edDias: TTS_Edit;
    a: TAnimate;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape6: TppShape;
    ppLabel18: TppLabel;
    edCompletoIni: TTS_DateTimePicker;
    edCompletoFim: TTS_DateTimePicker;
    rblbDataSaldoAnterior: TppLabel;
    C_InfGeraisDATASTATEMENT: TStringField;
    ppLabel2: TppLabel;
    C_StatementsID: TIntegerField;
    C_StatementsDATA: TDateField;
    C_StatementsDUEDATE: TDateField;
    C_StatementsREFERENCE: TStringField;
    C_StatementsSALDO: TBCDField;
    C_StatementsDESCRIPTION: TStringField;
    C_StatementsAMOUNT: TBCDField;
    C_StatementsTIPODOMOVIMENTO: TStringField;
    C_StatementsFAV: TIntegerField;
    ppLabel10: TppLabel;
    ppShape5: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel19: TppLabel;
    Q_Statements: TIBQuery;
    Q_StatementsID: TIntegerField;
    Q_StatementsID_AUX: TIntegerField;
    Q_StatementsDATA: TDateField;
    Q_StatementsDUEDATE: TDateField;
    Q_StatementsREFERENCE: TIBStringField;
    Q_StatementsSALDO: TIBBCDField;
    Q_StatementsDESCRIPTION: TIBStringField;
    Q_StatementsAMOUNT: TIBBCDField;
    Q_StatementsTIPODOMOVIMENTO: TIBStringField;
    Q_StatementsFAV: TIntegerField;
    C_StatementsID_AUX: TIntegerField;
    rblbBalanco: TppLabel;
    rblbTotal: TppLabel;
    Q_StatementsTIPO: TIntegerField;
    C_StatementsTIPO: TIntegerField;
    btEtiquetas: TTS_SpeedButton;
    TS_Label2: TTS_Label;
    edStatement: TTS_DateTimePicker;
    C_ConfigID: TIntegerField;
    ppLine5: TppLine;
    ppLabel20: TppLabel;
    ppDBText13: TppDBText;
    C_InfGeraisMESESBEFORE: TBCDField;
    ppLine23: TppLine;
    procedure C_InfGeraisCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDBText9GetText(Sender: TObject; var Text: String);
    procedure ppDBText15GetText(Sender: TObject; var Text: String);
    procedure btGravarClick(Sender: TObject);
    procedure btSelecionadosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure rblbPeriodoGetText(Sender: TObject; var Text: String);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure ppDBText12GetText(Sender: TObject; var Text: String);
    procedure ppDBText10DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppDBText10DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure rblbBalancoGetText(Sender: TObject; var Text: String);
    procedure rblbTotalGetText(Sender: TObject; var Text: String);
    procedure edDiasChange(Sender: TObject);
    procedure btEtiquetasClick(Sender: TObject);
    procedure C_InfGeraisFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    IDs, sCaptionPeriodo: string;
    nBalanco: Currency;
    procedure MontaQuery;
    function DataString(dData:TDateTime;incremento:integer):string;
    procedure AbreStatement(WhereAdicional: string=''; bAbrir : boolean = true);
    procedure Imprimir( bCarta : boolean );
  public
    { Public declarations }
  end;

var
  DlgStatements: TDlgStatements;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgStatements.MontaQuery;
var dataIni, dataFim, condTipo1, condTipo2: string;
begin
  inherited;
  rblbPeriodo.Caption := sCaptionPeriodo;
  {Extratos de Parcelas a Receber}
  if cbTipo.ItemIndex=0 then begin
    Q_Statements.SQL.Text := 'Select tr.ID, tr.venda as ID_AUX, tr.competencia as Data, '+
      'tr.vencimento As DueDate, CAST(tr.titulo as varchar(50)) as Reference, '+
      'tr.faltareceber as Saldo, CAST(tm.descricao as varchar(50)) as Description, '+
      'tr.valor as Amount, '+QuotedStr('EP'){ExtratoDeParcelas}+' as tipodomovimento, '+
      '-1 as tipo, tr.cliente as FAV '+
      'From TitulosAReceber tr Left Join Saidas s On tr.venda=s.saida '+
      'Left Join tiposmovimento tm On s.tipomovimento=tm.tipomovimento '+
      'Where tr.status >= 3 And tr.status < 50 And tr.cliente = :FAV '+
      'And tr.vencimento<='+DataString(DMProjeto.dDataSistema,-StrToInt(edDias.Text))+' '+
      'Order By tr.competencia';
    rblbDataSaldoAnterior.Caption := '('+FormatDateTime('mm/dd/yyyy',DMProjeto.dDataSistema-(StrToInt(edDias.Text)+1))+')';
    rblbPeriodo.Caption := Replace(rblbPeriodo.Caption, ':DATAINI', FormatDateTime('mm/dd/yyyy',DMProjeto.dDataSistema-StrToInt(edDias.Text)));
    rblbPeriodo.Caption := Replace(rblbPeriodo.Caption, ':DATAFIM', FormatDateTime('mm/dd/yyyy',DMProjeto.dDataSistema));
  {Extratos Completos}
  end else begin
    dataIni := QuotedStr(FormatDateTime('mm/dd/yyyy',edCompletoIni.Date));
    dataFim := QuotedStr(FormatDateTime('mm/dd/yyyy',edCompletoFim.Date));
    condTipo1 := 'And tr.vencimento>='+dataIni+' And tr.vencimento<='+dataFim+' ';
    condTipo2 := 'And d.data>='+dataIni+' And d.data<='+dataFim+' ';
    Q_Statements.SQL.Text := 'Select tr.ID, tr.venda as ID_AUX, tr.competencia as Data, '+
      'tr.vencimento As DueDate, CAST(tr.titulo as varchar(50)) as Reference, '+
      'tr.faltareceber as Saldo, CAST(tm.descricao as varchar(50)) as Description, '+
      'tr.valor as Amount, '+QuotedStr('EP'){ExtratoDeParcelas}+' as tipodomovimento, '+
      '-1 as tipo, tr.cliente as FAV '+
      'From TitulosAReceber tr Left Join Saidas s On tr.venda=s.saida '+
      'Left Join tiposmovimento tm On s.tipomovimento=tm.tipomovimento '+
      'Where tr.status > 0 '+ // todos os titulos
      'And tr.cliente = :FAV '+
      condTipo1+
      'Union '+
      'Select dd.IDDOC as ID, d.DEPOSITO as ID_AUX, d.data, dd.vencimento As DueDate, '+
      'CAST((fp.sigla||'+QuotedStr(' ')+'||dd.numcheque) as varchar(50)) as Reference, '+
      '0.00 as Saldo, CAST(t.descricao as varchar(50)) as Description, '+
      '(-1*dd.valor) as Amount, '+QuotedStr('EC'){ExtratoCompleto}+' as tipodomovimento, '+
      'd.tipodeposito as tipo, d.Favorecido as FAV '+
      'From depositosdoc dd Join depositos d On d.deposito=dd.deposito '+
      'Left Join tiposorigens t On d.tipodeposito=t.origem '+
      'Left Join formaspagamento fp On dd.formapagamento=fp.formapagamento '+
      'Where d.situacao='+QuotedStr('N')+' And d.favorecido = :FAV '+
      'and not exists( select dt.titulo from DepositosTitulos dt '+
      '                inner join TitulosAReceber tt on dt.titulo = tt.id '+
      '                where dt.deposito = d.deposito and tt.cliente <> :FAV) '+
      condTipo2+
      'Order By 4';
    rblbDataSaldoAnterior.Caption := '('+FormatDateTime('mm/dd/yyyy',edCompletoIni.Date-1)+')';
    rblbPeriodo.Caption := Replace(rblbPeriodo.Caption, ':DATAINI', FormatDateTime('mm/dd/yyyy',edCompletoIni.Date));
    rblbPeriodo.Caption := Replace(rblbPeriodo.Caption, ':DATAFIM', FormatDateTime('mm/dd/yyyy',edCompletoFim.Date));
  end;
end;

procedure TDlgStatements.C_InfGeraisCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_InfGeraisDATAATRASO.Value <=0 then
  	C_InfGeraisDATAATRASO.Value := edStatement.Date;
  if (edStatement.Date-C_InfGeraisDATAATRASO.Value)<=0 then begin
    C_InfGeraiscfMENSAGEM_INI.Value := C_ConfigDIAS_CAB_0.Value;
    C_InfGeraiscfMENSAGEM_FIM.Value := C_ConfigDIAS_ROD_0.Value;
  end else
  if ((edStatement.Date-C_InfGeraisDATAATRASO.Value)>0)
    and ((edStatement.Date-C_InfGeraisDATAATRASO.Value)<30) then begin
    C_InfGeraiscfMENSAGEM_INI.Value := C_ConfigDIAS_CAB_30 .Value;
    C_InfGeraiscfMENSAGEM_FIM.Value := C_ConfigDIAS_ROD_30.Value;
  end else
  if ((edStatement.Date-C_InfGeraisDATAATRASO.Value)>=30)
     and ((edStatement.Date-C_InfGeraisDATAATRASO.Value)<60) then begin
    C_InfGeraiscfMENSAGEM_INI.Value := C_ConfigDIAS_CAB_60 .Value;
    C_InfGeraiscfMENSAGEM_FIM.Value := C_ConfigDIAS_ROD_60.Value;
  end else begin // outros statements
    C_InfGeraiscfMENSAGEM_INI.Value := C_ConfigOUTROS_CAB.Value;
    C_InfGeraiscfMENSAGEM_FIM.Value := C_ConfigOUTROS_ROD.Value;
  end;
end;

procedure TDlgStatements.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 	C_Config.Edit;
  C_ConfigID.Value := 1;
  if (edStatement.Date-C_InfGeraisDATAATRASO.Value)<=0 then begin
    C_ConfigDIAS_CAB_0.Value 		:= C_InfGeraiscfMENSAGEM_INI.Value;
    C_ConfigDIAS_ROD_0.Value 		:= C_InfGeraiscfMENSAGEM_FIM.Value;
  end else if ((edStatement.Date-C_InfGeraisDATAATRASO.Value)>0)
    and ((edStatement.Date-C_InfGeraisDATAATRASO.Value)<30) then begin
    C_ConfigDIAS_CAB_30 .Value 	:= C_InfGeraiscfMENSAGEM_INI.Value;
    C_ConfigDIAS_ROD_30.Value		:= C_InfGeraiscfMENSAGEM_FIM.Value;
  end else
  if ((edStatement.Date-C_InfGeraisDATAATRASO.Value)>=30)
     and ((edStatement.Date-C_InfGeraisDATAATRASO.Value)<60) then begin
    C_ConfigDIAS_CAB_60 .Value 	:= C_InfGeraiscfMENSAGEM_INI.Value;
    C_ConfigDIAS_ROD_60.Value  	:= C_InfGeraiscfMENSAGEM_FIM.Value;
  end else begin // outros statements
    C_ConfigOUTROS_CAB.Value   	:= C_InfGeraiscfMENSAGEM_INI.Value;
    C_ConfigOUTROS_ROD.Value		:= C_InfGeraiscfMENSAGEM_FIM.Value;
  end;

 	C_Config.Post;
  if C_Config.ChangeCount > 0 then
  	C_Config.ApplyUpdates(0);
  DMProjeto.IBT_Projeto.CommitRetaining;
  inherited;
end;

function TDlgStatements.DataString(dData:TDateTime;incremento:integer):string;
begin
  try
    result := QuotedStr(FormatDateTime('mm/dd/yyyy',dData+incremento));
  except
    result := '';
  end;
end;

procedure TDlgStatements.AbreStatement;
var
		sSQL : string;
begin
  inherited;
  MontaQuery;
  sSQL := 'Select '+
//  Dados simples
    'Favorecido as FAV, Nome, Endereco, Cidade, UF, CEP, Fone1 as Telefone, Codigo, '+
//  Saldo anterior
    '(Select Sum(Valor) From titulosareceber Where cliente=f.favorecido And vencimento< :dataant And status > 0 And status < 50 )'+
    '-(Select Sum(Valor) From titulosareceber Where cliente=f.favorecido And vencimento< :dataant And status >= 50) As SaldoAnterior,'+
//  Data do atraso
    '(Select Min(Vencimento) From Titulosareceber Where cliente=f.favorecido And status=3) As DataAtraso,'+
//  Data do statement
    ''''+formatdatetime(DMProjeto.sDateFormat,edStatement.Date)+''' As DATASTATEMENT,'+
//  Parcelas a vencer
    '(Select sum(tr.faltareceber) from titulosareceber tr '+
    'where tr.cliente=f.favorecido '+
    'and tr.status In (1,2,3)) As MESESAVENCER,'+
//  Antes da Data Statements
    '(Select sum(tr.faltareceber) from titulosareceber tr '+
    'where tr.cliente=f.favorecido '+
    'and tr.vencimento < :data '+
    'and tr.status>0 and tr.status<50) As MESESBEFORE,'+
//  De 0-30 - Parcelas em aberto
    '(Select sum(tr.faltareceber) from titulosareceber tr '+
    'where tr.cliente=f.favorecido '+
    'and tr.vencimento >= :data '+
    'and tr.vencimento <= :data30 '+
    'and tr.status>0 and tr.status<50) As MESES01,'+
//  De 0-30 - Volume comprado
    '(Select sum(tr.valor) from titulosareceber tr '+
    'where tr.cliente=f.favorecido '+
    'and tr.vencimento >= :data '+
    'and tr.vencimento <= :data30 '+
    'and tr.status>0) As MESES01VOL,'+
//  De 31-60 - Parcelas em aberto
    '(Select sum(tr.faltareceber) from titulosareceber tr '+
    'where tr.cliente=f.favorecido '+
    'and tr.vencimento > :data30 '+
    'and tr.vencimento <= :data60 '+
    'and tr.status>0 and tr.status<50) As MESES02,'+
//  De 31-60 - Volume comprado
    '(Select sum(tr.valor) from titulosareceber tr '+
    'where tr.cliente=f.favorecido '+
    'and tr.vencimento > :data30 '+
    'and tr.vencimento <= :data60 '+
    'and tr.status>0) As MESES02VOL,'+
//  De 61-90 - Parcelas em aberto
    '(Select sum(tr.faltareceber) from titulosareceber tr '+
    'where tr.cliente=f.favorecido '+
    'and tr.vencimento > :data60 '+
    'and tr.vencimento <= :data90 '+
    'and tr.status>0 and tr.status<50) As MESES03,'+
//  De 61-90 - Volume comprado
    '(Select sum(tr.valor) from titulosareceber tr '+
    'where tr.cliente=f.favorecido '+
    'and tr.vencimento > :data60 '+
    'and tr.vencimento <= :data90 '+
    'and tr.status>0) As MESES03VOL,'+
//  maior que 90 - Parcelas em aberto
    '(Select sum(tr.faltareceber) from titulosareceber tr '+
    'where tr.cliente=f.favorecido '+
    'and tr.vencimento > :data90 '+
    'and tr.status>0 and tr.status<50) As MESES04, '+
//  maior que 90 - Volume comprado
    '(Select sum(tr.valor) from titulosareceber tr '+
    'where tr.cliente=f.favorecido '+
    'and tr.vencimento > :data90 '+
    'and tr.status>0) As MESES04VOL '+
    'From favorecidos f ';
    if (WhereAdicional<>'') then
    	sSQL := sSQL + 'Where '+trim(WhereAdicional);

    sSQL := SSQL + iif(WhereAdicional='','Where ',' and ')+' favorecido <> 1 and tipofavorecido = 1 and desativado = ''N''';

    sSQL := sSQL + ' Order By Nome';

    with C_InfGerais do begin
      Close;
      Params.Clear;
    	CommandText := sSQL;
    	CommandText := CommandText + ' ';
      //params.CreateParam(ftDateTime,'Data91',ptInput);
    	//params.parambyname('Data91').asDateTime := edStatement.Date+91;
      //params.CreateParam(ftDateTime,'Data90',ptInput);
    	params.parambyname('Data90').asDateTime := edStatement.Date+90;
    	//params.CreateParam(ftDateTime,'Data61',ptInput);
    	params.parambyname('Data60').asDateTime := edStatement.Date+60;
    	//params.CreateParam(ftDateTime,'Data30',ptInput);
    	params.parambyname('Data30').asDateTime := edStatement.Date+30;
    	//params.CreateParam(ftDateTime,'Data31',ptInput);
  		params.parambyname('Data').asDateTime := edStatement.Date;
     	params.parambyname('DataAnt').asDateTime := edCompletoIni.Date;
   		if bAbrir then
   			Open;
    end;
end;


procedure TDlgStatements.FormShow(Sender: TObject);
var dia,mes,ano: word;
begin
  IDs := '';
  inherited;
  // Zera o balanço e abre a query de statement
  nBalanco := 0;
  C_Config.Open;
  cbTipo.ItemIndex := 0;
  cbTipoChange(TObject(cbTipo));
  DecodeDate(DMProjeto.dDataSistema, ano, mes, dia);
  Dec(mes);
  if mes<1 then begin
    mes := 12;
    Dec(ano); 
  end;
  edStatement.Date := DMProjeto.dDataSistema;
  edCompletoIni.Date := EncodeDate(ano,mes,dia);
  edCompletoFim.Date := DMProjeto.dDataSistema;
end;

procedure TDlgStatements.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;
  nBalanco := C_InfGeraisSALDOANTERIOR.Value;
end;

procedure TDlgStatements.ppDBText9GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if Pos(' 0',Text)>0 then
    Text := copy(Text, 1, Pos(' 0',Text)-1);
end;

procedure TDlgStatements.ppDBText15GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if Text='' then Text := '0,00';
end;

procedure TDlgStatements.btGravarClick(Sender: TObject);
begin
	if (rbSelecionados.Checked) and (DlgStatements.IDs = '') then begin
  	DlgMsg.ShowMsg(929,['os clientes. Clique no botão Escolher.']);
    Exit;
  end;
	Imprimir( true );
end;

procedure TDlgStatements.btSelecionadosClick(Sender: TObject);
var dataIni, dataFim, SQL: string;
begin
  inherited;
  rbSelecionados.Checked := True;
  with DMProjeto do begin
    // extrato de parcelas a receber
    if cbTipo.ItemIndex=0 then begin
      SQL := '';
    // extrato completo
    end else begin
      //dataIni := QuotedStr( FormatDateTime('mm/dd/yyyy',edCompletoIni.Date) );
      //dataFim := QuotedStr( FormatDateTime('mm/dd/yyyy',edCompletoFim.Date) );
      //SQL := '';
      // And (Favorecido In (Select cliente From TitulosAReceber '+
      //  'Where competencia>='+dataIni+' And competencia<='+dataFim+' and cliente <> -1 group by cliente)) ';
    end;
    SetParametrosForm([SQL,IDs,-1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      DlgStatements.IDs := GetParametrosForm(0);
      LimparParametrosForm;
    end;
  end;
end;

procedure TDlgStatements.FormCreate(Sender: TObject);
begin
  inherited;
  DlgStatements := Self;
  sCaptionPeriodo := rblbPeriodo.Caption;
end;

procedure TDlgStatements.ppHeaderBand1BeforePrint(Sender: TObject);
{##}procedure MostraCabecalhoRel(Mostrar: boolean);
{##}var Comp: TComponent;
{##}begin
{##}  Comp := FindComponent('Logotipo');
{##}  if Comp<>nil then TppImage(Comp).Visible := Mostrar;
{##}  Comp := FindComponent('Empresa');
{##}  if Comp<>nil then TppLabel(Comp).Visible := Mostrar;
{##}  Comp := FindComponent('Linha1');
{##}  if Comp<>nil then TppLine(Comp).Visible := Mostrar;
{##}  Comp := FindComponent('Linha2');
{##}  if Comp<>nil then TppLine(Comp).Visible := Mostrar;
{##}  Comp := FindComponent('Endereco');
{##}  if Comp<>nil then TppMemo(Comp).Visible := Mostrar;
{##}end;
begin
  inherited;
  if rbStatements.PageNo>1 then begin
    rbrgCabecalho.Visible := False;
    rbrgCabGrupo.Visible := False;
    MostraCabecalhoRel(False);
  end else begin
    rbrgCabecalho.Visible := True;
    rbrgCabGrupo.Visible := True;
    MostraCabecalhoRel(True);
  end;
end;

procedure TDlgStatements.cbTipoChange(Sender: TObject);
begin
  inherited;
  {Extratos de Parcelas a Receber}
  if cbTipo.ItemIndex=0 then begin
    pnAberto.Visible := True;
    pnCompleto.Visible := False;
    pnCompleto.SendToBack;
  {Extratos Completos}
  end else begin
    pnAberto.Visible := False;
    pnCompleto.Visible := True;
    pnAberto.SendToBack;
  end;
end;

procedure TDlgStatements.rblbPeriodoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
{  if cbTipo.ItemIndex=0 then begin // Extrato das parcelas em aberto
    Text := Replace(Text, ':DATAINI', FormatDateTime('ddddd',edCompletoIni.Date));
    Text := Replace(Text, ':DATAFIM', FormatDateTime('ddddd',edCompletoFim.Date));
  end else begin // Extrato Completo
    Text := Replace(Text, ':DATAINI', FormatDateTime('ddddd',edCompletoIni.Date));
              Text := Replace(Text, ':DATAFIM', FormatDateTime('ddddd',edCompletoFim.Date));
  end;}
end;

procedure TDlgStatements.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    if QtdParametrosForm>1 then begin
      IDs := GetParametrosForm(1);
      rbSelecionados.Checked := True;
    end;
  end;
end;

procedure TDlgStatements.ppDBText12GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if Text='0,00' then
    Text := '';
end;

procedure TDlgStatements.ppDBText10DrawCommandCreate(Sender,
  aDrawCommand: TObject);
begin
  inherited;
  with TppDrawCommand(aDrawCommand) do begin
    // Se for um Deposito
    if C_StatementsTIPO.Value>-1 then begin
      ExpansionKey := C_StatementsTIPODOMOVIMENTO.Value+'@@'+C_StatementsTIPO.AsString;
      Tag := C_StatementsID_AUX.Value;
    // Se for uma Parcela
    end else if C_StatementsID_AUX.AsInteger=0 then begin
      ExpansionKey := 'TR'+'@@'+C_StatementsTIPO.AsString;
      Tag := C_StatementsID.Value;
    // Se for uma Invoice
    end else begin
      ExpansionKey := C_StatementsTIPODOMOVIMENTO.Value+'@@'+C_StatementsTIPO.AsString;
      Tag := C_StatementsID_AUX.Value;
    end;
  end;
end;

procedure TDlgStatements.ppDBText10DrawCommandClick(Sender,
  aDrawCommand: TObject);
var IDRel: integer;
begin
  inherited;
  with TppDrawCommand(aDrawCommand) do begin
    IDRel := Tag;
    with DMProjeto do begin
      SetParametrosForm([IDRel]);
      if SeparaStrings(ExpansionKey,'@@',1)='TR'{Frm_AReceber} then
        CriarForm('FrmA_Receber',Self,True)
      else if SeparaStrings(ExpansionKey,'@@',1)='EP'{ExtratoDeParcelas} then
        CriarForm('FrmInvoices',Self,True)
      else if SeparaStrings(ExpansionKey,'@@',1)='EC'{ExtratoCompleto} then
        CriarForm(getTelaGeradora( StrToInt(SeparaStrings(ExpansionKey,'@@',2)) ),Self,True);
    end;
  end;
end;

procedure TDlgStatements.rblbBalancoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  nBalanco := nBalanco+C_StatementsAMOUNT.Value;
  Text := FormatFloat('##0.00,###',nBalanco);
end;

procedure TDlgStatements.rblbTotalGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := FormatFloat('##0.00,###',nBalanco);
end;

procedure TDlgStatements.edDiasChange(Sender: TObject);
begin
  inherited;
  try
    if StrToInt(edDias.Text)<0 then
      edDias.Text := '0';
  except
    edDias.Text := '0';
  end;
end;

procedure TDlgStatements.Imprimir(bCarta: boolean);
{##}procedure HabilitaControles(Habilita: boolean);
{##}begin
{##}  a.Active := Habilita;
{##}  a.Visible := Habilita;
      if bCarta then
{##}  	btGravar.Enabled := not Habilita
			else
      	btEtiquetas.Enabled := not Habilita;
{##}  btFecharCadastro.Enabled := not Habilita;
{##}  Application.ProcessMessages;
{##}end;
var ClientesEmDia, sID: string;
begin
  inherited;
  ClientesEmDia := '';
  if ckClientesEmDia.Checked then
    ClientesEmDia := ''
  else begin
    with DMProjeto.Q_SQL do begin
    	close;
      sql.text := 'Select cliente From TitulosAReceber '+
      						'Where status >= 3 and status < 50 '+
                  'and vencimento<='+DataString(DMProjeto.dDataSistema,-StrToInt(edDias.Text))+' '+
                  'and cliente <> 1 and cliente is not null '+
                  'group by cliente';
      open;
      sID := '';
      while not EOF do begin
      	sID := sID + fields[0].AsString+',';
        next;
      end;
      close;
      sID := Copy(sID,1,length(sID)-1);
      if sID <> '' then
      	ClientesEmDia := 'f.Favorecido IN ('+sID+') ';
      if (cbTipo.ItemIndex = 0) and (sID='') then
      	ClientesEmDia := 'f.Favorecido = -10000 ';
      //
    end;

  end;
  cbTipoChange(TObject(cbTipo));

  try
  HabilitaControles(True);
  if rbTodos.Checked then begin // todos os clientes
    AbreStatement(ClientesEmDia, bCarta);
  end else begin // clientes selecionados
    AbreStatement(' f.Favorecido In ('+IDs+')', bCarta);
  end;

  if bCarta then begin
  	DMProjeto.ImprimirCabecalho(rbrgCabecalho);
  	rbStatements.Print;
  end else begin
  	DMProjeto.SetParametrosForm([cbTipo.Text, C_InfGerais.CommandText]);
    DMProjeto.CriarForm('DlgEtiquetas',self,true);
  end;
  finally
  	HabilitaControles(False);
  end;
end;

procedure TDlgStatements.btEtiquetasClick(Sender: TObject);
begin
  inherited;
	Imprimir( false );
end;

procedure TDlgStatements.C_InfGeraisFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
	Accept := (not C_Statements.IsEmpty) or ((C_InfGeraisMeses01.Value<>0) or
                                      (C_InfGeraisMeses02.Value<>0) or
                                      (C_InfGeraisMeses03.Value<>0) or
                                      (C_InfGeraisMeses04.Value<>0)  );
end;

procedure TDlgStatements.ppDBText2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if Text <> '' then
		Text := formatdatetime(DMProjeto.sDateFormat, StrToDate(Text) );
end;

procedure TDlgStatements.ppLabel20GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if UpperCase(Copy(DMProjeto.sDateFormat,1,1))='M' then
		Text := 'Before '+formatdatetime('mm/dd/yy',edStatement.Date)
  else
  	Text := 'Before '+formatdatetime('dd/mm/yy',edStatement.Date);
end;

end.

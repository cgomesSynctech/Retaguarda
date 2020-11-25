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
  TS_EffectsPanel, ppDevice, BTOdeum, Placemnt, dxfProgressBar, TS_ListBox,
  TS_Shape, ppRichTx, IdMessage, IdAntiFreezeBase, IdAntiFreeze,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdTCPServer, IdIMAP4Server, IdPOP3, DBWeb,
  HTTPApp, HTTPProd;

type
  TDlgStatements = class(TFrmModeloCadastros)
    RptExtrato: TppReport;
    bdpStatements: TppDBPipeline;
    ppDetailBand1: TppDetailBand;
    C_InfGeraisDS: TDataSource;
    C_InfGerais: TClientDataSet;
    Q_InfGeraisProvider: TDataSetProvider;
    Q_InfGerais: TIBQuery;
    C_StatementsDS: TDataSource;
    C_Statements: TClientDataSet;
    bdpInfGerais: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
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
    ppTitleBand1: TppTitleBand;
    rbrgCabGrupo: TppRegion;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
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
    ppLabel17: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    rgCabExtrato: TppRegion;
    C_InfGeraisNOME: TStringField;
    C_InfGeraisENDERECO: TStringField;
    C_InfGeraisTELEFONE: TStringField;
    C_InfGeraisCODIGO: TStringField;
    C_InfGeraisSALDOANTERIOR: TBCDField;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppLine8: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape6: TppShape;
    ppLabel18: TppLabel;
    rblbDataSaldoAnterior: TppLabel;
    C_InfGeraisDATASTATEMENT: TStringField;
    C_StatementsID: TIntegerField;
    C_StatementsDATA: TDateField;
    C_StatementsDUEDATE: TDateField;
    C_StatementsREFERENCE: TStringField;
    C_StatementsSALDO: TBCDField;
    C_StatementsDESCRIPTION: TStringField;
    C_StatementsAMOUNT: TBCDField;
    C_StatementsTIPODOMOVIMENTO: TStringField;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel19: TppLabel;
    Q_Statements: TIBQuery;
    C_StatementsID_AUX: TIntegerField;
    rblbBalanco: TppLabel;
    rblbTotal: TppLabel;
    C_StatementsTIPO: TIntegerField;
    btVoltar: TTS_SpeedButton;
    pgAssistente: TTS_PageControl;
    tsIntroducao: TTS_TabSheet;
    tsTipo: TTS_TabSheet;
    tsData: TTS_TabSheet;
    tsDiasAtraso: TTS_TabSheet;
    tsClientes: TTS_TabSheet;
    dxfLabel1: TdxfLabel;
    TS_MaxPanel1: TTS_MaxPanel;
    TS_MaxPanel2: TTS_MaxPanel;
    TS_Label8: TTS_Label;
    TS_Label17: TTS_Label;
    TS_Label18: TTS_Label;
    rbEmAtraso: TTS_RadioButton;
    rbExtrato: TTS_RadioButton;
    dxfLabel2: TdxfLabel;
    TS_MaxPanel3: TTS_MaxPanel;
    TS_MaxPanel4: TTS_MaxPanel;
    dxfLabel3: TdxfLabel;
    TS_MaxPanel5: TTS_MaxPanel;
    TS_MaxPanel6: TTS_MaxPanel;
    edStatement: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    TS_Label5: TTS_Label;
    edDias: TTS_Edit;
    TS_Label6: TTS_Label;
    dxfLabel4: TdxfLabel;
    TS_MaxPanel7: TTS_MaxPanel;
    TS_MaxPanel8: TTS_MaxPanel;
    tsTextos: TTS_TabSheet;
    rbTodos: TTS_RadioButton;
    rbSelecionados: TTS_RadioButton;
    dxfLabel5: TdxfLabel;
    TS_MaxPanel9: TTS_MaxPanel;
    TS_MaxPanel10: TTS_MaxPanel;
    dxfLabel6: TdxfLabel;
    TS_MaxPanel11: TTS_MaxPanel;
    TS_MaxPanel12: TTS_MaxPanel;
    tsFinal: TTS_TabSheet;
    dxfLabel7: TdxfLabel;
    TS_MaxPanel13: TTS_MaxPanel;
    TS_MaxPanel14: TTS_MaxPanel;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_SpeedButton2: TTS_SpeedButton;
    lbMsg: TTS_Label;
    Barra: TdxfProgressBar;
    TS_Shape11: TTS_Shape;
    lbAddRem: TTS_Label;
    lbClientes: TTS_ListBox;
    pgTexto: TTS_PageControl;
    tsExtrato: TTS_TabSheet;
    tsEmAtraso: TTS_TabSheet;
    ckbExtratoInicial: TTS_CheckBox;
    ckbExtratoFinal: TTS_CheckBox;
    TS_SpeedButton3: TTS_SpeedButton;
    TS_SpeedButton4: TTS_SpeedButton;
    rbTextoUnico: TTS_RadioButton;
    rbTextoDias: TTS_RadioButton;
    TS_SpeedButton5: TTS_SpeedButton;
    TS_SpeedButton6: TTS_SpeedButton;
    TS_Label7: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    TS_Label11: TTS_Label;
    TS_SpeedButton7: TTS_SpeedButton;
    TS_SpeedButton8: TTS_SpeedButton;
    TS_SpeedButton9: TTS_SpeedButton;
    C_InfGeraisDATAATRASO: TDateField;
    RptEmAtraso: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppRegion1: TppRegion;
    ppLabel21: TppLabel;
    ppDBText19: TppDBText;
    ppDBText25: TppDBText;
    ppLabel22: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel23: TppLabel;
    ppRegion2: TppRegion;
    ppLine24: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    rgCabAtraso: TppRegion;
    ppLine30: TppLine;
    ppDetailBand3: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel34: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    rtTextoExtratoInicial: TppRichText;
    rtTextoExtratoFinal: TppRichText;
    rtAtrasoInicial: TppRichText;
    rtAtrasoFinal: TppRichText;
    ckbAtrasoTextoFinal: TTS_CheckBox;
    TS_SpeedButton10: TTS_SpeedButton;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLabel16: TppLabel;
    ppLine1: TppLine;
    ppLabel20: TppLabel;
    ppDBText6: TppDBText;
    ppLine2: TppLine;
    C_StatementsDiasAtraso: TIntegerField;
    tsOpcoes: TTS_TabSheet;
    dxfLabel8: TdxfLabel;
    TS_MaxPanel15: TTS_MaxPanel;
    TS_MaxPanel16: TTS_MaxPanel;
    ckbCabecalho: TTS_CheckBox;
    ckbTabela: TTS_CheckBox;
    rgTabela: TppRegion;
    ppRegion3: TppRegion;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    C_StatementsSTATUS: TStringField;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine6: TppLine;
    ppLine15: TppLine;
    C_InfGeraisESTADO: TStringField;
    C_InfGeraisZIP: TStringField;
    C_InfGeraisSALDO: TBCDField;
    C_InfGeraisID: TIntegerField;
    C_InfGeraisEMAIL: TStringField;
    C_InfGeraisTELEFONE2: TStringField;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    C_InfGeraisCIDADE: TStringField;
    C_InfGeraisBAIRRO: TStringField;
    C_InfGeraisNUMERO: TStringField;
    NUMERO: TppField;
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDBText9GetText(Sender: TObject; var Text: String);
    procedure ppDBText15GetText(Sender: TObject; var Text: String);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure ppDBText12GetText(Sender: TObject; var Text: String);
    procedure ppDBText10DrawCommandCreate(Sender, aDrawCommand: TObject);
    procedure ppDBText10DrawCommandClick(Sender, aDrawCommand: TObject);
    procedure rblbBalancoGetText(Sender: TObject; var Text: String);
    procedure rblbTotalGetText(Sender: TObject; var Text: String);
    procedure edDiasChange(Sender: TObject);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure tsFinalShow(Sender: TObject);
    procedure pgAssistenteChange(Sender: TObject);
    procedure rbSelecionadosClick(Sender: TObject);
    procedure lbAddRemClick(Sender: TObject);
    procedure btVoltarClick(Sender: TObject);
    procedure tsClientesShow(Sender: TObject);
    procedure rtTextoExtratoInicialPrint(Sender: TObject);
    procedure TS_SpeedButton3Click(Sender: TObject);
    procedure TS_SpeedButton4Click(Sender: TObject);
    procedure rtTextoExtratoFinalPrint(Sender: TObject);
    procedure TS_SpeedButton5Click(Sender: TObject);
    procedure TS_SpeedButton6Click(Sender: TObject);
    procedure TS_SpeedButton7Click(Sender: TObject);
    procedure TS_SpeedButton8Click(Sender: TObject);
    procedure TS_SpeedButton9Click(Sender: TObject);
    procedure rtAtrasoInicialPrint(Sender: TObject);
    procedure TS_SpeedButton10Click(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure C_StatementsCalcFields(DataSet: TDataSet);
    procedure tsOpcoesShow(Sender: TObject);
    procedure rblbDataSaldoAnteriorGetText(Sender: TObject;
      var Text: String);
    procedure tsIntroducaoShow(Sender: TObject);
    procedure ppStatementsFormatCell(Sender: TObject; CellRow,
      CellColumn: Integer; var BgColor: THTMLBgColor;
      var Align: THTMLAlign; var VAlign: THTMLVAlign; var CustomAttrs,
      CellData: String);
    procedure ppStatementsCreateContent(Sender: TObject;
      var Continue: Boolean);

  private
    { Private declarations }
    IDs, sCaptionPeriodo: string;
    nBalanco: Currency;
		nSomaSaldo30, nSomaOriginal30, nSomaSaldo60, nSomaOriginal60,
	  nSomaSaldo90, nSomaOriginal90, nSomaSaldo90A,nSomaOriginal90A : Currency;
    slCamposConsulta : TStringList;
    function DataString(dData:TDateTime;incremento:integer = 0):string;
    procedure AbreStatement(WhereAdicional: string=''; bAbrir : boolean = true);
    procedure Imprimir( bCarta : boolean; PorEmail : boolean = false );
    procedure EditarTexto(Texto: integer);
    function getTitulos: string;
    function RtfToText(sArquivo: string): string;
  public
    { Public declarations }
  end;

var
  DlgStatements: TDlgStatements;

implementation

uses DM_Projeto, funcoes, Util2, Form_RichEdit; //rtf2html;

{$R *.DFM}

function TDlgStatements.DataString(dData:TDateTime;incremento:integer = 0):string;
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
  dataIni, dataFim, condTipo1, condTipo2: string;
begin
  inherited;
  {Parcelas em Atraso}
  if rbEmAtraso.Checked then begin
    Q_Statements.SQL.Text := 'Select tr.ID as IDTITULO, tr.venda as ID_AUX, tr.competencia as Data, '+
      'tr.vencimento As DueDate, CAST(tr.titulo as varchar(50)) as Reference, '+
      'tr.faltareceber as Saldo, CAST(tog.descricao as varchar(50)) as Description, '+
      'tr.valor as Amount, '+QuotedStr('EP'){ExtratoDeParcelas}+' as tipodomovimento, '+
      '-1 as tipo, tr.cliente as ID, st.descricao as status '+
      'From TitulosAReceber tr '+
      'Left Join TiposOrigens tog on tog.origem = tr.origem_areceber '+
      'Left join StatusTitulos st on st.status = tr.status '+
      'Where tr.status = 3 And tr.cliente = :ID '+
      'And tr.vencimento<='+DataString(DMProjeto.dDataSistema,-StrToInt(edDias.Text))+' '+
      'Order By tr.vencimento, tr.competencia';
    rblbDataSaldoAnterior.Caption := '('+FormatDateTime('mm/dd/yyyy',DMProjeto.dDataSistema-(StrToInt(edDias.Text)+1))+')';
  {Extratos Completos}
  end else begin
    condTipo1 := 'And tr.competencia >= '+DataString(edStatement.Date)+' ';
    Q_Statements.SQL.Text := 'Select tr.ID as IDTITULO, tr.idgerador_areceber as ID_AUX, '+
    												 'tr.competencia as Data, tr.vencimento As DueDate, '+
                             'CAST(tr.titulo as varchar(50)) as Reference, '+
      											 'tr.faltareceber as Saldo, CAST(tog.descricao as varchar(50)) as Description, '+
      											 'tr.valor as Amount, '+QuotedStr('EP'){ExtratoDeParcelas}+' as tipodomovimento, '+
      											 'tr.origem_areceber as tipo, tr.cliente as ID, '+
                             'st.descricao as status '+
      											 'From TitulosAReceber tr '+
      											 'Left Join TiposOrigens tog on tog.origem = tr.origem_areceber '+
                             'Left join StatusTitulos st on st.status = tr.status '+
      											 'Where tr.status > 0 '+ // todos os titulos
      											 'And tr.cliente = :ID '+
      												condTipo1+
      											 'Order by 3 ';
  end;

  sSQL := 'Select f.Favorecido as ID, f.Nome, f.Email, f.Endereco, f.Cidade, f.UF as Estado, F.BAIRRO AS BAIRRO, F.NRO as numero , f.CEP as Zip, f.Fone1 as Telefone, f.Fone2 as Telefone2, f.Codigo, '+
    			'(Select Sum(faltareceber) From titulosareceber '+
          ' Where cliente=f.favorecido And competencia < :data And '+
          ' status = 3 ) '+
					' as SaldoAnterior, '+
					'(Select Sum(faltareceber) From titulosareceber '+
          ' Where cliente=f.favorecido and status = 3 '+
          'And vencimento<='+DataString(DMProjeto.dDataSistema,-StrToInt(edDias.Text))+') '+
					' as Saldo, '+
    		  '(Select Min(Vencimento) From Titulosareceber '+
          ' Where cliente=f.favorecido And status=3) As DataAtraso,'+
    			''''+formatdatetime(DMProjeto.sDateFormat,edStatement.Date)+''' As DATASTATEMENT '+
    			'From favorecidos f ';

  if (WhereAdicional<>'') then
   	sSQL := sSQL + 'Where '+trim(WhereAdicional);

  sSQL := SSQL + iif(WhereAdicional='','Where ',' and ')+' f.favorecido <> 1 ';

  sSQL := sSQL + ' Order By f.Nome';

 	Barra.Position := Barra.Position + 1;
 	lbMsg.Caption := 'Aguarde...Consultando...';
 	Application.ProcessMessages;

  with C_InfGerais do begin
    Close;
    Params.Clear;
  	CommandText := sSQL;
   	CommandText := CommandText + ' ';
  	params.parambyname('Data').asDateTime := edStatement.Date;
  	if bAbrir then
  		Open;
  end;
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
  if Text='' then
  	Text := '0,00';
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
  if rptExtrato.PageNo>1 then begin
    rgCabExtrato.Visible := False;
    rbrgCabGrupo.Visible := False;
    MostraCabecalhoRel(False);
  end else begin
    rgCabExtrato.Visible := True;
    rbrgCabGrupo.Visible := True;
    MostraCabecalhoRel(True);
  end;
end;

procedure TDlgStatements.FormsComponentBeforeClearParams(Sender: TObject);
var dia,mes,ano: word;
begin
  inherited;
  IDs := '';
  pgAssistente.ActivePage := tsIntroducao;
  with DMProjeto do begin
    if QtdParametrosForm>1 then begin
      IDs := GetParametrosForm(1);
      rbSelecionados.OnClick := nil;
      rbSelecionados.Checked := True;
      rbTodos.Checked := false;
      rbSelecionados.OnClick := rbSelecionadosClick;
      if QtdParametrosForm > 2 then begin
      	lbClientes.Items.text := replace(GetParametrosForm(2),',',#13);
      	lbClientes.Items.SetText(PChar(lbClientes.Items.text));
      end;
    end;
  end;
  // Zera o balanço e abre a query de statement
  nBalanco := 0;
  DecodeDate(DMProjeto.dDataSistema, ano, mes, dia);
  Dec(mes);
  if mes<1 then begin
    mes := 12;
    Dec(ano);
  end;
  edStatement.Date := DMProjeto.dDataSistema;

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
  nBalanco := nBalanco+C_StatementsSALDO.Value;
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

procedure TDlgStatements.Imprimir(bCarta: boolean; PorEmail : boolean = false);
var sID, sQuery : string;
		i : integer;
begin
  inherited;
    slCamposConsulta := TStringList.Create;
    Barra.Position := 1;
    lbMsg.Caption := 'Aguarde...Selecionando Clientes...';
    Application.ProcessMessages;
    if rbEmAtraso.Checked then begin
    	with DMProjeto.Q_SQL do begin
        close;
        sql.text := 'select query from consultas where consulta = 2';
        open;
        sQuery := Fields[0].AsString;
        close;
        sql.text := sQuery;
				getFieldNames( slCamposConsulta );
    		close;
      	sql.text := 'Select t.cliente From TitulosAReceber t '+
      							'Where t.status >= 3 and t.status < 50 '+
                  	'and t.vencimento<='+DataString(DMProjeto.dDataSistema,-StrToInt(edDias.Text))+' '+
                  	'and t.cliente <> 1 '+
                  	'group by t.cliente';
      	open;
    		Barra.Position := Barra.Position + 1;
    		lbMsg.Caption := 'Aguarde...Selecionando Clientes...';
    		Application.ProcessMessages;

      	sID := '';
      	while not EOF do begin
      		sID := sID + fields[0].AsString+',';
        	next;
      	end;
      	close;
      	sID := Copy(sID,1,length(sID)-1);
      	if sID <> '' then
      		sID := 'f.Favorecido IN ('+sID+') ';
      	if (rbEmAtraso.Checked) and (sID='') then
      		sID := 'f.Favorecido = -10000 ';
    	end;
    end;
  	Barra.Position := Barra.Position + 1;
   	Application.ProcessMessages;

  if rbTodos.Checked then // todos os clientes
    AbreStatement(sID, bCarta)
  else begin
    if rbEmAtraso.Checked then begin
    	sID := '';
    	for i:=1 to ContaStrings(IDs,',') do begin
    		with DMProjeto.Q_SQL do begin
        	close;
      		sql.text := 'Select count(cliente) From TitulosAReceber '+
      								'Where cliente = :ID and status >= 3 and status < 50 '+
            	      	'and vencimento<='+DataString(DMProjeto.dDataSistema,-StrToInt(edDias.Text));
        	parambyname('ID').AsInteger := StrToInt( SeparaStrings( IDs, ',', i) );
      		open;
        	if fields[0].AsInteger > 0 then
        		sID := CExp(sID,',') + SeparaStrings( IDs, ',', i);
        	close;
      	end;
    	end;
    	if sID = '' then
      	sID := ' f.Favorecido = -10000 '
    	else
    		sID := ' f.Favorecido In ('+sID+')';
      AbreStatement(sID, bCarta);
    end else begin
    	Barra.Position := Barra.Position + 1;
    	lbMsg.Caption := 'Aguarde...Selecionando Clientes...';
    	Application.ProcessMessages;

    	if IDs = '' then
      	sID := ' f.Favorecido = -10000 '
    	else
    		sID := ' f.Favorecido In ('+IDs+')';
			AbreStatement(sID, bCarta);
    end;
  end;
  Barra.Position := Barra.Position + 1;
  lbMsg.Caption := 'Aguarde...Preparando...';
  Application.ProcessMessages;

  if bCarta then begin
    if rbEmAtraso.Checked then begin
      if ckbCabecalho.Checked then
        DMProjeto.ImprimirCabecalho(rgCabAtraso)
      else
        rgCabAtraso.Visible := false;
      rgTabela.Visible := ckbTabela.Checked;
      rptEmAtraso.Print;
    end else begin
      if ckbCabecalho.Checked then
				DMProjeto.ImprimirCabecalho(rgCabExtrato)
      else
      	rgCabExtrato.Visible := false;
  		rptExtrato.Print;
    end;
  end else begin
  	DMProjeto.SetParametrosForm([iif(rbEmAtraso.Checked,rbEmAtraso.Caption,rbExtrato.Caption), C_InfGerais.CommandText,'','',getTitulos]);
    DMProjeto.CriarForm('DlgEtiquetas',self,true);
  end;
  Barra.Position := 0;
  lbMsg.Caption := '';
  Application.ProcessMessages;
end;

function TDlgStatements.getTitulos : string;
var sString : string;
		i : integer;
begin
  sString := '';
  with C_InfGerais do begin
		for i:=0 to Fields.Count-1 do
      if Fields[i].Tag = 0 then 
    		sString := CExp(sString,'|') + Fields[i].FieldName + '=' + Fields[i].DisplayLabel;
  end;
	result := sString;
end;

procedure TDlgStatements.ppDBText2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if Text <> '' then
		Text := formatdatetime(DMProjeto.sDateFormat, StrToDate(Text) );
end;

procedure TDlgStatements.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
	if (rbSelecionados.Checked) and (IDs = '') then begin
  	DlgMsg.ShowMsg(929,['os clientes. Clique no botão Escolher.']);
    Exit;
  end;
	Imprimir( true );
end;

procedure TDlgStatements.TS_SpeedButton2Click(Sender: TObject);
begin
  inherited;
	Imprimir( false );
end;

procedure TDlgStatements.btGravarClick(Sender: TObject);
begin
  inherited;
	with pgAssistente do begin
    if ActivePage = tsTipo then begin
    	if rbEmAtraso.Checked then begin
        pgTexto.ActivePage := tsEmAtraso;
       	ActivePage := tsDiasAtraso
      end else begin
        pgTexto.ActivePage := tsExtrato;
      	NextPage;
      end;
    end else if ActivePage = tsData then
    	ActivePage := tsClientes
    else if ActivePage = tsClientes then begin
			if rbSelecionados.Checked and (lbClientes.Items.Count = 0) then begin
      	DlgMsg.ShowMsg( 929, ['os clientes selecionados'] );
        Exit;
      end;
      NextPage;
    end else
  		NextPage;
  end;
  btVoltar.Enabled := true;
end;

procedure TDlgStatements.tsFinalShow(Sender: TObject);
begin
  inherited;
	btGravar.Enabled := false;
end;

procedure TDlgStatements.pgAssistenteChange(Sender: TObject);
begin
  inherited;
  if pgAssistente.ActivePage.CanFocus then
  	ActiveControl := FindNextControl( pgAssistente.ActivePage, true, true, false );
end;

procedure TDlgStatements.lbAddRemClick(Sender: TObject);
begin
  inherited;
  rbSelecionados.Checked := True;
  with DMProjeto do begin
    SetParametrosForm(['',IDs,1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      IDs := GetParametrosForm(0);
      lbClientes.Items.text := replace(GetParametrosForm(1),',',#13);
      lbClientes.Items.SetText(PChar(lbClientes.Items.text));
      LimparParametrosForm;
    end;
  end;
end;

procedure TDlgStatements.rbSelecionadosClick(Sender: TObject);
begin
  inherited;
	lbAddRemClick(Sender);
end;

procedure TDlgStatements.btVoltarClick(Sender: TObject);
begin
  inherited;
	with pgAssistente do begin
    if ActivePage = tsClientes then begin
    	if rbExtrato.Checked then
      	ActivePage := tsData
      else
      	NextPage( false );
    end else if ActivePage = tsDiasAtraso then begin
    	if rbEmAtraso.Checked then
      	ActivePage := tsTipo
      else
      	NextPage( false );
    end else
  		NextPage( false );
  end;
  btGravar.Enabled := true;
end;

procedure TDlgStatements.tsClientesShow(Sender: TObject);
begin
  inherited;
	if rbExtrato.Checked then begin
  	rbTodos.Visible := false;
    rbSelecionados.Checked := true;
  end else begin
  	rbTodos.Visible := true;
  end;
end;

procedure TDlgStatements.rtTextoExtratoInicialPrint(Sender: TObject);
begin
  inherited;
	if ckbExtratoInicial.Checked then
		rtTextoExtratoInicial.LoadFromFile(DMProjeto.ProgPath+'Textos\50.rtf');
end;

procedure TDlgStatements.EditarTexto( Texto : integer );
begin
	with DMProjeto do begin
  	SetParametrosForm( [Texto] );
    CriarForm('FrmTextos',self,true);
  end;
end;

procedure TDlgStatements.TS_SpeedButton3Click(Sender: TObject);
begin
  inherited;
	EditarTexto( 50 );
end;

procedure TDlgStatements.TS_SpeedButton4Click(Sender: TObject);
begin
  inherited;
  EditarTexto( 51 );
end;

procedure TDlgStatements.rtTextoExtratoFinalPrint(Sender: TObject);
begin
  inherited;
	if ckbExtratoFinal.Checked then
		rtTextoExtratoFinal.LoadFromFile(DMProjeto.ProgPath+'Textos\51.rtf');
end;

procedure TDlgStatements.TS_SpeedButton5Click(Sender: TObject);
begin
  inherited;
  EditarTexto( 2 );
end;

procedure TDlgStatements.TS_SpeedButton6Click(Sender: TObject);
begin
  inherited;
  EditarTexto( 2 );
end;

procedure TDlgStatements.TS_SpeedButton7Click(Sender: TObject);
begin
  inherited;
  EditarTexto( 52 );
end;

procedure TDlgStatements.TS_SpeedButton8Click(Sender: TObject);
begin
  inherited;
  EditarTexto( 53 );
end;

procedure TDlgStatements.TS_SpeedButton9Click(Sender: TObject);
begin
  inherited;
  EditarTexto( 54 );
end;

procedure TDlgStatements.rtAtrasoInicialPrint(Sender: TObject);
var dtData : TDateTime;
  	slCamposChave : TStringList;
    i : integer;
begin
  inherited;

  if TppRichText(Sender).Name = 'rtAtrasoInicial' then begin

  if rbTextoUnico.Checked then begin

    if fileexists(DMProjeto.ProgPath+'Textos\2.rtf') then
    	rtAtrasoInicial.LoadFromFile(DMProjeto.ProgPath+'Textos\2.rtf');

  end else begin

  	dtData := C_InfGeraisDATAATRASO.Value;

  	if (edStatement.Date-dtData)<=30 then begin

      if fileexists(DMProjeto.ProgPath+'Textos\2.rtf') then
				rtAtrasoInicial.LoadFromFile(DMProjeto.ProgPath+'Textos\2.rtf');

  	end else if ((edStatement.Date-dtData)<=60) then begin

      if fileexists(DMProjeto.ProgPath+'Textos\52.rtf') then
				rtAtrasoInicial.LoadFromFile(DMProjeto.ProgPath+'Textos\52.rtf');

    end else if ((edStatement.Date-dtData)<=90) then begin

      if fileexists(DMProjeto.ProgPath+'Textos\53.rtf') then
				rtAtrasoInicial.LoadFromFile(DMProjeto.ProgPath+'Textos\53.rtf');

  	end else begin

      if fileexists(DMProjeto.ProgPath+'Textos\54.rtf') then
				rtAtrasoInicial.LoadFromFile(DMProjeto.ProgPath+'Textos\54.rtf');

    end;

  end;

  end else begin

  if ckbAtrasoTextoFinal.Checked then
    if fileexists(DMProjeto.ProgPath+'Textos\55.rtf') then
  		rtAtrasoFinal.LoadFromFile(DMProjeto.ProgPath+'Textos\55.rtf');

  end;

  if pos('[EXTENSO(<VALOR>)]', UpperCase(TppRichText(Sender).RichText) ) > 0 then
    TppRichText(Sender).RichText :=  replace(TppRichText(Sender).RichText,'[Extenso(<Valor>)]',Util2.Extenso(C_InfGerais.FieldByName('Saldo').AsFloat));

	slCamposChave := TStringList.Create;
 	slCamposChave := DMProjeto.getCamposChave;
 	for i:=0 to slCamposChave.Count-1 do
   	TppRichText(Sender).RichText := replace(TppRichText(Sender).RichText,'<'+SeparaStrings(slCamposChave[i],'=',1)+'>',SeparaStrings(slCamposChave[i],'=',2));
  slCamposChave.Free;

  for i:=0 to slCamposConsulta.Count-1 do
    if C_InfGerais.FieldByName(slCamposConsulta[i]).DataType in [ftFloat,ftBCD] then
      TppRichText(Sender).RichText := replace(TppRichText(Sender).RichText,'<'+slCamposConsulta[i]+'>',formatfloat('###,###,##0.00',C_InfGerais.FieldByName(slCamposConsulta[i]).AsFloat))
    else
      TppRichText(Sender).RichText := replace(TppRichText(Sender).RichText,'<'+slCamposConsulta[i]+'>',C_InfGerais.FieldByName(slCamposConsulta[i]).AsString);
end;

procedure TDlgStatements.TS_SpeedButton10Click(Sender: TObject);
begin
  inherited;
	EditarTexto( 55 );
end;

procedure TDlgStatements.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  inherited;
	nSomaSaldo30 		:= 0;
  nSomaOriginal30 := 0;
	nSomaSaldo60 		:= 0;
  nSomaOriginal60 := 0;
	nSomaSaldo90 		:= 0;
  nSomaOriginal90 := 0;
	nSomaSaldo90A 	:= 0;
  nSomaOriginal90A:= 0;

	with C_Statements do begin
    DisableControls;
  	First;
    while not EOF do begin
      if (DMProjeto.dDataSistema - C_StatementsDueDate.Value) <= 30 then begin
      	nSomaSaldo30 		:= nSomaSaldo30 + C_StatementsSaldo.Value;
        nSomaOriginal30 := nSomaOriginal30 + C_StatementsAmount.Value;
      end else if (DMProjeto.dDataSistema - C_StatementsDueDate.Value) <= 60 then begin
      	nSomaSaldo60 		:= nSomaSaldo60 + C_StatementsSaldo.Value;
        nSomaOriginal60 := nSomaOriginal60 + C_StatementsAmount.Value;
      end else if (DMProjeto.dDataSistema - C_StatementsDueDate.Value) <= 90 then begin
      	nSomaSaldo90 		:= nSomaSaldo90 + C_StatementsSaldo.Value;
        nSomaOriginal90 := nSomaOriginal90 + C_StatementsAmount.Value;
      end else begin
      	nSomaSaldo90A 	:= nSomaSaldo90A + C_StatementsSaldo.Value;
        nSomaOriginal90A:= nSomaOriginal90A + C_StatementsAmount.Value;
      end;
    	Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TDlgStatements.ppLabel2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatfloat('#,###,##0.00',nSomaSaldo30 );
end;

procedure TDlgStatements.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatfloat('#,###,##0.00',nSomaOriginal30 );
end;

procedure TDlgStatements.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatfloat('#,###,##0.00',nSomaSaldo60 );
end;

procedure TDlgStatements.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatfloat('#,###,##0.00',nSomaOriginal60 );
end;

procedure TDlgStatements.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatfloat('#,###,##0.00',nSomaSaldo90 );
end;

procedure TDlgStatements.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatfloat('#,###,##0.00',nSomaOriginal90 );
end;

procedure TDlgStatements.ppLabel16GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatfloat('#,###,##0.00',nSomaSaldo90A );
end;

procedure TDlgStatements.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := formatfloat('#,###,##0.00',nSomaOriginal90A );
end;

procedure TDlgStatements.ppLabel34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  nBalanco := nBalanco+C_StatementsSALDO.Value;
  Text := FormatFloat('##0.00,###',nBalanco);
end;

procedure TDlgStatements.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
  inherited;
  nBalanco := 0;
end;

procedure TDlgStatements.C_StatementsCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_StatementsDiasAtraso.Value := Trunc(DMProjeto.dDataSistema) - Trunc(C_StatementsDueDate.Value);
end;

procedure TDlgStatements.tsOpcoesShow(Sender: TObject);
begin
  inherited;
	ckbTabela.Visible := rbEmAtraso.Checked;
end;

procedure TDlgStatements.rblbDataSaldoAnteriorGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
	Text := replace(DataString(edStatement.Date,-1),'''','');
end;

procedure TDlgStatements.tsIntroducaoShow(Sender: TObject);
begin
  inherited;
	btGravar.Enabled := true;
end;


procedure TDlgStatements.ppStatementsFormatCell(Sender: TObject; CellRow,
  CellColumn: Integer; var BgColor: THTMLBgColor; var Align: THTMLAlign;
  var VAlign: THTMLVAlign; var CustomAttrs, CellData: String);
begin
  inherited;
  if CellRow = 0 then
		bgColor := '#D2E6EE'
  else
  	bgColor := '#EDF4F8';
  if (CellRow > 0) and (CellColumn = 7) then begin
  	nBalanco := nBalanco+C_StatementsSALDO.Value;
    CellData := formatfloat('#,###,##0.00',nBalanco);
  end;
end;

procedure TDlgStatements.ppStatementsCreateContent(Sender: TObject;
  var Continue: Boolean);
begin
  inherited;
  nBalanco := 0;
end;

function TDlgStatements.RtfToText( sArquivo : string ) : string;
begin
  FormRichEdit := TFormRichEdit.Create(self);
	FormRichEdit.RichEdit.Lines.LoadFromFile( sArquivo );
	FormRichEdit.RichEdit.PlainText  := true;
  result := FormRichEdit.RichEdit.Lines.Text;
  FormRichEdit.Free;
end;


end.



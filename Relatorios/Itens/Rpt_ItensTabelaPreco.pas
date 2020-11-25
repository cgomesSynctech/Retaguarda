unit Rpt_ItensTabelaPreco;
                                                               
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, dxExEdtr, dxEdLib, TS_CheckBox, dxCntner, dxEditor,
  dxDBEdtr, dxDBELib, TS_LookupComboBox, Buttons, TS_SpeedButton, dxTL,
  dxDBCtrl, dxDBGrid, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet,
  IBQuery, TS_LastDataObject, DlgMsg, teCtrls,
  TS_EffectsPanel, TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel,
  TS_MaxPanel, dxDBTLCl, dxGrClms, Menus, TS_PopupMenu, ComCtrls, Variants,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  Placemnt, BTOdeum, TS_PopupEdit, TS_PopupFiltrarItens, Math;

type
  TRptItensTabelaPreco = class(TRptPadrao)
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaTIPOITEM: TStringField;
    C_ConsultaGRUPO: TStringField;
    C_ConsultaFABRICANTE: TStringField;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaTIPOITEM: TdxDBGridMaskColumn;
    dbgConsultaGRUPO: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    Q_SQL: TIBQuery;
    C_ConsultaCONTA_VEN: TStringField;
    C_ConsultaCONTA_CUS: TStringField;
    C_ConsultaCONTA_INV: TStringField;
    C_ConsultaCOMISSAO: TBCDField;
    C_ConsultaDESCONTOMAXIMO: TBCDField;
    C_ConsultaULTFORNECEDOR: TStringField;
    dbgConsultaCONTA_VEN: TdxDBGridMaskColumn;
    dbgConsultaCONTA_CUS: TdxDBGridMaskColumn;
    dbgConsultaCONTA_INV: TdxDBGridMaskColumn;
    dbgConsultaCOMISSAO: TdxDBGridMaskColumn;
    dbgConsultaDESCONTOMAXIMO: TdxDBGridMaskColumn;
    dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn;
    C_ConsultaREFERENCIA: TStringField;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    C_ConsultaTAXINCLUSO: TStringField;
    dbgConsultaTAXINCLUSO: TdxDBGridCheckColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    C_ConsultaIDULTFORNECEDOR: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
    gridTabelasPreco: TTS_QDBGrid;
    gridTabelasPrecoDESCRICAO: TdxDBGridMaskColumn;
    gridTabelasPrecoPERCENTUAL: TdxDBGridMaskColumn;
    gridTabelasPrecoDESATIVADO: TdxDBGridCheckColumn;
    gridTabelasPrecoBASEADA: TdxDBGridCheckColumn;
    TS_Label2: TTS_Label;
    cmbTabelaPreco: TTS_PopupEdit;
    C_TabelasPrecoDS: TDataSource;
    C_TabelasPreco: TClientDataSet;
    Q_TabelasPreco: TIBQuery;
    P_TabelasPreco: TDataSetProvider;
    C_TabelasPrecoTABELAPRECO: TIntegerField;
    C_TabelasPrecoDESCRICAO: TStringField;
    C_TabelasPrecoPERCENTUAL: TBCDField;
    C_TabelasPreco_icSelecionado: TIntegerField;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaULTIMAVENDA: TDateField;
    C_ConsultaDESCRICAOCOMPLEMENTAR: TStringField;
    C_ConsultaDESCRICAOTECNICA: TStringField;
    C_ConsultaCST: TStringField;
    C_ConsultaREDUCAOCST: TBCDField;
    C_ConsultaIPICOMPRA: TBCDField;
    C_ConsultaIPIVENDA: TBCDField;
    C_ConsultaPESOBRUTO: TBCDField;
    C_ConsultaPESOLIQUIDO: TBCDField;
    C_ConsultaALIQICMS: TBCDField;
    C_ConsultaSITUACAOECF: TStringField;
    C_ConsultaTVA: TBCDField;
    C_ConsultaTVAFONTE: TBCDField;
    C_ConsultaCLASFISCAL: TStringField;
    dbgConsultaULTIMAVENDA: TdxDBGridDateColumn;
    dbgConsultaDESCRICAOCOMPLEMENTAR: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOTECNICA: TdxDBGridMaskColumn;
    dbgConsultaCST: TdxDBGridMaskColumn;
    dbgConsultaREDUCAOCST: TdxDBGridMaskColumn;
    dbgConsultaIPICOMPRA: TdxDBGridMaskColumn;
    dbgConsultaIPIVENDA: TdxDBGridMaskColumn;
    dbgConsultaPESOBRUTO: TdxDBGridMaskColumn;
    dbgConsultaPESOLIQUIDO: TdxDBGridMaskColumn;
    dbgConsultaALIQICMS: TdxDBGridMaskColumn;
    dbgConsultaSITUACAOECF: TdxDBGridMaskColumn;
    dbgConsultaTVA: TdxDBGridMaskColumn;
    dbgConsultaTVAFONTE: TdxDBGridMaskColumn;
    dbgConsultaCLASFISCAL: TdxDBGridMaskColumn;
    C_ConsultaTOTCOMISS: TFloatField;
    dbgConsultaTotComissao: TdxDBGridColumn;
    ckbTotalizar: TTS_CheckBox;
    C_Consultaic_Valor_CustoMedio: TCurrencyField;
    dbgConsultaic_Valor_CustoMedio: TdxDBGridColumn;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaPRECOCOMPRA: TFloatField;
    C_ConsultaESTOQUE: TIntegerField;
    dbgConsultaESTOQUE: TdxDBGridMaskColumn;
    C_Consultaic_Estoque: TIntegerField;
    TS_Label1: TTS_Label;
    cmbIndex: TTS_LookupComboBox;
    Q_Indexadores: TIBQuery;
    P_Indexadores: TDataSetProvider;
    C_Indexadores: TClientDataSet;
    C_IndexadoresINDEXADOR: TIntegerField;
    C_IndexadoresDESCRICAO: TStringField;
    C_IndexadoresDS: TDataSource;
    C_ConsultaINDEXADOR: TIntegerField;
    C_ConsultaCODIGOBARRAS: TStringField;
    dbgConsultaCODIGOBARRAS: TdxDBGridColumn;
    N2: TMenuItem;
    ColetorGerTec1: TMenuItem;
    sdGertec: TSaveDialog;
    cbServicos: TTS_CheckBox;
    BalanaFilizolaPlatina1: TMenuItem;
    ColetordeDados1: TMenuItem;
    C_ConsultaCUSTOCONTABIL: TFloatField;
    dbgConsultaCUSTOCONTABIL: TdxDBGridColumn;
    BalanaToledo1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    BalanaToletoAtualizao1: TMenuItem;
    C_ConsultaQTDEMBALAGEM: TFloatField;
    dbgConsultaQTDEMBALAGEM: TdxDBGridColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cmbTabelaPrecoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure PopupFiltroItensSelecionou(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure ckbTotalizarChange(Sender: TObject);
    procedure cmbIndexSelectionChange(Sender: TObject);
    procedure ColetorGerTec1Click(Sender: TObject);
    procedure BalanaFilizolaPlatina1Click(Sender: TObject);
    procedure ColetordeDados1Click(Sender: TObject);
    procedure BalanaToledo1Click(Sender: TObject);
    procedure BalanaToletoAtualizao1Click(Sender: TObject);
  private
    { Private declarations }
    sTabelas, SelectInicial: string;
    FAddGroupItem : Boolean;
    sPalavraChave, sDescItensSelec, sDescGruposSelec, sDescFabrSelec : String;
    nIndex : Double;
    procedure AtualizaItens(WhereAdicional:string ='');
    procedure Coluna(coluna: TdxTreeListColumn; Habilita: boolean);
    procedure AtualizaTabelaDePreco(query: TClientDataSet);
    function getTabelasPreco: string;
    procedure CriarCamposCalculado;
    function getCamposPreco: string;
		procedure FormataPromocao(  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  		AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  		var AText: String; var AColor: TColor; AFont: TFont;
  		var AAlignment: TAlignment; var ADone: Boolean);
  public
    { Public declarations }
  end;

var
  RptItensTabelaPreco: TRptItensTabelaPreco;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptItensTabelaPreco.AtualizaTabelaDePreco(query: TClientDataSet);
var i, cont: integer;
begin
  with Q_SQL do begin
    Close;
    SQL.Text := 'Select tabelapreco, descricao From TabelasPreco';
    Open;
    cont := 1;
    while not(Eof) and (cont<=5) do begin
      if IndiceString(gridTabelasPreco.Selecionados,',',FieldByName('tabelapreco').AsString)>0 then begin
        dbgConsulta.ColumnByFieldName('TP'+IntToStr(cont)).Caption := FieldByName('descricao').AsString;
        Coluna(dbgConsulta.ColumnByFieldName('TP'+IntToStr(cont)), True);
        query.Params.ParamByName('TP'+IntToStr(cont)).AsInteger := FieldByName('tabelapreco').AsInteger;
        Inc(cont);
      end;
      Next;
    end;
  end;
  for i:=cont to 5 do begin
    dbgConsulta.ColumnByFieldName('TP'+IntToStr(i)).Caption := 'TP '+IntToStr(i);
    Coluna(dbgConsulta.ColumnByFieldName('TP'+IntToStr(i)), False);
    query.Params.ParamByName('TP'+IntToStr(i)).AsInteger := -1;
  end;

end;

function TRptItensTabelaPreco.getCamposPreco : string;
var i : integer;
		sAlias, sJoin : string;
begin
  with C_TabelasPreco do begin
    DisableControls;
  	First;
    i := 2;
    sJoin := '';
  	while not EOF do begin
       sAlias := strrepeat('p',i);
			 sJoin := sJoin + ', '+sAlias+'.preco as '+'p'+FieldByName('tabelapreco').AsString+', '+
                         sAlias+'.precopromocao as '+'pm'+FieldByName('tabelapreco').AsString;
       inc(i);
       Next;
    end;
    First;
    EnableControls;
  end;
  result := sJoin;
end;

function TRptItensTabelaPreco.getTabelasPreco : string;
var i : integer;
		sAlias, sJoin : string;
begin
  with C_TabelasPreco do begin
    DisableControls;
    First;
    i := 2;
    sJoin := '';
    while not EOF do begin
       sAlias := strrepeat('p',i);
       sJoin := sJoin + 'inner join produtospreco '+sAlias+' on '+sAlias+'.item = i.item and '+sAlias+'.unidade = i.unidade and '+sAlias+'.tabelapreco = '+FieldByName('TabelaPreco').AsString+' ';
       inc(i);
       Next;
    end;
    First;
    EnableControls;
  end;
  result := sJoin;
end;

procedure TRptItensTabelaPreco.CriarCamposCalculado;
var Campo, CampoSub : TBCDField;
    CampoPS : TStringField;
begin
  with C_TabelasPreco do begin
    DisableControls;
    First;
    while not EOF do begin
      Campo := TBCDField.Create(self);
      with Campo do begin
	Name            := C_Consulta.Name+'ic_'+fieldbyname('tabelapreco').AsString;
    	FieldName	:= 'ic_'+fieldbyname('tabelapreco').AsString;
	DataSet  	:= C_Consulta;
        DisplayFormat   := '#,###,##0.00';
        FieldKind       := fkInternalCalc;
      end;

      CampoSub := TBCDField.Create(self);
      with CampoSub do begin
	Name            := C_Consulta.Name+'SubTot_'+fieldbyname('tabelapreco').AsString;
    	FieldName	:= 'SubTot_'+fieldbyname('tabelapreco').AsString;
	DataSet  	:= C_Consulta;
        DisplayFormat   := '#,###,##0.00';
        FieldKind       := fkInternalCalc;
      end;

      CampoPS := TStringField.Create(self);
      with CampoPS do begin
	Name := C_Consulta.Name+'PS_'+fieldbyname('tabelapreco').AsString;
    	FieldName	:= 'PS_'+fieldbyname('tabelapreco').AsString;
	DataSet  	:= C_Consulta;
        FieldKind := fkInternalCalc;
      end;

      Campo := TBCDField.Create(self);
      with Campo do begin
       	Name := C_Consulta.Name+'p'+fieldbyname('tabelapreco').AsString;
        FieldName	:= 'p'+fieldbyname('tabelapreco').AsString;
        DataSet  	:= C_Consulta;
        DisplayFormat := '#,###,##0.00';
        Size := 3;
      end;


      Campo := TBCDField.Create(self);
      with Campo do begin
        Name := C_Consulta.Name+'pm'+fieldbyname('tabelapreco').AsString;
      	FieldName	:= 'pm'+fieldbyname('tabelapreco').AsString;
	      DataSet  	:= C_Consulta;
        DisplayFormat := '#,###,##0.00';
        Size := 3;
      end;


      Campo := TBCDField.Create(self);
      with Campo do begin
	Name := C_Consulta.Name+'ic_Valor_'+fieldbyname('tabelapreco').AsString;
    	FieldName	:= 'ic_Valor_'+fieldbyname('tabelapreco').AsString;
	DataSet  	:= C_Consulta;
        DisplayFormat := '#,###,##0.00';
        FieldKind := fkInternalCalc;
        Size := 3;
      end;

      Campo := TBCDField.Create(self);
      with Campo do begin
	Name            := C_Consulta.Name+'SubTot_Valor_'+fieldbyname('tabelapreco').AsString;
    	FieldName	:= 'SubTot_Valor_'+fieldbyname('tabelapreco').AsString;
	DataSet  	:= C_Consulta;
        DisplayFormat   := '#,###,##0.00';
        FieldKind       := fkInternalCalc;
        Size := 3;
      end;


      with dbgConsulta.CreateColumn(TdxDBGridMaskColumn) as TdxDBGridMaskColumn do begin
        Caption   := FieldByName('Descricao').AsString;
      	FieldName := 'ic_'+fieldbyname('tabelapreco').AsString;
        Visible   := FieldByName('tabelapreco').AsInteger = 0;
        SummaryFooterField := 'ic_Valor_'+fieldbyname('tabelapreco').AsString;
        OnCustomDrawCell := FormataPromocao;
      end;

      with dbgConsulta.CreateColumn(TdxDBGridMaskColumn) as TdxDBGridMaskColumn do begin
        Caption   := 'SubTot.'+FieldByName('Descricao').AsString;
      	FieldName := 'SubTot_'+fieldbyname('tabelapreco').AsString;
        Visible   := FieldByName('tabelapreco').AsInteger = 0;
        SummaryFooterField := 'SubTot_Valor_'+fieldbyname('tabelapreco').AsString;
        OnCustomDrawCell := FormataPromocao;
      end;

      with dbgConsulta.CreateColumn(TdxDBGridMaskColumn) as TdxDBGridMaskColumn do begin
        Caption   := 'PS_'+FieldByName('Descricao').AsString;
      	FieldName := 'PS_'+fieldbyname('tabelapreco').AsString;
        Visible   := False;
        OnCustomDrawCell := FormataPromocao;
      end;

      with dbgConsulta.CreateColumn(TdxDBGridMaskColumn) as TdxDBGridMaskColumn do begin
        Caption   := FieldByName('Descricao').AsString;
      	FieldName := 'pm'+fieldbyname('tabelapreco').AsString;
        Visible   := false;
        DisableCustomizing := false;
      end;


      with dbgConsulta.CreateColumn(TdxDBGridMaskColumn) as TdxDBGridMaskColumn do begin
        Caption   := FieldByName('Descricao').AsString;
      	FieldName := 'ic_Valor_'+fieldbyname('tabelapreco').AsString;
        Visible   := false;
        DisableCustomizing := True;
      end;
      Next;
    end;

    First;
    EnableControls;
  end;
end;

procedure TRptItensTabelaPreco.FormataPromocao(  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var i : integer;
begin
  for i:=1 to ContaStrings(sTabelas,',') do
    if dbgConsulta.GetFieldValue( Anode, 'pm'+SeparaStrings(sTabelas,',',i),0) <> 0 then
    	AFont.Color := clRed
    else
    	AFont.Color := clBlack;
end;

procedure TRptItensTabelaPreco.AtualizaItens(WhereAdicional:string ='');
var sPrimeiroNome, condItens, condGrupos, condFabr, condTipoItem, sWhere: string;
    i: integer;
begin
  // Selecionando o valor da cotação escolhida,
  // se não foi escolhida nenhuma o valor é 1 (hum).
  nIndex := 1;
  if cmbIndex.LookupKeyValue <> null then begin
    with Q_SQL do begin
      Close;
      SQL.Text := 'select valor from cotacoes ' +
                  'where data = (select max(data) from cotacoes where indexador = :i) ' +
                  'and indexador = :i ';
      ParamByName('i').AsInteger := cmbIndex.LookupKeyValue;
      Open;
      if (RecordCount > 0) and (Fields[0].AsFloat > 0) then
        nIndex := Fields[0].AsFloat;
      Close;
    end;
  end;
    sWhere := PopupFiltroItens.getSQL;
  if (cbServicos.Checked) Then
    sWhere := sWhere + ' and i.TipoItem in (1,3) '
  else
      sWhere := sWhere + ' and i.TipoItem = 1 ';
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' + getCamposPreco + ' '+
                   'From ' + getTabelas + ' ' +
                   getTabelasPreco+' '+
                   'Where '+sWhere;

    //AtualizaTabelaDePreco(C_Consulta);
    if Length(WhereAdicional)>0 then
    	CommandText := CommandText+' And '+WhereAdicional;
    Open;
    First;
  end;
  //if ckbTotalizar.Checked then begin
 //   dbgConsultaGRUPO.GroupIndex := 0;
    dbgConsulta.TS_SummaryFields.Clear;
    dbgConsulta.TS_SummaryFields.Add('CUSTOMEDIO;SUM');
    dbgConsulta.TS_SummaryFields.Add('ESTOQUE;SUM');
    for i:=1 to ContaStrings(sTabelas,',') do begin
      //dbgConsulta.TS_SummaryFields.Add('ic_'+SeparaStrings(sTabelas,',',i) + ';SUM');
      dbgConsulta.TS_SummaryFields.Add('SubTot_'+SeparaStrings(sTabelas,',',i) + ';SUM');
    end;
    dbgConsulta.SetSummaryFields(dbgConsulta.TS_SummaryFields);
    TotalizarEmBaixo.Checked := False;
    TotalizarEmBaixo.Click;
    TotalizarEmBaixo.Checked := True;
  //end
  //else begin
  //  dbgConsultaGRUPO.GroupIndex := -1;
   // dbgConsulta.TS_SummaryFields.Clear;
   // dbgConsulta.SetSummaryFields(dbgConsulta.TS_SummaryFields);
  //end;

//  dbgConsulta.SummaryGroups.Ad
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add(replace(PopupFiltroItens.Hint,#13,' '));
    if cmbIndex.Text <> '' then TS_ReportFilter.Add('Indexador: ' + cmbIndex.Text + ' ' + FormatFloat('0.#####', nIndex) );
    GotoFirst;
  end;
end;

procedure TRptItensTabelaPreco.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptItensTabelaPreco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TRptItensTabelaPreco.Coluna(coluna: TdxTreeListColumn; Habilita: boolean);
begin
  coluna.DisableCustomizing := not Habilita;
  coluna.Visible := Habilita;
end;

procedure TRptItensTabelaPreco.dbgConsultaDblClick(Sender: TObject);
var
   nItem : Integer;
   sForm : String;
begin
  inherited;
  if dbgConsulta.FocusedField.FieldName = 'ULTFORNECEDOR' then begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'IDULTFORNECEDOR', 0);
    if nItem <> 0 then begin
      DMProjeto.SetParametrosForm([nItem]);
      sForm := DmProjeto.FormFav(dbgConsulta.getFieldValue(dbgConsulta.FocusedNode,'TipoFavorecido',0));
      DMProjeto.CriarForm(sForm, Self, true);
    end;
  end
  else begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Item', 0);
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmItens', Self, true);
  end;
end;

procedure TRptItensTabelaPreco.FormsComponentBeforeClearParams(
  Sender: TObject);
  procedure SetaTabelaZero;
  begin
    GridTabelasPreco.SetSelecionados('0');
    //cmbTabelaPrecoExit(self);
    C_TabelasPreco.First;
    cmbTabelaPreco.Text := C_TabelasPrecoDescricao.Value;
  end;
var sChaves, sDesc : string;
    i : integer;
begin
  inherited;
  C_Indexadores.Close;
  C_Indexadores.Open;
  sPalavraChave := DMProjeto.Parametro('CodigoCusto');
  C_TabelasPreco.Open;
  CriarCamposCalculado;
  dbgConsultaTIPOITEM.Visible := False;
  DMProjeto.sTabPrecoSelec := '';
  DMProjeto.sTabPrecoSelec := '0';
  if cmbTabelaPreco.Text = '' then SetaTabelaZero
  else begin
    sChaves := '';
    sDesc := cmbTabelaPreco.Text;
    for i := 1 to ContaStrings( sDesc, ',' ) do begin
      if C_TabelasPreco.Locate( 'DESCRICAO',SeparaStrings( sDesc,',',i), []) then
        sChaves := sChaves + C_TabelasPrecoTABELAPRECO.AsString + ',';
    end;
    if Copy(sChaves,Length(sChaves),1) = ',' then Delete(sChaves,Length(sChaves),1);
    if sChaves = '' then SetaTabelaZero
    else begin
      GridTabelasPreco.SetSelecionados(sChaves);
      with C_TabelasPreco do begin
        First;
        sTabelas := '';
        while not eof do begin
          if fieldbyname('_icSelecionado').AsInteger = 1 then
           sTabelas := sTabelas + fieldbyname('Descricao').AsString + ', ';
          dbgConsulta.FindColumnByFieldName('ic_'+fieldbyname('tabelapreco').AsString).Visible := fieldbyname('_icSelecionado').AsInteger = 1;
          dbgConsulta.FindColumnByFieldName('SubTot_'+fieldbyname('tabelapreco').AsString).Visible := fieldbyname('_icSelecionado').AsInteger = 1;
          next;
        end;
      end;
    end;
  end;
  sTabelas := GridTabelasPreco.Distinct('TabelaPreco');
  //AtualizaItens;
  if dbgConsulta.TS_TemplatePadrao <> '' then
    dbgConsulta.CarregarTemplate(dbgConsulta.TS_TemplatePadrao,DMProjeto.TemplatesPath+Self.Name+'.rpt');
end;

procedure TRptItensTabelaPreco.cmbTabelaPrecoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
  var sTabelas : string; i: Integer;
begin
  inherited;
  with C_TabelasPreco do begin
    First;
    sTabelas := '';
    while not eof do begin
      if fieldbyname('_icSelecionado').AsInteger = 1 then
    	 sTabelas := sTabelas + fieldbyname('Descricao').AsString + ', ';
      dbgConsulta.FindColumnByFieldName('ic_'+fieldbyname('tabelapreco').AsString).Visible := fieldbyname('_icSelecionado').AsInteger = 1;
      dbgConsulta.FindColumnByFieldName('SubTot_'+fieldbyname('tabelapreco').AsString).Visible := fieldbyname('_icSelecionado').AsInteger = 1;
      next;
    end;
  end;

  Text := Copy(sTabelas,1,length(sTabelas)-2);
  Accept := true;
end;

procedure TRptItensTabelaPreco.PopupFiltroItensSelecionou(Sender: TObject);
begin
  inherited;
  //AtualizaItens;
end;

procedure TRptItensTabelaPreco.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if UpperCase(LastDataObject.TableName) = 'TABELASPRECO' then begin
    C_TabelasPreco.Close;
    C_TabelasPreco.Open;
    AtualizaTabelaDePreco(C_Consulta);
  end;
end;

procedure TRptItensTabelaPreco.C_ConsultaCalcFields(DataSet: TDataSet);
var i : integer;
s:string;
begin
  inherited;
  for i:=1 to ContaStrings(sTabelas,',') do begin
    with C_Consulta do begin
      if FieldByName('pm'+SeparaStrings(sTabelas,',',i)).AsCurrency = 0 then  begin
        FieldByName('ic_'+SeparaStrings(sTabelas,',',i)).AsCurrency := FieldByName('p'+SeparaStrings(sTabelas,',',i)).AsCurrency;
        s:=Funcoes.CustoSimbolico( FieldByName('p'+SeparaStrings(sTabelas,',',i)).AsCurrency,sPalavraChave);
        FieldByName('PS_'+SeparaStrings(sTabelas,',',i)).AsString := s;
      End else Begin
      	FieldByName('ic_'+SeparaStrings(sTabelas,',',i)).AsCurrency := FieldByName('pm'+SeparaStrings(sTabelas,',',i)).AsCurrency;
        FieldByName('PS_'+SeparaStrings(sTabelas,',',i)).AsString := Funcoes.CustoSimbolico( FieldByName('pm'+SeparaStrings(sTabelas,',',i)).AsCurrency,sPalavraChave);
      End;
      FieldByName('SubTot_'+SeparaStrings(sTabelas,',',i)).AsCurrency :=  FieldByName('ic_'+SeparaStrings(sTabelas,',',i)).AsCurrency * FieldByName('ESTOQUE').AsInteger;


      // Modificando a cotação para o indexador selecionado...
      if DataSet.FieldByName('Indexador').AsVariant <> null then begin
        Q_SQL.Close;
        Q_SQL.SQL.Text := 'select valor from cotacoes ' +
                    'where data = (select max(data) from cotacoes where indexador = :i) ' +
                    'and indexador = :i ';
        Q_SQL.ParamByName('i').AsInteger := DataSet.FieldByName('Indexador').AsInteger;
        Q_SQL.Open;
        if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then
          FieldByName('ic_'+SeparaStrings(sTabelas,',',i)).AsCurrency  := RoundTo( (FieldByName('ic_'+SeparaStrings(sTabelas,',',i)).AsCurrency  / Q_SQL.Fields[0].AsFloat) * nIndex, -2 );
        Q_SQL.Close;
      end;
      //
      //FieldByName('ic_Valor_'+SeparaStrings(sTabelas,',',i)).AsCurrency := FieldByName('ic_'+SeparaStrings(sTabelas,',',i)).AsCurrency * FieldByName('ESTOQUE').AsCurrency;
      FieldByName('SubTot_Valor_'+SeparaStrings(sTabelas,',',i)).AsCurrency := FieldByName('ic_'+SeparaStrings(sTabelas,',',i)).AsCurrency * FieldByName('ESTOQUE').AsCurrency;
      FieldByName('ic_Valor_CustoMedio').AsCurrency := FieldByName('ESTOQUE').AsCurrency * FieldByName('CUSTOMEDIO').AsCurrency;
      FieldByName('ic_Estoque').AsInteger := FieldByName('ESTOQUE').AsInteger;
    end;
  end;
end;

procedure TRptItensTabelaPreco.ckbTotalizarChange(Sender: TObject);
begin
  inherited;
  //AtualizaItens;
end;

procedure TRptItensTabelaPreco.cmbIndexSelectionChange(Sender: TObject);
begin
  inherited;
  //AtualizaItens;
end;





procedure TRptItensTabelaPreco.ColetorGerTec1Click(Sender: TObject);
Var
 sArquivo: TStringList;
 sPreco: String;
begin
  inherited;
  Try
      if sdGertec.Execute then Begin
        sArquivo := TStringList.Create;
          With C_Consulta do Begin
            DisableControls;
            First;
            While Not (C_Consulta.Eof) do Begin
              sPreco := FormatCurr('###,###,##0.00', FieldByName('ic_0').Value);
              If (FieldByName('CodigoBarras').IsNull) Or (FieldByName('CodigoBarras').AsString = '') Then
                sArquivo.Add(FieldByName('Codigo').AsString+'|'+Copy(FieldByName('Descricao').AsString,1,20)+'|'+sPreco +'|')
              Else
                sArquivo.Add(FieldByName('CodigoBarras').AsString+'|'+Copy(FieldByName('Descricao').AsString,1,20)+'|'+sPreco +'|');
              Next;
            End;
            EnableControls;
          End;
      End;
      sArquivo.SaveToFile(sdGertec.FileName);
      DlgMsg.ShowMsg(50,['Arquivo Gerado com Sucesso!']);
  Except
      DlgMsg.ShowMsg(50,['Erro ao Tentar Gerar Arquivo!']);
  end;
end;



procedure TRptItensTabelaPreco.BalanaFilizolaPlatina1Click(
  Sender: TObject);
Var
 sArquivo: TStringList;
 sPreco: String;
begin
  inherited;
  Try
      sdGertec.FileName := 'CADTXT.TXT';
      if sdGertec.Execute then Begin
        sArquivo := TStringList.Create;
          With C_Consulta do Begin
            DisableControls;
            First;
            While Not (C_Consulta.Eof) do Begin
              sPreco := SoNumeros((FieldByName('ic_0').Value * 100),7);
              sArquivo.Add(PreencherStr(Copy(FieldByName('Codigo').AsString,1,6),' ',6)+'P'+PreencherStr(Copy(FieldByName('Descricao').AsString,1,22),' ',22)+sPreco);
              Next;
            End;
            EnableControls;
          End;
      End;
      sArquivo.SaveToFile(sdGertec.FileName);
      DlgMsg.ShowMsg(50,['Arquivo Gerado com Sucesso!']);
  Except
      DlgMsg.ShowMsg(50,['Erro ao Tentar Gerar Arquivo!']);
  end;
end;

procedure TRptItensTabelaPreco.ColetordeDados1Click(Sender: TObject);
Var
 sArquivo: TStringList;
 sPreco: String;
 sCodigo: String;
 nTipoDelimitador: integer;

begin
  inherited;
  Try
      nTipoDelimitador := MessageDlg('Campos com delimitador?',mtConfirmation,
                              [mbYes,mbNo], 0);
      sdGertec.FileName := 'LookUp.TXT';
      if sdGertec.Execute then Begin
        sArquivo := TStringList.Create;
          With C_Consulta do Begin
            DisableControls;
            First;
            While Not (C_Consulta.Eof) do Begin
              //sPreco := SoNumeros((FieldByName('ic_0').Value * 100),7);
              //sArquivo.Add(FieldByName('CodigoBarras').AsString +'|'+Copy(FieldByName('Descricao').AsString,1,40));

              if (FieldByName('CodigoBarras').IsNull) Then
                sCodigo := FieldByName('Codigo').AsString
              Else
                sCodigo := FieldByName('CodigoBarras').AsString ;

              if nTipoDelimitador = mrOK  Then
                sArquivo.Add(sCodigo+'|'+Copy(FieldByName('Descricao').AsString,1,40))
              else begin
                sCodigo := Funcoes.PreencherStr(sCodigo,' ',13) ;
                sArquivo.Add(sCodigo+Copy(FieldByName('Descricao').AsString,1,40))
              End;
              Next;
            End;
            EnableControls;
          End;
      End;
      sArquivo.SaveToFile(sdGertec.FileName);
      DlgMsg.ShowMsg(50,['Arquivo Gerado com Sucesso!']);
  Except
      DlgMsg.ShowMsg(50,['Erro ao Tentar Gerar Arquivo!']);
  end;
end;

procedure TRptItensTabelaPreco.BalanaToledo1Click(Sender: TObject);
Var
 sArquivo: TStringList;
 sPreco: String;
 sTipoProduto: String; {0-Peso 1 Und.}
begin
  inherited;
  Try
      sdGertec.FileName := 'TXITENS.TXT';
      if sdGertec.Execute then Begin
        sArquivo := TStringList.Create;
          With C_Consulta do Begin
            DisableControls;
            First;
            While Not (C_Consulta.Eof) do Begin
              sPreco := SoNumeros((FieldByName('ic_0').Value * 100),6);
              if (Pos(UpperCase('KG'),UpperCase(FieldByName('Unidade').AsString)) > 0) Then
                sTipoProduto := '0'
              else
                sTipoProduto := '1';
              sArquivo.Add('01'+'00'+sTipoProduto+PreencherStr(Copy(FieldByName('Codigo').AsString,1,6),' ',6)+sPreco+'000'+PreencherStr(Copy(FieldByName('Descricao').AsString,1,50),' ',50)+PreencherStr(' ',' ',250));
              Next;
            End;
            EnableControls;
          End;
      End;
      sArquivo.SaveToFile(sdGertec.FileName);
      DlgMsg.ShowMsg(50,['Arquivo Gerado com Sucesso!']);
  Except
      DlgMsg.ShowMsg(50,['Erro ao Tentar Gerar Arquivo!']);
  end;

end;

procedure TRptItensTabelaPreco.BalanaToletoAtualizao1Click(
  Sender: TObject);
Var
 sArquivo: TStringList;
 sPreco: String;
begin
  inherited;
  Try
      sdGertec.FileName := 'PRECOMGV.TXT';
      if sdGertec.Execute then Begin
        sArquivo := TStringList.Create;
          With C_Consulta do Begin
            DisableControls;
            First;
            While Not (C_Consulta.Eof) do Begin
              sPreco := SoNumeros((FieldByName('ic_0').Value * 100),6);
              sArquivo.Add(PreencherStr(Copy(FieldByName('Codigo').AsString,1,6),' ',6)+sPreco);
              Next;
            End;
            EnableControls;
          End;
      End;
      sArquivo.SaveToFile(sdGertec.FileName);
      DlgMsg.ShowMsg(50,['Arquivo Gerado com Sucesso!']);
  Except
      DlgMsg.ShowMsg(50,['Erro ao Tentar Gerar Arquivo!']);
  end;

end;

end.

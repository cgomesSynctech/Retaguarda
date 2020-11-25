unit Rpt_ItensEstoque;

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
    Placemnt, BTOdeum, TS_ComboBox, TS_PopupEdit, TS_PopupFiltrarItens, Math;

type
    TRptItensEstoque = class(TRptPadrao)
        dbgConsultaCODIGO: TdxDBGridMaskColumn;
        dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
        dbgConsultaUNIDADE: TdxDBGridMaskColumn;
        dbgConsultaESTOQUE: TdxDBGridMaskColumn;
        dbgConsultaTIPOITEM: TdxDBGridMaskColumn;
        dbgConsultaGRUPO: TdxDBGridMaskColumn;
        dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
        Q_SQL: TIBQuery;
        dbgConsultaCONTA_VEN: TdxDBGridMaskColumn;
        dbgConsultaCONTA_CUS: TdxDBGridMaskColumn;
        dbgConsultaCONTA_INV: TdxDBGridMaskColumn;
        dbgConsultaCOMISSAO: TdxDBGridMaskColumn;
        dbgConsultaDESCONTOMAXIMO: TdxDBGridMaskColumn;
        dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn;
        dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
        dbgConsultaTAXINCLUSO: TdxDBGridCheckColumn;
        dbgConsultaITEM: TdxDBGridMaskColumn;
        dbgConsultaTotalCusto: TdxDBGridColumn;
        dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
        dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn;
        dbgConsultaULTIMACOMPRA: TdxDBGridColumn;
        dbgConsultaULTQTDECOMPRA: TdxDBGridColumn;
        dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
        dbgConsultaQTDEMAXIMO: TdxDBGridMaskColumn;
        dbgConsultaQTDEMINIMO: TdxDBGridMaskColumn;
        dbgConsultaPONTOPEDIDO: TdxDBGridMaskColumn;
        dbgConsultaULTIMAVENDA: TdxDBGridColumn;
        dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn;
        PopupFiltroItens: TTS_PopupFiltrarItens;
        lblAlmox: TTS_Label;
        cmbAlmox: TTS_LookupComboBox;
        Q_Almoxarifados: TIBQuery;
        C_Almoxarifados: TClientDataSet;
        C_AlmoxarifadosALMOXARIFADO: TIntegerField;
        C_AlmoxarifadosDESCRICAO: TStringField;
        P_Almoxarifados: TDataSetProvider;
        C_AlmoxarifadosDS: TDataSource;
        dbgConsultaEstoqueAlmox: TdxDBGridColumn;
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
        dbgConsultaColumn43: TdxDBGridMaskColumn;
        dbgConsultaColumn44: TdxDBGridMaskColumn;
        dbgConsultaicPreco: TdxDBGridColumn;
        dbgConsultaSubVenda: TdxDBGridColumn;
        dbgConsultaSubCompra: TdxDBGridColumn;
        C_ConsultaicSubVenda: TFloatField;
        C_ConsultaITEM: TIntegerField;
        C_ConsultaCODIGO: TStringField;
        C_ConsultaDESCRICAO: TStringField;
        C_ConsultaUNIDADE: TStringField;
        C_ConsultaCUSTOMEDIO: TFloatField;
        C_ConsultaESTOQUE: TBCDField;
        C_ConsultaREFERENCIA: TStringField;
        C_ConsultaTAXINCLUSO: TStringField;
        C_ConsultaCONTA_VEN: TStringField;
        C_ConsultaCONTA_CUS: TStringField;
        C_ConsultaCONTA_INV: TStringField;
        C_ConsultaCOMISSAO: TBCDField;
        C_ConsultaDESCONTOMAXIMO: TBCDField;
        C_ConsultaIDULTFORNECEDOR: TIntegerField;
        C_ConsultaULTFORNECEDOR: TStringField;
        C_ConsultaTIPOITEM: TStringField;
        C_ConsultaGRUPO: TStringField;
        C_ConsultaFABRICANTE: TStringField;
        C_ConsultaTIPOFAVORECIDO: TIntegerField;
        C_ConsultaULTQTDECOMPRA: TBCDField;
        C_ConsultaULTIMACOMPRA: TDateField;
        C_ConsultaULTIMAVENDA: TDateField;
        C_ConsultaQTDEMINIMO: TBCDField;
        C_ConsultaQTDEMAXIMO: TBCDField;
        C_ConsultaPONTOPEDIDO: TBCDField;
        C_ConsultaPRECOCOMPRA: TFloatField;
        C_ConsultaESTOQUEALMOX: TBCDField;
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
        C_ConsultaESTOQUECONSIGENTRADA: TBCDField;
        C_ConsultaESTOQUECONSIGSAIDA: TBCDField;
        C_ConsultaPRCVENDA: TBCDField;
        C_ConsultaSUBCOMPRA: TFloatField;
        C_ConsultaTotalCusto: TCurrencyField;
        C_ConsultaINDEXADOR: TIntegerField;
        C_ConsultaicPreco: TCurrencyField;
        C_IndexadoresDS: TDataSource;
        Q_Indexadores: TIBQuery;
        P_Indexadores: TDataSetProvider;
        C_Indexadores: TClientDataSet;
        C_IndexadoresINDEXADOR: TIntegerField;
        C_IndexadoresDESCRICAO: TStringField;
        TS_Label1: TTS_Label;
        cmbIndex: TTS_LookupComboBox;
        C_ConsultaicPrecoIndexado: TCurrencyField;
        C_ConsultaicSubVendaIdx: TCurrencyField;
        dbgConsultaicPrecoIndexado: TdxDBGridColumn;
        dbgConsultaicSubVendaIdx: TdxDBGridColumn;
        C_ConsultaCUSTOMANUAL: TBCDField;
        C_ConsultaSUBCUSTOMANUAL: TFloatField;
        dbgConsultaCustoManual: TdxDBGridColumn;
        dbgConsultaSUBCUSTOMANUAL: TdxDBGridColumn;
        C_ConsultaLOCALIZACAO: TStringField;
        dbgConsultaLocalizacao: TdxDBGridColumn;
        dbgConsultaTRIBUTACAOFEDERAL: TdxDBGridColumn;
        C_ConsultaTRIBUTACAOFEDERAL: TStringField;
        C_ConsultaESTOQUEVOLUME: TBCDField;
        dbgConsultaESTOQUEVOLUME: TdxDBGridMaskColumn;
        dbgConsultaDESCGRUPOPAI: TdxDBGridColumn;
        cbServicos: TTS_CheckBox;
        C_ConsultaDESCGRUPOPAI: TStringField;
        C_ConsultaCUSTOCONTABIL: TFloatField;
        dbgConsultaCUSTOCONTABIL: TdxDBGridColumn;
        LayoutEstoque1: TMenuItem;
        C_ConsultaCSTPISCOFINS: TStringField;
        C_ConsultaCSTIPI: TStringField;
        C_ConsultaCSTPISCOFINSSAIDA: TStringField;
        dbgConsultaCSTPISCOFINS: TdxDBGridMaskColumn;
        dbgConsultaCSTIPI: TdxDBGridMaskColumn;
        dbgConsultaCSTPISCOFINSSAIDA: TdxDBGridMaskColumn;
    Button1: TButton;
        procedure btAtualizarClick(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure dbgConsultaDblClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure PopupFiltroItensSelecionou(Sender: TObject);
        procedure cmbAlmoxChange(Sender: TObject);
        procedure C_ConsultaCalcFields(DataSet: TDataSet);
        procedure cmbIndexSelectionChange(Sender: TObject);
        procedure LayoutEstoque1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    private
        { Private declarations }
        Arq: TextFile;
        SelectInicial: string;
        FAddGroupItem: Boolean;
        nIndex: double;
        sDescItensSelec, sDescGruposSelec, sDescFabrSelec: string;
        procedure AtualizaItens(WhereAdicional: string = '');
        procedure Coluna(coluna: TdxTreeListColumn; Habilita: boolean);
    public
        { Public declarations }
    end;

var
    RptItensEstoque: TRptItensEstoque;

implementation

uses DM_Projeto, funcoes, TDM_Projeto, IBStoredProc;

{$R *.DFM}

procedure TRptItensEstoque.AtualizaItens(WhereAdicional: string = '');
var sPrimeiroNome, condItens, condGrupos, condFabr, condTipoItem, sWhere: string;
    i: integer;
begin
    ActiveControl := nil;
    // Selecionando o valor da cotação escolhida,
    // se não foi escolhida nenhuma o valor é 1 (hum).
    nIndex := 1;
    if cmbIndex.LookupKeyValue <> null then
        begin
            with Q_SQL do
                begin
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
    if (cbServicos.Checked) then
        sWhere := sWhere + ' and i.TipoItem in (1,3) '
    else
        sWhere := sWhere + ' and i.TipoItem = 1 ';

    C_Consulta.Close;
    Q_Consulta.SQL.Text := 'Select ' + getCampos + ' ' +
        ' From ' + getTabelas + ' ' +
        ' Where ' + sWhere;

    if Length(WhereAdicional) > 0 then
        Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' And ' + WhereAdicional;

    if cmbAlmox.LookupKeyValue <> null then
        begin
            Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' And ia.almoxarifado = ' + IntToStr(cmbAlmox.LookupKeyValue);
            Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' order by i.descricao ';
            dbgConsultaEstoqueAlmox.visible := true;
            dbgConsultaEstoque.visible := false;
            // FAZER o join com ItensAlmox
            Q_Consulta.ParamByName('num').AsInteger := 1;
        end
    else
        begin
            Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' order by i.descricao ';
            dbgConsultaEstoqueAlmox.visible := false;
            dbgConsultaEstoque.visible := true;
            // NÃO fazer o join com ItensAlmox
            Q_Consulta.ParamByName('num').AsInteger := 2;
        end;

    C_Consulta.FetchParams;
    C_Consulta.commandtext := Q_Consulta.SQL.Text;
    C_Consulta.Open;

    with dbgConsulta do
        begin
            TS_ReportFilter.Clear;
            TS_ReportFilter.Add(replace(PopupFiltroItens.Hint, #13, ' '));
            if cmbIndex.Text <> '' then TS_ReportFilter.Add('Indexador: ' + cmbIndex.Text + ' ' + FormatFloat('0.#####', nIndex));
        end;

end;

procedure TRptItensEstoque.btAtualizarClick(Sender: TObject);
begin
    inherited;
    AtualizaItens;
end;

procedure TRptItensEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
    Action := caFree;
end;

procedure TRptItensEstoque.Coluna(coluna: TdxTreeListColumn; Habilita: boolean);
begin
    coluna.DisableCustomizing := not Habilita;
    coluna.Visible := Habilita;
end;

procedure TRptItensEstoque.dbgConsultaDblClick(Sender: TObject);
var
    nItem: Integer;
    sForm: string;
begin
    inherited;
    if dbgConsulta.FocusedField.FieldName = 'ULTFORNECEDOR' then
        begin
            nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'IDULTFORNECEDOR', 0);
            DMProjeto.SetParametrosForm([nItem]);
            //    sForm := DmProjeto.FormFav(dbgConsulta.getFieldValue(dbgConsulta.FocusedNode,'TipoFavorecido',''));
            DMProjeto.CriarForm(sForm, Self, true);
        end
    else
        begin
            nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Item', 0);
            DMProjeto.SetParametrosForm([nItem]);
            DMProjeto.CriarForm('FrmItens', Self, true);
        end;
end;

procedure TRptItensEstoque.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    C_Indexadores.Close;
    C_Indexadores.Open;
    if DMProjeto.Parametro('MultiAlmox') = 'S' then
        begin
            C_Almoxarifados.open;
            lblAlmox.visible := true;
            cmbAlmox.visible := true;
            dbgConsultaEstoqueAlmox.DisableCustomizing := false;
        end;
    Coluna(dbgConsultaESTOQUE, True);
end;

procedure TRptItensEstoque.PopupFiltroItensSelecionou(
    Sender: TObject);
begin
    inherited;
    AtualizaItens;
end;

procedure TRptItensEstoque.cmbAlmoxChange(Sender: TObject);
begin
    inherited;
    AtualizaItens;
end;

procedure TRptItensEstoque.C_ConsultaCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_Consulta.FieldByName('TotalCusto').AsFloat := C_Consulta.FieldByName('Estoque').AsFloat * C_Consulta.FieldByName('CustoMedio').AsFloat;

    DataSet.FieldByName('icPreco').AsCurrency := DataSet.FieldByName('PRCVENDA').AsCurrency;
    DataSet.FieldByName('icPrecoIndexado').AsCurrency := DataSet.FieldByName('PRCVENDA').AsCurrency;
    // Adicionando as cotações dos indexadores mais atualizados...
    if DataSet.FieldByName('Indexador').AsVariant <> null then
        begin
            Q_SQL.Close;
            Q_SQL.SQL.Text := 'select valor from cotacoes ' +
                'where data = (select max(data) from cotacoes where indexador = :i) ' +
                'and indexador = :i ';
            Q_SQL.ParamByName('i').AsInteger := DataSet.FieldByName('Indexador').AsInteger;
            Q_SQL.Open;
            if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then
                begin
                    DataSet.FieldByName('icPreco').AsCurrency := RoundTo(DataSet.FieldByName('PRCVENDA').AsCurrency / Q_SQL.Fields[0].AsFloat, -2);
                    DataSet.FieldByName('icPrecoIndexado').AsCurrency := RoundTo((DataSet.FieldByName('PRCVENDA').AsCurrency / Q_SQL.Fields[0].AsFloat) * nIndex, -2);
                end;
            Q_SQL.Close;
        end;

    C_ConsultaicSubVenda.AsFloat := DataSet.FieldByName('icPreco').AsCurrency * C_ConsultaESTOQUE.AsFloat;
    C_ConsultaicSubVendaIdx.AsFloat := DataSet.FieldByName('icPrecoIndexado').AsCurrency * C_ConsultaESTOQUE.AsFloat;

end;

procedure TRptItensEstoque.cmbIndexSelectionChange(Sender: TObject);
begin
    inherited;
    AtualizaItens;
end;

procedure TRptItensEstoque.LayoutEstoque1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm(['estoque']);
    DMProject.CriarForm('DlgGerarArquivoPirelli', Self, false);
    DMProjeto.LimparParametrosForm;
end;

procedure TRptItensEstoque.Button1Click(Sender: TObject);
begin
  inherited;
   if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
   With DMProjeto.StoreProcedure do Begin
      StoredProcName := 'PP_ATUALIZACUSTOMONTAGEM';
      ExecProc;
   End;
   DMProjeto.DB_Projeto.DefaultTransaction.Commit;
   MessageDlg('Comando Realizado Com Êxito!', mtInformation, [mbOK], 0);

end;

end.


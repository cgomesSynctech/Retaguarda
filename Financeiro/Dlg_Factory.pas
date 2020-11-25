unit Dlg_Factory;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_MODELOCADASTROS, dxExEdtr, dxEdLib, TS_DateTimePicker, StdCtrls,
    TS_RadioButton, dxDBELib, TS_DBEditFavorecido, dxCntner,
    dxEditor, dxDBEdtr, TS_DBLookupTipoFav, FormsComponent,
    TS_LastDataObject, DlgMsg, TS_Label,
    ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons,
    TS_SpeedButton, ComCtrls, TS_PageControl,
    TS_CalcEdit, TS_LookupComboBox, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
    TS_Shape, dxDBTLCl, dxGrClms, Db, Provider, DBClient, IBCustomDataSet,
    IBQuery, TS_SpinEdit, TS_ButtonEdit, TS_EditFavorecido, TS_CheckBox,
    TS_Memo, ppReport, ppSubRpt, ppCtrls, ppPrnabl, ppClass, ppStrtch,
    ppRegion, ppBands, ppCache, ppComm, ppRelatv, ppProd, ppDB, ppDBPipe,
    ppVar, teCtrls, TS_EffectsPanel, DM_Contabilidade, Menus, TS_PopupMenu, Variants,
    BTOdeum, Placemnt;

type
    TDlgFactory = class(TFrmModeloCadastros)
        TS_Panel1: TTS_Panel;
        TS_Label1: TTS_Label;
        TS_Label2: TTS_Label;
        rdDias: TTS_RadioButton;
        dtData: TTS_DateTimePicker;
        rdMontante: TTS_RadioButton;
        TS_Label3: TTS_Label;
        TS_Label4: TTS_Label;
        edJuros: TTS_CalcEdit;
        Page: TTS_PageControl;
        tabChequesEmpresa: TTS_TabSheet;
        tabTerceiros: TTS_TabSheet;
        TS_Shape1: TTS_Shape;
        DBTerceiros: TTS_QDBGrid;
        TS_Panel2: TTS_Panel;
        DBCheques: TTS_QDBGrid;
        C_ChequesDS: TDataSource;
        Q_Cheques: TIBQuery;
        C_Cheques: TClientDataSet;
        P_Cheques: TDataSetProvider;
        lbEmpresa: TTS_Label;
        C_ChequesIDDOC: TIntegerField;
        C_ChequesNUMCHEQUE: TIntegerField;
        C_ChequesVALOR: TBCDField;
        C_ChequesVENCIMENTO: TDateField;
        C_ChequesNOME: TStringField;
        C_Cheques_icSelecionado: TIntegerField;
        DBChequesIDDOC: TdxDBGridMaskColumn;
        DBChequesNUMCHEQUE: TdxDBGridMaskColumn;
        DBChequesVALOR: TdxDBGridMaskColumn;
        DBChequesVENCIMENTO: TdxDBGridDateColumn;
        C_ChequesDiasVencimento: TIntegerField;
        C_ChequesDiasJuros: TIntegerField;
        C_ChequesValorAReceber: TFloatField;
        DBChequesDiasVencimento: TdxDBGridColumn;
        DBChequesDiasJuros: TdxDBGridColumn;
        DBChequesValorAReceber: TdxDBGridColumn;
        edDiasCompensamento: TTS_SpinEdit;
        edFactory: TTS_EditFavorecido;
        cbkDiasUteis: TTS_CheckBox;
        C_ChequesTipo: TStringField;
        DBChequesTipo: TdxDBGridColumn;
        lblObs: TTS_Label;
        mMemo: TTS_Memo;
        C_Terceiros: TClientDataSet;
        C_TerceirosDS: TDataSource;
        C_TerceirosNumCheque: TIntegerField;
        C_TerceirosBanco: TIntegerField;
        C_TerceirosOrigem: TIntegerField;
        C_TerceirosTitularCheque: TStringField;
        C_TerceirosValor: TFloatField;
        C_TerceirosVencimento: TDateField;
        DBTerceirosNumCheque: TdxDBGridMaskColumn;
        DBTerceirosTitularCheque: TdxDBGridMaskColumn;
        DBTerceirosValor: TdxDBGridMaskColumn;
        DBTerceirosVencimento: TdxDBGridDateColumn;
        C_TerceirosNomeOrigem: TStringField;
        C_TerceirosDiasVencimento: TIntegerField;
        C_TerceirosDiasJuros: TIntegerField;
        C_TerceirosValorAReceber: TFloatField;
        DBTerceirosDiasVencimento: TdxDBGridColumn;
        DBTerceirosDiasJuros: TdxDBGridColumn;
        DBTerceirosValorAReceber: TdxDBGridColumn;
        TS_Label7: TTS_Label;
        lbCheques: TTS_Label;
        lbAReceberSel: TTS_Label;
        lbValorSel: TTS_Label;
        DBTerceirosNomeOrigem: TdxDBGridButtonColumn;
        ckbRelatorio: TTS_CheckBox;
        ppFactory: TppReport;
        ppHeaderBand1: TppHeaderBand;
        ppDetailBand1: TppDetailBand;
        ppFooterBand1: TppFooterBand;
        regCab: TppRegion;
        ppLabel1: TppLabel;
        ppData: TppLabel;
        subChequesEmpresa: TppSubReport;
        ppChildReport1: TppChildReport;
        subChequesTerceiros: TppSubReport;
        ppChildReport2: TppChildReport;
        Q_ChequesEmpresa: TIBQuery;
        Q_ChequesTerceiros: TIBQuery;
        Q_ChequesEmpresaOPDOC: TIntegerField;
        Q_ChequesEmpresaOPERACAO: TIntegerField;
        Q_ChequesEmpresaNUMCHEQUE: TIntegerField;
        Q_ChequesEmpresaVENCIMENTO: TDateField;
        Q_ChequesEmpresaVALOR: TIBBCDField;
        Q_ChequesEmpresaJUROS: TIBBCDField;
        Q_ChequesEmpresaVALORPAGO: TIBBCDField;
        Q_ChequesEmpresaBANCO: TIntegerField;
        Q_ChequesEmpresaFAVORECIDO: TIntegerField;
        Q_ChequesEmpresaIDDOC: TIntegerField;
        Q_ChequesEmpresaOBS: TIBStringField;
        Q_ChequesEmpresaNOME: TIBStringField;
        Q_ChequesEmpresaQTDDIAS: TIntegerField;
        Q_ChequesEmpresaVENDEDOR: TIntegerField;
        Q_ChequesEmpresaNOMECHEQUE: TIBStringField;
        Q_ChequesTerceirosOPDOC: TIntegerField;
        Q_ChequesTerceirosOPERACAO: TIntegerField;
        Q_ChequesTerceirosNUMCHEQUE: TIntegerField;
        Q_ChequesTerceirosVENCIMENTO: TDateField;
        Q_ChequesTerceirosVALOR: TIBBCDField;
        Q_ChequesTerceirosJUROS: TIBBCDField;
        Q_ChequesTerceirosVALORPAGO: TIBBCDField;
        Q_ChequesTerceirosBANCO: TIntegerField;
        Q_ChequesTerceirosFAVORECIDO: TIntegerField;
        Q_ChequesTerceirosIDDOC: TIntegerField;
        Q_ChequesTerceirosOBS: TIBStringField;
        Q_ChequesTerceirosNOME: TIBStringField;
        Q_ChequesTerceirosQTDDIAS: TIntegerField;
        Q_ChequesTerceirosVENDEDOR: TIntegerField;
        dbChequesEmpresa: TppDBPipeline;
        dbChequesTerceiros: TppDBPipeline;
        Q_ChequesEmpresaDS: TDataSource;
        Q_ChequesTerceirosDS: TDataSource;
        ppTitleBand1: TppTitleBand;
        ppDetailBand2: TppDetailBand;
        ppSummaryBand1: TppSummaryBand;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppLabel4: TppLabel;
        ppLabel5: TppLabel;
        ppLabel6: TppLabel;
        ppLabel7: TppLabel;
        ppLabel8: TppLabel;
        ppLabel9: TppLabel;
        ppLine1: TppLine;
        ppLine2: TppLine;
        ppLine3: TppLine;
        ppLine4: TppLine;
        ppLine5: TppLine;
        ppLine6: TppLine;
        ppLine7: TppLine;
        ppLine8: TppLine;
        ppLine9: TppLine;
        ppLine10: TppLine;
        ppLine11: TppLine;
        ppLine12: TppLine;
        ppLine13: TppLine;
        ppLine14: TppLine;
        ppDBText1: TppDBText;
        ppDBText2: TppDBText;
        ppDBText3: TppDBText;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        ppLine15: TppLine;
        ppDBCalc1: TppDBCalc;
        ppDBCalc2: TppDBCalc;
        ppLine16: TppLine;
        ppLabel10: TppLabel;
        ppLabel11: TppLabel;
        ppLabel12: TppLabel;
        ppEmpresa: TppLabel;
        ppJuros: TppLabel;
        ppDias: TppLabel;
        ppDBCalc3: TppDBCalc;
        ppTitleBand2: TppTitleBand;
        ppDetailBand3: TppDetailBand;
        ppSummaryBand2: TppSummaryBand;
        ppLabel13: TppLabel;
        ppLabel14: TppLabel;
        ppLabel15: TppLabel;
        ppLabel16: TppLabel;
        ppLabel17: TppLabel;
        ppLabel18: TppLabel;
        ppLabel19: TppLabel;
        ppLabel20: TppLabel;
        ppLine17: TppLine;
        ppLine18: TppLine;
        ppLine19: TppLine;
        ppLine20: TppLine;
        ppLine21: TppLine;
        ppLine22: TppLine;
        ppLine23: TppLine;
        ppLine24: TppLine;
        ppLine25: TppLine;
        ppLine26: TppLine;
        ppLine27: TppLine;
        ppLine28: TppLine;
        ppLine29: TppLine;
        ppLine30: TppLine;
        ppLabel21: TppLabel;
        ppLine31: TppLine;
        ppLine32: TppLine;
        ppDBText7: TppDBText;
        ppDBText8: TppDBText;
        ppDBText9: TppDBText;
        ppDBText10: TppDBText;
        ppDBText11: TppDBText;
        ppVariable1: TppVariable;
        ppDBText12: TppDBText;
        ppDBText13: TppDBText;
        ppDBCalc4: TppDBCalc;
        ppLine33: TppLine;
        ppDBCalc5: TppDBCalc;
        ppLine34: TppLine;
        ppDBCalc6: TppDBCalc;
        Q_ChequesTerceirosNOMEFAVORECIDO: TIBStringField;
        ppSummaryBand3: TppSummaryBand;
        ppLabel22: TppLabel;
        ppLabel23: TppLabel;
        ppLabel24: TppLabel;
        ppLabel25: TppLabel;
        ppShape1: TppShape;
        ppShape2: TppShape;
        ppShape3: TppShape;
        ppShape4: TppShape;
        ppShape5: TppShape;
        ppShape6: TppShape;
        ppShape7: TppShape;
        ppShape8: TppShape;
        ppTotal_E: TppLabel;
        ppTotal_T: TppLabel;
        ppAReceber_T: TppLabel;
        ppAReceber_E: TppLabel;
        C_ChequesDEPOSITO: TIntegerField;
        C_ChequesTIPODEPOSITO: TIntegerField;
        C_ChequesFAVORECIDO: TIntegerField;
        C_ChequesCONTAATUAL: TIntegerField;
        ppTotalAReceber: TppLabel;
        ppTotalGeral: TppLabel;
        btImprimir: TTS_SpeedButton;
        TS_Bevel2: TTS_Bevel;
        btContabilidade: TTS_SpeedButton;
        C_ChequesCONTARECEBER: TIntegerField;
        Salvar1: TMenuItem;
        Novo1: TMenuItem;
        N1: TMenuItem;
        Histrico1: TMenuItem;
        pnCancelado: TdxfLabel;
        DBChequesNOME: TdxDBGridButtonColumn;
        ppDBText14: TppDBText;
        Q_ChequesEmpresaccDiasVenc: TIntegerField;
        procedure C_ChequesCalcFields(DataSet: TDataSet);
        procedure DBChequesTS_OnAfterSelection(Sender: TObject;
            bSelected: Boolean; QtdSel: Integer);
        procedure edDiasCompensamentoChange(Sender: TObject);
        procedure rdDiasClick(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure C_TerceirosValorChange(Sender: TField);
        procedure C_TerceirosVencimentoChange(Sender: TField);
        procedure C_ChequesDiasJurosChange(Sender: TField);
        procedure C_TerceirosDiasJurosChange(Sender: TField);
        procedure btComando1Click(Sender: TObject);
        procedure DBTerceirosEditChange(Sender: TObject);
        procedure C_TerceirosAfterPost(DataSet: TDataSet);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
        procedure DBTerceirosEnter(Sender: TObject);
        procedure edFactorySelecionou(Sender: TObject);
        procedure FormsComponentRefresh(Sender: TObject);
        procedure DBChequesDblClick(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure btImprimirClick(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormCreate(Sender: TObject);
        procedure btContabilidadeClick(Sender: TObject);
        procedure DBTerceirosNomeOrigemButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure Q_ChequesEmpresaCalcFields(DataSet: TDataSet);
        procedure DBTerceirosTS_AposLocalizar(Sender: TObject);
    private
        Operacao, FactoryHist: integer;
    // Adriano
        DMContabil: TDMContabilidade;
        procedure SetControls(bEnabled: boolean);
        function CalculoPorDia(Valor: currency; Dias: integer): currency;
        function CalculoPorMontante(Valor: currency): currency;
        procedure Calcula(bSelected: boolean = false; bVarrer: boolean = false; DiasJuros: integer = 0);
        procedure CalculaTerceiros(bVarrer: boolean = false; DiasJuros: integer = 0);
        function Validacoes(bMostrarMensagem: boolean): boolean;
        procedure Novo;
        function Gravar: boolean;
        procedure getHistorico(Operacao: integer);
        procedure Imprimir(Operacao: integer);
        procedure Pesquisar;
    public
    { Public declarations }
    end;

var
    DlgFactory: TDlgFactory;

implementation

uses DM_Projeto, DM_Financeiro, funcoes, Frm_Contabilidade;

{$R *.DFM}

procedure TDlgFactory.Novo;
begin
  // Adriano
    if DMContabil <> nil then
        DMContabil.Iniciar;
    Page.ActivePageIndex := 0;
    pnCancelado.Visible := false;
    btComando2.Enabled := true;
    btImprimir.Visible := false;
    btComando2.Visible := false;
    edFactory.Text := '';
    mMemo.lines.text := 'Factory';
    C_Terceiros.EmptyDataSet;
    lbValorSel.Caption := '';
    lbAReceberSel.Caption := '';
    DBCheques.FullExpand;
    C_Cheques.First;
    FactoryHist := 0;
    SetControls(false);
    try
        edFactory.SetFocus;
    except
    end;
end;

function TDlgFactory.Gravar;
var Titulo, i, Duplicata: integer;
    sSelecionados, sDistinct: string;
begin
    result := false;
    with DMFinanceiro do begin

        try
            if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

            if FactoryHist <> 0 then
                CancelarOperacao(IntToStr(FactoryHist), 24);

            Operacao := DMProjeto.NextIDGlobal;

            Titulo := Conta_A_Receber(1,
                DBCheques.TotalSelecionado('Valor') + DBTerceiros.TotalGeral('Valor'),
                dtData.Date, dtData.Date,
                mMemo.Lines.Text,
                edFactory.ID,
                0, // Venda
                '', // Nota Fiscal
                24,
                Operacao);


            Duplicata := Conta_A_Pagar(1,
                DBCheques.TotalSelecionado('Valor') + DBTerceiros.TotalGeral('Valor')
                - DBCheques.TotalSelecionado('ValorAReceber') + DBTerceiros.TotalGeral('Valor'),
                dtData.Date, dtData.Date,
                mMemo.Lines.Text,
                0, // Natureza
                edFactory.ID,
                0, // IDCompra
                '',
                Operacao);


            with Q_SQL do begin
                close;
                sql.text := 'insert into OperacoesFinanceiras ' +
                    '(Operacao, TipoOperacao, Favorecido, Data, ValorOperacao, ValorRecebido, Historico, PercentualJuros, Floating, Titulo, JurosSobreMontante ) values ' +
                    '(:Operacao, :TipoOperacao, :Favorecido, :Data, :ValorOperacao, :ValorRecebido, :Historico, :PercentualJuros, :Floating, :Titulo, :JurosSobreMontante )';

                parambyname('Operacao').AsInteger := Operacao;
                parambyname('TipoOperacao').AsInteger := 24;
                parambyname('Favorecido').AsInteger := edFactory.ID;
                parambyname('Titulo').AsInteger := Titulo;
                parambyname('Data').AsDateTime := dtData.Date;
                parambyname('ValorOperacao').AsCurrency := DBCheques.TotalSelecionado('Valor') + DBTerceiros.TotalGeral('Valor');
                parambyname('Historico').AsString := mMemo.Lines.Text;
                parambyname('PercentualJuros').AsCurrency := edJuros.Value;
                parambyname('ValorRecebido').AsCurrency := DBCheques.TotalSelecionado('ValorAReceber') + DBTerceiros.TotalGeral('Valor');
                parambyname('Floating').AsInteger := trunc(edDiasCompensamento.Value);
                if rdMontante.Checked then
                    parambyname('JurosSobreMontante').AsString := 'M'
                else
                    parambyname('JurosSobreMontante').AsString := 'D';

                ExecSQL;
        {Cheques da Empresa}
                DBCheques.FirstSelected;
                sSelecionados := DBCheques.Selecionados;
                for i := 1 to ContaStrings(sSelecionados, ',') do begin
                    close;
                    sql.text := 'insert into OperacoesFinanceirasDet ' +
                        '( Operacao, OpDoc, NumCheque, Vencimento, Valor, ValorPago, Juros, Favorecido, IDDoc, QtdDias, Banco, Vendedor, ContaAtual ) values ' +
                        '( :Operacao, :OpDoc, :NumCheque, :Vencimento, :Valor, :ValorPago, :Juros, :Favorecido, :IDDoc, :QtdDias, :Banco, :Vendedor, :ContaAtual )';
                    parambyname('Operacao').AsInteger := Operacao;
                    parambyname('OpDoc').AsInteger := DMProjeto.NextIDGlobal;
                    parambyname('NumCheque').AsInteger := C_ChequesNumCheque.asInteger;
                    parambyname('Vencimento').AsDateTime := C_ChequesVencimento.Value;
                    parambyname('Valor').AsCurrency := C_ChequesValor.Value;
                    parambyname('ValorPago').AsCurrency := C_ChequesValorAReceber.Value;
                    parambyname('Juros').AsCurrency := C_ChequesValor.Value - C_ChequesValorAReceber.Value;
                    parambyname('Favorecido').AsInteger := C_ChequesFavorecido.Value;
                    parambyname('IDDoc').AsInteger := C_ChequesIDDoc.Value;
                    parambyname('QtdDias').AsInteger := C_ChequesDiasJuros.Value;
                    parambyname('Banco').AsInteger := C_ChequesDeposito.Value;
                    parambyname('Vendedor').AsInteger := C_ChequesTipoDeposito.Value;
                    parambyname('ContaAtual').AsInteger := C_ChequesContaAtual.Value;
                    ExecSQL;
                    DBCheques.NextSelected;
                end;
        {Cheques de Terceiros}
                C_Terceiros.disablecontrols;
                C_Terceiros.First;
                while not C_Terceiros.EOF do begin
                    close;
                    sql.text := 'insert into OperacoesFinanceirasDet ' +
                        '( Operacao, OpDoc, NumCheque, Vencimento, Valor, ValorPago, Favorecido, Nome, IDDoc, QtdDias, Juros ) values ' +
                        '( :Operacao, :OpDoc, :NumCheque, :Vencimento, :Valor, :ValorPago, :Favorecido, :Nome, :IDDoc, :QtdDias, :Juros )';
                    parambyname('Operacao').AsInteger := Operacao;
                    parambyname('OpDoc').AsInteger := DMProjeto.NextIDGlobal;
                    parambyname('NumCheque').AsInteger := C_TerceirosNumCheque.asInteger;
                    parambyname('Vencimento').AsDateTime := C_TerceirosVencimento.Value;
                    parambyname('Valor').AsCurrency := C_TerceirosValor.Value;
                    parambyname('ValorPago').AsCurrency := C_TerceirosValorAReceber.Value;
                    parambyname('Favorecido').AsInteger := C_TerceirosOrigem.Value;
                    parambyname('Nome').AsString := C_TerceirosTitularCheque.Value;
                    parambyname('IDDoc').AsInteger := 0;
                    parambyname('QtdDias').AsInteger := C_TerceirosDiasJuros.Value;
                    parambyname('Juros').AsCurrency := C_TerceirosValor.Value - C_TerceirosValorAReceber.Value;
                    ExecSQL;
                    C_Terceiros.Next;
                end;
                C_Terceiros.enablecontrols;

                DMFinanceiro.FazerFactory(Operacao, DBCheques.Selecionados, edFactory.ID, dtData.Date);

                sDistinct := DBTerceiros.Distinct('Origem');

                for i := 1 to ContaStrings(sDistinct, ',') do
                    DMFinanceiro.RegistrarCredito(StrToInt(SeparaStrings(sDistinct, ',', i)), Operacao, 24, true, 0, DBTerceiros.TotalGeral('ValorAReceber', 'Origem=' + SeparaStrings(sDistinct, ',', i)), 'Factory de Terceiros');

                with DMFinanceiro.Q_SQL do begin
                    close;
                    sql.text := 'update favorecidos set isvendedor = :modelo, ' +
                        'jurosfactory = :juros, floatingfactory = :floating ' +
                        'where favorecido = :fav';
                    if rdDias.Checked then
                        parambyname('modelo').AsString := 'D'
                    else
                        parambyname('modelo').AsString := 'M';
                    parambyname('juros').AsCurrency := edJuros.Value;
                    parambyname('floating').AsInteger := Trunc(edDiasCompensamento.Value);
                    parambyname('fav').AsInteger := edFactory.ID;
                    ExecSQL;
                end;

            end;

            FactoryHist := Operacao;

            DMContabil.ContabilizaFactory(FactoryHist, edFactory.ID, trunc(dtData.date), C_Cheques, C_Terceiros);

            if not DMContabil.Salvar(FactoryHist) then
                raise Exception.Create(DMProjeto.GetMsg(3117));

      ///////////////////////////

            if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
        except
            on e: Exception do begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
                DMProjeto.GeraLog('Factory', e.message);
            end;
        end;

        try
            SendLastDataObject(Self.Name, 'OperacoesFinanceiras', 'Operacao', Operacao, false);
        except
        end;
        FactoryHist := 0;
    end;
    result := true;
end;

function TDlgFactory.CalculoPorDia;
begin
    result := Valor - ((Dias * ((edJuros.Value / 100) / 30)) * (Valor));
end;

function TDlgFactory.CalculoPorMontante;
begin
    result := Valor - ((edJuros.Value / 100) * Valor);
end;

procedure TDlgFactory.Calcula;
var nDias, nFeriado, i: integer;
    sSelecionados: string;
begin
    inherited;
    sSelecionados := DBCheques.Selecionados;
    if not bVarrer then
        sSelecionados := C_ChequesIDDoc.AsString
    else
        DBCheques.FirstSelected;

    for i := 1 to ContaStrings(sSelecionados, ',') do begin

        nDias := iif(C_ChequesDiasVencimento.AsInteger < 0, 0, C_ChequesDiasVencimento.AsInteger);
        if cbkDiasUteis.Checked then
            nDias := Trunc((DMProjeto.PrimeiroDiaUtil(C_ChequesVencimento.Value + edDiasCompensamento.Value) - Trunc(DMProjeto.dDataSistema))) - 1
        else
            nDias := nDias + Trunc(edDiasCompensamento.Value) - 1;
        if nDias < 0 then
            nDias := 0;
        C_Cheques.Edit;
        if bSelected then begin
            if rdDias.Checked then begin
                C_ChequesDiasJuros.OnChange := nil;
                if DiasJuros <> 0 then
                    C_ChequesDiasJuros.Value := DiasJuros
                else
                    C_ChequesDiasJuros.Value := nDias;
                C_ChequesDiasJuros.OnChange := C_ChequesDiasJurosChange;
                C_ChequesValorAReceber.Value := CalculoPorDia(C_ChequesValor.Value, C_ChequesDiasJuros.Value);
            end else begin
                C_ChequesValorAReceber.Value := CalculoPorMontante(C_ChequesValor.Value);
                C_ChequesDiasJuros.OnChange := nil;
                C_ChequesDiasJuros.Value := 0;
                C_ChequesDiasJuros.OnChange := C_ChequesDiasJurosChange;
            end;
        end else begin
            C_ChequesDiasJuros.OnChange := nil;
            C_ChequesDiasJuros.Value := 0;
            C_ChequesDiasJuros.OnChange := C_ChequesDiasJurosChange;
            C_ChequesValorAReceber.Value := 0;
        end;
        C_Cheques.Post;
        DBCheques.NextSelected;
    end;
    lbValorSel.Caption := formatfloat('###,###,##0.00', DBCheques.ValorSelecionado('Valor') + DBTerceiros.TotalGeral('Valor'));
    lbAReceberSel.Caption := formatfloat('###,###,##0.00', DBCheques.ValorSelecionado('ValorAReceber') + DBTerceiros.TotalGeral('ValorAReceber'));
end;

procedure TDlgFactory.C_ChequesCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_ChequesDiasVencimento.value :=
        iif((C_ChequesVencimento.Value - trunc(DMProjeto.dDataSistema)) <= 0, 0, C_ChequesVencimento.Value - trunc(DMProjeto.dDataSistema));
    if C_ChequesVencimento.Value > DMProjeto.dDataSistema then
        C_ChequesTipo.Value := 'Cheques Predatados'
    else
        C_ChequesTipo.Value := 'Cheques Vencidos';
end;

procedure TDlgFactory.DBChequesTS_OnAfterSelection(Sender: TObject;
    bSelected: Boolean; QtdSel: Integer);
begin
    inherited;
    Calcula(bSelected);
end;

procedure TDlgFactory.edDiasCompensamentoChange(Sender: TObject);
begin
    inherited;
    Calcula(true, true);
    CalculaTerceiros(true);
end;

procedure TDlgFactory.rdDiasClick(Sender: TObject);
begin
    inherited;
    if rdMontante.Checked then
        DBChequesDiasJuros.DisableEditor := true
    else
        DBChequesDiasJuros.DisableEditor := false;
    Calcula(true, true);
    CalculaTerceiros(true);
end;

function TDlgFactory.Validacoes;
begin
    result := false;

    if C_Terceiros.State in [dsEdit, dsInsert] then
        C_Terceiros.Post;

    if pnCancelado.Visible then begin
        DlgMsg.ShowMsg(940);
        Exit;
    end;

    if edFactory.ID = 0 then begin
        DlgMsg.ShowMsg(929, [lbEmpresa.Caption]);
        Exit;
    end;
    if (DBCheques.Selecionados = '') and (C_Terceiros.RecordCount = 0) then begin
        DlgMsg.ShowMsg(929, ['os cheques']);
        Exit;
    end;
    result := true;
end;

procedure TDlgFactory.btGravarClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'S') then
        exit;
    if (FactoryHist <> 0) and (not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'A')) then
        exit;

    if not Validacoes(true) then
        Exit;
    if Gravar then
        if ckbRelatorio.Checked then
            Imprimir(Operacao);
    Novo;
end;

procedure TDlgFactory.btLimparClick(Sender: TObject);
begin
    inherited;
    Pesquisar;
    Novo;
end;

procedure TDlgFactory.CalculaTerceiros;
var nDias, i, j: integer;
    sSelecionados: string;
begin
    inherited;
    nDias := 0;
    if bVarrer then begin
        i := C_Terceiros.RecordCount;
        C_Terceiros.First;
    end else
        i := 1;
    for j := 1 to i do begin

        if cbkDiasUteis.Checked then
            nDias := Trunc((DMProjeto.PrimeiroDiaUtil(C_TerceirosVencimento.Value + edDiasCompensamento.Value) - Trunc(DMProjeto.dDataSistema)) - 1)
        else
            nDias := Trunc(((C_TerceirosVencimento.Value + edDiasCompensamento.Value) - Trunc(DMProjeto.dDataSistema)) - 1);

        if nDias < 0 then nDias := 0;
        if not (C_Terceiros.State in [dsEdit, dsInsert]) then
            C_Terceiros.Edit;
        if rdDias.Checked then begin
            C_TerceirosDiasJuros.OnChange := nil;
            if DiasJuros = 0 then begin
                C_TerceirosValorAReceber.Value := CalculoPorDia(C_TerceirosValor.Value, nDias);
                C_TerceirosDiasJuros.Value := nDias
            end else begin
                C_TerceirosValorAReceber.Value := CalculoPorDia(C_TerceirosValor.Value, DiasJuros);
                C_TerceirosDiasJuros.Value := DiasJuros;
            end;
            C_TerceirosDiasJuros.OnChange := C_TerceirosDiasJurosChange;
        end else begin
            C_TerceirosValorAReceber.Value := CalculoPorMontante(C_TerceirosValor.Value);
            C_TerceirosDiasJuros.OnChange := nil;
            C_TerceirosDiasJuros.Value := 0;
            C_TerceirosDiasJuros.OnChange := C_TerceirosDiasJurosChange;
            DBTerceirosDiasJuros.DisableEditor := true;
        end;
        if bVarrer then
            C_Terceiros.Next;
    end;
    lbValorSel.Caption := formatfloat('###,###,##0.00', DBCheques.ValorSelecionado('Valor') + DBTerceiros.TotalGeral('Valor'));
    lbAReceberSel.Caption := formatfloat('###,###,##0.00', DBCheques.ValorSelecionado('ValorAReceber') + DBTerceiros.TotalGeral('ValorAReceber'));
end;

procedure TDlgFactory.C_TerceirosValorChange(Sender: TField);
begin
    inherited;
    CalculaTerceiros;
end;

procedure TDlgFactory.C_TerceirosVencimentoChange(Sender: TField);
begin
    inherited;
    C_TerceirosDiasVencimento.Value := trunc(C_TerceirosVencimento.Value - DMProjeto.dDataSistema);
    CalculaTerceiros;
end;

procedure TDlgFactory.C_ChequesDiasJurosChange(Sender: TField);
begin
    inherited;
    Calcula(true, false, C_ChequesDiasJuros.Value);
end;

procedure TDlgFactory.C_TerceirosDiasJurosChange(Sender: TField);
begin
    inherited;
    C_TerceirosValorAReceber.Value := CalculoPorDia(C_TerceirosValor.Value, C_TerceirosDiasJuros.Value);
end;

procedure TDlgFactory.btComando1Click(Sender: TObject);
var nResult: integer;
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'HISTORICO') then
        exit;
    with DMProjeto do begin
        SetParametrosForm([24, 'Histórico de Factory', true]);
        nResult := CriarForm('DlgHistoricoOperacoes', self, true);
        if nResult = 1 then begin
            if ExisteParametrosForm then
                getHistorico(getParametrosForm(0));
        end else if nResult = 3 then begin
            C_Cheques.Close;
            C_Cheques.Open;
        end;
        LimparParametrosForm;
    end;
end;

procedure TDlgFactory.getHistorico;
var i, nResult: integer;
    sCheques: string;
begin
    Pesquisar;
    Novo;
    FactoryHist := Operacao;
    btComando2.Visible := true;
  {Dados da Operacao (Cabecalho)}
    with DMFinanceiro.Q_SQL do begin
        close;
        sql.text := 'select * from OperacoesFinanceiras where Operacao = :Operacao';
        parambyname('operacao').AsInteger := Operacao;
        open;
        edFactory.ID := fieldbyname('Favorecido').AsInteger;
        dtData.Date := fieldbyname('Data').AsDateTime;
        mMemo.Lines.Text := fieldbyname('Historico').AsString;
        rdDias.Checked := fieldbyname('JurosSobreMontante').AsString = 'D';
        rdMontante.Checked := fieldbyname('JurosSobreMontante').AsString = 'M';
        edJuros.Value := fieldbyname('PercentualJuros').AsCurrency;
        edDiasCompensamento.Value := fieldbyname('Floating').AsInteger;
        pnCancelado.Visible := fieldbyname('Situacao').AsString = 'C';
        btImprimir.Enabled := not pnCancelado.Visible;
        btComando2.Enabled := not pnCancelado.Visible;
    {Dados dos Cheques}
        close;
        sql.text := 'select * from operacoesfinanceirasdet ' +
            'where operacao = :operacao';
        parambyname('operacao').AsInteger := Operacao;
        open;
        disablecontrols;
        while not EOF do begin
            if fieldbyname('IDDoc').AsInteger <> 0 then begin
       {Cheques da Empresa}
                C_ChequesDiasJuros.OnChange := nil;
                C_Cheques.Append;
                C_ChequesIDDoc.Value := fieldbyname('IDDoc').AsInteger;
                C_ChequesNome.Value := DMFinanceiro.getFavorecido(fieldbyname('Favorecido').AsInteger);
                C_ChequesFavorecido.value := fieldbyname('Favorecido').AsInteger;
                C_ChequesVencimento.Value := fieldbyname('Vencimento').AsDateTime;
                C_ChequesValor.Value := fieldbyname('Valor').AsCurrency;
                C_ChequesDiasVencimento.Value := iif((fieldbyname('Vencimento').AsDateTime - DMProjeto.dDataSistema) < 0, 0, (fieldbyname('Vencimento').AsDateTime - DMProjeto.dDataSistema));
                C_ChequesDiasJuros.Value := fieldbyname('QtdDias').AsInteger;
                C_ChequesValorAReceber.Value := fieldbyname('ValorPago').AsCurrency;
                C_ChequesNumCheque.Value := fieldbyname('NumCheque').AsInteger;
                C_ChequesDeposito.Value := fieldbyname('Banco').AsInteger;
                C_ChequesTipoDeposito.Value := fieldbyname('Vendedor').AsInteger;
                C_ChequesContaAtual.Value := fieldbyname('ContaAtual').AsInteger;
                C_Cheques.Post;
                DBCheques.Selecionar;
            end else begin
       {Cheques da Empresa}
                C_TerceirosDiasJuros.OnChange := nil;
                C_Terceiros.Append;
                C_TerceirosNumCheque.Value := fieldbyname('NumCheque').AsInteger;
                C_TerceirosNomeOrigem.Value := DMFinanceiro.getFavorecido(fieldbyname('Favorecido').AsInteger);
                C_TerceirosVencimento.Value := fieldbyname('Vencimento').AsDateTime;
                C_TerceirosValor.Value := fieldbyname('Valor').AsCurrency;
                C_TerceirosDiasVencimento.Value := iif((fieldbyname('Vencimento').AsDateTime - DMProjeto.dDataSistema) < 0, 0, (fieldbyname('Vencimento').AsDateTime - DMProjeto.dDataSistema));
                C_TerceirosTitularCheque.Value := fieldbyname('Nome').AsString;
                C_TerceirosDiasJuros.OnChange := nil;
                C_TerceirosDiasJuros.Value := fieldbyname('QtdDias').AsInteger;
                C_TerceirosDiasJuros.OnChange := C_TerceirosDiasJurosChange;
                C_TerceirosValorAReceber.Value := fieldbyname('ValorPago').AsCurrency;
                if C_Terceiros.State in [dsEdit, dsInsert] then
                    C_Terceiros.Post;
            end;
            Next;
        end;
        enablecontrols;
    end;
    SetControls(true);
    DBCheques.FullExpand;
end;

procedure TDlgFactory.DBTerceirosEditChange(Sender: TObject);
begin
    inherited;
    if DBTerceiros.FocusedField.FieldName = 'NomeOrigem' then begin
        C_TerceirosOrigem.AsVariant := null;
        C_TerceirosNomeOrigem.Value := DBTerceiros.TS_Text;
    end;
end;

procedure TDlgFactory.C_TerceirosAfterPost(DataSet: TDataSet);
begin
    inherited;
    lbValorSel.Caption := formatfloat('###,###,##0.00', DBCheques.ValorSelecionado('Valor') + DBTerceiros.TotalGeral('Valor'));
    lbAReceberSel.Caption := formatfloat('###,###,##0.00', DBCheques.ValorSelecionado('ValorAReceber') + DBTerceiros.TotalGeral('ValorAReceber'));
end;

procedure TDlgFactory.FormsComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
    dtData.Date := DMProjeto.dDataSistema;
    C_Terceiros.CreateDataSet;
    if DMProjeto.ExisteParametrosForm then
        getHistorico(DMProjeto.getParametrosForm(0))
    else begin
        Pesquisar;
        Novo;
    end;
    if not DMProjeto.LerPermissao(self.name, 'IMP') then begin
        ckbRelatorio.Checked := false;
        ckbRelatorio.ReadOnly := true;
    end;
end;

procedure TDlgFactory.Pesquisar;
begin
    C_Cheques.Close;
    C_Cheques.Open;
end;

procedure TDlgFactory.SetControls(bEnabled: boolean);
var i: integer;
begin
    for i := 0 to ComponentCount - 1 do
        if components[i].tag = 20 then
            TWinControl(Components[i]).Enabled := bEnabled;
    if bEnabled then
        DBCheques.Color := clWindow
    else
        DBCheques.Color := $00EBEBEB;
end;

procedure TDlgFactory.Imprimir(Operacao: integer);
begin
    with Q_ChequesEmpresa do begin
        close;
        parambyname('operacao').Asinteger := Operacao;
        open;
    end;
    with Q_ChequesTerceiros do begin
        close;
        parambyname('operacao').Asinteger := Operacao;
        open;
    end;
    ppData.Caption := 'Data: ' + DateToStr(dtData.Date);
    ppEmpresa.Caption := edFactory.Text;
    ppJuros.Caption := edJuros.Text;
    ppDias.Caption := IntToStr(trunc(edDiasCompensamento.value));
    ppTotal_E.caption := formatfloat('###,###,##0.00', DBCheques.ValorSelecionado('Valor'));
    ppTotal_T.caption := formatfloat('###,###,##0.00', DBTerceiros.TotalGeral('Valor'));
    ppAReceber_E.caption := formatfloat('###,###,##0.00', DBCheques.ValorSelecionado('ValorAReceber'));
    ppAReceber_T.caption := formatfloat('###,###,##0.00', DBTerceiros.TotalGeral('ValorAReceber'));
    pptotalgeral.caption := formatfloat('###,###,##0.00', DBCheques.ValorSelecionado('Valor') + DBTerceiros.TotalGeral('Valor'));
    pptotalareceber.caption := formatfloat('###,###,##0.00', DBCheques.ValorSelecionado('ValorAReceber') + DBTerceiros.TotalGeral('ValorAReceber'));
    DMProjeto.ImprimirCabecalho(regCab);
    ppFactory.Print;
end;

procedure TDlgFactory.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
    inherited;
    Value := iif((C_TerceirosVencimento.Value - DMProjeto.dDataSistema) < 0, 0, C_TerceirosVencimento.Value - DMProjeto.dDataSistema);
end;

procedure TDlgFactory.DBTerceirosEnter(Sender: TObject);
begin
    inherited;
    C_Terceiros.Append;
end;

procedure TDlgFactory.edFactorySelecionou(Sender: TObject);
begin
    inherited;
    rdDias.Checked := DMProjeto.C_LocalizarFavIsVendedor.Value = 'D';
    rdMontante.Checked := DMProjeto.C_LocalizarFavIsVendedor.Value = 'M';
    edJuros.Value := DMProjeto.C_LocalizarFavJurosFactory.Value;
    edDiasCompensamento.Value := DMProjeto.C_LocalizarFavFloatingFactory.Value;
    SetControls(true);
end;

procedure TDlgFactory.FormsComponentRefresh(Sender: TObject);
begin
    inherited;
    if pos(UpperCase(LastDataObject.TableName), 'DEPOSITOS,OPERACOESFINANCEIRAS,RETIRADAS') > 0 then
        Pesquisar
    else if (pos(UpperCase(LastDataObject.TableName), 'FAVORECIDOS') > 0) and
        (ActiveControl is TTS_EditFavorecido) then
        TTS_EditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey
    else if (pos(UpperCase(LastDataObject.TableName), 'FAVORECIDOS') > 0) then begin
        if C_Terceiros.State in [dsBrowse] then
            C_Terceiros.Edit;
        DBTerceiros.TS_ID := LastDataObject.ObjectKey;
   //DMClientes.C_ContratosFuncionario.Value := LastDataObject.ObjectKey;
    //GridContratos.LocalizarFavorecidoEx( '|'+IntToStr(LastDataObject.ObjectKey), 'Funcionario', '3', 'NomeFuncionario', DMProjeto.C_LocalizarFav );
    end;
end;

procedure TDlgFactory.DBChequesDblClick(Sender: TObject);
begin
    inherited;
    if DBCheques.TS_SelectedColumn <> '_icSelecionado' then begin
        with DMProjeto do begin
            SetParametrosForm([C_ChequesDeposito.Value]);
            CriarForm(getTelaGeradora(C_ChequesTipoDeposito.value), self, true)
        end;
    end;
end;

procedure TDlgFactory.btComando2Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'CAN') then
        exit;
    if DlgMsg.ShowMsg(577, ['este factory ?']) = 100 then begin

        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

        DMFinanceiro.CancelarOperacao(IntToStr(FactoryHist), 24);

        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

        try
            SendLastDataObject(Self.Name, 'OperacoesFinanceiras', 'Operacao', 0, false);
        except
        end;
        Novo;
    end;
end;

procedure TDlgFactory.btImprimirClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'IMP') then
        exit;
    Imprimir(FactoryHist);
end;

procedure TDlgFactory.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
  // Adriano
    if DMContabil <> nil then begin
        DMContabil.FechaDatasets;
        DMContabil.Free;
    end;
  ////////////////////
end;

procedure TDlgFactory.FormCreate(Sender: TObject);
begin
    inherited;
    if DMProjeto.bBrasil then begin
        lblObs.caption := 'Obs.:';
        btContabilidade.visible := false;
        pnCancelado.caption := 'Canc.';
    end;
  // Adriano
    DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgFactory.btContabilidadeClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(self.name, 'CONTABILID') then
        exit;
    if not Validacoes(false) then
        Exit;
  // Adriano
    DMContabil.ContabilizaFactory(FactoryHist, edFactory.ID, trunc(dtData.date), C_Cheques, C_Terceiros);

    FrmContabilidade := TFrmContabilidade.Create(self, DMContabil.C_ContabilidadeItens, DMContabil.C_PlanoContaDS);
    FrmContabilidade.ShowModal;
    FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgFactory.DBTerceirosNomeOrigemButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if AbsoluteIndex = 1 then begin
        DMProjeto.SetParametrosForm([C_TerceirosOrigem.AsVariant]);
        DMProjeto.CriarForm('FrmFornecedores', self, true);
    end;
end;

procedure TDlgFactory.Q_ChequesEmpresaCalcFields(DataSet: TDataSet);
begin
    inherited;
    Q_ChequesEmpresaccDiasVenc.value := iif((Q_ChequesEmpresaVencimento.Value - DMProjeto.dDataSistema) < 0, 0, Q_ChequesEmpresaVencimento.Value - DMProjeto.dDataSistema);
end;

procedure TDlgFactory.DBTerceirosTS_AposLocalizar(Sender: TObject);
begin
    inherited;
    DBTerceiros.TS_SelectedColumn := 'Vencimento';
    DBTerceiros.ShowEditor;
end;

end.


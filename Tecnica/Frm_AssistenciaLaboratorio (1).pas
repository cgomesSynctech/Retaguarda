unit Frm_AssistenciaLaboratorio;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
    Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
    dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, DBText, TS_DBTextEffect,
    dxEditor, dxEdLib, dxDBELib, TS_DBButtonEdit, DBCtrls, TS_DBText,
    TS_DBEdit, TS_DBEditDate, TS_DBMemo, TS_DBEditItem, dxDBEdtr,
    TS_DBLookupComboBox, TS_DBEditFavorecido, TS_DBLookupTipoFav, dxDBTLCl,
    dxGrClms, db, ppDB, ppCtrls, ppPrnabl, ppClass, ppStrtch, ppRegion,
    ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppRichTx,
    ppMemo, TS_DBEditEquipamento, TS_PopupEdit, TS_DBTimeEdit, TransEff,
    teTimed, teDrip, Mask, ComCtrls, TS_PageControl, TS_LookupComboBox;    

type
    TFrmAssistenciaLaboratorio = class(TFrmPadrao)
        pnEquipamento: TTS_Panel;
        lbDtEntrada: TTS_Label;
        cmbStatus: TTS_DBLookupComboBox;
        cmbTipo: TTS_DBLookupComboBox;
        TS_Label5: TTS_Label;
        TS_Label6: TTS_Label;
        TS_Label7: TTS_Label;
        pnOSNumero: TTS_Panel;
        TS_DBEdit2: TTS_DBEdit;
        lbOSNum: TTS_Label;
        dfOSNumero: TTS_DBEdit;
        TS_Label12: TTS_Label;
        GridlkpStatus: TdxDBGridLookupColumn;
        GridlkpTipoServico: TdxDBGridLookupColumn;
        GridSERVICO: TdxDBGridMaskColumn;
        GridOSNUMERO: TdxDBGridMaskColumn;
        GridCLIENTE: TdxDBGridMaskColumn;
        GridDATAENTRADA: TdxDBGridDateColumn;
        GridHORAENTRADA: TdxDBGridTimeColumn;
        GridEQUIPAMENTO: TdxDBGridMaskColumn;
        GridPARTESAGRAGADAS: TdxDBGridMaskColumn;
        GridDEFEITOALEGADO: TdxDBGridMaskColumn;
        GridDEFEITOENCONTRADO: TdxDBGridMaskColumn;
        GridOBSERVACAO: TdxDBGridMaskColumn;
        GridDATASAIDA: TdxDBGridDateColumn;
        GridHORASAIDA: TdxDBGridTimeColumn;
        GridFUNCENTRADA: TdxDBGridMaskColumn;
        GridTECNICO: TdxDBGridMaskColumn;
        GridFUNCSAIDA: TdxDBGridMaskColumn;
        GridSTATUSSERVICO: TdxDBGridMaskColumn;
        GridLOCALIZACAO: TdxDBGridMaskColumn;
        GridNUMEROSERIE: TdxDBGridMaskColumn;
        GridTIPOEQUIPAMENTO: TdxDBGridMaskColumn;
        GridMODELO: TdxDBGridMaskColumn;
        GridCARACTERISTICA: TdxDBGridMaskColumn;
        GridlkpMarca: TdxDBGridLookupColumn;
        GridlpkModelo: TdxDBGridLookupColumn;
        GridlkpTipoEquipamento: TdxDBGridLookupColumn;
        GridlkpFabricante: TdxDBGridLookupColumn;
        GridNOME: TdxDBGridMaskColumn;
        GridQ_ServicosDet: TdxDBGridColumn;
        GridlkpLocalizacao: TdxDBGridLookupColumn;
        btImprimir: TTS_SpeedButton;
        TS_Label1: TTS_Label;
        imgAcessorios: TTS_Image;
        lbFaturado: TdxfLabel;
        edFaturado: TDBEdit;
        Transition: TTransitionList;
        T_Status: TDripTransition;
        edStatus: TDBEdit;
        edOrcamento: TDBEdit;
        lbDataEntrada: TTS_DBTextEffect;
        TS_Label14: TTS_Label;
        lbNomeCliente: TTS_DBTextEffect;
        lbNumeroSerie: TTS_DBTextEffect;
        lbNomeModelo: TTS_DBTextEffect;
        TS_Label13: TTS_Label;
        lbTecnico: TTS_DBTextEffect;
        pcEquip: TTS_PageControl;
        pgCaracteristicas: TTS_TabSheet;
        pgAlegado: TTS_TabSheet;
        pcEncontrado: TTS_TabSheet;
        TS_Label2: TTS_Label;
        memoDefEncontr: TTS_DBMemo;
        memoOBS: TTS_DBMemo;
        TS_Label9: TTS_Label;
        TS_Label4: TTS_Label;
        memoDefeito: TTS_DBMemo;
        TS_Label10: TTS_Label;
        dfDescricaoComp: TTS_DBMemo;
        TS_Label3: TTS_Label;
        dbgPecas: TTS_QDBGrid;
        dbgPecasITEM: TdxDBGridMaskColumn;
        dbgPecasQUANTIDADE: TdxDBGridCurrencyColumn;
        dbgPecasVALOR: TdxDBGridCurrencyColumn;
        dbgPecasicSubTotal: TdxDBGridColumn;
        dbgPecasDESCRICAOITEM: TdxDBGridButtonColumn;
        dbgPecasCODIGO: TdxDBGridButtonColumn;
        ppmGrid: TTS_PopupMenu;
        dbgPecasUNIDADE: TdxDBGridMaskColumn;
        dbgPecaslkUnidade: TdxDBGridLookupColumn;
        tsimpFiscal: TTS_TabSheet;
        GroupBox1: TGroupBox;
        rb_caixapapelao: TRadioButton;
        rb_sacoplastico: TRadioButton;
        rb_semembalagem: TRadioButton;
        GroupBox2: TGroupBox;
        rb_ava_sim: TRadioButton;
        rb_ava_nao: TRadioButton;
        GroupBox3: TGroupBox;
        cb_arranhadoriscado: TCheckBox;
        cb_manchado: TCheckBox;
        cb_sujo: TCheckBox;
        cb_caboeletrico: TCheckBox;
        cb_quebrado: TCheckBox;
        GroupBox4: TGroupBox;
        dfAcessorios: TTS_DBMemo;
        rb_ace_sim: TRadioButton;
        rb_ace_nao: TRadioButton;
        TS_Label15: TTS_Label;
        tsPagina5: TTS_TabSheet;
        TS_Label8: TTS_Label;
        TS_DBMemo1: TTS_DBMemo;
        GroupBox5: TGroupBox;
        TS_Label11: TTS_Label;
        rb_orc_comunicado_sim: TRadioButton;
        rb_orc_comunicado_nao: TRadioButton;
        GroupBox6: TGroupBox;
        TS_Label16: TTS_Label;
        rb_orc_aceito_sim: TRadioButton;
        rb_orc_aceito_nao: TRadioButton;
        GroupBox7: TGroupBox;
        TS_Label17: TTS_Label;
        rb_sev_pronto_sim: TRadioButton;
        rb_sev_pronto_nao: TRadioButton;
        GroupBox8: TGroupBox;
        TS_Label18: TTS_Label;
    rb_serv_avisado_sim: TRadioButton;
    rb_serv_avisado_nao: TRadioButton;
        TS_DBMemo6: TTS_DBMemo;
        TS_DBMemo4: TTS_DBMemo;
        TS_DBMemo3: TTS_DBMemo;
        TS_DBMemo2: TTS_DBMemo;
        dbgPecasEstoque: TdxDBGridMaskColumn;
        TS_Label19: TTS_Label;
        TS_DBTextEffect1: TTS_DBTextEffect;
        TS_Label21: TTS_Label;
        TS_DBTextEffect3: TTS_DBTextEffect;
        TS_Label22: TTS_Label;
        TS_DBTextEffect4: TTS_DBTextEffect;
        TS_Label24: TTS_Label;
        TS_DBTextEffect6: TTS_DBTextEffect;
        cmbTecnicos: TTS_LookupComboBox;
        TS_Label20: TTS_Label;
        cmbTecnico: TTS_LookupComboBox;
        TS_Label23: TTS_Label;
        TS_DBTextEffect2: TTS_DBTextEffect;
        TS_Label25: TTS_Label;
        TS_DBTextEffect5: TTS_DBTextEffect;
        TS_DBTextEffect7: TTS_DBTextEffect;
        dbgPecasReferencia: TdxDBGridButtonColumn;
    dfDataOrcamento: TTS_DBEditDate;
    TS_Label26: TTS_Label;
    TS_Label27: TTS_Label;
    dfDataServico: TTS_DBEditDate;
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure dfAcessoriosDblClick(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        procedure btImprimirClick(Sender: TObject);
        procedure edFaturadoChange(Sender: TObject);
        procedure edStatusChange(Sender: TObject);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
        procedure FormComponentEstado_Navegacao(Sender: TObject;
            var bSkip: Boolean);
        procedure btComando2Click(Sender: TObject);
        procedure dbgPecasDESCRICAOITEMButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure pcEquipChange(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure dbgPecasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
    private
        procedure AtualizaCampos;
        procedure SalvarCampos;
        procedure CamposSomenteConsulta;
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmAssistenciaLaboratorio: TFrmAssistenciaLaboratorio;

implementation

uses DM_AssistenciaLaboratorio, DM_Projeto, Dlg_Acessorios,
    Frm_EquipamentoSituacao, Funcoes, Rpt_Tecnica,
    dlg_AcompanhamentoAssistencia, IBQuery;

{$R *.dfm}

procedure TFrmAssistenciaLaboratorio.FormComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    FrmAssistenciaLaboratorio := Self;
end;

procedure TFrmAssistenciaLaboratorio.dfAcessoriosDblClick(Sender: TObject);
begin
    inherited;
    DlgAcessorios := TDlgAcessorios.Create(self);
    DlgAcessorios.ShowModal;
    DlgAcessorios.Release;
    DlgAcessorios := nil;
end;

procedure TFrmAssistenciaLaboratorio.btComando1Click(Sender: TObject);
begin
    inherited;
    FrmEquipamentoSituacao := TFrmEquipamentoSituacao.Create(Self);
    FrmEquipamentoSituacao.ShowModal;
    FrmEquipamentoSituacao.Release;
    FrmEquipamentoSituacao := nil;
end;

procedure TFrmAssistenciaLaboratorio.btImprimirClick(Sender: TObject);
begin
    inherited;
    RptTecnica := TRptTecnica.Create(Self);
    //RptTecnica.ImprimirEntradaEquipamento ( DMAssistenciaLaboratorio.C_TabelaSERVICO.AsInteger );
    RptTecnica.ImprimirControleInterno(DMAssistenciaLaboratorio.C_TabelaSERVICO.AsInteger); //Paulo 2806201
    RptTecnica.Release;
    RptTecnica := nil;
end;

procedure TFrmAssistenciaLaboratorio.edFaturadoChange(Sender: TObject);
begin
    inherited;
    if DMAssistenciaLaboratorio.C_TabelaFATURADO.Value = 'S' then
        begin
            T_Status.Prepare(lbFaturado.Parent, lbFaturado.BoundsRect);
            try
                lbFaturado.Visible := true;
                if T_Status.Prepared then
                    T_Status.Execute;
            finally
                T_Status.unPrepare;
            end;
        end
    else
        begin
            lbFaturado.Visible := False;
        end;
end;

procedure TFrmAssistenciaLaboratorio.edStatusChange(Sender: TObject);
begin
    inherited;
    if DMAssistenciaLaboratorio.C_TabelaSTATUSSERVICO.AsInteger in [50, 60] then
        begin
            cmbStatus.Color := $00EBD9D8;
            cmbStatus.Font.Color := clRed;
        end
    else
        begin
            cmbStatus.Color := clWindow;
            cmbStatus.Font.Color := clWindowText;
        end;
    btComando2.Visible := DMAssistenciaLaboratorio.C_TabelaSTATUSSERVICO.AsInteger = 20;
end;

procedure TFrmAssistenciaLaboratorio.FormComponentEstado_Inicial(
    Sender: TObject; var bSkip: Boolean);
begin
    inherited;
    btImprimir.Visible := False;
    btComando2.Visible := False;
    pcEquip.ActivePage := pcEncontrado;
    dfDescricaoComp.SetReadOnly(True);
    dfAcessorios.SetReadOnly(True);
    memoDefeito.SetReadOnly(True);
    dfOSNumero.SetReadOnly(True);
end;

procedure TFrmAssistenciaLaboratorio.FormComponentEstado_Navegacao(
    Sender: TObject; var bSkip: Boolean);
begin
    inherited;
    btImprimir.Visible := True;
    btComando2.Visible := True;
    pcEquip.ActivePage := pcEncontrado;
    dfDescricaoComp.SetReadOnly(True);
    dfAcessorios.SetReadOnly(True);
    memoDefeito.SetReadOnly(True);
    dfOSNumero.SetReadOnly(True);
end;

procedure TFrmAssistenciaLaboratorio.btComando2Click(Sender: TObject);
begin
    inherited;
    RptTecnica := TRptTecnica.Create(Self);
    RptTecnica.ImprimirOrcamento(DMAssistenciaLaboratorio.C_TabelaSERVICO.AsInteger);
    RptTecnica.Release;
    RptTecnica := nil;
end;

procedure TFrmAssistenciaLaboratorio.dbgPecasDESCRICAOITEMButtonClick(
    Sender: TObject; AbsoluteIndex: Integer);
begin
    inherited;
    if AbsoluteIndex = 1 then
        begin
            DMProjeto.SetParametrosForm([DMAssistenciaLaboratorio.C_ServicosDetITEM.asVariant]);
            DMProjeto.CriarForm('FrmItens', self, true);
            if (DMAssistenciaLaboratorio.C_ServicosDet.State in [dsInsert, dsEdit]) then
                dbgPecas.TS_ID := LastDataObject.ObjectKey;
        end;
end;

procedure TFrmAssistenciaLaboratorio.pcEquipChange(Sender: TObject);
begin
    inherited;

    if DMAssistenciaLaboratorio.C_TabelaEMBALAGEMPAPELAO.Value = 'S' then
        rb_caixapapelao.Checked := true;

    if DMAssistenciaLaboratorio.C_TabelaEMBALAGEMPLASTICO.Value = 'S' then
        rb_sacoplastico.Checked := true;

    if DMAssistenciaLaboratorio.C_TabelaSEMEMBALAGEM.Value = 'S' then
        rb_semembalagem.Checked := true;

    if DMAssistenciaLaboratorio.C_TabelaAVARIA.Value = 'S' then
        rb_ava_sim.Checked := True
    else
        rb_ava_nao.Checked := True;

    if DMAssistenciaLaboratorio.C_TabelaCOMACESSORIO.Value = 'S' then
        rb_ace_sim.Checked := True
    else
        rb_ace_nao.Checked := True;

    if DMAssistenciaLaboratorio.C_TabelaESTADOPRODMANCHADO.Value = 'S' then
        cb_manchado.Checked := true
    else
        cb_manchado.Checked := false;

    if DMAssistenciaLaboratorio.C_TabelaESTADOPRODARRANHADO.Value = 'S' then
        cb_arranhadoriscado.Checked := true
    else
        cb_arranhadoriscado.Checked := False;

    if DMAssistenciaLaboratorio.C_TabelaESTADOPRODSUJO.Value = 'S' then
        cb_sujo.Checked := true
    else
        cb_sujo.Checked := False;

    if DMAssistenciaLaboratorio.C_TabelaESTADOPRODCABOELETRICO.Value = 'S' then
        cb_caboeletrico.Checked := true
    else
        cb_caboeletrico.Checked := False;

    if DMAssistenciaLaboratorio.C_TabelaESTADOPRODQUEBRADO.Value = 'S' then
        cb_quebrado.Checked := true
    else
        cb_quebrado.Checked := False;

    // felipe
    if DMAssistenciaLaboratorio.C_TabelaORCAMENTOCOMUNICADO.Value = 'S' then
        rb_orc_comunicado_sim.Checked := True
    else
        rb_orc_comunicado_nao.Checked := True;

    if DMAssistenciaLaboratorio.C_TabelaORCAMENTOACEITO.Value = 'S' then
        rb_orc_aceito_sim.Checked := True
    else
        rb_orc_aceito_nao.Checked := True;

    if DMAssistenciaLaboratorio.C_TabelaSERVICOPRONTO.Value = 'S' then
        rb_sev_pronto_sim.Checked := True
    else
        rb_sev_pronto_nao.Checked := True;
    // fim

    AtualizaCampos;

end;

procedure TFrmAssistenciaLaboratorio.FormShow(Sender: TObject);
begin
    inherited;
    //Paulo 05072012
    with DMAssistenciaLaboratorio.Q_ClientesEquip do
        begin
            close;
            sql.Clear;
            sql.add('select c.numeroserie as numerodeserie, m.descricao as descM from servicos s  inner join clientesequipamentos ' +
                'c on c.cliente = s.cliente and c.equipamento = s.equipamento inner join modelos m on c.modelo = m.modelo where osnumero = :osnumero');
            ParamByName('osnumero').AsString := dlgAcompanhamentoAssistencia.osnumero;
            Open;
            lbNomeModelo.Caption := fieldbyname('descM').asstring;
            lbNumeroSerie.Caption := fieldbyname('numerodeserie').asstring;
        end;
    //cmbStatus.LookupKeyValue := DMAssistenciaLaboratorio.C_TabelaSTATUSSERVICO.Value;
    //cmbTecnico.LookupKeyValue :=  DMAssistenciaLaboratorio.C_TabelaTECNICO.Value;

    if DMAssistenciaLaboratorio.C_TabelaSTATUSSERVICO.Value = 11 then
        CamposSomenteConsulta;

    AtualizaCampos;
end;

procedure TFrmAssistenciaLaboratorio.SalvarCampos;
begin
    //Paulo 06072012

    if not (DMAssistenciaLaboratorio.C_Tabela.State in [dsInsert, dsEdit]) then
        DMAssistenciaLaboratorio.C_Tabela.Edit;

    if rb_orc_aceito_sim.Checked then
        DMAssistenciaLaboratorio.C_TabelaORCAMENTOACEITO.Value := 'S'
    else
        DMAssistenciaLaboratorio.C_TabelaORCAMENTOACEITO.Value := 'N';

    if rb_orc_comunicado_sim.Checked then
        DMAssistenciaLaboratorio.C_TabelaORCAMENTOCOMUNICADO.Value := 'S'
    else
        DMAssistenciaLaboratorio.C_TabelaORCAMENTOCOMUNICADO.Value := 'N';

    if rb_sev_pronto_sim.Checked then
        DMAssistenciaLaboratorio.C_TabelaSERVICOPRONTO.Value := 'S'
    else
        DMAssistenciaLaboratorio.C_TabelaSERVICOPRONTO.Value := 'N';

    if rb_serv_avisado_sim.Checked then
        DMAssistenciaLaboratorio.C_TabelaSERVICOAVISADO.Value := 'S'
    else
        DMAssistenciaLaboratorio.C_TabelaSERVICOAVISADO.Value := 'N';

    if cmbTecnicos.LookupKeyValue <> null then
        DMAssistenciaLaboratorio.C_TabelaTECNICODAOS.Value := cmbTecnicos.LookupKeyValue;
        
    if cmbTecnico.LookupKeyValue <> null then
        DMAssistenciaLaboratorio.C_TabelaTECNICO.Value := cmbTecnico.LookupKeyValue;

    //    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    //      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
end;

// Felipe   -   Procedure criada para desabilitar alguns campos, não permitindo alteração. Isso vale para O.S. com status Aguardando Acerto
procedure TFrmAssistenciaLaboratorio.CamposSomenteConsulta;
begin
    cmbStatus.ReadOnly := True;
    cmbTipo.ReadOnly := True;
    cmbTecnico.ReadOnly := True;
    cmbTecnico.ReadOnly := True;
    memoDefEncontr.ReadOnly := True;
    memoOBS.ReadOnly := True;
    dbgPecas.Enabled := False;
    rb_orc_comunicado_sim.Enabled := False;
    rb_orc_comunicado_nao.Enabled := False;
    TS_DBMemo2.ReadOnly := True;
    rb_orc_aceito_sim.Enabled := False;
    rb_orc_aceito_nao.Enabled := False;
    TS_DBMemo3.ReadOnly := True;
    dfDataOrcamento.ReadOnly := True;
    rb_sev_pronto_sim.Enabled := False;
    rb_sev_pronto_nao.Enabled := False;
    TS_DBMemo6.ReadOnly := True;
    rb_serv_avisado_sim.Enabled := False;
    rb_serv_avisado_nao.Enabled := False;
    TS_DBMemo4.ReadOnly := True;
    dfDataServico.ReadOnly := True;
    cmbTecnicos.ReadOnly := True;

end;

//Paulo 06072012
//Felipe 03042014
procedure TFrmAssistenciaLaboratorio.AtualizaCampos;
begin
    if DMAssistenciaLaboratorio.C_TabelaEMBALAGEMPAPELAO.Value = 'S' then
        rb_caixapapelao.Checked := true;

    if DMAssistenciaLaboratorio.C_TabelaEMBALAGEMPLASTICO.Value = 'S' then
        rb_sacoplastico.Checked := true;

    if DMAssistenciaLaboratorio.C_TabelaSEMEMBALAGEM.Value = 'S' then
        rb_semembalagem.Checked := true;

    if DMAssistenciaLaboratorio.C_TabelaAVARIA.Value = 'S' then
        rb_ava_sim.Checked := True
    else
        rb_ava_nao.Checked := True;

    if DMAssistenciaLaboratorio.C_TabelaCOMACESSORIO.Value = 'S' then
        rb_ace_sim.Checked := True
    else
        rb_ace_nao.Checked := True;

    if DMAssistenciaLaboratorio.C_TabelaESTADOPRODMANCHADO.Value = 'S' then
        cb_manchado.Checked := true
    else
        cb_manchado.Checked := false;

    if DMAssistenciaLaboratorio.C_TabelaESTADOPRODARRANHADO.Value = 'S' then
        cb_arranhadoriscado.Checked := true
    else
        cb_arranhadoriscado.Checked := False;

    if DMAssistenciaLaboratorio.C_TabelaESTADOPRODSUJO.Value = 'S' then
        cb_sujo.Checked := true
    else
        cb_sujo.Checked := False;

    if DMAssistenciaLaboratorio.C_TabelaESTADOPRODCABOELETRICO.Value = 'S' then
        cb_caboeletrico.Checked := true
    else
        cb_caboeletrico.Checked := False;

    if DMAssistenciaLaboratorio.C_TabelaESTADOPRODQUEBRADO.Value = 'S' then
        cb_quebrado.Checked := true
    else
        cb_quebrado.Checked := False;

    if DMAssistenciaLaboratorio.C_TabelaORCAMENTOCOMUNICADO.Value = 'S' then
        rb_orc_comunicado_sim.Checked := True
    else
        rb_orc_comunicado_nao.Checked := True;

    if DMAssistenciaLaboratorio.C_TabelaORCAMENTOACEITO.Value = 'S' then
        rb_orc_aceito_sim.Checked := True
    else
        rb_orc_aceito_nao.Checked := True;

    if DMAssistenciaLaboratorio.C_TabelaSERVICOPRONTO.Value = 'S' then
        rb_sev_pronto_sim.Checked := True
    else
        rb_sev_pronto_nao.Checked := True;

    if DMAssistenciaLaboratorio.C_TabelaSERVICOAVISADO.Value = 'S' then
        rb_serv_avisado_sim.Checked := True
    else
        rb_serv_avisado_nao.Checked := True;

    cmbStatus.LookupKeyValue := DMAssistenciaLaboratorio.C_TabelaSTATUSSERVICO.Value;
    cmbTecnicos.LookupKeyValue := DMAssistenciaLaboratorio.C_TabelaTECNICODAOS.Value;
    cmbTecnico.LookupKeyValue := DMAssistenciaLaboratorio.C_TabelaTECNICO.Value;
end;

procedure TFrmAssistenciaLaboratorio.btGravarClick(Sender: TObject);
begin
    SalvarCampos;

    inherited;

end;

procedure TFrmAssistenciaLaboratorio.dbgPecasCustomDrawCell(
    Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
var I: Integer;
begin
    inherited;

    if ANode.Values[dbgPecas.FindColumnByFieldName('ESTOQUE').Index] <> null then
        begin
            I := ANode.Values[dbgPecas.FindColumnByFieldName('ESTOQUE').Index];
            if I = null then
                I := 0;

            if I < 1 then
                begin
                    AColor := clRed;
                end
            else
                begin
                    AColor := clWindow;
                end;

            if AFocused then
                begin
                    AFont.Style := [fsBold];
                end;
        end;
end;

end.


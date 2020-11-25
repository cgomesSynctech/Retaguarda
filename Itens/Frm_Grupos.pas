unit Frm_Grupos;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
    TS_ScrollBox, ComCtrls, Buttons,
    TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn, TS_Label,
    DBCtrls, TS_DBLookupComboBox, Mask, TS_DBEdit,
    TS_LastDataObject, TS_Bevel, TS_MaxPanel, CheckLst,
    TS_CheckListBox, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner,
    dxEdLib, TS_Image, dxfLabel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
    teCtrls, TS_EffectsPanel, dxTLClms, dxDBTLCl, dxGrClms,
    ExtDlgs, db,
    TS_DBButtonEdit, TS_DBEditNumber, TS_DBText, TS_Shape, TS_DBCheckBox,
    BTOdeum, Placemnt, TS_PageControl, dxfProgressBar;

type
    TFrmGrupos = class(TFrmPadrao)
        TS_Label1: TTS_Label;
        TS_Label2: TTS_Label;
        TS_Label3: TTS_Label;
        TS_DBEdit1: TTS_DBButtonEdit;
        TS_DBEdit2: TTS_DBEdit;
        TS_DBLookupComboBox1: TTS_DBLookupComboBox;
        Grid_icSelecionado: TdxDBGridColumn;
        GridGRUPO: TdxDBGridMaskColumn;
        GridCODIGO: TdxDBGridMaskColumn;
        GridDESCRICAOGRUPO: TdxDBGridMaskColumn;
        GridTIPOITEM: TdxDBGridMaskColumn;
        GridIMPORTACAO: TdxDBGridMaskColumn;
        GridcmbTipo: TdxDBGridLookupColumn;
        GridFOTO: TdxDBGridMaskColumn;
        GridCOMISSAO: TdxDBGridMaskColumn;
        GridDESCONTOMAXIMO: TdxDBGridMaskColumn;
        pdFoto: TOpenPictureDialog;
        ppmFoto: TTS_PopupMenu;
        CarregarFoto1: TMenuItem;
        N4: TMenuItem;
        LimparFoto1: TMenuItem;
        DBEdit1: TDBEdit;
        DBEdit2: TDBEdit;
        DBEdit3: TDBEdit;
        DBEdit4: TDBEdit;
        TS_PageControl1: TTS_PageControl;
        tsPrincipal: TTS_TabSheet;
        tsFiscal: TTS_TabSheet;
        TS_Label43: TTS_Label;
        lbFatorLucro: TTS_Label;
        TS_Shape36: TTS_Shape;
        TS_Label79: TTS_Label;
        TS_DBText12: TTS_DBText;
        dfLucro: TTS_DBEditNumber;
        dfCustoAdic: TTS_DBEditNumber;
        df_Foto: TdxGraphicEdit;
        TS_Label31: TTS_Label;
        TS_Label35: TTS_Label;
        TS_Label36: TTS_Label;
        TS_Label37: TTS_Label;
        TS_Label38: TTS_Label;
        TS_Label39: TTS_Label;
        TS_Shape11: TTS_Shape;
        TS_Shape12: TTS_Shape;
        TS_Label48: TTS_Label;
        TS_Shape13: TTS_Shape;
        TS_Shape14: TTS_Shape;
        TS_Label50: TTS_Label;
        dfICMS: TTS_DBEditNumber;
        cmbCST: TTS_DBLookupComboBox;
    lkpTipoTributacao: TTS_DBLookupComboBox;
        dfReducao: TTS_DBEditNumber;
    dfTVASubstituicao: TTS_DBEditNumber;
    dfTVAFOnte: TTS_DBEditNumber;
        TS_Label77: TTS_Label;
        TS_Label86: TTS_Label;
        DBEdit14: TDBEdit;
        DBEdit5: TDBEdit;
    dbgTabelasGrupos: TTS_QDBGrid;
    dbgTabelasGruposTABELAGRUPO: TdxDBGridMaskColumn;
    dbgTabelasGruposGRUPO: TdxDBGridMaskColumn;
    dbgTabelasGruposTABELAPRECO: TdxDBGridMaskColumn;
    dbgTabelasGruposPERCENTUAL: TdxDBGridCurrencyColumn;
    dbgTabelasGruposlkTabelaPreco: TdxDBGridLookupColumn;
    TS_Label5: TTS_Label;
    ppmTabelasGrupos: TTS_PopupMenu;
    lcbGrupoPai: TTS_DBLookupComboBox;
    TS_Label6: TTS_Label;
    TS_Label47: TTS_Label;
    lcbModBaseCalc: TTS_DBLookupComboBox;
    TS_Label44: TTS_Label;
    lcbModBaseCalcST: TTS_DBLookupComboBox;
    TS_Shape16: TTS_Shape;
    TS_Shape17: TTS_Shape;
    TS_Label54: TTS_Label;
    pcImpFederais: TTS_PageControl;
    tsIPI: TTS_TabSheet;
    TS_Label63: TTS_Label;
    lbIPICompra: TTS_Label;
    lbIPIVenda: TTS_Label;
    cmbCSTIPI: TTS_DBLookupComboBox;
    dfIPICompra: TTS_DBEditNumber;
    dfIPIVenda: TTS_DBEditNumber;
    tsPisCofinsEntrada: TTS_TabSheet;
    lbTipoTribFederal: TTS_Label;
    lbCSTPisCofins: TTS_Label;
    TS_Label58: TTS_Label;
    TS_Label61: TTS_Label;
    DBCBpiscofins: TTS_DBCheckBox;
    cmbTribFederal: TTS_DBLookupComboBox;
    cmbCSTPISCOFINS: TTS_DBLookupComboBox;
    dfAliqPis: TTS_DBEditNumber;
    dfAliqCofins: TTS_DBEditNumber;
    tsPisCofinsSaida: TTS_TabSheet;
    TS_Label40: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label78: TTS_Label;
    TS_Label80: TTS_Label;
    cmbCSTPISCOFINSSaida: TTS_DBLookupComboBox;
    dfAliqPisSaida: TTS_DBEditNumber;
    dfAliqCofinsSaida: TTS_DBEditNumber;
    cmbNaturezaReceira: TTS_DBLookupComboBox;
    tsIRCS: TTS_TabSheet;
    TS_Label64: TTS_Label;
    TS_Label67: TTS_Label;
    dfAliqIR: TTS_DBEditNumber;
    dfAliqSS: TTS_DBEditNumber;
    dfDespesasFixas: TTS_DBEditNumber;
    dfEncargosCartoes: TTS_DBEditNumber;
    TS_Label4: TTS_Label;
    dfMenorValorVenda: TTS_DBEditNumber;
    TS_Label8: TTS_Label;
    TS_Label11: TTS_Label;
    dfAliqICMS: TTS_DBEditNumber;
    TS_Label12: TTS_Label;
    TS_DBEReducao: TTS_DBEditNumber;
    TS_Label13: TTS_Label;
    dfTVA: TTS_DBEditNumber;
    dfImpostosFederais: TTS_DBEditNumber;
    TS_Label14: TTS_Label;
    dfNCM: TTS_DBEdit;
    lbComissao: TTS_Label;
    dfComissao: TTS_DBEditNumber;
    lbDescMax: TTS_Label;
    dfDescMax: TTS_DBEditNumber;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure CarregarFoto1Click(Sender: TObject);
        procedure LimparFoto1Click(Sender: TObject);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure df_FotoClick(Sender: TObject);
        procedure TS_DBEdit1ButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure DBEdit2Change(Sender: TObject);
        procedure dfLucroChange(Sender: TObject);
        procedure dfDescMaxChange(Sender: TObject);
        procedure dfComissaoChange(Sender: TObject);
        procedure DBEdit14Change(Sender: TObject);
        procedure DBEdit5Change(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure btComando1Click(Sender: TObject);
    procedure cmbCSTPISCOFINSSaidaChange(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmGrupos: TFrmGrupos;

implementation
uses DM_Grupos, DM_Projeto, Funcoes, Dlg_AplicarIndicesGrupo;

{$R *.DFM}

procedure TFrmGrupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
    FrmGrupos := nil;
end;

procedure TFrmGrupos.FormComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
    if (DMProjeto.QtdParametrosForm > 1) and (DMGrupos.C_TabelaGrupo.value < 0) then
        DMGrupos.C_TabelaTipoItem.value := DMProjeto.GetParametrosForm(1);
end;

procedure TFrmGrupos.CarregarFoto1Click(Sender: TObject);
begin
    inherited;
    if pdFoto.Execute then
        with DMGrupos do
        begin

            if not (C_Tabela.State in [dsEdit, dsInsert]) then
                C_Tabela.Edit;

            C_TabelaFoto.Value := DMProjeto.AddFotoServidor(pdFoto.FileName);
            if FileExists(DMProjeto.ImgPath + C_TabelaFoto.Value) then
                DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaFoto.Value);

        end;
end;

procedure TFrmGrupos.LimparFoto1Click(Sender: TObject);
begin
    inherited;
    with DMGrupos do
    begin
        if not (C_Tabela.State in [dsEdit, dsInsert]) then
            C_Tabela.Edit;
        C_TabelaFoto.Value := '';
        DF_Foto.ClearPicture;
    end;
end;

procedure TFrmGrupos.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;
    with DMGrupos do
    begin
        if C_TabelaGrupo.value > 0 then
        begin
            if FileExists(DMProjeto.ImgPath + C_TabelaFoto.Value) then
                DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaFoto.Value)
            else
                DF_Foto.ClearPicture;
        end
        else
        begin
            DF_Foto.ClearPicture;
        end;
    end;
end;

procedure TFrmGrupos.df_FotoClick(Sender: TObject);
begin
    inherited;
    ppmFoto.PopupFromCursorPos;
end;

procedure TFrmGrupos.TS_DBEdit1ButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if not (DMGrupos.C_Tabela.State in [dsEdit, dsInsert]) then
        DMGrupos.C_Tabela.edit;
    DMGrupos.C_TabelaCodigo.value := DMProjeto.GeraCodigoGrupo(DMGrupos.C_TabelaCodigo.value, DMGrupos.C_TabelaGrupo.value);
    ActiveControl := TS_DBEdit2;
end;

procedure TFrmGrupos.DBEdit2Change(Sender: TObject);
begin
    inherited;
    with DMGrupos do
    begin
        {Apresentando a origem dos percentuais}
        lbDescMax.Font.Color := IIF((C_TabelaicDescontoMaximo.Value > 0) and (C_TabelaDescontoMaximo.Value >= 0), clWindowText,
            IIF(nDescMaxUsuarios > 0, clTeal, clOlive));
        case lbDescMax.Font.Color of
            clWindowText: lbDescMax.Hint := 'Definido aqui no Grupo';
            clTeal: lbDescMax.Hint := 'Maior Desconto que os Usuário podem dar';
            clOlive: lbDescMax.Hint := 'Não existe definição no sistema!' + #13 +
                'Configure o Desconto Máximo nos Usuários ou para este Grupo.';
        end;

        lbComissao.Font.Color := IIF((C_TabelaicComissao.Value > 0) and (C_TabelaComissao.Value >= 0), clWindowText,
            IIF(yMaiorComissao > 0, clTeal, clOlive));
        case lbComissao.Font.Color of
            clWindowText: lbComissao.Hint := 'Definido aqui no Grupo';
            clTeal: lbComissao.Hint := 'Comissão Média definida no Cad. de Fatores de Custos';
            clOlive: lbComissao.Hint := 'Não existe definição no sistema!' + #13 +
                'Configure a Comissão Média defina uma para este Grupo.';
        end;

        //lbComissaoAplicada.Font.Color := lbComissao.Font.Color;

        lbFatorLucro.Font.Color := IIF((C_TabelaicFatorLucro.Value > 0) and (C_TabelaFatorLucro.Value = -999),
            clTeal,
            clWindowText);

    end;
end;

procedure TFrmGrupos.dfLucroChange(Sender: TObject);
begin
    inherited;
//    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMGrupos.C_TabelaFatorLucro.Value) then
//        with DMGrupos do
//        begin
//            C_TabelaFatorLucro.Value := TTS_DBEditNumber(Sender).Value;
//        end;
end;

procedure TFrmGrupos.dfDescMaxChange(Sender: TObject);
begin
    inherited;
    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMGrupos.C_TabelaDescontoMaximo.Value) then
        with DMGrupos do
        begin
            C_TabelaDescontoMaximo.Value := TTS_DBEditNumber(Sender).Value;
        end;
end;

procedure TFrmGrupos.dfComissaoChange(Sender: TObject);
begin
    inherited;
    if (Direita(TTS_DBEditNumber(Sender).Text, 1) <> '.') and (TTS_DBEditNumber(Sender).Value <> DMGrupos.C_TabelaComissao.Value) then
        with DMGrupos do
        begin
            C_TabelaComissao.Value := TTS_DBEditNumber(Sender).Value;
        end;

end;

procedure TFrmGrupos.DBEdit14Change(Sender: TObject);
begin
    inherited;
    dfICMS.SetReadOnly(DMGrupos.C_TabelaSituacaoECF.Value <> 'T');
    cmbCST.SetReadOnly(DMGrupos.C_TabelaSituacaoECF.Value = 'S');
end;

procedure TFrmGrupos.DBEdit5Change(Sender: TObject);
begin
    inherited;
    try
        dfReducao.SetReadOnly((DMGrupos.C_TabelaCST.Value = '') or (DMGrupos.C_TabelaCST.Value[1] <> '2'));
    except
    end;
end;

procedure TFrmGrupos.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btComando1.Visible := False;
end;

procedure TFrmGrupos.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btComando1.Visible := True;
end;

procedure TFrmGrupos.btComando1Click(Sender: TObject);
var bResult : boolean;
    sAtualizar, sSQL : string;
begin
  inherited;
  DlgAplicarIndicesGrupo := TDlgAplicarIndicesGrupo.Create(Self);
  DlgAplicarIndicesGrupo.lbEstadoForm.Caption := 'Grupo: ' + DMGrupos.C_TabelaDESCRICAOGRUPO.AsString;
  bResult := DlgAplicarIndicesGrupo.ShowModal = mrOK;
  sAtualizar := DlgAplicarIndicesGrupo.sAtualizar;
  DlgAplicarIndicesGrupo.Release;
  DlgAplicarIndicesGrupo := nil;
  if (bResult) and (sAtualizar <> '') then try
    if not DMGrupos.Gravar then Exit;
    Screen.Cursor := crHourGlass;
    sSQL := 'update itens set ';
    if IndiceString(sAtualizar,',','COMISSAO') > 0 then sSQL := sSQL + 'COMISSAO = :COMISSAO,';
    if IndiceString(sAtualizar,',','DESCONTOMAXIMO') > 0  then sSQL := sSQL + 'DESCONTOMAXIMO = :DESCONTOMAXIMO,';
    if IndiceString(sAtualizar,',','ALIQICMS') > 0 then sSQL := sSQL + 'ALIQICMS = :ALIQICMS,';
    if IndiceString(sAtualizar,',','CUSTODESPESAS') > 0  then sSQL := sSQL + 'CUSTODESPESAS = :CUSTODESPESAS,';
    if IndiceString(sAtualizar,',','FATORLUCRO') > 0 then sSQL := sSQL + 'FATORLUCRO = :FATORLUCRO,';
    if IndiceString(sAtualizar,',','SITUACAOECF') > 0 then sSQL := sSQL + 'SITUACAOECF = :SITUACAOECF,';
    if IndiceString(sAtualizar,',','CST') > 0 then sSQL := sSQL + 'CST = :CST,';
    if IndiceString(sAtualizar,',','REDUCAOCST') > 0 then sSQL := sSQL + 'REDUCAOCST = :REDUCAOCST,';
    if IndiceString(sAtualizar,',','TVA') > 0 then sSQL := sSQL + 'TVA = :TVA,';
    if IndiceString(sAtualizar,',','TVAFONTE') > 0 then sSQL := sSQL + 'TVAFONTE = :TVAFONTE,';

    if IndiceString(sAtualizar,',','IPIVENDA') > 0 then sSQL := sSQL + 'IPIVENDA = :IPIVENDA,';
    if IndiceString(sAtualizar,',','IPICOMPRA') > 0 then sSQL := sSQL + 'IPICOMPRA = :IPICOMPRA,';
    if IndiceString(sAtualizar,',','ALIQIR') > 0 then sSQL := sSQL + 'ALIQIR = :ALIQIR,';
    if IndiceString(sAtualizar,',','ALIQSS') > 0 then sSQL := sSQL + 'ALIQSS = :ALIQSS,';
 //   if IndiceString(sAtualizar,',','ALIQPISSAIDA') > 0 then sSQL := sSQL + 'ALIQPISSAIDA = ALIQPISSAIDA,';
 //   if IndiceString(sAtualizar,',','ALIQCOFINSSAIDA') > 0 then sSQL := sSQL + 'ALIQCOFINSSAIDA = :ALIQCOFINSSAIDA,';
    if IndiceString(sAtualizar,',','ALIQCOFINS') > 0 then sSQL := sSQL + 'ALIQCOFINS = :ALIQCOFINS,';
    if IndiceString(sAtualizar,',','ALIQPIS') > 0 then sSQL := sSQL + 'ALIQPIS = :ALIQPIS,';
    if IndiceString(sAtualizar,',','IDTRIBFEDERAL') > 0 then sSQL := sSQL + 'IDTRIBFEDERAL = :IDTRIBFEDERAL,';
    if IndiceString(sAtualizar,',','CSTPISCOFINS') > 0 then sSQL := sSQL + 'CSTPISCOFINS = :CSTPISCOFINS,';
    if IndiceString(sAtualizar,',','CSTPISCOFINSSAIDA') > 0 then sSQL := sSQL + 'CSTPISCOFINSSAIDA = :CSTPISCOFINSSAIDA,';
    if IndiceString(sAtualizar,',','NATURAZARECEITAPISCOFINS') > 0 then sSQL := sSQL + 'NATURAZARECEITAPISCOFINS = :NATURAZARECEITAPISCOFINS,';
    if IndiceString(sAtualizar,',','ALIQPISSAIDA') > 0 then sSQL := sSQL + 'ALIQPISSAIDA = :ALIQPISSAIDA,';
    if IndiceString(sAtualizar,',','ALIQCOFINSSAIDA') > 0 then sSQL := sSQL + 'ALIQCOFINSSAIDA = :ALIQCOFINSSAIDA,';
    if IndiceString(sAtualizar,',','VINCULOCREDITOPISCOFINS') > 0 then sSQL := sSQL + 'VINCULOCREDITOPISCOFINS = :VINCULOCREDITOPISCOFINS,';
    if IndiceString(sAtualizar,',','BASECREDITOPISCOFINS') > 0 then sSQL := sSQL + 'BASECREDITOPISCOFINS = :BASECREDITOPISCOFINS,';
    if IndiceString(sAtualizar,',','PISCOFINS') > 0 then sSQL := sSQL + 'PISCOFINS = :PISCOFINS,';
    if Copy(sSQL,Length(sSQL),1) = ',' then Delete(sSQL,Length(sSQL),1);
    if (sSQL <> 'update itens set ') then begin
      sSQL := sSQL + ' where grupo = :grupo ';
      DMProjeto.Q_SQL.Close;
      DMProjeto.Q_SQL.SQL.Text := sSQL;
      DMProjeto.Q_SQL.ParamByName('grupo').AsInteger := DMGrupos.C_TabelaGRUPO.AsInteger;
      if IndiceString(sAtualizar,',','COMISSAO') > 0 then DMProjeto.Q_SQL.ParamByName('COMISSAO').AsCurrency := DMGrupos.C_TabelaicComissao.AsCurrency;
      if IndiceString(sAtualizar,',','DESCONTOMAXIMO') > 0  then DMProjeto.Q_SQL.ParamByName('DESCONTOMAXIMO').AsCurrency := DMGrupos.C_TabelaicDescontoMaximo.AsCurrency;
      if IndiceString(sAtualizar,',','ALIQICMS') > 0 then DMProjeto.Q_SQL.ParamByName('ALIQICMS').AsCurrency := DMGrupos.C_TabelaALIQICMS.AsCurrency;
      if IndiceString(sAtualizar,',','CUSTODESPESAS') > 0 then DMProjeto.Q_SQL.ParamByName('CUSTODESPESAS').AsCurrency := DMGrupos.C_TabelaCUSTODESPESAS.AsCurrency;
      if IndiceString(sAtualizar,',','FATORLUCRO') > 0 then DMProjeto.Q_SQL.ParamByName('FATORLUCRO').AsCurrency := DMGrupos.C_TabelaFATORLUCRO.AsCurrency;
      if IndiceString(sAtualizar,',','SITUACAOECF') > 0 then DMProjeto.Q_SQL.ParamByName('SITUACAOECF').AsString := DMGrupos.C_TabelaSITUACAOECF.AsString;
      if IndiceString(sAtualizar,',','CST') > 0 then DMProjeto.Q_SQL.ParamByName('CST').AsString := DMGrupos.C_TabelaCST.AsString;
      if IndiceString(sAtualizar,',','REDUCAOCST') > 0 then DMProjeto.Q_SQL.ParamByName('REDUCAOCST').AsCurrency := DMGrupos.C_TabelaREDUCAOCST.AsCurrency;
      if IndiceString(sAtualizar,',','TVA') > 0 then DMProjeto.Q_SQL.ParamByName('TVA').AsCurrency := DMGrupos.C_TabelaTVA.AsCurrency;
      if IndiceString(sAtualizar,',','TVAFONTE') > 0 then DMProjeto.Q_SQL.ParamByName('TVAFONTE').AsCurrency := DMGrupos.C_TabelaTVAFONTE.AsCurrency;

      if IndiceString(sAtualizar,',','IPIVENDA') > 0 then DMProjeto.Q_SQL.ParamByName('IPIVENDA').AsCurrency := DMGrupos.C_TabelaIPIVENDA.AsCurrency;
      if IndiceString(sAtualizar,',','IPICOMPRA') > 0 then DMProjeto.Q_SQL.ParamByName('IPICOMPRA').AsCurrency := DMGrupos.C_TabelaIPICOMPRA.AsCurrency;
      if IndiceString(sAtualizar,',','ALIQIR') > 0 then DMProjeto.Q_SQL.ParamByName('ALIQIR').AsCurrency := DMGrupos.C_TabelaALIQIR.AsCurrency;
      if IndiceString(sAtualizar,',','ALIQSS') > 0 then DMProjeto.Q_SQL.ParamByName('ALIQSS').AsCurrency := DMGrupos.C_TabelaALIQSS.AsCurrency;
      if IndiceString(sAtualizar,',','ALIQPISSAIDA') > 0 then DMProjeto.Q_SQL.ParamByName('ALIQPISSAIDA').AsCurrency := DMGrupos.C_TabelaALIQPISSAIDA.AsCurrency;
      if IndiceString(sAtualizar,',','ALIQCOFINSSAIDA') > 0 then DMProjeto.Q_SQL.ParamByName('ALIQCOFINSSAIDA').AsCurrency := DMGrupos.C_TabelaALIQCOFINSSAIDA.AsCurrency;
      if IndiceString(sAtualizar,',','ALIQCOFINS') > 0 then DMProjeto.Q_SQL.ParamByName('ALIQCOFINS').AsCurrency := DMGrupos.C_TabelaALIQCOFINS.AsCurrency;
      if IndiceString(sAtualizar,',','ALIQPIS') > 0 then DMProjeto.Q_SQL.ParamByName('ALIQPIS').AsCurrency := DMGrupos.C_TabelaALIQPIS.AsCurrency;
      if IndiceString(sAtualizar,',','IDTRIBFEDERAL') > 0 then DMProjeto.Q_SQL.ParamByName('IDTRIBFEDERAL').AsiNTEGER := DMGrupos.C_TabelaIDTRIBFEDERAL.aSiNTEGER;
      if IndiceString(sAtualizar,',','CSTPISCOFINS') > 0 then DMProjeto.Q_SQL.ParamByName('CSTPISCOFINS').AsString := DMGrupos.C_TabelaCSTPISCOFINS.AsString;
      if IndiceString(sAtualizar,',','CSTPISCOFINSSAIDA') > 0 then DMProjeto.Q_SQL.ParamByName('CSTPISCOFINSSAIDA').AsString := DMGrupos.C_TabelaCSTPISCOFINSSAIDA.AsString;
      if IndiceString(sAtualizar,',','NATURAZARECEITAPISCOFINS') > 0 then DMProjeto.Q_SQL.ParamByName('NATURAZARECEITAPISCOFINS').AsInteger := DMGrupos.C_TabelaNATURAZARECEITAPISCOFINS.AsInteger;
      if IndiceString(sAtualizar,',','ALIQPISSAIDA') > 0 then DMProjeto.Q_SQL.ParamByName('ALIQPISSAIDA').AsCurrency := DMGrupos.C_TabelaALIQPISSAIDA.AsCurrency;
      if IndiceString(sAtualizar,',','ALIQCOFINSSAIDA') > 0 then DMProjeto.Q_SQL.ParamByName('ALIQCOFINSSAIDA').AsCurrency := DMGrupos.C_TabelaALIQCOFINSSAIDA.AsCurrency;
      if IndiceString(sAtualizar,',','VINCULOCREDITOPISCOFINS') > 0 then DMProjeto.Q_SQL.ParamByName('VINCULOCREDITOPISCOFINS').AsString := DMGrupos.C_TabelaVINCULOCREDITOPISCOFINS.AsString;
      if IndiceString(sAtualizar,',','BASECREDITOPISCOFINS') > 0 then DMProjeto.Q_SQL.ParamByName('BASECREDITOPISCOFINS').AsString := DMGrupos.C_TabelaBASECREDITOPISCOFINS.AsString;
      if IndiceString(sAtualizar,',','PISCOFINS') > 0 then DMProjeto.Q_SQL.ParamByName('PISCOFINS').AsString := DMGrupos.C_TabelaPISCOFINS.AsString;
      DMProjeto.Q_SQL.ExecSQL;
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
      Screen.Cursor := crDefault;
      DlgMsg.ShowMsg( 8045, [ IntToStr( DMProjeto.Q_SQL.RowsAffected ) ] );
    end;
    Screen.Cursor := crDefault;
  except
    on e:exception do begin
      Screen.Cursor := crDefault;
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DlgMsg.ShowMsg( 50, ['ERRO' + #13#10 + e.message] );
    end;
  end;
end;

procedure TFrmGrupos.cmbCSTPISCOFINSSaidaChange(Sender: TObject);
begin
  inherited;
  DMGrupos.C_TabelaNATURAZARECEITAPISCOFINS.Value := 0;
  DMGrupos.C_NaturezaReceitaPisCofins.Close;
  DMGrupos.C_NaturezaReceitaPisCofins.Open;
  DMGrupos.C_NaturezaReceitaPisCofins.Filter := 'CST = '+ DMGrupos.C_TabelaCSTPISCOFINSSAIDA.AsString;
  DMGrupos.C_NaturezaReceitaPisCofins.Filtered := True;
end;

end.

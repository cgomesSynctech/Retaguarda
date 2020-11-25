unit Frm_NotasCupons;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Frm_Saidas, Db, IBCustomDataSet, IBQuery, ExtCtrls, teDrip, tePush,
    dxCntner, FormComponent, ImgList, Menus, TS_PopupMenu, TS_LastDataObject,
    DlgMsg, dxfLabel, TS_MaxPanel, dxCalc, dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib,
    dxDBELib, TS_DBEditNumber, TS_PopupEdit, TS_DBMemo, dxDBGrid, dxGrClEx, DBCtrls,
    TS_DBText, TS_Image, ComCtrls, TS_PageControl, StdCtrls, Mask,
    TS_DBButtonEdit, TS_DBEditFavorecido, TS_CheckBox, DBText,
    TS_DBTextEffect, TS_DBLookupTipoFav, TS_DBCheckBox, TS_DBEdit,
    TS_DBEditDate, dxEditor, dxDBEdtr, TS_DBLookupComboBox, TS_Label,
    TS_Shape, dxTLClms, dxTL, dxDBCtrl, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, TransEff, teTimed, BTOdeum,
    Placemnt, dxfProgressBar, TS_DBImageEdit, TS_DBPopupEdit, Dlg_CFOPs,
    TS_LookupComboBox;

type
    TFrmNotasCupons = class(TFrmSaidas)
        btEstimates: TTS_SpeedButton;
        imgStatus: TImageList;
        tsNotaFiscal: TTS_TabSheet;
        TS_Label16: TTS_Label;
        TS_Label17: TTS_Label;
        TS_Bevel2: TTS_Bevel;
        pnBaseCalcICMS: TTS_Panel;
        TS_Shape16: TTS_Shape;
        TS_Label20: TTS_Label;
        dfBaseCalculo: TTS_DBEditNumber;
        pnAliqICMS: TTS_Panel;
        TS_Shape17: TTS_Shape;
        TS_Label21: TTS_Label;
        dfAliqICMS: TTS_DBEditNumber;
        pnValorICMS: TTS_Panel;
        TS_Shape18: TTS_Shape;
        TS_Label22: TTS_Label;
        dfValorICMS: TTS_DBEditNumber;
        pnBaseCalcICMSSubst: TTS_Panel;
        TS_Shape19: TTS_Shape;
        TS_Label23: TTS_Label;
        dfBaseCalcSubst: TTS_DBEditNumber;
        pnValorFrete: TTS_Panel;
        TS_Shape20: TTS_Shape;
        TS_Label5: TTS_Label;
        dfValorFrete: TTS_DBEditNumber;
        pnValorSeguro: TTS_Panel;
        TS_Shape21: TTS_Shape;
        TS_Label6: TTS_Label;
        dfValorSeguro: TTS_DBEditNumber;
        pnOutrasDespesas: TTS_Panel;
        TS_Shape22: TTS_Shape;
        TS_Label7: TTS_Label;
        dfOutrasDespesas: TTS_DBEditNumber;
        pnValorIPI: TTS_Panel;
        TS_Shape23: TTS_Shape;
        TS_Label8: TTS_Label;
        dfValorIPI: TTS_DBEditNumber;
        pnTotalNota: TTS_Panel;
        TS_Shape24: TTS_Shape;
        TS_Label9: TTS_Label;
        dfTotal: TTS_DBEditNumber;
        pnValorICMSSubst: TTS_Panel;
        TS_Shape25: TTS_Shape;
        TS_Label10: TTS_Label;
        dfValorICMSSubst: TTS_DBEditNumber;
        pnTotalProdutos: TTS_Panel;
        TS_Shape26: TTS_Shape;
        TS_Label11: TTS_Label;
        dfTotalProdutos: TTS_DBEditNumber;
        dfSerie: TTS_DBEdit;
        dfCFOPNota: TTS_DBPopupEdit;
        dfModelo: TTS_DBEdit;
        pnTransportadora: TTS_Panel;
        TS_Shape27: TTS_Shape;
        TS_Label12: TTS_Label;
        cmbTransportadora: TTS_DBLookupComboBox;
        pnCIF_FOB: TTS_Panel;
        TS_Shape28: TTS_Shape;
        TS_Label13: TTS_Label;
        dfCIF_FOB: TTS_DBImageEdit;
        pnPlaca: TTS_Panel;
        TS_Shape29: TTS_Shape;
        TS_Label14: TTS_Label;
        dfPlaca: TTS_DBEdit;
        pnEspecie: TTS_Panel;
        TS_Shape30: TTS_Shape;
        TS_Label15: TTS_Label;
        dfEspecie: TTS_DBEdit;
        pnMarca: TTS_Panel;
        TS_Shape31: TTS_Shape;
        TS_Label18: TTS_Label;
        dfMarca: TTS_DBEdit;
        pnPesoBruto: TTS_Panel;
        TS_Shape32: TTS_Shape;
        TS_Label19: TTS_Label;
        dfPesoBruto: TTS_DBEditNumber;
        pnPesoLiquido: TTS_Panel;
        TS_Shape33: TTS_Shape;
        TS_Label24: TTS_Label;
        dfPesoLiquido: TTS_DBEditNumber;
        TS_Label25: TTS_Label;
        TS_Panel3: TTS_Panel;
        TS_Shape7: TTS_Shape;
        TS_Label29: TTS_Label;
        TS_DBText8: TTS_DBText;
        ReferenciarNotas1: TMenuItem;
    dbgItensQUANTIDADEVOLUME: TdxDBGridMaskColumn;
        procedure FormCreate(Sender: TObject);
        procedure lbOperacaoSetParametrosForm(Sender: TObject);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
        procedure dfFavorecidoSelecionou(Sender: TObject);
        procedure btEstimatesClick(Sender: TObject);
        procedure dfCFOPNotaInitPopup(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure dbgItensCFOPInitPopup(Sender: TObject);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure ppmPadraoPopup(Sender: TObject);
        procedure ReferenciarNotas1Click(Sender: TObject);
    procedure dfObsValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure dfVolumesValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    private
        DlgCFOPs, DlgCFOPs2: TDlgCFOPs;
    protected
        procedure AtualizaDadosCliente; override;

    public
        { Public declarations }
    end;

var
    FrmNotasCupons: TFrmNotasCupons;

implementation
uses DM_Projeto, DM_NotasCupons, Funcoes, Dlg_MesclarCupons, FRM_PADRAO;

{$R *.DFM}




procedure TFrmNotasCupons.FormCreate(Sender: TObject);
begin
    inherited;
    FrmNotasCupons := self;
    DlgCFOPs := TDlgCFOPs.Create(self, DMNotasCupons.C_CFOPsDS, nil);
    DlgCFOPs2 := TDlgCFOPs.Create(self, DMNotasCupons.C_CFOPsDS, dbgItensCFOP);
    pgCabecalho.activepage := tsCabecalho;
end;

procedure TFrmNotasCupons.lbOperacaoSetParametrosForm(Sender: TObject);
begin
    DMProjeto.SetParametrosForm([DMNotasCupons.C_TabelaTIPOMOVIMENTO.asVariant, 1]);
end;

procedure TFrmNotasCupons.AtualizaDadosCliente;
begin
    inherited;
    if Application.Terminated then
        exit; //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

    {  if DMNotasCupons.GetMovimentos('1','ECF') > 0 then
        btEstimates.Font.Color := clRed
      else
        btEstimates.Font.Color := clBlack;}

end;

procedure TFrmNotasCupons.FormComponentEstado_Inicial(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    btEstimates.Font.Color := clBlack;
end;

procedure TFrmNotasCupons.dfFavorecidoSelecionou(Sender: TObject);
begin
    inherited;
    {Verificando se o cliente possui Estimates em aberto para aproveitamente}
    {A esta altura o método atualizadadoscliente já ocorreu, portanto o botão de estimates
     já deve indicar se existem ou não - dispensando uma nova consulta}
  {  if (btEstimates.Font.Color = clred) and (not DMNotasCupons.bAlteracao) and (sTipoAbertura <> 'FATURAR OPERACAO') and (DMProjeto.LerPermissao(Self.Name,'M_CUPONS')) then begin
      if DlgMsg.ShowMsg(2186) = 100 then begin
        btEstimatesclick(self);
      end;
    end;}
end;

procedure TFrmNotasCupons.btEstimatesClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'M_CUPONS') then
        exit;

    if DMNotasCupons.C_TabelaSituacao.Value = 'C' then
        exit;

    if DMNotasCupons.C_tabelaFavorecido.Value = 0 then
        begin
            DlgMsg.ShowMsg(543);
            exit;
        end;

    DlgMesclarCupons := TDlgMesclarCupons.Create(self);
    DlgMesclarCupons.sTipos := '1';
    DlgMesclarCupons.DM := DMNotasCupons;
    DlgMesclarCupons.GridItens := dbgItens;
    DlgMesclarCupons.ShowModal;
    DlgMesclarCupons.Release;

    //Para Atualizar Ordem de digitação e sequencial;
    DMNotasCupons.C_TabelaAfterScroll(DMNotasCupons.C_Tabela);

    pgItens.ActivePageIndex := 0;
    ActiveControl := nil;
    PostMessage(Handle, PM_Foco, 0, 0);
end;

procedure TFrmNotasCupons.dfCFOPNotaInitPopup(Sender: TObject);
begin
    inherited;
    TTS_DBPopupEdit(Sender).PopupControl := DlgCFOPs.pnCFOP;
    DlgCFOPs.SetEventos(TTS_DBPopupEdit(Sender));
    DlgCFOPs.SetFiltro('substring(cfop,1,1) >= ''5''');
end;

procedure TFrmNotasCupons.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;
    DlgCFOPs.Free;
    DlgCFOPs2.Free;
end;

procedure TFrmNotasCupons.dbgItensCFOPInitPopup(Sender: TObject);
begin
    inherited;
    dbgItensCFOP.PopupControl := nil;
    DlgCFOPs2.SetDS(DMNotasCupons.C_CFOPsDS);
    dbgItensCFOP.PopupControl := DlgCFOPs2.pnCFOP;
    DlgCFOPs2.SetColuna(dbgItensCFOP);
    DlgCFOPs2.SetFiltro('substring(cfop,1,1) >= ''5''');
end;

procedure TFrmNotasCupons.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;
    {if ((Not bPermitirSalvar) Or
       ( (DMInvoices.C_Tabela.FieldByName('STATUSNFE').Value = 100) Or
         (DMInvoices.C_Tabela.FieldByName('STATUSNFE').Value = 204)
       )) Then Begin}
    if ((DMNotasCupons.C_Tabela.FieldByName('STATUSNFE').Value = 100) or
        (DMNotasCupons.C_Tabela.FieldByName('STATUSNFE').Value = 135) or
        (DMNotasCupons.C_Tabela.FieldByName('STATUSNFE').Value = 204)) then
        begin
            dbgItens.Enabled := false;
            tsNotaFiscal.Enabled := false;
            dfFavorecido.Enabled := false;
            cmbTipoFav.Enabled := false;
            cmbTipoMovimento.Enabled := false;
            pnData.Enabled := false;
            pnNumero.Enabled := false;
            pnCliente.Enabled := false;
            pnDataEntrega.Enabled := false;
            //tsCabecalho.Enabled := false;
            pnSomaTotal.Enabled := false;
            tsTermos.Enabled := false;
        end
    else
        begin
            dbgItens.Enabled := true;
            tsNotaFiscal.Enabled := true;
            dfFavorecido.Enabled := true;
            cmbTipoFav.Enabled := true;
            cmbTipoMovimento.Enabled := true;
            pnCliente.Enabled := true;
            pnData.Enabled := true;
            pnNumero.Enabled := true;
            pnDataEntrega.Enabled := true;
            //tsCabecalho.Enabled := true;
            pnSomaTotal.Enabled := true;
            tsTermos.Enabled := true;
        end;

    if (DMNotasCupons.C_Tabela.FieldByName('IDMESTRE').Value <= 0) then
        ReferenciarNotas1.Visible := False
    else
        ReferenciarNotas1.Visible := True;

    { Felipe - Carrega o volume informado na operação. Caso seja preciso alterar o volume, deve-se alterar a quantidade de um ou mais itens ou digitar
    a novo valor do Volume no seu campo. (28/11/2016) }
    if (DMNotasCupons.C_TabelaVOLUMES.Value > 0) then
        DMSaida.volumeEdit := DMNotasCupons.C_TabelaVOLUMES.Value;

end;

procedure TFrmNotasCupons.ppmPadraoPopup(Sender: TObject);
begin
    inherited;
    if (DM_NotasCupons.DMNotasCupons.C_Tabela.FieldByName('STATUSNFE').Value = 100) then
        ApagarDados.Visible := False
    else
        ApagarDados.Visible := True;
end;

procedure TFrmNotasCupons.ReferenciarNotas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMNotasCupons.C_Tabela.FieldByName('IDMESTRE').Value, DMNotasCupons.C_Tabela.FieldByName('EMPRESA').Value, DMNotasCupons.C_Tabela.FieldByName('PDV').Value]);
    Dmprojeto.CriarForm('FrmSaidasReferenciadas', Self, True);
end;

procedure TFrmNotasCupons.dfObsValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  inherited;
    if (dfObs.Text <> '') then
    begin
        dfObs.Text := Replace(dfObs.Text, #$D#$A, ' ');
    end;
end;

procedure TFrmNotasCupons.dfVolumesValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  inherited;
    DMSaida.volumeEdit := dfVolumes.Value;
end;

end.


unit Frm_DevolucoesFornecedores;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, Frm_Saidas, dxExEdtr, DB, IBCustomDataSet, IBQuery, ExtCtrls,
    teDrip, TransEff, teTimed, tePush, dxCntner, Placemnt, BTOdeum,
    FormComponent, ImgList, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
    dxfLabel, TS_MaxPanel, dxCalc, dxDBTLCl, dxGrClms, dxEdLib, dxDBELib,
    TS_DBEditNumber, TS_PopupEdit, TS_DBMemo, dxDBGrid, dxGrClEx, DBCtrls,
    TS_DBText, TS_Image, ComCtrls, TS_PageControl, StdCtrls, Mask,
    TS_DBButtonEdit, TS_DBEditFavorecido, TS_CheckBox, DBText,
    TS_DBTextEffect, TS_DBLookupTipoFav, TS_DBCheckBox, TS_DBEdit,
    TS_DBEditDate, dxEditor, dxDBEdtr, TS_DBLookupComboBox, TS_Label,
    TS_Shape, dxTLClms, dxTL, dxDBCtrl, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, dxfProgressBar, TS_DBImageEdit,
    TS_DBPopupEdit, Dlg_CFOPs, TS_LookupComboBox;

type
    TFrmDevolucoesFornecedores = class(TFrmSaidas)
        tsFiscal: TTS_TabSheet;
        TS_Label16: TTS_Label;
        TS_Label17: TTS_Label;
        TS_Bevel2: TTS_Bevel;
        TS_Label25: TTS_Label;
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
        TS_Panel3: TTS_Panel;
        TS_Shape7: TTS_Shape;
        TS_DBText2: TTS_DBText;
        TS_Label26: TTS_Label;
        dbgItensRATEIODESPESAS: TdxDBGridMaskColumn;
        ltimoGravado1: TMenuItem;
        ReferenciarNotas1: TMenuItem;
    dbgItensQUANTIDADEVOLUME: TdxDBGridMaskColumn;
        procedure FormCreate(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        procedure dfFavorecidoSelecionou(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure dfCFOPNotaInitPopup(Sender: TObject);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure ppmPadraoPopup(Sender: TObject);
        procedure ReferenciarNotas1Click(Sender: TObject);
    procedure dfObsValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure dfVolumesValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    private
        DlgCFOPs: TDlgCFOPs;
    public
        { Public declarations }
    end;

var
    FrmDevolucoesFornecedores: TFrmDevolucoesFornecedores;

implementation

uses DM_DevolucoesFornecedores, Dlg_MesclarEntradas, DM_Projeto, FRM_PADRAO, funcoes;

{$R *.dfm}

procedure TFrmDevolucoesFornecedores.FormCreate(Sender: TObject);
begin
    inherited;
    FrmDevolucoesFornecedores := self;
    DlgCFOPs := TDlgCFOPs.Create(self, DMDevolucoesFornecedores.C_CFOPsDS, nil);
    DMDevolucoesFornecedores.CalcularPesoAutomatico := (DMProjeto.Parametro('CalculaPesoAutomatico') = 'S'); 
    pgCabecalho.activepage := tsCabecalho;
end;

procedure TFrmDevolucoesFornecedores.btComando1Click(Sender: TObject);
begin
    //  inherited;
    //  inherited;
    if DMDevolucoesFornecedores.C_TabelaSituacao.Value = 'C' then
        exit;

    if DMDevolucoesFornecedores.C_TabelaFavorecido.Value = 0 then
        begin
            DlgMsg.ShowMsg(643);
            exit;
        end;

    DlgMesclarEntradas := TDlgMesclarEntradas.Create(self);
    DlgMesclarEntradas.sTipos := '101';
    DlgMesclarEntradas.DM := DMDevolucoesFornecedores;
    DlgMesclarEntradas.GridItens := dbgItens;
    DlgMesclarEntradas.ShowModal;
    DlgMesclarEntradas.Release;

    ActiveControl := nil;

    PostMessage(Handle, PM_Foco, 0, 0);

end;

procedure TFrmDevolucoesFornecedores.dfFavorecidoSelecionou(
    Sender: TObject);
begin
    inherited;
    //if (not DMDevolucoesFornecedores.bAlteracao) then
  //        btComando1click(self);
end;

procedure TFrmDevolucoesFornecedores.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;
    DlgCFOPs.free;
end;

procedure TFrmDevolucoesFornecedores.dfCFOPNotaInitPopup(Sender: TObject);
begin
    inherited;
    TTS_DBPopupEdit(Sender).PopupControl := DlgCFOPs.pnCFOP;
    DlgCFOPs.SetEventos(TTS_DBPopupEdit(Sender));
    DlgCFOPs.SetFiltro('substring(cfop,1,1) >= ''5''');
end;

procedure TFrmDevolucoesFornecedores.FormComponentAfterScroll(
    Sender: TObject);
begin
    inherited;
    if ((DMDevolucoesFornecedores.C_Tabela.FieldByName('STATUSNFE').Value = 100) or
        (DMDevolucoesFornecedores.C_Tabela.FieldByName('STATUSNFE').Value = 135) or
        (DMDevolucoesFornecedores.C_Tabela.FieldByName('STATUSNFE').Value = 204)) then
        begin
            dbgItens.Enabled := false;
            tsFiscal.Enabled := false;
            dfFavorecido.Enabled := false;
            cmbTipoFav.Enabled := false;
            cmbTipoMovimento.Enabled := false;
            pnData.Enabled := false;
            pnNumero.Enabled := false;
            pnCliente.Enabled := false;
            //    pnDataEntrega.Enabled := false;
                //tsCabecalho.Enabled := false;
            //    pnSomaTotal.Enabled := false;
            tsTermos.Enabled := false;
            pnHorizontal.Enabled := false;
        end
    else
        begin
            dbgItens.Enabled := true;
            tsFiscal.Enabled := true;
            dfFavorecido.Enabled := true;
            cmbTipoFav.Enabled := true;
            cmbTipoMovimento.Enabled := true;
            pnCliente.Enabled := true;
            pnData.Enabled := true;
            pnNumero.Enabled := true;
            //  pnDataEntrega.Enabled := true;
              //tsCabecalho.Enabled := true;
            //  pnSomaTotal.Enabled := true;
            tsTermos.Enabled := true;
            pnHorizontal.Enabled := true;
        end;

    if (DMDevolucoesFornecedores.C_Tabela.FieldByName('IDMESTRE').Value <= 0) then
        ReferenciarNotas1.Visible := False
    else
        ReferenciarNotas1.Visible := True;

    { Felipe - Carrega o volume informado na operação. Caso seja preciso alterar o volume, deve-se alterar a quantidade de um ou mais itens ou digitar
    a novo valor do Volume no seu campo. (28/11/2016) }
    if (DMDevolucoesFornecedores.C_TabelaVOLUMES.Value > 0) then
        DMDevolucoesFornecedores.volumeEdit := DMDevolucoesFornecedores.C_TabelaVOLUMES.Value;
end;

procedure TFrmDevolucoesFornecedores.ppmPadraoPopup(Sender: TObject);
begin
    inherited;
    if (DM_DevolucoesFornecedores.DMDevolucoesFornecedores.C_Tabela.FieldByName('STATUSNFE').Value = 100) then
        ApagarDados.Visible := False
    else
        ApagarDados.Visible := True;
end;

procedure TFrmDevolucoesFornecedores.ReferenciarNotas1Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMDevolucoesFornecedores.C_Tabela.FieldByName('IDMESTRE').Value, DMDevolucoesFornecedores.C_Tabela.FieldByName('EMPRESA').Value, DMDevolucoesFornecedores.C_Tabela.FieldByName('PDV').Value]);
    Dmprojeto.CriarForm('FrmSaidasReferenciadas', Self, True);
end;

procedure TFrmDevolucoesFornecedores.dfObsValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  inherited;
    if (dfObs.Text <> '') then
    begin
        dfObs.Text := Replace(dfObs.Text, #$D#$A, ' ');
    end;
end;

procedure TFrmDevolucoesFornecedores.dfVolumesValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  inherited;
    DMDevolucoesFornecedores.volumeEdit := dfVolumes.Value;
end;

end.


unit Frm_DevolucoesClientes;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, Frm_Entradas, dxExEdtr, DB, IBCustomDataSet, IBQuery, ExtCtrls,
    teMasked, teDiagon, teDrip, TransEff, teTimed, tePush, dxCntner, BTOdeum,
    FormComponent, ImgList, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
    TS_Image, TS_MaxPanel, dxEdLib, dxDBELib, TS_DBEditNumber, DBCtrls,
    TS_DBText, dxDBTLCl, dxGrClms, TS_PopupEdit, TS_DBMemo, dxGrClEx,
    dxDBGrid, ComCtrls, TS_PageControl, TS_DBEditDate, dxCalc, StdCtrls,
    Mask, TS_DBButtonEdit, TS_DBEditFavorecido, TS_DBEdit, TS_CheckBox,
    TS_DBLookupComboBox, DBText, TS_DBTextEffect, dxEditor, dxDBEdtr,
    TS_DBLookupTipoFav, dxfLabel, TS_Label, TS_Shape, dxTLClms, dxTL,
    dxDBCtrl, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
    TS_EffectsPanel, Placemnt, dxfProgressBar, Dlg_CFOPs, TS_DBImageEdit,
    TS_DBPopupEdit, TS_Edit;

type
    TFrmDevolucoesClientes = class(TFrmEntradas)
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
        TS_Label18: TTS_Label;
        dfCFOPEntrada: TTS_DBPopupEdit;
        TS_Panel1: TTS_Panel;
        TS_Shape7: TTS_Shape;
        TS_Label3: TTS_Label;
        TS_DBEditNumber7: TTS_DBEditNumber;
        pnVendedor: TTS_Panel;
        TS_Shape3: TTS_Shape;
        lbVendedor: TTS_Label;
        cmbVendedor: TTS_DBLookupComboBox;
        TS_Label14: TTS_Label;
        dfChaveNFe: TTS_DBEdit;
        dfTotalItens: TTS_DBEditNumber;
        ReferenciarNotas1: TMenuItem;
    dbgItensCSTIPI: TdxDBGridLookupColumn;
    dbgItensVALORPISPROD: TdxDBGridMaskColumn;
    dbgItensVALORCOFINSPROD: TdxDBGridMaskColumn;
        procedure FormCreate(Sender: TObject);
        procedure dfFavorecidoSelecionou(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        procedure ApagarDadosClick(Sender: TObject);
        procedure dfCFOPNotaInitPopup(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure dfCFOPEntradaInitPopup(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure dfChaveNFeExit(Sender: TObject);
        procedure ppmPadraoPopup(Sender: TObject);
        procedure ReferenciarNotas1Click(Sender: TObject);
    private
        DlgCFOPs, DlgCFOPs2: TDlgCFOPs;
    protected
        procedure AtualizaDadosFornecedor; override;
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmDevolucoesClientes: TFrmDevolucoesClientes;

implementation

uses DM_Projeto, DM_DevolucoesClientes, Dlg_MesclarMovimentos,
    Dlg_MesclarVendas, FRM_PADRAO;

{$R *.dfm}

procedure TFrmDevolucoesClientes.FormCreate(Sender: TObject);
begin
    inherited;
    FrmDevolucoesClientes := self;
    DlgCFOPs := TDlgCFOPs.Create(self, DMDevolucoesClientes.C_CFOPsDS, nil);
    pgCabecalho.activepage := tsCabecalho;
end;

procedure TFrmDevolucoesClientes.AtualizaDadosFornecedor;
begin
    inherited;
    if Application.Terminated then
        exit; //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

    if DMDevolucoesClientes.GetMovimentos('102') > 0 then
        btComando1.Font.Color := clRed
    else
        btComando1.Font.Color := clBlack;

end;

procedure TFrmDevolucoesClientes.dfFavorecidoSelecionou(Sender: TObject);
begin
    inherited;
    //  if (not DMDevolucoesClientes.bAlteracao) then
    //      btComando1click(self);
end;

procedure TFrmDevolucoesClientes.btComando1Click(Sender: TObject);
begin
    //  inherited;
    if DMDevolucoesClientes.C_TabelaSituacao.Value = 'C' then
        exit;

    if (DMDevolucoesClientes.C_TabelaFavorecido.Value = 0) then
        begin
            DlgMsg.ShowMsg(543);
            exit;
        end;

    DlgMesclarVendas := TDlgMesclarVendas.Create(self);
    DlgMesclarVendas.sTipos := '1,2';
    DlgMesclarVendas.DM := DMDevolucoesClientes;
    DlgMesclarVendas.GridItens := dbgItens;
    DlgMesclarVendas.sSaida := dbtNumero.Caption;
    DlgMesclarVendas.ShowModal;
    DlgMesclarVendas.Release;

    ActiveControl := nil;

    PostMessage(Handle, PM_Foco, 0, 0);
end;

procedure TFrmDevolucoesClientes.ApagarDadosClick(Sender: TObject);
begin
    inherited;
    DMDevolucoesClientes.ApagarOperacoesExtras;
end;

procedure TFrmDevolucoesClientes.dfCFOPNotaInitPopup(Sender: TObject);
begin
    inherited;
    TTS_DBPopupEdit(Sender).PopupControl := DlgCFOPs.pnCFOP;
    DlgCFOPs.SetEventos(TTS_DBPopupEdit(Sender));
    DlgCFOPs.SetFiltro('substring(cfop,1,1) >= ''5''');
end;

procedure TFrmDevolucoesClientes.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;
    DlgCFOPs.free;
end;

procedure TFrmDevolucoesClientes.dfCFOPEntradaInitPopup(Sender: TObject);
begin
    inherited;
    TTS_DBPopupEdit(Sender).PopupControl := DlgCFOPs.pnCFOP;
    DlgCFOPs.SetEventos(TTS_DBPopupEdit(Sender));
    DlgCFOPs.SetFiltro('substring(cfop,1,1) < ''4''');
end;

procedure TFrmDevolucoesClientes.FormShow(Sender: TObject);
begin
    inherited;
    dbgItensQUANTIDADEVOLUME.Index := dbgItensQUANTIDADE.Index + 1;
end;

procedure TFrmDevolucoesClientes.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;

    if ((DMDevolucoesClientes.C_Tabela.FieldByName('STATUSNFE').Value = 100) or
        (DMDevolucoesClientes.C_Tabela.FieldByName('STATUSNFE').Value = 204)) then
        begin
            dbgItens.Enabled := false;
            tsFiscal.Enabled := false;
            dfFavorecido.Enabled := false;
            cmbTipoFav.Enabled := false;
            cmbTipoMovimento.Enabled := false;
            pnData.Enabled := false;
            pnNumero.Enabled := false;
            pnFornecedor.Enabled := false;
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
            pnFornecedor.Enabled := true;
            pnData.Enabled := true;
            pnNumero.Enabled := true;
            //  pnDataEntrega.Enabled := true;
              //tsCabecalho.Enabled := true;
            //  pnSomaTotal.Enabled := true;
            tsTermos.Enabled := true;
            pnHorizontal.Enabled := true;
        end;

    if (DMDevolucoesClientes.C_Tabela.FieldByName('IDMESTRE').Value <= 0) then
        ReferenciarNotas1.Visible := False
    else
        ReferenciarNotas1.Visible := True;

end;

procedure TFrmDevolucoesClientes.dfChaveNFeExit(Sender: TObject);
begin
    inherited;
    if Length(dfChaveNFe.Text) > 44 then
        DlgMsg.ShowMsg(50, [pChar('Chave de acesso inválida, a quantidade de números digitado está maior que a quantidade correta ( ' + IntToStr(Length(dfChaveNFe.Text)) + ' ) !')])
    else if ((Length(dfChaveNFe.Text) < 44) and (Trim(dfChaveNFe.Text) <> '')) then
        DlgMsg.ShowMsg(50, [pChar('Chave de acesso inválida, a quantidade de números digitado está menor que a quantidade correta ( ' + IntToStr(Length(dfChaveNFe.Text)) + ' ) !')]);
end;

procedure TFrmDevolucoesClientes.ppmPadraoPopup(Sender: TObject);
begin
    inherited;
    if (DM_DevolucoesClientes.DMDevolucoesClientes.C_Tabela.FieldByName('STATUSNFE').Value = 100) then
        ApagarDados.Visible := False
    else
        ApagarDados.Visible := True;
end;

procedure TFrmDevolucoesClientes.ReferenciarNotas1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([DMDevolucoesClientes.C_Tabela.FieldByName('IDMESTRE').Value, DMDevolucoesClientes.C_Tabela.FieldByName('EMPRESA').Value, DMDevolucoesClientes.C_Tabela.FieldByName('PDV').Value]);
    Dmprojeto.CriarForm('FrmEntradasReferenciadas', Self, True);
end;

end.


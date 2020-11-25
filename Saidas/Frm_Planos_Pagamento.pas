unit Frm_Planos_Pagamento;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
    TS_ScrollBox, ComCtrls, Buttons,
    TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn, DBCtrls,
    TS_DBLookupComboBox, Mask, TS_DBEdit, TS_Label,
    TS_LastDataObject, CheckLst, TS_CheckListBox, TS_Bevel, Db,
    funcoes, TS_DBRadioGroup, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
    TS_DBEditDate, dxTL, dxDBCtrl,
    dxDBGrid, TS_Image, dxfLabel, TS_MaxPanel, TS_QDBGrid,
    teCtrls, TS_EffectsPanel, dxTLClms, TS_Shape,
    dxfCheckBox, TS_DBImageEdit, dxfClock,
    TS_DBCheckBox, Variants, Placemnt, BTOdeum, dxfProgressBar, TS_DBMaskEdit,
    dxDBTLCl, dxGrClms;

type
    TFrmPlanos_Pagamento = class(TFrmPadrao)
        TS_Label1: TTS_Label;
        TS_Label2: TTS_Label;
        TS_Label3: TTS_Label;
        TS_DBEdDescricao: TTS_DBEdit;
        TS_DBEdPercDesconto: TTS_DBEdit;
        TS_DBEdDias: TTS_DBEdit;
        TS_Label5: TTS_Label;
        TS_DBEdJuros: TTS_DBEdit;
        dfParcelas: TTS_DBEdit;
        dxDBTipo: TdxDBImageEdit;
        TS_Label8: TTS_Label;
        GridDESCRICAO: TdxDBGridMaskColumn;
        GridPDESCONTO: TdxDBGridMaskColumn;
        GridJUROS: TdxDBGridMaskColumn;
        GridQTDPARCELAS: TdxDBGridMaskColumn;
        GridTIPO: TdxDBGridMaskColumn;
        dbgIntervalos: TTS_QDBGrid;
        dbgIntervalosColumn1: TdxDBGridColumn;
        dbgIntervalosColumn2: TdxDBGridColumn;
        TS_Label9: TTS_Label;
        TS_Label7: TTS_Label;
        TS_Label10: TTS_Label;
        TS_Label11: TTS_Label;
        TS_Label13: TTS_Label;
        TS_Label4: TTS_Label;
        edPeriodicidade: TTS_DBEdit;
        TS_Label14: TTS_Label;
        ppmGrid: TTS_PopupMenu;
        Aplicarperiodicidadeapartirdaparcelacorrente2: TMenuItem;
        TS_Shape1: TTS_Shape;
        TS_Shape3: TTS_Shape;
        TS_Label15: TTS_Label;
        imgUm: TTS_Image;
        ImgZero: TTS_Image;
        dxfLabel1: TdxfLabel;
        TS_Shape5: TTS_Shape;
        TS_Shape2: TTS_Shape;
        TS_Shape4: TTS_Shape;
        TS_Shape6: TTS_Shape;
        cbUma: TdxfCheckBox;
        cbCom: TdxfCheckBox;
        cbSem: TdxfCheckBox;
        TS_Label6: TTS_Label;
        dfTipoEntrada: TTS_DBImageEdit;
        lbPercentual: TTS_Label;
        dfPercentual: TTS_DBEdit;
        lbCarencia: TTS_Label;
        dfCarencia: TTS_DBEdit;
        DBEdit1: TDBEdit;
        DBEdit2: TDBEdit;
        TS_Label12: TTS_Label;
        dfValidade: TTS_DBEditDate;
        TS_DBCheckBox1: TTS_DBCheckBox;
        TS_Label16: TTS_Label;
        TS_Label18: TTS_Label;
        pnValorMinimo: TTS_Panel;
        TS_Label17: TTS_Label;
        TS_Label19: TTS_Label;
        dfValorMinimo: TTS_DBMaskEdit;
        cbVar: TdxfCheckBox;
        cbFixo: TdxfCheckBox;
        dbgIntervalosColumn3: TdxDBGridDateColumn;
        TS_Label20: TTS_Label;
        edComissao: TTS_DBEdit;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure TS_SpeedButton1Click(Sender: TObject);
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure Aplicarperiodicidadeapartirdaparcelacorrente2Click(
            Sender: TObject);
        procedure cbUmaClick(Sender: TObject);
        procedure DBEdit1Change(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmPlanos_Pagamento: TFrmPlanos_Pagamento;

implementation

uses DM_Planos_Pagamento, DM_Projeto;
//Dlg_exemplo_planos_pagamento,

{$R *.DFM}

procedure TFrmPlanos_Pagamento.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;
    FrmPlanos_Pagamento := nil;
end;

procedure TFrmPlanos_Pagamento.FormComponentAfterScroll(Sender: TObject);
var
    i: Integer;
    str, sIntervalo, sEsquema: string;
begin
    inherited;
    DMPlanos_Pagamento.bPassando := true;

    if (DMPlanos_Pagamento.C_TabelaPLANOPAGAMENTO.Value <= 0) and (DMPlanos_Pagamento.C_TabelaPLANOPAGAMENTO.Value <> -8888) then
        btGravar.Enabled := False
    else
        btGravar.Enabled := True;

    if not DMPlanos_Pagamento.C_Intervalo.Active then
        DMPlanos_Pagamento.C_Intervalo.CreateDataSet;

    if not DMPlanos_Pagamento.bNovoReg then
        DMPlanos_Pagamento.C_Intervalo.EmptyDataSet
    else
        DMPlanos_Pagamento.bNovoReg := false;

    sIntervalo := DMPlanos_Pagamento.C_TabelaIntervalos.value;
    sEsquema := DMPlanos_Pagamento.C_TabelaESQUEMAPARCELAS.Value;
    for i := 1 to contastrings(sIntervalo, ';') do
        begin
            str := SeparaStrings(sIntervalo, ';', i);
            with DMPlanos_Pagamento.C_Intervalo do
                begin
                    append;
                    FieldByName('parcela').AsString := SeparaStrings(str, '-', 1);
                    if sEsquema = 'F' then
                        FieldByName('data').AsDateTime := StrToFloatDef(SeparaStrings(str, '-', 2), 0)
                    else
                        FieldByName('dias').AsString := SeparaStrings(str, '-', 2);
                    post;
                end;
        end; //for i:=1 to contastrings
    DMPlanos_Pagamento.bPassando := false;
    DMPlanos_Pagamento.C_Intervalo.First;
end;

procedure TFrmPlanos_Pagamento.TS_SpeedButton1Click(Sender: TObject);
begin
    inherited;
    with DMPlanos_Pagamento do
        begin
            C_Intervalo.AfterPost(C_Intervalo);
        end;

    DMProjeto.CriarForm('DlgExemplo_planos_pagamento', Self, true);
end;

procedure TFrmPlanos_Pagamento.FormComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    if DMProjeto.GetParametrosForm(1) <> null then
        begin
            DMPlanos_Pagamento.C_Tabela.Edit;
            DMPlanos_Pagamento.sTipo := DMProjeto.GetParametrosForm(1);
            DMPlanos_Pagamento.C_TabelaTipo.Value := DMProjeto.GetParametrosForm(1);
        end;
end;

procedure TFrmPlanos_Pagamento.Aplicarperiodicidadeapartirdaparcelacorrente2Click(
    Sender: TObject);
var nQtdeDias: integer;
begin
    inherited;
    with DMPlanos_Pagamento do
        begin
            if C_TabelaPeriodicidade.value > 0 then
                begin
                    C_intervalo.prior;
                    nQtdeDias := StrToIntDef(C_intervaloDias.Value, 0) + C_TabelaPeriodicidade.value;
                    C_intervalo.next;
                    while not C_Intervalo.eof do
                        begin
                            C_Intervalo.edit;
                            C_IntervaloDias.asInteger := nQtdeDias;
                            C_Intervalo.next;
                            nQtdeDias := nQtdeDias + C_TabelaPeriodicidade.value;
                        end;
                end;
        end;
end;

procedure TFrmPlanos_Pagamento.cbUmaClick(Sender: TObject);
begin
    inherited;
    if not DMPlanos_Pagamento.C_Tabela.Active then
        exit;

    DMPlanos_Pagamento.C_Tabela.Edit;
    DMPlanos_Pagamento.C_TabelaEsquemaParcelas.Value := TWinControl(Sender).Hint;

    if DMPlanos_Pagamento.C_TabelaEsquemaParcelas.Value = 'V' then
        begin
            dbgIntervalosColumn2.Visible := True;
            dbgIntervalosColumn3.Visible := False;
            dfParcelas.Enabled := false;
            dbgIntervalos.Color := FormComponent.FormColor;
            DMPlanos_Pagamento.C_TabelaQtdParcelas.Value := 0;
            pnValorMinimo.Visible := true;
            ActiveControl := dfValorMinimo;
        end
    else if DMPlanos_Pagamento.C_TabelaEsquemaParcelas.Value = 'U' then
        begin
            dbgIntervalosColumn2.Visible := True;
            dbgIntervalosColumn3.Visible := False;
            pnValorMinimo.Visible := false;
            dfParcelas.Enabled := true;
            dfParcelas.SetReadOnly(true);
            dbgIntervalos.Color := FormComponent.FormColor;
            DMPlanos_Pagamento.C_TabelaQtdParcelas.Value := 0;
        end
    else if DMPlanos_Pagamento.C_TabelaEsquemaParcelas.Value = 'F' then
        begin
            dbgIntervalosColumn2.Visible := False;
            dbgIntervalosColumn3.Visible := True;
            pnValorMinimo.Visible := False;
            dfParcelas.Enabled := true;
            if DMPlanos_Pagamento.C_TabelaQtdParcelas.Value = 0 then
                DMPlanos_Pagamento.C_TabelaQtdParcelas.Value := 1;
            dbgIntervalos.Color := clWindow;
            dfParcelas.SetReadOnly(false);
            ActiveControl := dfParcelas;
        end
    else
        begin
            dbgIntervalosColumn2.Visible := True;
            dbgIntervalosColumn3.Visible := False;
            pnValorMinimo.Visible := false;
            dfParcelas.Enabled := true;
            if DMPlanos_Pagamento.C_TabelaQtdParcelas.Value = 0 then
                DMPlanos_Pagamento.C_TabelaQtdParcelas.Value := 1;
            dbgIntervalos.Color := clWindow;
            dfParcelas.SetReadOnly(false);
            ActiveControl := dfParcelas;
        end;

end;

procedure TFrmPlanos_Pagamento.DBEdit1Change(Sender: TObject);
begin
    inherited;
    if DMPlanos_Pagamento.C_TabelaEsquemaParcelas.Value = 'S' then
        begin
            dbgIntervalosColumn2.Visible := True;
            dbgIntervalosColumn3.Visible := False;
            cbSem.Checked := true;
            imgZero.BringToFront;
            dfTipoEntrada.Color := FormComponent.FormColor;
            dfTipoEntrada.ReadOnly := true;
            dfCarencia.ReadOnly := true;
            dfCarencia.Color := FormComponent.FormColor;
            dfPercentual.ReadOnly := true;
            dfPercentual.Color := FormComponent.FormColor;
        end
    else if DMPlanos_Pagamento.C_TabelaEsquemaParcelas.Value = 'C' then
        begin
            dbgIntervalosColumn2.Visible := True;
            dbgIntervalosColumn3.Visible := False;
            cbCom.Checked := true;
            imgUm.BringToFront;
            dfTipoEntrada.Color := clWindow;
            dfTipoEntrada.ReadOnly := false;
            dfCarencia.ReadOnly := false;
            dfCarencia.Color := clWindow;
            dfPercentual.ReadOnly := false;
            dfPercentual.Color := clWindow;
        end
    else if DMPlanos_Pagamento.C_TabelaEsquemaParcelas.Value = 'V' then
        begin
            dbgIntervalosColumn2.Visible := True;
            dbgIntervalosColumn3.Visible := False;
            cbVar.Checked := true;
            imgUm.BringToFront;
            dfTipoEntrada.Color := clWindow;
            dfTipoEntrada.ReadOnly := false;
            dfCarencia.ReadOnly := false;
            dfCarencia.Color := clWindow;
            dfPercentual.ReadOnly := false;
            dfPercentual.Color := clWindow;
        end
    else if DMPlanos_Pagamento.C_TabelaEsquemaParcelas.Value = 'F' then
        begin
            dbgIntervalosColumn2.Visible := False;
            dbgIntervalosColumn3.Visible := True;
            cbFixo.Checked := true;
            imgZero.BringToFront;
            dfTipoEntrada.Color := FormComponent.FormColor;
            dfTipoEntrada.ReadOnly := true;
            dfCarencia.ReadOnly := true;
            dfCarencia.Color := FormComponent.FormColor;
            dfPercentual.ReadOnly := true;
            dfPercentual.Color := FormComponent.FormColor;
        end
    else
        begin
            dbgIntervalosColumn2.Visible := True;
            dbgIntervalosColumn3.Visible := False;
            cbUma.Checked := true;
            imgUm.BringToFront;
            dfTipoEntrada.Color := clWindow;
            dfTipoEntrada.ReadOnly := false;
            dfCarencia.ReadOnly := false;
            dfCarencia.Color := clWindow;
            dfPercentual.ReadOnly := false;
            dfPercentual.Color := clWindow;
        end;
end;

end.


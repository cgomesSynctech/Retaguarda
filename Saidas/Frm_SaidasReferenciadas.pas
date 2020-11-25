unit Frm_SaidasReferenciadas;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, Placemnt, BTOdeum, FormComponent, ImgList, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
    TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms, dxTL,
    dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
    TS_DBEdit, DBCtrls, TS_DBRadioGroup, TS_RadioButton, dxExEdtr;

type
    TFrmSaidasReferenciadas = class(TFrmPadrao)
        rdGroupTipoDoc: TTS_DBRadioGroup;
        lb_ChaveAcesso: TTS_Label;
        df_ChaveAcesso: TTS_DBEdit;
        lb_Modelo: TTS_Label;
        df_Modelo: TTS_DBEdit;
        lb_ECF: TTS_Label;
        df_ECF: TTS_DBEdit;
        TS_Label1: TTS_Label;
        df_COO: TTS_DBEdit;
        Grid_icSelecionado: TdxDBGridColumn;
        GridSAIDAREFERENCIADA: TdxDBGridMaskColumn;
        GridEMPRESA: TdxDBGridMaskColumn;
        GridSAIDA: TdxDBGridMaskColumn;
        GridPDV: TdxDBGridMaskColumn;
        GridTIPODOCUMENTO: TdxDBGridMaskColumn;
        GridCHAVEACESSO: TdxDBGridMaskColumn;
        GridMODELO: TdxDBGridMaskColumn;
        GridECF: TdxDBGridMaskColumn;
        GridCOO: TdxDBGridMaskColumn;
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure df_ChaveAcessoKeyPress(Sender: TObject; var Key: Char);
        procedure df_ECFKeyPress(Sender: TObject; var Key: Char);
        procedure df_COOKeyPress(Sender: TObject; var Key: Char);
        procedure btGravarClick(Sender: TObject);
        function Validar(): Boolean;
        procedure FormCreate(Sender: TObject);
        procedure btPesquisarClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmSaidasReferenciadas: TFrmSaidasReferenciadas;

implementation

{$R *.dfm}

uses DM_Projeto, DM_SaidasReferenciadas, funcoes, Form_Padrao;

procedure TFrmSaidasReferenciadas.FormComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;

    DMSaidasReferenciadas.saida := IIF(DMProjeto.GetParametrosForm(0) <> null, DMProjeto.GetParametrosForm(0), 1);
    DMSaidasReferenciadas.empresa := IIF(DMProjeto.GetParametrosForm(1) <> null, DMProjeto.GetParametrosForm(1), -1);
    DMSaidasReferenciadas.pdv := IIF(DMProjeto.GetParametrosForm(2) <> null, DMProjeto.GetParametrosForm(2), 0);
end;

procedure TFrmSaidasReferenciadas.df_ChaveAcessoKeyPress(Sender: TObject;
    var Key: Char);
begin
    inherited;
    if not (key in ['0'..'9', #08]) then
        key := #0;
end;

procedure TFrmSaidasReferenciadas.df_ECFKeyPress(Sender: TObject;
    var Key: Char);
begin
    inherited;
    if not (key in ['0'..'9', #08]) then
        key := #0;
end;

procedure TFrmSaidasReferenciadas.df_COOKeyPress(Sender: TObject;
    var Key: Char);
begin
    inherited;
    if not (key in ['0'..'9', #08]) then
        key := #0;
end;

procedure TFrmSaidasReferenciadas.btGravarClick(Sender: TObject);
begin
    if (Validar()) then
        inherited;

end;

function TFrmSaidasReferenciadas.Validar(): Boolean;
var
    isValido: boolean;
begin
    isValido := True;

    if (DMSaidasReferenciadas.C_TabelaTIPODOCUMENTO.Value = 1) then
        begin
            if not ((Length(DMSaidasReferenciadas.C_TabelaMODELO.Value) = 2) and (Length(DMSaidasReferenciadas.C_TabelaECF.Value) = 3) and
                (Length(DMSaidasReferenciadas.C_TabelaCOO.Value) = 6)) then
                begin
                    isValido := False;
                    DlgMsg.ShowMsg(50, ['Para o tipo de documento "Cupom" deve-se informar o valor correto para os campos abaixo: ' + #13 +
                        '* Modelo (02 caracteres)' + #13 +
                            '* Número ECF (03 caracteres)' + #13 +
                            '* Número COO (06 caracteres)']);
                end;
        end
    else
        begin
            if not ((Length(DMSaidasReferenciadas.C_TabelaCHAVEACESSO.Value) = 44)) then
                begin
                    isValido := False;
                    DlgMsg.ShowMsg(50, ['Para o tipo de documento "Nota Fiscal" deve-se informar o valor correto para os campos abaixo: ' + #13 +
                        '* Chave Acesso (44 caracteres)']);
                end;
        end;

    Result := isValido;
end;

procedure TFrmSaidasReferenciadas.FormCreate(Sender: TObject);
begin
    inherited;
    ActiveControl := df_ChaveAcesso;
end;

procedure TFrmSaidasReferenciadas.btPesquisarClick(Sender: TObject);
begin
    ActiveControl := df_ChaveAcesso;
    inherited;

end;

end.


unit Frm_EntradasReferenciadas;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, Placemnt, BTOdeum, FormComponent, ImgList, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
    TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms, dxTL,
    dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
    TS_DBEdit, DBCtrls, TS_DBRadioGroup;

type
    TFrmEntradasReferenciadas = class(TFrmPadrao)
        lb_ChaveAcesso: TTS_Label;
        df_ChaveAcesso: TTS_DBEdit;
        df_Modelo: TTS_DBEdit;
        df_ECF: TTS_DBEdit;
        df_COO: TTS_DBEdit;
        lb_Modelo: TTS_Label;
        lb_ECF: TTS_Label;
        TS_Label1: TTS_Label;
        rdGroupTipoDoc: TTS_DBRadioGroup;
        Grid_icSelecionado: TdxDBGridColumn;
        GridENTRADAREFERENCIADA: TdxDBGridMaskColumn;
        GridEMPRESA: TdxDBGridMaskColumn;
        GridENTRADA: TdxDBGridMaskColumn;
        GridPDV: TdxDBGridMaskColumn;
        GridTIPODOCUMENTO: TdxDBGridMaskColumn;
        GridCHAVEACESSO: TdxDBGridMaskColumn;
        GridMODELO: TdxDBGridMaskColumn;
        GridECF: TdxDBGridMaskColumn;
        GridCOO: TdxDBGridMaskColumn;
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure df_ChaveAcessoKeyPress(Sender: TObject; var Key: Char);
        procedure df_COOKeyPress(Sender: TObject; var Key: Char);
        procedure df_ECFKeyPress(Sender: TObject; var Key: Char);
        function Validar(): Boolean;
        procedure btGravarClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure btPesquisarClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmEntradasReferenciadas: TFrmEntradasReferenciadas;

implementation

{$R *.dfm}

uses DM_Projeto, DM_EntradasReferenciadas, DB, DBClient, funcoes;

procedure TFrmEntradasReferenciadas.FormComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    DMEntradasReferenciadas.entrada := IIF(DMProjeto.GetParametrosForm(0) <> null, DMProjeto.GetParametrosForm(0), 1);
    DMEntradasReferenciadas.empresa := IIF(DMProjeto.GetParametrosForm(1) <> null, DMProjeto.GetParametrosForm(1), -1);
    DMEntradasReferenciadas.pdv := IIF(DMProjeto.GetParametrosForm(2) <> null, DMProjeto.GetParametrosForm(2), 0);

end;

procedure TFrmEntradasReferenciadas.df_ChaveAcessoKeyPress(Sender: TObject;
    var Key: Char);
begin
    inherited;
    if not (key in ['0'..'9', #08]) then
        key := #0;
end;

procedure TFrmEntradasReferenciadas.df_COOKeyPress(Sender: TObject;
    var Key: Char);
begin
    inherited;
    if not (key in ['0'..'9', #08]) then
        key := #0;
end;

procedure TFrmEntradasReferenciadas.df_ECFKeyPress(Sender: TObject;
    var Key: Char);
begin
    inherited;
    if not (key in ['0'..'9', #08]) then
        key := #0;
end;

function TFrmEntradasReferenciadas.Validar(): Boolean;
var
    isValido: boolean;
begin
    isValido := True;

    if (DMEntradasReferenciadas.C_TabelaTIPODOCUMENTO.Value = 1) then
        begin
            if not ((Length(DMEntradasReferenciadas.C_TabelaMODELO.Value) = 2) and (Length(DMEntradasReferenciadas.C_TabelaECF.Value) = 3) and
                (Length(DMEntradasReferenciadas.C_TabelaCOO.Value) = 6)) then
                begin
                    isValido := False;
                    DlgMsg.ShowMsg(50, ['Para o tipo de documento "Cupom" deve-se informar o valor correto para os campos abaixo: ' + #13 +
                        '* Modelo (02 caracteres)' + #13 +
                            '* N�mero ECF (03 caracteres)' + #13 +
                            '* N�mero COO (06 caracteres)']);
                end;
        end
    else
        begin
            if not ((Length(DMEntradasReferenciadas.C_TabelaCHAVEACESSO.Value) = 44)) then
                begin
                    isValido := False;
                    DlgMsg.ShowMsg(50, ['Para o tipo de documento "Nota Fiscal" deve-se informar o valor correto para os campos abaixo: ' + #13 +
                        '* Chave Acesso (44 caracteres)']);
                end;
        end;

    Result := isValido;

end;

procedure TFrmEntradasReferenciadas.btGravarClick(Sender: TObject);
begin
    if (Validar()) then
        inherited;
        
end;

procedure TFrmEntradasReferenciadas.FormCreate(Sender: TObject);
begin
    inherited;
    ActiveControl := df_ChaveAcesso;
end;

procedure TFrmEntradasReferenciadas.btPesquisarClick(Sender: TObject);
begin
    ActiveControl := df_ChaveAcesso;
    inherited;

end;

end.


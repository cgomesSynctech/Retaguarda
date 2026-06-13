unit Frm_EntradasReferenciadas;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, Placemnt, BTOdeum, FormComponent, ImgList, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
    TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms, dxTL,
    dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
    TS_DBEdit, DBCtrls, TS_DBRadioGroup, dxExEdtr;

type
    TFrmEntradasReferenciadas = class(TFrmPadrao)
        lb_ChaveAcesso: TTS_Label;
        df_ChaveAcesso: TTS_DBEdit;
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
    TS_DBRadioGroup1: TTS_DBRadioGroup;
    TS_Label2: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    TS_Label3: TTS_Label;
    TS_DBEdit2: TTS_DBEdit;
    TS_Label4: TTS_Label;
    TS_DBEdit3: TTS_DBEdit;
    TS_DBEdit4: TTS_DBEdit;
    TS_Label5: TTS_Label;
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
        DMEntradasReferenciadas.AcharRereferencia(df_ChaveAcesso.Text);

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


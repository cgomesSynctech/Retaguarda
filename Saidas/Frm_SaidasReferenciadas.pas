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
    TS_DBEdit2: TTS_DBEdit;
    TS_Label2: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure df_ChaveAcessoKeyPress(Sender: TObject; var Key: Char);
        procedure df_ECFKeyPress(Sender: TObject; var Key: Char);
        procedure df_COOKeyPress(Sender: TObject; var Key: Char);
        procedure btGravarClick(Sender: TObject);
        function Validar(): Boolean;
        procedure FormCreate(Sender: TObject);
        procedure btPesquisarClick(Sender: TObject);
    procedure df_ChaveAcessoExit(Sender: TObject);
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
      DMSaidasReferenciadas.AcharRereferencia(df_ChaveAcesso.Text);

     // ShowMessage('Fatores de Custos não encontrados!');
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

procedure TFrmSaidasReferenciadas.df_ChaveAcessoExit(Sender: TObject);
begin
  inherited;
   //   DMSaidasReferenciadas.AcharRereferencia(df_ChaveAcesso.Text);
   //   lbPart.Caption := DMSaidasReferenciadas.C_TabelaNOMEPART.Value ;

end;



end.


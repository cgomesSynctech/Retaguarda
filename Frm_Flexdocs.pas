unit Frm_Flexdocs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib, TS_DBMemo,
  dxEditor, TS_DBMaskEdit;

type
  TFrmFlexdocs = class(TFrmPadrao)
    lblCSC: TTS_Label;
    TS_dbCSC: TTS_DBMaskEdit;
    lblFlexDocs: TTS_Label;
    TTs_DBChaveFlexDocs: TTS_DBMemo;
    TS_Label1: TTS_Label;
    TS_DBMaskEdit1: TTS_DBMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormComponentAfterFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFlexdocs: TFrmFlexdocs;

implementation
uses DM_projeto, DM_Flexdocs, DM_Empresa;

{$R *.dfm}

procedure TFrmFlexdocs.FormCreate(Sender: TObject);
begin
  inherited;


      // btPesquisarClick (sender);
end;

procedure TFrmFlexdocs.FormShow(Sender: TObject);
begin
  inherited;

  btPesquisar.Click;
//    ExecuteAction(btPesquisarClick.Action);
end;

procedure TFrmFlexdocs.FormComponentAfterFormShow(Sender: TObject);
begin
  inherited;
       if DMEmpresa.C_Empresas.Active and (DMEmpresa.C_EmpresasFavorecido.value = 0) then
    DMEmpresa.C_Empresas.append;
end;

end.

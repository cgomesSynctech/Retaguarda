unit Frm_Unidades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn, TS_Label, Mask,
  DBCtrls, TS_DBEdit, TS_LastDataObject,
  TS_DBCheckBox, TS_Bevel, TS_MaxPanel, CheckLst, TS_CheckListBox,
  dxExEdtr, dxEdLib, dxDBELib, dxCntner, dxEditor, TS_Image,
  dxfLabel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  teCtrls, TS_EffectsPanel, dxTLClms, BTOdeum, Placemnt;

type
  TFrmUnidades = class(TFrmPadrao)
    TS_DBEdDescricao: TTS_DBEdit;
    TS_DBEdSigla: TTS_DBEdit;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_DBCheckBox1: TTS_DBCheckBox;
    Grid_icSelecionado: TdxDBGridColumn;
    GridUNIDADE: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridINTEIRA: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUnidades: TFrmUnidades;

implementation

uses DM_UNIDADES, DM_Projeto;

{$R *.DFM}

procedure TFrmUnidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmUnidades := Nil;
end;

procedure TFrmUnidades.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  TS_DBEdSigla.SetReadOnly(false);
end;

procedure TFrmUnidades.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  TS_DBEdSigla.SetReadOnly(true);
end;

end.

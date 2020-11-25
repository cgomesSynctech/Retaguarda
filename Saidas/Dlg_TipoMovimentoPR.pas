unit Dlg_TipoMovimentoPR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, TS_QDBGrid, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel;

type
  TDlgTipoMovimentoPR = class(TFrmModeloCadastros)
    Grid: TTS_QDBGrid;
    GridOperacao: TdxDBGridMaskColumn;
    GridTipo: TdxDBGridMaskColumn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgTipoMovimentoPR: TDlgTipoMovimentoPR;

implementation
  uses DM_Projeto, DM_PedidoRapido;

{$R *.dfm}

procedure TDlgTipoMovimentoPR.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    btGravarClick(Self)
  else if Key = #27 then
    btFecharCadastroClick(self);
end;

procedure TDlgTipoMovimentoPR.btFecharCadastroClick(Sender: TObject);
begin
  ModalResult := -1;
end;

procedure TDlgTipoMovimentoPR.btGravarClick(Sender: TObject);
begin
  inherited;

  if DMProjeto.PermissoesTiposMovimento(Grid.DataSource.Dataset.FieldByName('TipoMovimento').asInteger, true) then 
    ModalResult := 1;
    
end;

end.
 
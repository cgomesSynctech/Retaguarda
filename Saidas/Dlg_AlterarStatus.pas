unit Dlg_AlterarStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DM_Saidas, FRM_MODELOCADASTROS, dxExEdtr, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, TS_QDBGrid, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, DB;

type
  TDlgAlterarStatus = class(TFrmModeloCadastros)
    Grid: TTS_QDBGrid;
    GridColumn1: TdxDBGridColumn;
    GridDS: TDataSource;
    procedure GridDblClick(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    DM : TDMSaidas;

  end;

var
  DlgAlterarStatus: TDlgAlterarStatus;

implementation
  uses DM_Projeto;

{$R *.dfm}

procedure TDlgAlterarStatus.GridDblClick(Sender: TObject);
begin
  inherited;
  btGravarClick(self);
end;

procedure TDlgAlterarStatus.GridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    btGravarClick(self)
  else if key = #27 then
    ModalResult := -1;
end;

procedure TDlgAlterarStatus.btGravarClick(Sender: TObject);
begin
  inherited;
  DM.C_Tabela.edit;
  DM.C_TabelaStatus.Value := DM.C_StatusStatus.Value;

  ModalResult := 100;
end;

procedure TDlgAlterarStatus.FormShow(Sender: TObject);
begin
  inherited;
  GridDS.DataSet := DM.C_Status;
  GridDS.DataSet.First;

  Grid.DataSource := GridDS;
end;

procedure TDlgAlterarStatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM := nil;
end;

end.

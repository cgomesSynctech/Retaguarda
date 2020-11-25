unit Dlg_QtdAlmoxarifado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, TS_QDBGrid, DB, IBCustomDataSet, IBUpdateSQL, DBClient,
  IBQuery, FormsComponent, Placemnt, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, Provider;

type
  TDlgQtdAlmoxarifado = class(TFrmModeloCadastros)
    Q_ItensAlmox: TIBQuery;
    C_ItensAlmox: TClientDataSet;
    C_ItensAlmoxITEMALMOX: TIntegerField;
    C_ItensAlmoxITEM: TIntegerField;
    C_ItensAlmoxALMOXARIFADO: TIntegerField;
    C_ItensAlmoxESTOQUEALMOX: TBCDField;
    C_ItensAlmoxDESCRICAO: TStringField;
    U_ItensAlmox: TIBUpdateSQL;
    C_ItensAlmoxDS: TDataSource;
    Grid: TTS_QDBGrid;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridESTOQUEALMOX: TdxDBGridMaskColumn;
    P_ItensAlmox: TDataSetProvider;
    procedure btComando2Click(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgQtdAlmoxarifado: TDlgQtdAlmoxarifado;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDlgQtdAlmoxarifado.btComando2Click(Sender: TObject);
begin
  inherited;
  ModalResult := C_ItensAlmox.FieldByName('ALMOXARIFADO').AsInteger;
end;

procedure TDlgQtdAlmoxarifado.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.GetParametrosForm(1) <> null then  Begin
    C_ItensAlmox.Close;
    Q_ItensAlmox.ParamByName('Item').Value  := DMProjeto.GetParametrosForm(1);
    C_ItensAlmox.Open;
  end;
end;

procedure TDlgQtdAlmoxarifado.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.

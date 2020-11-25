unit Dlg_ContratosFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, DB, DBClient, Provider, IBCustomDataSet, IBQuery, dxCntner,
  TS_QDBGrid, IBUpdateSQL, Placemnt;

type
  TDlgContratosFunc = class(TFrmModeloCadastros)
    Grid: TTS_QDBGrid;
    Q_Contratos: TIBQuery;
    P_Contratos: TDataSetProvider;
    C_Contratos: TClientDataSet;
    C_ContratosDS: TDataSource;
    C_ContratosNOME: TStringField;
    C_ContratosDESCITEM: TStringField;
    C_ContratosDESCPAYITEM: TStringField;
    C_ContratosPRECO: TBCDField;
    C_ContratosCONTRATO: TIntegerField;
    GridNOME: TdxDBGridMaskColumn;
    GridDESCITEM: TdxDBGridMaskColumn;
    GridDESCPAYITEM: TdxDBGridMaskColumn;
    GridPRECO: TdxDBGridCurrencyColumn;
    C_ContratosFAVORECIDO: TIntegerField;
    U_Contratos: TIBUpdateSQL;
    C_ContratosVALORFUNC: TBCDField;
    GridValorFunc: TdxDBGridCurrencyColumn;
    procedure GridDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Funcionario : Integer;
    NomeFuncionario : String;

  end;

var
  DlgContratosFunc: TDlgContratosFunc;

implementation
  uses DM_Projeto;

{$R *.dfm}

procedure TDlgContratosFunc.GridDblClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosform([C_ContratosFavorecido.Value]);
  DMProjeto.CriarForm('FrmClientes',self,true);
end;

procedure TDlgContratosFunc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  C_Contratos.Close;
end;

procedure TDlgContratosFunc.FormActivate(Sender: TObject);
begin
  inherited;
  C_Contratos.Close;
  Q_Contratos.Close;
  Q_Contratos.Params[0].asInteger := Funcionario;

  lbEstadoForm.Caption := lbEstadoForm.Hint + NomeFuncionario;

  C_Contratos.Open;
end;

procedure TDlgContratosFunc.btGravarClick(Sender: TObject);
begin
  inherited;
  C_Contratos.ApplyUpdates(0);
  Close;
end;

end.

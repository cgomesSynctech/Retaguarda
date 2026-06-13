unit Dlg_MarcasRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, DB, DBClient, Provider, IBCustomDataSet,
  IBQuery, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  TS_LookupComboBox, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel;

type
  TDlgMarcasRelatorio = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    cmbMarcas: TTS_LookupComboBox;
    Q_Marcas: TIBQuery;
    P_Marcas: TDataSetProvider;
    C_Marcas: TClientDataSet;
    C_MarcasDS: TDataSource;
    C_MarcasMARCA: TIntegerField;
    C_MarcasDESCRICAO: TStringField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgMarcasRelatorio: TDlgMarcasRelatorio;

implementation

uses Rpt_Tecnica;

{$R *.dfm}

procedure TDlgMarcasRelatorio.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_Marcas.Open;
end;

procedure TDlgMarcasRelatorio.btGravarClick(Sender: TObject);
begin
  inherited;
        RptTecnica := TRptTecnica.Create(Self);
//        RptTecnica.ImprimirRelatorioPorMarca('1','');
        RptTecnica.Release;
        RptTecnica := nil;                                             //
end;

end.

unit Rpt_MixVendedorClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, ppPrnabl, ppClass, ppStrtch, ppCTMain,
  ppBands, ppCache, ppDB, DB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  IBCustomDataSet, IBQuery, Provider, DBClient, FormsComponent, Placemnt,
  BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel;

type
  TRptMixVendedorClientes = class(TFrmModeloCadastros)
    C_Consulta: TClientDataSet;
    C_ConsultaDs: TDataSource;
    P_Consulta: TDataSetProvider;
    Q_Consulta: TIBQuery;
    ppDBMix: TppDBPipeline;
    ppMix: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    C_ConsultaVENDEDOR: TStringField;
    C_ConsultaCLIENTE: TStringField;
    C_ConsultaITEM: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaMESANO: TStringField;
    C_ConsultaQTD: TFloatField;
    ppCrossTab1: TppCrossTab;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptMixVendedorClientes: TRptMixVendedorClientes;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TRptMixVendedorClientes.btGravarClick(Sender: TObject);
begin
  inherited;
  With Q_Consulta do Begin
    Close;
    Open;
  End;
  ppMix.Print;
end;

end.

unit Dlg_AssistenteConfigCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxDBCtrl, dxDBGrid, dxTL,
  dxDBTLCl, dxGrClms, dxCntner, TS_QDBGrid, DB, DBClient, Provider,
  IBCustomDataSet, IBQuery, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel;

type
  TDlgAssistenteConfigCaixa = class(TFrmModeloCadastros)
    Q_SalesOrder: TIBQuery;
    P_SalesOrder: TDataSetProvider;
    C_SalesOrder: TClientDataSet;
    C_SalesOrderSAIDA: TIntegerField;
    C_SalesOrderNUMERO: TStringField;
    C_SalesOrderDATA: TDateField;
    C_SalesOrderFAVORECIDO: TIntegerField;
    C_SalesOrderOBS: TStringField;
    C_SalesOrderDESCONTO: TBCDField;
    C_SalesOrderFRETE: TBCDField;
    C_SalesOrderOUTRASDESPESAS: TBCDField;
    C_SalesOrderJUROS: TBCDField;
    C_SalesOrderIMPOSTO: TBCDField;
    C_SalesOrderNOME: TStringField;
    C_SalesOrderDESCMOV: TStringField;
    C_SalesOrderNOMEVENDEDOR: TStringField;
    C_SalesOrderDESCPLANO: TStringField;
    C_SalesOrderFORMNAME: TStringField;
    C_SalesOrderBAIXAESTOQUE: TStringField;
    C_SalesOrderDS: TDataSource;
    dbgSalesOrder: TTS_QDBGrid;
    dbgSalesOrderDATA: TdxDBGridDateColumn;
    dbgSalesOrderNUMERO: TdxDBGridMaskColumn;
    dbgSalesOrderNOME: TdxDBGridMaskColumn;
    dbgSalesOrderTOTAL: TdxDBGridMaskColumn;
    dbgSalesOrderDESCONTO: TdxDBGridMaskColumn;
    dbgSalesOrderFRETE: TdxDBGridMaskColumn;
    dbgSalesOrderOUTRASDESPESAS: TdxDBGridMaskColumn;
    dbgSalesOrderJUROS: TdxDBGridMaskColumn;
    dbgSalesOrderIMPOSTO: TdxDBGridMaskColumn;
    dbgSalesOrderNOMEVENDEDOR: TdxDBGridMaskColumn;
    dbgSalesOrderDESCPLANO: TdxDBGridMaskColumn;
    dbgSalesOrderOBS: TdxDBGridMaskColumn;
    dbgSalesOrderDESCMOV: TdxDBGridMaskColumn;
    lbComPedido: TTS_Label;
    lbSemPedido: TTS_Label;
    C_SalesOrderTOTAL: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgAssistenteConfigCaixa: TDlgAssistenteConfigCaixa;

implementation
  uses DM_Projeto;

{$R *.dfm}

procedure TDlgAssistenteConfigCaixa.FormShow(Sender: TObject);
begin
  inherited;
  C_SalesOrder.Open;

  if C_SalesOrder.RecordCount = 0 then begin
    lbSemPedido.Visible := true;
    dbgSalesOrder.Visible := false;
  end else
    lbComPedido.Visible := true;

end;

procedure TDlgAssistenteConfigCaixa.btGravarClick(Sender: TObject);
begin
  inherited;
  ModalResult := 100;
end;

end.
 
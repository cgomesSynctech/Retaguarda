unit Rpt_DetalhePayroll;          

interface                         

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel,
  StdCtrls, ComCtrls, ExtCtrls, Buttons, TS_SpeedButton, dxfLabel,
  TS_MaxPanel, TS_Label, dxEditor, dxDBEdtr, dxDBELib, TS_LookupComboBox,
  dxDBTLCl, dxGrClms, dxEdLib, TS_ButtonEdit, TS_EditPayroll, Placemnt,
  TS_CheckBox;

type
  TRptDetalhePayroll = class(TRptPadrao)
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaVALOR: TBCDField;
    TS_Label1: TTS_Label;
    C_ConsultaPAYRROLLITEM: TStringField;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaVALOR: TdxDBGridCurrencyColumn;
    dbgConsultaPAYRROLLITEM: TdxDBGridMaskColumn;
    dbgConsultaQTDHORAS: TdxDBGridCurrencyColumn;
    C_ConsultaTIPOPAYROLL: TIntegerField;
    dbgConsultaTIPOPAYROLL: TdxDBGridMaskColumn;
    dbgConsultaQTDHORAS_USER: TdxDBGridMaskColumn;
    C_ConsultaQTDHORAS: TFloatField;
    C_ConsultaQTDHORAS_USER: TStringField;
    C_ConsultaDESCTIPOPAYROLL: TStringField;
    dbgConsultaDESCTIPOPAYROLL: TdxDBGridColumn;
    edPayroll: TTS_EditPayroll;
    C_ConsultaPAYROLLFUNC: TIntegerField;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure lcbPayrollChange(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure edPayrollSelecionou(Sender: TObject);
  private
     procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptDetalhePayroll: TRptDetalhePayroll;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TRptDetalhePayroll.Atualizar;
begin
  with C_Consulta do Begin
    Close;
    FetchParams;
    CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'Where ppi.valor <> 0 and p.payroll = :payroll';

    Params.ParamByName('Payroll').AsInteger := edPayroll.ID;
    Open;
    First;
  end;
end;


procedure TRptDetalhePayroll.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptDetalhePayroll.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
//  lcbPayroll.LookupKeyValue := C_PayrollsPAYROLL.asInteger;
  if DMProjeto.Parametro('FormatoHorasProd') = 'H' then
  	dbgConsultaQtdHoras_User.Visible := false
  else
  	dbgConsultaQtdHoras.Visible := false;
	Atualizar;
end;

procedure TRptDetalhePayroll.lcbPayrollChange(Sender: TObject);
begin
  inherited;
  btAtualizarClick(Sender);
end;

procedure TRptDetalhePayroll.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
{
  Case dbgConsulta.GetFieldValue(aNode,'TipoPayroll',0) of
     0 : AColor := $00EBD7BC; //$00E8D9E8
     1 : AColor := $00EDDBC2;
     2 : AColor := $00EFEFE7;
     3 : AColor := $00CAF4FF;
     4 : AColor := $00E7E1F0;
  else
  	AColor := $00EAEDC9;
  end;
}
end;

procedure TRptDetalhePayroll.edPayrollSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

end.

unit Rpt_ItensInventario;
                                                                 
interface

uses                               
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, dxExEdtr, dxEdLib, TS_CheckBox, dxCntner, dxEditor,
  dxDBEdtr, dxDBELib, TS_LookupComboBox, Buttons, TS_SpeedButton, dxTL,
  dxDBCtrl, dxDBGrid, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet,
  IBQuery, TS_LastDataObject, DlgMsg, teCtrls,
  TS_EffectsPanel, TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel,
  TS_MaxPanel, dxDBTLCl, dxGrClms, Menus, TS_PopupMenu, ComCtrls, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum,
  TS_PopupEdit, TS_PopupFiltrarItens;

type
  TRptItensInventario = class(TRptPadrao)
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaGRUPO: TStringField;
    C_ConsultaFABRICANTE: TStringField;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaESTOQUE: TdxDBGridMaskColumn;
    dbgConsultaTIPOITEM: TdxDBGridMaskColumn;
    dbgConsultaGRUPO: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    Q_SQL: TIBQuery;
    C_ConsultaCONTA_VEN: TStringField;
    C_ConsultaCONTA_CUS: TStringField;
    C_ConsultaCONTA_INV: TStringField;
    C_ConsultaCOMISSAO: TBCDField;
    C_ConsultaDESCONTOMAXIMO: TBCDField;
    C_ConsultaULTFORNECEDOR: TStringField;
    dbgConsultaCONTA_VEN: TdxDBGridMaskColumn;
    dbgConsultaCONTA_CUS: TdxDBGridMaskColumn;
    dbgConsultaCONTA_INV: TdxDBGridMaskColumn;
    dbgConsultaCOMISSAO: TdxDBGridMaskColumn;
    dbgConsultaDESCONTOMAXIMO: TdxDBGridMaskColumn;
    dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn;
    C_ConsultaREFERENCIA: TStringField;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    C_ConsultaTAXINCLUSO: TStringField;
    dbgConsultaTAXINCLUSO: TdxDBGridCheckColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
    C_ConsultaIDULTFORNECEDOR: TIntegerField;
    dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaCUSTOMEDIO: TdxDBGridColumn;
    dbgConsultaPRECOCOMPRA: TdxDBGridColumn;
    dbgConsultaPRECO: TdxDBGridColumn;
    dbgConsultaColumn24: TdxDBGridColumn;
    dbgConsultaColumn25: TdxDBGridColumn;
    dbgConsultaColumn26: TdxDBGridColumn;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaPRECOCOMPRA: TFloatField;
    C_ConsultaPRECO: TBCDField;
    C_ConsultaTOTALCUSTO: TFloatField;
    C_ConsultaTOTALCOMPRA: TFloatField;
    C_ConsultaTOTALPRECO: TFloatField;
    C_ConsultaESTOQUE: TFloatField;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lkTipoItemChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure PopupFiltroItensSelecionou(Sender: TObject);
  private
    { Private declarations }
    SelectInicial: string;
    FAddGroupItem : Boolean;
    sDescItensSelec, sDescGruposSelec, sDescFabrSelec : String;    
    procedure AtualizaItens(WhereAdicional:string ='');
    procedure Coluna(coluna: TdxTreeListColumn; Habilita: boolean);
  public
    { Public declarations }
  end;

var
  RptItensInventario: TRptItensInventario;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptItensInventario.AtualizaItens(WhereAdicional:string ='');
var sPrimeiroNome, condItens, condGrupos, condFabr, condTipoItem: string;
    i: integer;
begin
  ActiveControl := nil;
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where ' + PopupFiltroItens.getSQL;
    if Length(WhereAdicional)>0 then
    	CommandText := CommandText+' And '+WhereAdicional;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add(replace( PopupFiltroItens.Hint, #13, ' ') );
  end;
end;

procedure TRptItensInventario.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptItensInventario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TRptItensInventario.lkTipoItemChange(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptItensInventario.Coluna(coluna: TdxTreeListColumn; Habilita: boolean);
begin
  coluna.DisableCustomizing := not Habilita;
  coluna.Visible := Habilita;
end;

procedure TRptItensInventario.FormCreate(Sender: TObject);
begin
  inherited;
  SelectInicial := Q_Consulta.SQL.Text;
end;

procedure TRptItensInventario.FormShow(Sender: TObject);
begin
  inherited;
//  dbgConsulta.ColumnsCustomizing;
  Coluna(dbgConsultaESTOQUE, True);
  AtualizaItens;
end;

procedure TRptItensInventario.dbgConsultaDblClick(Sender: TObject);
var
   nItem : Integer;
   sForm : String;
begin
  inherited;
  if dbgConsulta.FocusedField.FieldName = 'ULTFORNECEDOR' then begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'IDULTFORNECEDOR', 0);
    DMProjeto.SetParametrosForm([nItem]);
    sForm := DmProjeto.FormFav(dbgConsulta.getFieldValue(dbgConsulta.FocusedNode,'TipoFavorecido',''));
    DMProjeto.CriarForm(sForm, Self, true);
  end
  else begin
    nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Item', 0);
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmItens', Self, true);
  end;
end;

procedure TRptItensInventario.PopupFiltroItensSelecionou(Sender: TObject);
begin
  inherited;
	AtualizaItens;
end;

end.

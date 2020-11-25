unit Rpt_ItensComposicao;                                                     
                                                       
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, dxExEdtr, dxEdLib, TS_CheckBox, dxCntner, dxEditor,
  dxDBEdtr, dxDBELib, TS_LookupComboBox, Buttons, TS_SpeedButton, dxTL,
  dxDBCtrl, dxDBGrid, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet,
  IBQuery, TS_LastDataObject, DlgMsg, teCtrls,
  TS_EffectsPanel, TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel,
  TS_MaxPanel, dxDBTLCl, dxGrClms, Menus, TS_PopupMenu, ComCtrls, Variants,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  Placemnt, BTOdeum, TS_ComboBox, TS_PopupEdit, TS_PopupFiltrarItens;

type
  TRptItensComposicao = class(TRptPadrao)
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaTIPOITEM: TStringField;
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
    C_ConsultaTotalCusto: TFloatField;
    dbgConsultaTotalCusto: TdxDBGridColumn;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
    C_ConsultaIDULTFORNECEDOR: TIntegerField;
    dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn;
    C_ConsultaULTIMACOMPRA: TDateField;
    dbgConsultaULTIMACOMPRA: TdxDBGridColumn;
    dbgConsultaULTQTDECOMPRA: TdxDBGridColumn;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaESTOQUE: TFloatField;
    C_ConsultaULTQTDECOMPRA: TFloatField;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    C_ConsultaULTIMAVENDA: TDateField;
    dbgConsultaQTDEMAXIMO: TdxDBGridMaskColumn;
    dbgConsultaQTDEMINIMO: TdxDBGridMaskColumn;
    dbgConsultaPONTOPEDIDO: TdxDBGridMaskColumn;
    dbgConsultaULTIMAVENDA: TdxDBGridColumn;
    C_ConsultaQTDEMINIMO: TFloatField;
    C_ConsultaQTDEMAXIMO: TFloatField;
    C_ConsultaPONTOPEDIDO: TFloatField;
    C_ConsultaPRECOCOMPRA: TFloatField;
    dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaDESCPRODUTOMESTRE: TStringField;
    dbgConsultaColumn29: TdxDBGridColumn;
    C_ConsultaQUANTIDADE: TBCDField;
    dbgConsultaColumn30: TdxDBGridColumn;
    C_ConsultaDESCRICAOCOMPLEMENTAR: TStringField;
    C_ConsultaDESCRICAOTECNICA: TStringField;
    C_ConsultaCST: TStringField;
    C_ConsultaREDUCAOCST: TBCDField;
    C_ConsultaIPICOMPRA: TBCDField;
    C_ConsultaIPIVENDA: TBCDField;
    C_ConsultaPESOBRUTO: TBCDField;
    C_ConsultaPESOLIQUIDO: TBCDField;
    C_ConsultaALIQICMS: TBCDField;
    C_ConsultaSITUACAOECF: TStringField;
    C_ConsultaTVA: TBCDField;
    C_ConsultaTVAFONTE: TBCDField;
    C_ConsultaCLASFISCAL: TStringField;
    dbgConsultaDESCRICAOCOMPLEMENTAR: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOTECNICA: TdxDBGridMaskColumn;
    dbgConsultaCST: TdxDBGridMaskColumn;
    dbgConsultaREDUCAOCST: TdxDBGridMaskColumn;
    dbgConsultaIPICOMPRA: TdxDBGridMaskColumn;
    dbgConsultaIPIVENDA: TdxDBGridMaskColumn;
    dbgConsultaPESOBRUTO: TdxDBGridMaskColumn;
    dbgConsultaPESOLIQUIDO: TdxDBGridMaskColumn;
    dbgConsultaALIQICMS: TdxDBGridMaskColumn;
    dbgConsultaSITUACAOECF: TdxDBGridMaskColumn;
    dbgConsultaTVA: TdxDBGridMaskColumn;
    dbgConsultaTVAFONTE: TdxDBGridMaskColumn;
    dbgConsultaCLASFISCAL: TdxDBGridMaskColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
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
  RptItensComposicao: TRptItensComposicao;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptItensComposicao.AtualizaItens(WhereAdicional:string ='');
begin
  ActiveControl := nil;

  with C_Consulta do begin
    Close;
    CommandText := 'Select '+ getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'Where ' + PopupFiltroItens.getSQL;

    if Length(WhereAdicional)>0 then
    	CommandText := CommandText+' And '+WhereAdicional;

    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add(replace(PopupFiltroItens.Hint,#13,' '));
  end;
end;

procedure TRptItensComposicao.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
end;

procedure TRptItensComposicao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TRptItensComposicao.Coluna(coluna: TdxTreeListColumn; Habilita: boolean);
begin
  coluna.DisableCustomizing := not Habilita;
  coluna.Visible := Habilita;
end;

procedure TRptItensComposicao.dbgConsultaDblClick(Sender: TObject);
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

procedure TRptItensComposicao.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  Coluna(dbgConsultaESTOQUE, True);
  AtualizaItens;
end;

procedure TRptItensComposicao.PopupFiltroItensSelecionou(
  Sender: TObject);
begin
  inherited;
	AtualizaItens;
end;

end.

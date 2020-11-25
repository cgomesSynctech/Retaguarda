unit Rpt_AnaliseFornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  Buttons, TS_SpeedButton, IBUpdateSQL, dxExEdtr, dxEdLib, TS_CheckBox, dxDBTLCl,
  dxGrClms, teCtrls, TS_EffectsPanel, Menus, TS_PopupMenu, ComCtrls,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum,
  Placemnt;

type
  TRptAnaliseFornecedor = class(TRptPadrao)
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaPAIS: TIntegerField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaEMAIL: TStringField;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaDESC_PAIS: TdxDBGridMaskColumn;
    C_ConsultaPreviewEnd: TStringField;
    dbgConsultaPAIS: TdxDBGridMaskColumn;
    dbgConsultaLIMITECREDITO: TdxDBGridMaskColumn;
    dbgConsultaPreviewEnd: TdxDBGridColumn;
    dbgConsultaULTCOMPRA: TdxDBGridDateColumn;
    dbgConsultaVOLUME0_30: TdxDBGridMaskColumn;
    dbgConsultaVOLUME31_60: TdxDBGridMaskColumn;
    dbgConsultaVOLUME61_90: TdxDBGridMaskColumn;
    dbgConsultaVOLUMEANO: TdxDBGridMaskColumn;
    dbgConsultaULTVALORCOMPRA: TdxDBGridMaskColumn;
    N9: TMenuItem;
    Endereo1: TMenuItem;
    Q_ULTCompra: TIBQuery;
    C_ConsultaVOLUME0_30: TFloatField;
    C_ConsultaVOLUME31_60: TFloatField;
    C_ConsultaVOLUME61_90: TFloatField;
    C_ConsultaVOLUMEANO: TFloatField;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure Endereo1Click(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure AtualizaConsulta;
  public
    { Public declarations }
  end;

var
  RptAnaliseFornecedor: TRptAnaliseFornecedor;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TRptAnaliseFornecedor.AtualizaConsulta;
var
   Dia, Mes, Ano : word;
begin
  DecodeDate(DMProjeto.dDataSistema, Ano, Mes, Dia);
  with C_Consulta do begin
    Close;
    FetchParams;
//    CommandText := 'Select ' + getCampos + ' ' +
//                   ' From ' + getTabelas + ' ' +
//                   ' where f.tipofavorecido = 2 and  f.desativado = ''N''';
    Params.ParamByName('datai30').AsDateTime := IncMonth(DMProjeto.dDataSistema, - 1);
    Params.ParamByName('dataf30').AsDateTime := DMProjeto.dDataSistema;
    Params.ParamByName('datai60').AsDateTime := IncMonth(DMProjeto.dDataSistema, - 2);
    Params.ParamByName('dataf60').AsDateTime := IncMonth(DMProjeto.dDataSistema, - 1) - 1;
    Params.ParamByName('datai90').AsDateTime := IncMonth(DMProjeto.dDataSistema, - 3);
    Params.ParamByName('dataf90').AsDateTime := IncMonth(DMProjeto.dDataSistema, - 2) - 1;
    Params.ParamByName('dataiano').AsDateTime := StrToDateTime('01/01/'+IntToStr(Ano));
    Params.ParamByName('datafano').AsDateTime := DMProjeto.dDataSistema;
    Open;
  end;
end;

procedure TRptAnaliseFornecedor.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptAnaliseFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  if C_Consulta.FindField('ULTCOMPRA') <> nil then
     C_Consulta.FindField('ULTCOMPRA').EditMask := ShortDateFormat;
   AtualizaConsulta;
end;

procedure TRptAnaliseFornecedor.dbgConsultaDblClick(Sender: TObject);
var
   nIdFav : Integer;
begin
  inherited;
  if (dbgConsulta.FocusedField.FieldName = 'ULTCOMPRA')
    or (dbgConsulta.FocusedField.FieldName = 'ULTVALORCOMPRA')  then begin
    if dbgConsulta.getFieldValue(dbgConsulta.FocusedNode, 'ULTCOMPRA',StrToDateTime('1/1/1900')) = StrToDateTime('1/1/1900') then
       exit;
    Q_ULTCompra.Close;
    Q_ULTCompra.ParamByName('Data').AsDateTime := dbgConsulta.getFieldValue(dbgConsulta.FocusedNode, 'ULTCOMPRA',StrToDateTime('1/1/1900'));
    Q_ULTCompra.ParamByName('Fav').AsInteger := dbgConsulta.getFieldValue(dbgConsulta.FocusedNode, 'favorecido',0);
    Q_ULTCompra.Open;
    nIdFav := Q_ULTCompra.Fields[0].AsInteger;
    DMProjeto.SetParametrosForm([nIdFav]);
    DMProjeto.CriarForm('FrmCompras',Self,true);
    Q_ULTCompra.Close;
  end
  else begin
    nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
    DMProjeto.SetParametrosForm([nIdFav]);
    DMProjeto.CriarForm('FrmFornecedores',Self,true);
  end;
end;

procedure TRptAnaliseFornecedor.Endereo1Click(Sender: TObject);
begin
  inherited;
  Endereo1.Checked := not Endereo1.Checked;  
  if Endereo1.Checked then
     dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
     dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptAnaliseFornecedor.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptAnaliseFornecedor.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
end;

end.

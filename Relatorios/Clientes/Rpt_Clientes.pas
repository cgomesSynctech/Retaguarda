Unit Rpt_Clientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  Buttons, dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib, TS_CheckBox, teCtrls,
  TS_EffectsPanel, TS_SpeedButton, Menus, TS_PopupMenu, ComCtrls, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, Placemnt, BTOdeum ;

type
  TRptClientes = class(TRptPadrao)
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaCONTATO: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaTAXAVEL: TStringField;
    C_ConsultaEIN: TStringField;
    C_ConsultaSSN: TStringField;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaRAZAO: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaFONE2: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaCELULAR: TdxDBGridMaskColumn;
    dbgConsultaCONTATO: TdxDBGridMaskColumn;
    dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaBAIRRO: TdxDBGridMaskColumn;
    dbgConsultaINSCRICAO_EST: TdxDBGridMaskColumn;
    dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn;
    C_ConsultaULTCOMPRA: TDateField;
    dbgConsultaULTCOMPRA: TdxDBGridColumn;
    C_ConsultaDESC_PAIS: TStringField;
    dbgConsultaRG: TdxDBGridMaskColumn;
    C_ConsultaPreviewEnd: TStringField;
    C_ConsultaULTVALORCOMPRA: TBCDField;
    dbgConsultaULTVALORCOMPRA: TdxDBGridMaskColumn;
    Endereo1: TMenuItem;
    Q_ULTCompra: TIBQuery;
    N9: TMenuItem;
    C_ConsultaSEXO: TStringField;
    C_ConsultaCARTMOTOR: TStringField;
    dbgConsultaSEXO: TdxDBGridColumn;
    C_ConsultaLIMITECREDITO: TBCDField;
    C_ConsultaDATACADASTRO: TDateField;
    C_ConsultaSITE: TStringField;
    C_ConsultaOBS: TStringField;
    C_ConsultaCREDITO: TBCDField;
    C_ConsultaDATANASC: TDateField;
    C_ConsultaDESCGRUPO: TStringField;
    dbgConsultaLIMITECREDITO: TdxDBGridCurrencyColumn;
    dbgConsultaTABELAPRECO: TdxDBGridMaskColumn;
    dbgConsultaDATACADASTRO: TdxDBGridDateColumn;
    dbgConsultaSITE: TdxDBGridMaskColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    dbgConsultaCREDITO: TdxDBGridCurrencyColumn;
    dbgConsultaDATANASC: TdxDBGridDateColumn;
    dbgConsultaDESCGRUPO: TdxDBGridMaskColumn;
    C_ConsultaDESCTABELAPRECO: TStringField;
    C_ConsultaRAZAO: TStringField;
    C_ConsultaCPF_CNPJ: TStringField;
    C_ConsultaINSCRICAO_EST: TStringField;
    C_ConsultaBAIRRO: TStringField;
    C_ConsultaRG: TStringField;
    C_ConsultaPESSOA_FJ: TStringField;
    dbgConsultaPESSOA_FJ: TdxDBGridColumn;
    C_ConsultaNOMEVENDEDOR: TStringField;
    dbgConsultaNomeVendedor: TdxDBGridColumn;
    C_ConsultaCPFCNPJINVALIDO: TStringField;
    dbgConsultaCPFCNPJINVALIDO: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
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
  RptClientes: TRptClientes;

implementation
uses DM_Projeto, Funcoes;
{$R *.DFM}

procedure TRptClientes.FormShow(Sender: TObject);
begin
  inherited;
  if C_Consulta.FindField('ULTCOMPRA') <> nil then
     C_Consulta.FindField('ULTCOMPRA').EditMask := ShortDateFormat;
  AtualizaConsulta;
end;

procedure TRptClientes.AtualizaConsulta;
var
x:string;
begin
  dbgConsulta.FormatoPijama;
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos  + ' ' +
                   'From ' + getTabelas + ' ' +
                   'WHERE f.TIPOFAVORECIDO= 1 and f.desativado = ''N'' ';
    x:=CommandText;
    Open;
{    while not Eof do begin
      Edit;
      if TrimRight(FieldByName('SSN').AsString) = '   .  .' then
        FieldByName('SSN').AsString := '';
      if TrimRight(FieldByName('EIN').AsString) = '  -' then
        FieldByName('EIN').AsString := '';
      FieldByName('PreviewEnd').AsString := DmProjeto.FormataEndereco(C_Consulta);
      Next;
    end;}
  end;
end;

procedure TRptClientes.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptClientes.dbgConsultaDblClick(Sender: TObject);
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
    Q_ULTCompra.ParamByName('Fav').AsInteger := dbgConsulta.getFieldValue(dbgConsulta.FocusedNode, 'favorecido','');
    Q_ULTCompra.Open;
    nIdFav := Q_ULTCompra.Fields[0].AsInteger;
    DMProjeto.SetParametrosForm([nIdFav]);
    DMProjeto.CriarForm('FrmInvoices',Self,true);
    Q_ULTCompra.Close;
  end
  else begin
    nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
    DMProjeto.SetParametrosForm([nIdFav]);
    DMProjeto.CriarForm('FrmClientes',Self,true);  
  end;
end;

procedure TRptClientes.Endereo1Click(Sender: TObject);
begin
  inherited;
  Endereo1.Checked := not Endereo1.Checked;
  if Endereo1.Checked then begin
     dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview];
  end
  else begin
     dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
  end;
end;

procedure TRptClientes.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
 AtualizaConsulta;
end;

procedure TRptClientes.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
//  Dataset.FieldByName('cpfcnpjinvalido').value := 'N';
//  if (Dataset.FieldByName('CPF_CNPJ').IsNull) or
//     (Dataset.FieldByName('CPF_CNPJ').AsString = '') Or
//     (Length(Dataset.FieldByName('CPF_CNPJ').AsString) < 11) Or
//     (Dataset.FieldByName('PESSOA_FJ').IsNull) Then
//    Dataset.FieldByName('cpfcnpjinvalido').value := 'S'
//  Else
//  if (Dataset.FieldByName('PESSOA_FJ').AsString = 'F') Then
//    if (Funcoes.CPFValido(Dataset.FieldByName('CPF_CNPJ').AsString)) Then
//         Dataset.FieldByName('cpfcnpjinvalido').value := 'N'
//  Else
//    if (Funcoes.CGCValido(Dataset.FieldByName('CPF_CNPJ').AsString)) Then
//         Dataset.FieldByName('cpfcnpjinvalido').value := 'N'

end;

end.

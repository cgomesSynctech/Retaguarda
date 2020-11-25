unit Rpt_UltimaCompraCliente;
                                                            
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, teCtrls, TS_EffectsPanel,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls, StdCtrls,
  TS_Label, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxEditor, dxExEdtr,
  dxEdLib, TS_CurrencyEdit, TS_CheckBox, Buttons, TS_SpeedButton, Menus,
  TS_PopupMenu, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, Placemnt, BTOdeum, TS_RadioGroup;

type
  TRptUltimaCompraCliente = class(TRptPadrao)
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaFONE2: TStringField;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    EdMedia: TTS_CurrencyEdit;
    C_ConsultaPreviewEnd: TStringField;
    edDias: TTS_CurrencyEdit;
    TS_Label4: TTS_Label;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaFAX: TdxDBGridMaskColumn;
    dbgConsultaULTCOMPRA: TdxDBGridDateColumn;
    dbgConsultaULTVALORCOMPRA: TdxDBGridMaskColumn;
    dbgConsultaESTEANO: TdxDBGridMaskColumn;
    dbgConsultaANOPASSADO: TdxDBGridMaskColumn;
    dbgConsultaMEDIAMES: TdxDBGridMaskColumn;
    dbgConsultaMEDIA: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    Endereo1: TMenuItem;
    Q_ULTCompra: TIBQuery;
    N9: TMenuItem;
    spCliente: TTS_SpeedButton;
    tsVendedor: TTS_SpeedButton;
    rgEscolhaCompra: TTS_RadioGroup;
    dbgConsultaCidade: TdxDBGridColumn;
    C_ConsultaULTCOMPRA: TDateField;
    C_ConsultaULTVALORCOMPRA: TBCDField;
    C_ConsultaESTEANO: TFloatField;
    C_ConsultaANOPASSADO: TFloatField;
    C_ConsultaMEDIAMES: TFloatField;
    C_ConsultaMEDIA: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure Endereo1Click(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure edDiasExit(Sender: TObject);
    procedure EdMediaExit(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure spClienteClick(Sender: TObject);
    procedure tsVendedorClick(Sender: TObject);
  private
    { Private declarations }
    sSQL : String;
    dDataUltCompra : TDateTime;
    sClientes, sVendedores, sNomes: string;
  public
    { Public declarations }
    procedure AtualizaConsulta;
  end;

var
  RptUltimaCompraCliente: TRptUltimaCompraCliente;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptUltimaCompraCliente.AtualizaConsulta;
var
   Ano, Mes, Dia : word;
begin
  ActiveControl := nil;
  dDataUltCompra := DmProjeto.dDataSistema  - StrToInt(edDias.Text);

  with C_Consulta do begin
    Close;
    DecodeDate(DmProjeto.dDataSistema, Ano, Mes, Dia);
    sSQL := UpperCase(getCampos+ ' '+'From '+getTabelas+' '+'where f.tipofavorecido=1 and f.desativado = ''N''');
    CommandText := {'Select ' + }getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where f.tipofavorecido=1 and f.desativado = ''N''';
    if rgEscolhaCompra.ItemIndex=0 then
      CommandText := replace(sSQL,'/3','/'+EdMedia.Text +' ')
       + ' and f.ultcompra < ' + QuotedStr(FormatDateTime('mm/dd/yyyy', dDataUltCompra))
    else
    if rgEscolhaCompra.ItemIndex=1 then
      CommandText := replace(sSQL,'/3','/'+EdMedia.Text +' ')
       + ' and f.ultcompra >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', dDataUltCompra))
    else
    if rgEscolhaCompra.ItemIndex=2 then
      CommandText := replace(sSQL,'/3','/'+EdMedia.Text +' ')
       + ' and f.ultcompra is null';

    if sClientes <> '' then
       CommandText := CommandText + ' and f.favorecido in (' + sClientes + ')';
    if sVendedores <> '' then
       CommandText := CommandText + ' and f.vendedor in (' + sVendedores + ')';
    Close;

    DecodeDate(DMProjeto.dDataSistema, Ano, Mes, Dia);
    Params.ParamByName('dataiano').AsDateTime := StrToDateTime('01/01/'+IntToStr(Ano));
    Params.ParamByName('datafano').AsDateTime := DmProjeto.dDataSistema;
    Params.ParamByName('dataianopass').AsDateTime := StrToDateTime('01/01/'+IntToStr(Ano-1));
    Params.ParamByName('datafanopass').AsDateTime :=  EncodeDate(Ano-1, 12, 31);
    Params.ParamByName('dataimedia').AsDateTime := IncMonth(dDataUltCompra, - StrToInt(EdMedia.Text));
    Params.ParamByName('datafmedia').AsDateTime := dDataUltCompra;
    Open;
  end;

  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    if rgEscolhaCompra.ItemIndex=0 then begin
      TS_ReportFilter.Add('Clientes que não compram a mais de '+ edDias.Text +' dias ');
      TS_ReportFilter.Add('Calculo da média para ' + edMedia.Text + ' meses');
    end
    else
    if rgEscolhaCompra.ItemIndex=1 then begin
      TS_ReportFilter.Add('Clientes que compraram nos últimos '+ edDias.Text +' dias ');
      TS_ReportFilter.Add('Calculo da média para ' + edMedia.Text + ' meses')
    end
    else
      TS_ReportFilter.Add('Clientes que nunca compraram');
  end;
end;

procedure TRptUltimaCompraCliente.FormCreate(Sender: TObject);
begin
  inherited;
//  sSQL := UpperCase(Q_Consulta.SQL.Text);
  sSQL := UpperCase(getCampos+ ' '+'From '+getTabelas+' '+'where f.tipofavorecido=1 and f.desativado = ''N''');
end;

procedure TRptUltimaCompraCliente.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptUltimaCompraCliente.Endereo1Click(Sender: TObject);
begin
  inherited;
  Endereo1.Checked := not Endereo1.Checked;
  if Endereo1.Checked then
     dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
     dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptUltimaCompraCliente.dbgConsultaDblClick(Sender: TObject);
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

procedure TRptUltimaCompraCliente.FormShow(Sender: TObject);
begin
  inherited;
  if C_Consulta.FindField('ULTCOMPRA') <> nil then
     C_Consulta.FindField('ULTCOMPRA').EditMask := ShortDateFormat;
  AtualizaConsulta;
end;

procedure TRptUltimaCompraCliente.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptUltimaCompraCliente.edDiasExit(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptUltimaCompraCliente.EdMediaExit(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptUltimaCompraCliente.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
end;

procedure TRptUltimaCompraCliente.spClienteClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomes := GetParametrosForm(1);
      LimparParametrosForm;
      AtualizaConsulta;
    end;
  end;
end;

procedure TRptUltimaCompraCliente.tsVendedorClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sVendedores, 3]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sVendedores := GetParametrosForm(0);
      sNomes := GetParametrosForm(1);
      LimparParametrosForm;
      AtualizaConsulta;
    end;
  end;
end;

end.

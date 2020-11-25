unit Rpt_PrecoXCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl,
  dxGrClms, TS_CalcEdit, dxEditor, TS_DateTimePicker;

type
  TRptPrecoXCusto = class(TRptPadrao)
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    TS_Label3: TTS_Label;
    edPerc1: TTS_CalcEdit;
    TS_Label4: TTS_Label;
    edPerc2: TTS_CalcEdit;
    TS_Label5: TTS_Label;
    C_ConsultaSAIDA: TIntegerField;
    C_ConsultaORDEM: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaSAIDAITEM: TIntegerField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaPERCENTUAL: TFloatField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaCODIGOBARRAS: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    dbgConsultaORDEM: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaSAIDAITEM: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaPERCENTUAL: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn;
    dbgConsultaCODIGOBARRAS: TdxDBGridMaskColumn;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    C_ConsultaCUSTOCONTABIL: TFloatField;
    dbgConsultaCUSTOCONTABIL: TdxDBGridColumn;
    cbPRECOCOMPRA: TTS_CheckBox;
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure edPerc1Change(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptPrecoXCusto: TRptPrecoXCusto;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TRptPrecoXCusto.Atualizar;
begin
  C_Consulta.Close;
  Q_Consulta.SQL.Text := ' select ' + getCampos + ' from ' + getTabelas +
                         ' where (s.data between :d1 and :d2) and s.tipopadrao = 1 and s.situacao = ''N'' and '+
                         ' (((cast(si.preco * 100 as numeric(15,5)) / cast(case  when (si.customedio is null) or (si.customedio = 0)  then 1  else si.customedio end as Numeric(15,6))) between :p1 and :p2)) ' +
                         ' order by 1,2 ';
                         if (cbPRECOCOMPRA.Checked) then begin
                          Q_Consulta.SQL.Text := 'select s.saida, si.ordem, s.data, s.numero, si.saidaitem,  si.item, i.codigo, si.descricao, si.unidade, '+
                                                 ' si.preco, i.precocompra as CUSTOMEDIO,  Cast(si.preco * 100 as Numeric(15,6)) / case when coalesce(i.precocompra,0) = 0 '+
                                                 '  then 1 else coalesce( cast(i.precocompra as Numeric(10,6)),1) end  percentual,  g.descricaogrupo,  '+
                                                 ' i.codigobarras, i.referencia, i.precocompra AS CustoContabil  from saidas s  inner join saidasitens si on si.saida = s.saida '+
                                                 '  inner join itens i on i.item = si.item  left join grupos g on g.grupo = i.grupo '+
                                                 ' where (s.data between :d1 and :d2) and s.tipopadrao = 1 and s.situacao = ''N''  and  '+
                                                 ' (((cast(si.preco * 100 as numeric(15,5)) / cast(case  when (i.precocompra is null) or (i.precocompra = 0)  then 1  '+
                                                 'else i.precocompra end as Numeric(15,6))) between :p1 and :p2))  order by 1,2 ' ;
                          end;

  Q_Consulta.ParamByName('d1').AsDateTime := DataI.Date;
  Q_Consulta.ParamByName('d2').AsDateTime := DataF.Date;
  Q_Consulta.ParamByName('p1').AsCurrency := edPerc1.Value;
  Q_Consulta.ParamByName('p2').AsCurrency := edPerc2.Value;
  C_Consulta.Open;

  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('No período de ' + DataI.Text + ' a ' + DataF.Text );
    TS_ReportFilter.Add('Com Preço de Venda entre ' + edPerc1.Text + ' e ' + edPerc2.Text + ' do Preço de Custo.');
    GoToFirst;
  end;
end;

procedure TRptPrecoXCusto.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptPrecoXCusto.DataIDateChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptPrecoXCusto.edPerc1Change(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptPrecoXCusto.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := ( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := ( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  Atualizar;
end;

procedure TRptPrecoXCusto.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if (dbgConsulta.TS_SelectedColumn = 'DATA') or
     (dbgConsulta.TS_SelectedColumn = 'NUMERO') or
     (dbgConsulta.TS_SelectedColumn = 'PRECO') or
     (dbgConsulta.TS_SelectedColumn = 'CUSTOMEDIO') or
     (dbgConsulta.TS_SelectedColumn = 'PERCENTUAL') then begin
     DMProjeto.SetParametrosForm([C_ConsultaSAIDA.Value]);
     DMProjeto.CriarForm('FrmInvoices',self,true);
  end else begin
     DMProjeto.SetParametrosForm([C_ConsultaITEM.Value]);
     DMProjeto.CriarForm('FrmItens',self,true);
  end;
end;

end.

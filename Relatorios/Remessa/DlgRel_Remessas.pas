unit DlgRel_Remessas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TS_LastDataObject, DlgMsg, Menus,
  TS_PopupMenu, ExtCtrls, StdCtrls, Buttons, TS_GroupBox, TS_Label, TS_DBEditDate,
  Db, IBCustomDataSet, IBQuery, ppComm, ppRelatv, ppDB, ppDBPipe, ppProd, ppClass,
  ppReport, ppBands, ppCache, ppCtrls, ppPrnabl,  ppStrtch, ppRegion, TS_RadioGroup,
  Mask, DBCtrls, TS_DBEdit, TS_DBEditFavorecido, TS_DBLookupComboBox, TS_DBLookupTipoFav,
  TS_EditFavorecido, TS_ComboBox, ppTypes, dxExEdtr, dxEdLib,
  TS_ButtonEdit, dxDBELib, dxDBEdtr, dxCntner, dxEditor,
  FRM_MODELOCADASTROS, FormsComponent, TS_Image, dxfLabel,
  TS_MaxPanel, TS_Bevel, TS_SpeedButton, TS_Edit, TS_DateTimePicker,
  TS_LookupComboBox, teCtrls, TS_EffectsPanel, Variants;

type
  TDlgRelRemessas = class(TFrmModeloCadastros)
    Q_Relatorio: TIBQuery;
    dsRelatorio: TDataSource;
    ppDBPipeRel: TppDBPipeline;
    IBQueryStatusRemessa: TIBQuery;
    Q_RelatorioFAVORECIDO: TIntegerField;
    Q_RelatorioNOME: TIBStringField;
    Q_RelatorioREMESSA: TIntegerField;
    Q_RelatorioDATA_ENVIO: TDateField;
    Q_RelatorioVALOR_EMPRESA: TIBBCDField;
    Q_RelatorioDESC_INDLOCAL: TIBStringField;
    Q_RelatorioVALOR_LOCAL: TIBBCDField;
    Q_RelatorioSTATUS: TIntegerField;
    Q_RelatoriocbStatusRemessa: TStringField;
    Q_TiposRemessa: TIBQuery;
    dsTiposRemessa: TDataSource;
    dsAgente: TDataSource;
    Q_Agente: TIBQuery;
    dsReceptor: TDataSource;
    Q_Receptor: TIBQuery;
    Q_RelatorioDESC_REMETENTE: TIBStringField;
    Q_RelatorioDESC_AGENCIA: TIBStringField;
    Q_RelatorioDESC_LOCALDEPOSITO: TIBStringField;
    Q_RelatorioLUCRO_EMPRESA: TIBBCDField;
    ppRelatorioTodos: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppRegionTituloTodos: TppRegion;
    ppLabel7: TppLabel;
    pplbPeriodoTodos: TppLabel;
    ppRegionRemTodos: TppRegion;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppRegionCabTodos: TppRegion;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    pplbDataTodos: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel18: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppRegionLocalTodos: TppRegion;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel19: TppLabel;
    ppDBText13: TppDBText;
    ppRegionAgenteTodos: TppRegion;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppLabel20: TppLabel;
    ppDBText14: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBTxDataTodos: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand2: TppFooterBand;
    Q_RelatorioLUCRO_EMPRESA_REAL: TIBBCDField;
    ppSummaryBand2: TppSummaryBand;
    ppLabel29: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBText11: TppDBText;
    ppLine25: TppLine;
    ppLabel23: TppLabel;
    ppLine26: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel17: TppLabel;
    ppDBText19: TppDBText;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel30: TppLabel;
    ppDBText21: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppLine15: TppLine;
    Q_RelatorioMOEDA_REMETENTE: TIntegerField;
    Q_RelatorioMOEDA_LOCAL: TIntegerField;
    Q_RelatorioDATAABERTURA: TDateField;
    Q_RelatorioDATA_PREVISAO: TDateField;
    Q_AgenteFAVORECIDO: TIntegerField;
    Q_AgenteNOME: TIBStringField;
    TS_lbAgente: TTS_Label;
    TS_lbLocalDeposito: TTS_Label;
    TS_lbRemetente: TTS_Label;
    TS_GroupBox1: TTS_GroupBox;
    TS_Label1: TTS_Label;
    TS_CBPeriodo: TTS_ComboBox;
    rbStatus: TTS_RadioGroup;
    TS_DBLookupTipoFav: TTS_DBLookupTipoFav;
    TS_DBLookupEmpresa: TTS_LookupComboBox;
    TS_DBLookupAgente: TTS_LookupComboBox;
    TS_DBLookupLocalDeposito: TTS_LookupComboBox;
    DateI: TTS_DateTimePicker;
    DateF: TTS_DateTimePicker;
    Q_ReceptorFAVORECIDO: TIntegerField;
    Q_ReceptorNOME: TIBStringField;
    TS_EdFavorecido: TTS_EditFavorecido;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppDBText16Format(Sender: TObject; DisplayFormat: String;
      DataType: TppDataType; Value: Variant; var Text: String);
    procedure ppDBText19Format(Sender: TObject; DisplayFormat: String;
      DataType: TppDataType; Value: Variant; var Text: String);
    procedure btGravarClick(Sender: TObject);
    procedure TS_EdFavorecidoSelecionou(Sender: TObject);
  private
    { Private declarations }
    sSql, sWhere  : String;
    function MoedaUtilizada(Campo:String): String;
  public
    { Public declarations }
  end;

var
  DlgRelRemessas: TDlgRelRemessas;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgRelRemessas.FormShow(Sender: TObject);
begin
  inherited;
  Q_Receptor.Open;
  Q_TiposRemessa.Open;
  Q_Agente.Open;
  sSQL := Q_Relatorio.SQL.Text;
  sWhere := 'REM.DESATIVAR_REMESSA = ' + QuotedStr('N') + ' AND AGENT.TIPOFAVORECIDO = 7';
  TS_CBPeriodo.ItemIndex := 0;
  DateI.Date := IncMonth(DMProjeto.dDataSistema, -1);
  DateF.Date := DMProjeto.dDataSistema;
end;

procedure TDlgRelRemessas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Q_TiposRemessa.Close;
  Q_Receptor.Close;
  Q_Agente.Close;
end;

function TDlgRelRemessas.MoedaUtilizada;
begin
  with DMProjeto do begin
    Q_SQL2.Close;
    Q_SQL2.SQL.Clear;
    Q_SQL2.SQL.Text := 'Select Cifrao FROM indexadores where indexador = :indexador';
    Q_SQL2.ParamByName('Indexador').AsString := campo;
    Q_SQL2.Open;
    Result := Q_SQL2.FieldByName('Cifrao').AsString;
    Q_SQL2.Close;
  end;
end;

procedure TDlgRelRemessas.ppDBText16Format(Sender: TObject;
  DisplayFormat: String; DataType: TppDataType; Value: Variant;
  var Text: String);
begin
  inherited;
  Text := MoedaUtilizada(Q_Relatorio.FieldByName('MOEDA_REMETENTE').AsString) + ' ' + Text;
end;

procedure TDlgRelRemessas.ppDBText19Format(Sender: TObject;
  DisplayFormat: String; DataType: TppDataType; Value: Variant;
  var Text: String);
begin
  inherited;
  Text := MoedaUtilizada(Q_Relatorio.FieldByName('MOEDA_LOCAL').AsString) + ' ' + Text;
end;

procedure TDlgRelRemessas.btGravarClick(Sender: TObject);
begin
  inherited;
  Q_Relatorio.Close;
  Q_Relatorio.SQL.Clear;
  Q_Relatorio.SQL.Add(sSQl);
  Q_Relatorio.SQL.Text := copy(Q_Relatorio.SQL.Text,1,pos('WHERE',UpperCase(sSQL)) - 1);

  case TS_CBPeriodo.ItemIndex of
    0 : begin
          Q_Relatorio.SQL.Add('Where ' + sWhere + ' and dataabertura between :DATAI and :DATAF ');
          ppDBTxDataTodos.DataField := 'dataabertura';
          pplbDataTodos.Caption := 'Abertura';
        end;
    1 : begin
          Q_Relatorio.SQL.Add('Where ' + sWhere + ' and data_previsao between :DATAI and :DATAF ');
          ppDBTxDataTodos.DataField := 'data_previsao';
          pplbDataTodos.Caption := 'Previsao';
        end;
    2 : begin
          Q_Relatorio.SQL.Add('Where ' + sWhere + ' and data_envio between :DATAI and :DATAF ');
          ppDBTxDataTodos.DataField := 'data_envio';
          pplbDataTodos.Caption := 'Envio';
        end;
  end;

  Q_Relatorio.ParambyName('DataI').AsDateTime := DateI.Date;
  Q_Relatorio.ParambyName('DataF').AsDateTime := DateF.Date;

  if (rbStatus.ItemIndex > 0 ) then begin
        Q_Relatorio.SQL.Add(' AND REM.STATUS = :Status ');
        Q_Relatorio.ParambyName('Status').AsInteger := rbStatus.ItemIndex;
  end;

  if not (TS_EdFavorecido.ID = 0 ) then begin
    Q_Relatorio.SQL.Add(' and rem.cliente =' + IntToStr(TS_EdFavorecido.ID));
  end;

  if (TS_DBLookupEmpresa.LookupKeyValue = null) then begin
    ppRegionRemTodos.Visible := False;
  end
  else begin
    ppRegionRemTodos.Visible := True;
    Q_Relatorio.SQL.Add(' and rem.Empresa =' + Q_TiposRemessa.FieldByName('Agencia').AsString);
  end;

  if (TS_DBLookupAgente.LookupKeyValue = null) then begin
    ppRegionAgenteTodos.Visible := False;
  end
  else begin
    ppRegionAgenteTodos.Visible := True;
    Q_Relatorio.SQL.Add(' and rem.Agente =' + Q_Agente.FieldByName('favorecido').AsString);
  end;

  /// O local de deposito ja faz parte no detalhe do relatorio.
  if (TS_DBLookupLocalDeposito.LookupKeyValue = null) then begin
    ppRegionLocalTodos.Visible := False;
  end
  else begin
//    ppRegionLocalTodos.Visible := False;
    ppRegionLocalTodos.Visible := True;
    Q_Relatorio.SQL.Add(' and rem.local_deposito =' + Q_Receptor.FieldByName('favorecido').AsString);
  end;

  Q_Relatorio.SQL.Add( ' ORDER BY FAV.NOME' );
  Q_Relatorio.Open;
  DMProjeto.ImprimirCabecalho(ppRegionTituloTodos);
  pplbPeriodoTodos.Caption := 'Periodo de '+ FormatDateTime(ShortDateFormat,DateI.Date)
      + ' a ' + FormatDateTime(ShortDateFormat,DateF.Date);
  ppRelatorioTodos.Print;
  Q_Relatorio.Close;
end;

procedure TDlgRelRemessas.TS_EdFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  Q_Receptor.Close;
  Q_Receptor.ParamByName('Favorecido').AsInteger := TS_EdFavorecido.ID;
  Q_Receptor.Open;
end;

end.


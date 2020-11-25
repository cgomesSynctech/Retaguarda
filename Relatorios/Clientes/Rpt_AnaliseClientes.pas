unit Rpt_AnaliseClientes;
                                                        
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, IBCustomDataSet, IBUpdateSQL, Db, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, dxEditor, dxExEdtr, dxEdLib, TS_CurrencyEdit,
  StdCtrls, TS_Label, DBClient, Provider, IBQuery, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, TS_QDBGrid, teCtrls, TS_EffectsPanel,
  ExtCtrls, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, ComCtrls,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  Placemnt, BTOdeum, TS_CheckBox;

type
  TRptAnaliseClientes = class(TRptPadrao)
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
    C_ConsultaEMAIL: TStringField;
    C_ConsultaLIMITECREDITO: TBCDField;
    C_ConsultaSALDOEMABERTO: TBCDField;
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
    dbgConsultaLIMITECREDITO: TdxDBGridMaskColumn;
    dbgConsultaSALDOEMABERTO: TdxDBGridMaskColumn;
    btGravar: TTS_SpeedButton;
    upConsulta: TIBUpdateSQL;
    C_ConsultaNOVOLIMITE: TIntegerField;
    dbgConsultaNOVOLIMITE: TdxDBGridMaskColumn;
    C_ConsultaDESC_PAIS: TStringField;
    dbgConsultaDESC_PAIS: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    EdMedia: TTS_CurrencyEdit;
    TS_Label2: TTS_Label;
    dbgConsultaMEDIACOMPRAMES: TdxDBGridMaskColumn;
    dbgConsultaMEDIACOMPRA: TdxDBGridMaskColumn;
    Endereo1: TMenuItem;
    N9: TMenuItem;
    spCliente: TTS_SpeedButton;
    C_ConsultaPreviewEnd: TStringField;
    C_ConsultaMEDIACOMPRAMES: TFloatField;
    C_ConsultaMEDIACOMPRA: TFloatField;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure EdMediaExit(Sender: TObject);
    procedure Endereo1Click(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure spClienteClick(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    sSQL, sClientes, sNomes : String;
    procedure AtualizaConsulta;
  public
    { Public declarations }
  end;

var
  RptAnaliseClientes: TRptAnaliseClientes;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptAnaliseClientes.AtualizaConsulta;
var
   Dia, Mes, Ano : word;
   i : integer;
   sPrimeiroNome : String;
begin
  ActiveControl := nil;
  DecodeDate(DMProjeto.dDataSistema, Ano, Mes, dia);
  with C_Consulta do  begin
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where f.tipofavorecido = 1 and f.favorecido > 1 and f.desativado = ''N'' ';
    CommandText :=  replace(sSQL, '/3', '/'+edMedia.Text);

    if sClientes <> '' then
       CommandText := CommandText + ' and f.favorecido in (' + sClientes + ')';
    Close;
    if (Mes = 12) then begin
       Mes := 0;
       Ano := Ano + 1;
    end;
//    Params.ParamByName('datasaldoaberto').AsDateTime := DmProjeto.dDataSistema;
    Params.ParamByName('dataimedia').AsDateTime := IncMonth(EncodeDate(Ano, Mes + 1, 1), - trunc(EdMedia.Value));
    Params.ParamByName('datafmedia').AsDateTime := EncodeDate(Ano, Mes + 1, 1);
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Calculo da média dos últimos '+edMedia.Text+' meses');
    if sClientes <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sNomes,';',1));
      for i := 2 to ContaStrings(sNomes,';') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sNomes,';',i));
      end;
      TS_ReportFilter.Add('Clientes: ' + sPrimeiroNome);
    end;
  end;
end;

procedure TRptAnaliseClientes.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptAnaliseClientes.FormShow(Sender: TObject);
begin
  inherited;
  sSQL := UpperCase(Q_Consulta.SQL.Text);
  AtualizaConsulta
end;

procedure TRptAnaliseClientes.btGravarClick(Sender: TObject);
begin
  inherited;
  if C_Consulta.State = dsEdit then
     C_Consulta.Post;
  if (C_Consulta.ChangeCount > 0) then begin
    if DmProjeto.DlgMsg.ShowMsg( 3072 ) = 100 then begin
      if not (DMPRojeto.IBT_Projeto.InTransaction) then
            DMPRojeto.IBT_Projeto.StartTransaction;
      try
        C_Consulta.ApplyUpdates(0);
        DMPRojeto.IBT_Projeto.CommitRetaining;
        AtualizaConsulta;
      except
      end;
    end;
  end;
end;

procedure TRptAnaliseClientes.dbgConsultaDblClick(Sender: TObject);
var
   nIdFav : Integer;
begin
  inherited;
  nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
  if dbgConsulta.FocusedField.FieldName = 'SALDOEMABERTO'  then begin
     DMProjeto.ImprimirRelatorioFavorecido(Self, 'SALDOEMABERTO',nIDFav);
  end
  else begin
    DMProjeto.SetParametrosForm([nIdFav]);
    DMProjeto.CriarForm('FrmClientes',Self,true);
  end;
end;

procedure TRptAnaliseClientes.EdMediaExit(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptAnaliseClientes.Endereo1Click(Sender: TObject);
begin
  inherited;
  Endereo1.Checked := not Endereo1.Checked;
  if Endereo1.Checked then
     dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
     dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptAnaliseClientes.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptAnaliseClientes.spClienteClick(Sender: TObject);
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

procedure TRptAnaliseClientes.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
end;

end.

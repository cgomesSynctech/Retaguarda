unit Frm_LotesExistentes;
              
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxDBCtrl, dxDBGrid,
  dxTL, dxDBTLCl, dxGrClms, Db, IBCustomDataSet, IBQuery, DBClient,
  Provider, dxCntner, TS_QDBGrid, IBUpdateSQL, Variants, dxExEdtr, BTOdeum,
  Placemnt;

type
  TFrmLotesExistentes = class(TFrmModeloCadastros)
    dbgLotes: TTS_QDBGrid;
    C_LotesDS: TDataSource;
    P_Lotes: TDataSetProvider;
    C_Lotes: TClientDataSet;
    Q_Lotes: TIBQuery;
    U_Lotes: TIBUpdateSQL;
    C_LotesIDLOTE: TIntegerField;
    C_LotesITEM: TIntegerField;
    C_LotesNUMEROLOTE: TStringField;
    C_LotesVALIDADE: TDateField;
    C_LotesESTOQUELOTE: TBCDField;
    C_LotesQTDENTRADAS: TBCDField;
    dbgLotesIDLOTE: TdxDBGridMaskColumn;
    dbgLotesITEM: TdxDBGridMaskColumn;
    dbgLotesNUMEROLOTE: TdxDBGridMaskColumn;
    dbgLotesVALIDADE: TdxDBGridDateColumn;
    dbgLotesESTOQUELOTE: TdxDBGridMaskColumn;
    dbgLotesQTDENTRADAS: TdxDBGridMaskColumn;
    C_LotesicEstoqueLote: TBCDField;
    C_LotesicQtdEntradas: TBCDField;
    C_LotesFATORUNDVENDA: TFloatField;
    ppmGrid: TTS_PopupMenu;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgLotesDblClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure C_LotesNewRecord(DataSet: TDataSet);
    procedure C_LotesQTDEENTRADAChange(Sender: TField);
    procedure C_LotesBeforePost(DataSet: TDataSet);
    procedure btLimparClick(Sender: TObject);
    procedure C_LotesESTOQUELOTEValidate(Sender: TField);
    procedure C_LotesCalcFields(DataSet: TDataSet);
    procedure C_LotesicEstoqueLoteChange(Sender: TField);
    procedure C_LotesicQtdEntradasChange(Sender: TField);
  private
    nItem: integer;
    nFator, nEstoque: double;

    nseq : Integer;

  public
    { Public declarations }
  end;

var
  FrmLotesExistentes: TFrmLotesExistentes;

implementation
  uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TFrmLotesExistentes.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  nSeq := 0;
  nItem := DMProjeto.GetParametrosForm(0);
  nEstoque := DMProjeto.GetParametrosForm(2);
  nFator   := DMProjeto.GetParametrosForm(3);

  lbEstadoForm.caption := 'Item: '+DMProjeto.GetParametrosForm(1)+ '   Estoque: '+FormatFloat('###,##0.0##',nEstoque);

  with DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'Execute Procedure PP_AjustarLotesNeg :Item ';
    Params[0].asInteger := nItem;
    ExecSQL;
  end;

  C_Lotes.FetchParams;
  C_Lotes.params[0].asInteger := nItem;
  C_Lotes.Open;
end;

procedure TFrmLotesExistentes.dbgLotesDblClick(Sender: TObject);
var nID: integer;
begin
  inherited;
	DMProjeto.SetParametrosForm([C_LotesNumeroLote.Value]);
  DMProjeto.CriarForm('DlgDetalhesLote',self,true);
end;

procedure TFrmLotesExistentes.btGravarClick(Sender: TObject);
begin
  inherited;
  if btGravar.down then begin
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'LOTESEDIT') then
      exit;
    dbgLotes.OptionsDB := dbgLotes.OptionsDB + [edgoCanAppend,edgoCanDelete];
    dbgLotesNumeroLote.DisableEditor := false;
    dbgLotesValidade.DisableEditor := false;
    dbgLotesQtdEntradas.DisableEditor := false;
    dbgLotesEstoqueLote.DisableEditor := false;
    dbgLotes.TS_SelectedColumn := 'NUMEROLOTE';
    btLimpar.enabled := true;
  end
  else begin
    dbgLotes.OptionsDB := dbgLotes.OptionsDB - [edgoCanAppend,edgoCanDelete];
    dbgLotesNumeroLote.DisableEditor := true;
    dbgLotesValidade.DisableEditor := true;
    dbgLotesQtdEntradas.DisableEditor := true;
    dbgLotesEstoqueLote.DisableEditor := true;
    btLimpar.enabled := false;
  end;

end;

procedure TFrmLotesExistentes.C_LotesNewRecord(DataSet: TDataSet);
begin
  inherited;
  dec(nseq);
  C_LotesIDLote.value := nSeq;
  C_LotesItem.value := nItem;
  C_LotesFatorUndVenda.Value := nFator;
  C_LotesQtdEntradas.value := 0;
  C_LotesEstoqueLote.value := 0;
end;

procedure TFrmLotesExistentes.C_LotesQTDEENTRADAChange(Sender: TField);
begin
  inherited;
  C_LotesEstoqueLote.value := C_LotesQTDENTRADAS.value;
end;

procedure TFrmLotesExistentes.C_LotesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if C_LotesValidade.IsNull or (C_LotesValidade.value <= DMProjeto.dDataSistema) then begin
    DlgMsg.ShowMsg(6008);
    raise Exception.Create('@@');
  end;
end;

procedure TFrmLotesExistentes.btLimparClick(Sender: TObject);
begin
  inherited;
  if dbgLotesEstoqueLote.SummaryFooterValue <> nEstoque then begin
    DlgMsg.ShowMsg(6009);
    exit;
  end;

  if C_Lotes.state in [dsedit,dsinsert] then
    C_Lotes.post;

  if C_Lotes.changecount > 0 then
    C_Lotes.ApplyUpdates(0);

  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
end;

procedure TFrmLotesExistentes.C_LotesESTOQUELOTEValidate(Sender: TField);
begin
  inherited;
  if C_LotesEstoqueLote.Value > C_LotesQtdEntradas.value then begin
    DlgMsg.ShowMsg(6010);
    raise exception.create('@@');
  end;
end;

procedure TFrmLotesExistentes.C_LotesCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_LotesicEstoqueLote.Value := C_LotesEstoqueLote.Value / IIF(C_LotesFatorUndVenda.Value > 0, C_LotesFatorUndVenda.Value, 1);
  C_LotesicQtdEntradas.Value := C_LotesQtdEntradas.Value / IIF(C_LotesFatorUndVenda.Value > 0, C_LotesFatorUndVenda.Value, 1);
end;

procedure TFrmLotesExistentes.C_LotesicEstoqueLoteChange(Sender: TField);
begin
  inherited;
  if (Sender.asCurrency * C_LotesFatorUndVenda.Value) <> C_LotesEstoqueLote.Value then
    C_LotesEstoqueLote.Value := Sender.asCurrency * C_LotesFatorUndVenda.Value;
end;

procedure TFrmLotesExistentes.C_LotesicQtdEntradasChange(Sender: TField);
begin
  inherited;
  if (Sender.asCurrency * C_LotesFatorUndVenda.Value) <> C_LotesQtdEntradas.Value then
    C_LotesQtdEntradas.Value := Sender.asCurrency * C_LotesFatorUndVenda.Value;
end;

end.

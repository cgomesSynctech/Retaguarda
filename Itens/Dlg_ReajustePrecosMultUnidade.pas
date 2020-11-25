unit Dlg_ReajustePrecosMultUnidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, DB, DBClient, Provider, IBCustomDataSet, IBUpdateSQL,
  IBQuery, dxCntner, TS_QDBGrid, dxEditor, dxDBEdtr, dxDBELib,
  TS_LookupComboBox, dxEdLib, TS_CalcEdit, TS_Shape, TS_RadioGroup;

type
  TDlgReajustePrecosMultUnidade = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    TS_Panel2: TTS_Panel;
    dbgPrecos: TTS_QDBGrid;
    Q_Precos: TIBQuery;
    U_Precos: TIBUpdateSQL;
    P_Precos: TDataSetProvider;
    C_Precos: TClientDataSet;
    C_Precos_icSelecionado: TIntegerField;
    Q_PrecosDS: TDataSource;
    C_PrecosCODIGO: TStringField;
    C_PrecosDESCRICAO: TStringField;
    C_PrecosITEMUNIDADE: TIntegerField;
    C_PrecosUNIDADE: TStringField;
    C_PrecosPERCENTUAL: TBCDField;
    C_PrecosPERCENTUALMINIMO: TBCDField;
    C_PrecosPRECOMANUAL: TBCDField;
    dbgPrecos_icSelecionado: TdxDBGridColumn;
    dbgPrecosCODIGO: TdxDBGridMaskColumn;
    dbgPrecosDESCRICAO: TdxDBGridMaskColumn;
    dbgPrecosITEMUNIDADE: TdxDBGridMaskColumn;
    dbgPrecosUNIDADE: TdxDBGridMaskColumn;
    dbgPrecosPERCENTUAL: TdxDBGridCurrencyColumn;
    dbgPrecosPERCENTUALMINIMO: TdxDBGridCurrencyColumn;
    dbgPrecosPRECOMANUAL: TdxDBGridCurrencyColumn;
    Q_Fabricantes: TIBQuery;
    Q_FabricantesProvider: TDataSetProvider;
    C_Fabricantes: TClientDataSet;
    C_FabricantesFABRICANTE: TIntegerField;
    C_FabricantesDESCRICAO: TStringField;
    C_FabricantesDS: TDataSource;
    Q_Fornecedores: TIBQuery;
    P_Fornecedores: TDataSetProvider;
    C_Fornecedores: TClientDataSet;
    C_FornecedoresFAVORECIDO: TIntegerField;
    C_FornecedoresNOME: TStringField;
    C_FornecedoresDS: TDataSource;
    TS_Label5: TTS_Label;
    cmbFabricante: TTS_LookupComboBox;
    TS_Label3: TTS_Label;
    cmbFornec: TTS_LookupComboBox;
    Q_Grupos: TIBQuery;
    C_Grupos: TClientDataSet;
    C_GruposGRUPO: TIntegerField;
    C_GruposCODIGO: TStringField;
    C_GruposDESCRICAOGRUPO: TStringField;
    C_GruposTIPOITEM: TIntegerField;
    C_GruposDS: TDataSource;
    P_Grupos: TDataSetProvider;
    TS_Label2: TTS_Label;
    cmbGrupo: TTS_LookupComboBox;
    TS_Label1: TTS_Label;
    cmbGrupoComissao: TTS_LookupComboBox;
    Q_GrupoComissao: TIBQuery;
    C_GrupoComissao: TClientDataSet;
    P_GrupoComissao: TDataSetProvider;
    C_GrupoComissaoDs: TDataSource;
    C_GrupoComissaoGRUPOCOMISSAO: TIntegerField;
    C_GrupoComissaoDESCRICAO: TStringField;
    TS_Panel3: TTS_Panel;
    rgTipoReajuste: TTS_RadioGroup;
    TS_Label7: TTS_Label;
    TS_Shape1: TTS_Shape;
    dfValor: TTS_CalcEdit;
    TS_Label4: TTS_Label;
    TS_Shape2: TTS_Shape;
    C_PrecosFABRICANTE: TIntegerField;
    C_PrecosULTIMOFORNECEDOR: TIntegerField;
    C_PrecosGRUPO: TIntegerField;
    C_PrecosGRUPOCOMISSAO: TIntegerField;
    rgAplicarEm: TTS_RadioGroup;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cmbFabricanteChange(Sender: TObject);
    procedure cmbFornecChange(Sender: TObject);
    procedure cmbGrupoChange(Sender: TObject);
    procedure cmbGrupoComissaoChange(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
  private
    { Private declarations }
    JaRecalculado:Boolean;
    procedure AtivaFiltro;
    procedure RecalcularPrecos;
  public
    { Public declarations }
  end;

var
  DlgReajustePrecosMultUnidade: TDlgReajustePrecosMultUnidade;

implementation

uses DM_Projeto;

{$R *.dfm}


procedure TDlgReajustePrecosMultUnidade.RecalcularPrecos;
Var
  nNovoValor: Real;
  SavePlace: TBookmark;
Begin
    try
      SavePlace := C_Precos.GetBookmark;
      C_Precos.DisableControls;
      C_Precos.first;
      while not C_Precos.eof do begin
         if dbgPrecos.Selecionado then Begin
           C_Precos.Edit;
           If rgTipoReajuste.ItemIndex = 0 Then Begin {Percentual}
             If rgAplicarEm.ItemIndex = 0 Then Begin
               nNovoValor := (C_Precos.FieldByName('Percentual').Value * dfValor.Value) /100;
               C_Precos.FieldByName('Percentual').Value := C_Precos.FieldByName('Percentual').Value + nNovoValor;
             End;
             If rgAplicarEm.ItemIndex = 1 Then Begin
               nNovoValor := (C_Precos.FieldByName('PercentualMinimo').Value * dfValor.Value) /100;
               C_Precos.FieldByName('PercentualMinimo').Value := C_Precos.FieldByName('PercentualMinimo').Value + nNovoValor;
             End;
             If rgAplicarEm.ItemIndex = 2 Then Begin
               nNovoValor := (C_Precos.FieldByName('PrecoManual').Value * dfValor.Value) /100;
               C_Precos.FieldByName('PrecoManual').Value := C_Precos.FieldByName('PrecoManual').Value + nNovoValor;
             End;
           End Else Begin {Valor}
             If rgAplicarEm.ItemIndex = 0 Then Begin
               C_Precos.FieldByName('Percentual').Value := C_Precos.FieldByName('Percentual').Value + dfValor.Value;
             End;
             If rgAplicarEm.ItemIndex = 1 Then Begin
               C_Precos.FieldByName('PercentualMinimo').Value := C_Precos.FieldByName('PercentualMinimo').Value + dfValor.Value;
             End;
             If rgAplicarEm.ItemIndex = 2 Then Begin
               C_Precos.FieldByName('PrecoManual').Value := C_Precos.FieldByName('PrecoManual').Value + dfValor.Value;
             End;
           End;
        End;
        C_Precos.Next;
      End;
      C_Precos.GotoBookmark(SavePlace);
      C_Precos.FreeBookmark(SavePlace);
      C_Precos.EnableControls;
    Except
    End;
End;



procedure TDlgReajustePrecosMultUnidade.AtivaFiltro;
Begin
  JaRecalculado:=False;
  C_Precos.Filtered := false;
  C_Precos.Filter := '1=1 ' ;
  if cmbGrupoComissao.LookupKeyValue <> null then
    C_Precos.Filter := C_Precos.Filter + ' and grupocomissao = '+IntToStr(cmbGrupoComissao.LookupKeyValue);

  if cmbGrupo.LookupKeyValue <> null then
    C_Precos.Filter := C_Precos.Filter + ' and grupo = '+IntToStr(cmbGrupo.LookupKeyValue);
  if cmbFabricante.LookupKeyValue <> null then
    C_Precos.Filter := C_Precos.Filter + ' and fabricante = '+IntToStr(cmbFabricante.LookupKeyValue);
  if cmbFornec.LookupKeyValue <> null then
    C_Precos.Filter := C_Precos.Filter + ' and ultimofornecedor = '+IntToStr(cmbFornec.LookupKeyValue);
  C_Precos.Filtered := true;

End;


procedure TDlgReajustePrecosMultUnidade.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_Precos.FetchParams;
//  C_Precos.params[0].asinteger := cmbTabela.LookupKeyValue;
  C_Precos.open;
  C_Fabricantes.Open;
  C_Fornecedores.Open;
  C_Grupocomissao.Open;
  C_Grupos.Open;
  AtivaFiltro;

end;





procedure TDlgReajustePrecosMultUnidade.cmbFabricanteChange(
  Sender: TObject);
begin
  inherited;
  AtivaFiltro;
end;

procedure TDlgReajustePrecosMultUnidade.cmbFornecChange(Sender: TObject);
begin
  inherited;
  AtivaFiltro;
end;

procedure TDlgReajustePrecosMultUnidade.cmbGrupoChange(Sender: TObject);
begin
  inherited;
  AtivaFiltro;
end;

procedure TDlgReajustePrecosMultUnidade.cmbGrupoComissaoChange(
  Sender: TObject);
begin
  inherited;
  AtivaFiltro;
end;

procedure TDlgReajustePrecosMultUnidade.btLimparClick(Sender: TObject);
begin
  inherited;
  If Not JaRecalculado Then Begin
    RecalcularPrecos;
    JaRecalculado:=True;
  End;
end;

procedure TDlgReajustePrecosMultUnidade.btGravarClick(Sender: TObject);
begin
  inherited;
  Try
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
    C_Precos.ApplyUpdates(0);
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    JaRecalculado:=False;
    Application.MessageBox('Alterações Efetivadas','Aviso',mb_ok);
  Except
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
  End;




end;

procedure TDlgReajustePrecosMultUnidade.btComando1Click(Sender: TObject);
begin
  inherited;
  AtivaFiltro;
end;

end.

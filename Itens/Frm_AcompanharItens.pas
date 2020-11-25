unit Frm_AcompanharItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, Db, IBCustomDataSet,
  IBQuery, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  TS_QDBGrid, DBClient, Provider, dxGrClEx;

type
  TFrmAcompanharItens = class(TFrmModeloCadastros)
    Q_Itens: TIBQuery;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    C_ItensDS: TDataSource;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensREFERENCIA: TStringField;
    C_ItensESTOQUE: TBCDField;
    C_ItensCUSTOMEDIO: TBCDField;
    C_ItensCUSTOCONTABIL: TBCDField;
    C_ItensFATORLUCRO: TFloatField;
    C_ItensHASCHILDREN: TStringField;
    C_ItensUNIDADE: TStringField;
    dbgItens: TTS_QDBGrid;
    dbgItensITEM: TdxDBGridMaskColumn;
    dbgItensCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgItensCUSTOCONTABIL: TdxDBGridMaskColumn;
    dbgItensFATORLUCRO: TdxDBGridMaskColumn;
    dbgItensUNIDADE: TdxDBGridMaskColumn;
    dbgItensHASCHILDREN: TdxDBGridCheckColumn;
    dbgItensCODIGO: TdxDBGridButtonColumn;
    dbgItensDESCRICAO: TdxDBGridButtonColumn;
    dbgItensREFERENCIA: TdxDBGridButtonColumn;
    ppmGrid: TTS_PopupMenu;
    Q_Estoque: TIBQuery;
    MasterDS: TDataSource;
    C_ItensQ_Estoque: TDataSetField;
    C_Estoque: TClientDataSet;
    C_EstoqueDS: TDataSource;
    dbgEstoque: TTS_QDBGrid;
    C_EstoqueTRANSACAOESTOQUE: TIntegerField;
    C_EstoqueDATA: TDateField;
    C_EstoqueITEM: TIntegerField;
    C_EstoqueQUANTIDADE: TBCDField;
    C_EstoqueIDGERADOR: TIntegerField;
    C_EstoqueTIPOORIGEM: TIntegerField;
    C_EstoqueDESCRICAO: TStringField;
    dbgEstoqueDATA: TdxDBGridDateColumn;
    dbgEstoqueQUANTIDADE: TdxDBGridMaskColumn;
    dbgEstoqueDESCRICAO: TdxDBGridMaskColumn;
    dbgItensESTOQUE: TdxDBGridColumn;
    C_ItensPRECO: TBCDField;
    dbgItensPreco: TdxDBGridColumn;
    procedure C_ItensITEMChange(Sender: TField);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure dbgItensTS_BeforeLocalizar(Sender: TObject; var Campo,
      Conteudo: String);
    procedure dbgItensTS_AfterNewRecord(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
  private
    sLastCampo : String;

    procedure RefreshItens;
  public
    { Public declarations }
  end;

var
  FrmAcompanharItens: TFrmAcompanharItens;

implementation
  uses DM_Projeto;

{$R *.DFM}

procedure TFrmAcompanharItens.C_ItensITEMChange(Sender: TField);
begin
  inherited;
  C_ItensCodigo.Value := DMProjeto.C_LocalizarItensCodigo.Value;
  C_ItensDescricao.Value := DMProjeto.C_LocalizarItensDescricao.Value;
  C_ItensReferencia.Value := DMProjeto.C_LocalizarItensReferencia.Value;
  C_ItensEstoque.Value := DMProjeto.C_LocalizarItensEstoque.Value;
  C_ItensCustoMedio.Value := DMProjeto.C_LocalizarItensCustoMedio.Value;
  C_ItensCustoContabil.Value := DMProjeto.C_LocalizarItensCustoContabil.Value;
  C_ItensFatorLucro.Value := DMProjeto.C_LocalizarItensFatorLucro.Value;
  C_ItensHasChildren.Value := DMProjeto.C_LocalizarItensHasChildren.Value;
  C_ItensUnidade.Value := DMProjeto.C_LocalizarItensUnidade.Value;
end;


procedure TFrmAcompanharItens.RefreshItens;
var
  sItens : String;
begin
  if C_Itens.State <> dsBrowse then
    C_Itens.Post;

  sItens := dbgItens.Distinct('ITEM');

  if sItens <> '' then begin
    Q_Itens.Close;
    Q_Itens.SQL.Text := 'Select i.Item, i.Codigo, i.Descricao, i.Referencia, '+
                        '       i.Estoque, i.CustoMedio, i.CustoContabil, '+
                        '       i.FatorLucro, i.HASCHILDREN, '+
                        '       i.UNIDADE, pp.Preco '+
                        'From Itens i INNER JOIN ProdutosPreco pp ON i.Item = pp.Item '+
                        'where i.Item in ('+sItens+') and pp.TabelaPreco = 0 order by i.Descricao ';
    C_Itens.Close;
    C_Itens.Open;
  end;

end;

procedure TFrmAcompanharItens.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  RefreshItens;
end;

procedure TFrmAcompanharItens.dbgItensTS_BeforeLocalizar(Sender: TObject;
  var Campo, Conteudo: String);
begin
  inherited;
  sLastCampo := Campo;
end;

procedure TFrmAcompanharItens.dbgItensTS_AfterNewRecord(Sender: TObject);
begin
  inherited;
  dbgItens.TS_SelectedColumn := sLastCampo;
end;

procedure TFrmAcompanharItens.btGravarClick(Sender: TObject);
begin
  inherited;
  RefreshItens;
end;

procedure TFrmAcompanharItens.btLimparClick(Sender: TObject);
begin
  inherited;
  dbgEstoque.Visible := not dbgEstoque.Visible;
end;

end.

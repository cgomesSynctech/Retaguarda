unit Dlg_TabelaPrecos;

interface

uses                          
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, Provider, IBCustomDataSet, IBQuery,
  DB, DBClient, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  TS_QDBGrid, dxEditor, dxEdLib, TS_PopupEdit, ZRCtrls, ZReport,
  TS_PopupFiltrarItens;

type
  TDlgTabelaPrecos = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    cmbTabelaPreco: TTS_PopupEdit;
    gridTabelasPreco: TTS_QDBGrid;
    gridTabelasPrecoDESCRICAO: TdxDBGridMaskColumn;
    gridTabelasPrecoPERCENTUAL: TdxDBGridMaskColumn;
    gridTabelasPrecoDESATIVADO: TdxDBGridCheckColumn;
    gridTabelasPrecoBASEADA: TdxDBGridCheckColumn;
    C_TabelasPrecoDS: TDataSource;
    C_TabelasPreco: TClientDataSet;
    C_TabelasPrecoTABELAPRECO: TIntegerField;
    C_TabelasPrecoDESCRICAO: TStringField;
    C_TabelasPrecoPERCENTUAL: TBCDField;
    C_TabelasPreco_icSelecionado: TIntegerField;
    Q_TabelasPreco: TIBQuery;
    P_TabelasPreco: TDataSetProvider;
    ReportTabela: TZReport;
    Q_TabelaPrecoRel: TIBQuery;
    ReportTabelaDetail: TZRBand;
    ReportTabelaPageHeader: TZRBand;
    ReportTabelaColumnHeader: TZRBand;
    ZRLabel1: TZRLabel;
    LabelTabPreco: TZRLabel;
    ZRLabel2: TZRLabel;
    ZRSystemLabel1: TZRSystemLabel;
    ZRLabel3: TZRLabel;
    ZRSystemLabel2: TZRSystemLabel;
    ZRLabel4: TZRLabel;
    ZRSystemLabel3: TZRSystemLabel;
    cCodigo: TZRField;
    cDescricao: TZRField;
    cUnidade: TZRField;
    cFabricante: TZRField;
    cTP1: TZRField;
    cTP2: TZRField;
    ZRLabel5: TZRLabel;
    ZRLabel6: TZRLabel;
    ZRLabel7: TZRLabel;
    ZRLabel8: TZRLabel;
    ZRLabel9: TZRLabel;
    ZRLabel10: TZRLabel;
    ZRLabel11: TZRLabel;
    ZRLabel12: TZRLabel;
    ZRLabel13: TZRLabel;
    ZRLabel14: TZRLabel;
    ZRLabel15: TZRLabel;
    ZRLabel16: TZRLabel;
    LabelTabela01: TZRLabel;
    LabelTabela02: TZRLabel;
    ZRLabel17: TZRLabel;
    LabelEmpresa: TZRLabel;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    procedure gridTabelasPrecoTS_OnSelection(Sender: TObject;
      bSelected: Boolean; var bCanSelect: Boolean);
    procedure btComando1Click(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cmbTabelaPrecoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
  private
    { Private declarations }
    sDescItensSelec, sDescGruposSelec, sDescFabrSelec : String;
  public
    { Public declarations }
  end;

var
  DlgTabelaPrecos: TDlgTabelaPrecos;

implementation
uses DM_Projeto, Funcoes;
{$R *.dfm}

procedure TDlgTabelaPrecos.gridTabelasPrecoTS_OnSelection(Sender: TObject;
  bSelected: Boolean; var bCanSelect: Boolean);
begin
  inherited;
  if bSelected and (gridTabelasPreco.QuantidadeSelecionada >= 2) then
    bCanSelect := False;
end;

procedure TDlgTabelaPrecos.btComando1Click(Sender: TObject);
var i:integer;
    tp1,tp2,nomeTp1,nomeTp2: string;
begin
  inherited;
  tp1 := '';
  tp2 := '';
  nomeTp1 := '';
  nomeTp2 := '';
  i := 0;
  Q_TabelaPrecoRel.Close;
  with C_TabelasPreco do begin
    First;
    while not eof do begin
      if FieldByName('_icSelecionado').AsInteger = 1 then begin
        Inc(i);
        if i=1 then begin
          tp1 := IntToStr(FieldByName('tabelapreco').AsInteger);
          nomeTp1 := FieldByName('descricao').AsString;
        end;
        if i=2 then begin
          tp2 := IntToStr(FieldByName('tabelapreco').AsInteger);
          nomeTp2 := FieldByName('descricao').AsString;
        end;
      end;
      Next;
    end;
  end;
  Q_TabelaPrecoRel.Sql.Clear;
  Q_TabelaPrecoRel.Sql.Add('select i.item, i.grupo, i.fabricante, i.desativado, i.codigo, i.descricao, i.unidade, f.descricao as f_descricao ');
  Q_TabelaPrecoRel.Sql.Add(iif(tp1<>'',',(select preco from produtospreco where item=i.item and unidade = i.unidade and tabelapreco='+tp1+') as tp1 ',''));
  Q_TabelaPrecoRel.Sql.Add(iif(tp2<>'',',(select preco from produtospreco where item=i.item and unidade = i.unidade and tabelapreco='+tp2+') as tp2 ',''));
  Q_TabelaPrecoRel.Sql.Add('from itens i ');
  Q_TabelaPrecoRel.Sql.Add('left join fabricantes f on f.fabricante = i.fabricante ');
  Q_TabelaPrecoRel.Sql.Add('Where '+PopupFiltroItens.getSQL);
  Q_TabelaPrecoRel.Sql.Add('order by i.descricao');
  Q_TabelaPrecoRel.Open;
  LabelEmpresa.Caption := DMProjeto.sNomeEmpresa;
  LabelTabela01.Caption := nomeTp1;
  LabelTabela02.Caption := nomeTp2;
  ReportTabela.Preview;
  Close;
end;

procedure TDlgTabelaPrecos.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DMProjeto.sItensSelec    := '';
  DMProjeto.sGruposSelec   := '';
  DMProjeto.sFabricSelec   := '';
  C_TabelasPreco.Open;
  GridTabelasPreco.SetSelecionados('0');
  C_TabelasPreco.First;
  cmbTabelaPreco.Text := C_TabelasPrecoDescricao.Value;
end;

procedure TDlgTabelaPrecos.cmbTabelaPrecoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
var sTabelas: string;
begin
  inherited;
	with C_TabelasPreco do begin
  	DisableControls;
    First;
    sTabelas := '';
    while not eof do begin
      if fieldbyname('_icSelecionado').AsInteger = 1 then
    		sTabelas := sTabelas + fieldbyname('Descricao').AsString + ', ';
      next;
    end;
    Text := Copy(sTabelas,1,length(sTabelas)-2);
    Accept := true;
    EnableControls;
  end;
end;

end.

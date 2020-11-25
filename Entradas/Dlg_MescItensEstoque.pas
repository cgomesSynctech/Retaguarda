unit Dlg_MescItensEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, DM_Entradas, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, Db, IBCustomDataSet, IBQuery,
  DBText, TS_DBTextEffect, dxDBTLCl, dxGrClms, DBClient, Provider, dxGrClEx,
  dxfProgressBar, Variants, dxExEdtr, Placemnt, BTOdeum;

type
  TDlgMescItensEstoque = class(TFrmModeloCadastros)
    dbtForn: TTS_DBTextEffect;
    ppmGrid: TTS_PopupMenu;
    pnBar: TTS_Panel;
    pBar: TdxfProgressBar;
    ppmGridItens: TTS_PopupMenu;
    Q_Acerto: TIBQuery;
    P_Acerto: TDataSetProvider;
    C_Acerto: TClientDataSet;
    C_Acerto_icSelecionado: TIntegerField;
    C_AcertoDS: TDataSource;
    gridAcerto: TTS_QDBGrid;
    ppmAcerto: TTS_PopupMenu;
    C_AcertoITEM: TIntegerField;
    C_AcertoCODIGO: TStringField;
    C_AcertoDESCRICAO: TStringField;
    C_AcertoUNIDADE: TStringField;
    C_AcertoESTOQUE: TBCDField;
    C_AcertoQTDEMINIMO: TBCDField;
    gridAcertoITEM: TdxDBGridMaskColumn;
    gridAcertoCODIGO: TdxDBGridMaskColumn;
    gridAcertoDESCRICAO: TdxDBGridMaskColumn;
    gridAcertoUNIDADE: TdxDBGridMaskColumn;
    gridAcertoESTOQUE: TdxDBGridCurrencyColumn;
    gridAcertoQTDEMINIMO: TdxDBGridCurrencyColumn;
    C_AcertoicQuantidade: TCurrencyField;
    gridAcertoicQuantidade: TdxDBGridColumn;
    C_AcertoQUANTIDADE: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
    sFavs : String;
    bDeleteItens : boolean;

    procedure JoinItemToOperation;
  public
    { Public declarations }
    nTipo : integer;
    sTipos : String;
    DM : TDMEntradas;
    GridItens : TTS_QDBGrid;
  end;

var
  DlgMescItensEstoque: TDlgMescItensEstoque;

implementation
  uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TDlgMescItensEstoque.FormShow(Sender: TObject);
var qtdconsig,qtddev,qtdacert: currency;
begin
  inherited;
  Screen.Cursor := crHourGlass;

  sFavs := DM.C_TabelaFavorecido.asString;
  dbtForn.DataSource := DM.C_TabelaDS;
  bDeleteItens := false;

  C_Acerto.Close;
  if (nTipo = 1) then begin
    Q_Acerto.SQL.Text := 'select i.item, i.codigo, i.descricao, i.unidade, i.estoque, i.qtdeminimo, ' +
                         'max(ei.quantidade) as quantidade from itens i ' +
                         'inner join entradasitens ei on i.item = ei.item ' +
                         'inner join entradas e on ei.entrada = e.entrada ' +
                         'where i.desativado = ''N'' and i.estoque <= i.qtdeminimo ' +
                         'and e.favorecido = :fav and e.tipopadrao = 102 ' +
                         'group by i.item, i.codigo, i.descricao, i.unidade, i.estoque, i.qtdeminimo ';
    Q_Acerto.ParamByName('fav').AsInteger := DM.C_TabelaFavorecido.AsInteger;
  end
  else if (nTipo = 2) then begin
    Q_Acerto.SQL.Text := 'select i.item, i.codigo, i.descricao, i.unidade, i.estoque, i.qtdeminimo, ' +
                         '1.000 as quantidade from itens i ' +
                         'where i.desativado = ''N'' and i.estoque <= i.qtdeminimo ';
  end
  else begin
    Q_Acerto.SQL.Text := 'select i.item, i.codigo, i.descricao, i.unidade, i.estoque, i.qtdeminimo, ' +
                         '1.000 as quantidade from itens i ' +
                         'where i.fornecpreferencia = :fav and i.desativado = ''N'' and i.estoque <= i.qtdeminimo ';
    Q_Acerto.ParamByName('fav').AsInteger := DM.C_TabelaFavorecido.AsInteger;
  end;

  try
    C_Acerto.Open;
    C_Acerto.First;
    while not C_Acerto.EOF do begin
      C_Acerto.Edit;
      C_Acerto.FieldByName('icQuantidade').Value := C_Acerto.FieldByName('QUANTIDADE').Value;
      C_Acerto.Post;
      C_Acerto.Next;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
//  C_Acerto.First;
//  while not C_Acerto.EOF do begin
//    if C_AcertoQtddevolvida.Value = 0 then C_Acerto.Delete
//    else C_Acerto.Next;
//  end;
  GridAcerto.GoToFirst;
end;


procedure TDlgMescItensEstoque.btGravarClick(Sender: TObject);
var
  m, i : Integer;
  nDesconto, nFrete, nDespesa, nPJuros, nJuros, nSaldo : Currency;
  nPlano : Integer;
  sMessage : String;
begin
  inherited;
  if (GridAcerto.nQuantidadeSelecionada = 0) then begin
    DlgMsg.ShowMsg( 2300 );
    Exit;
  end;

  {Confirmação}
  if DlgMsg.ShowMsg(2309) = 200 then
    exit;

  {Iniciando processo de mesclagem}
  Screen.Cursor := crHourGlass;
  pBar.Position := 0;
  pnBar.Visible := true;

  pBar.Max := Trunc( GridAcerto.nQuantidadeSelecionada );


  GridAcerto.FirstSelected;


  for i := 1 to GridAcerto.nQuantidadeSelecionada do begin
    JoinItemToOperation;
    pBar.Position := pBar.Position + 1;

    GridAcerto.NextSelected;
  end;


  {Completando com mais dados o faturamento}
  Screen.Cursor := crDefault;
  ModalResult := mrOk;
end;

procedure TDlgMescItensEstoque.JoinItemToOperation;
begin
  {Ao entrar nesta função, tanto C_Movimentos como C_Itens já estão posicionados corretamente}
  DM.bMesclando := true;

  try
    DM.C_Itens.Append;
    // Setando antes devido à multi-unidade...
    DM.C_ItensITEM.Value := C_AcertoITEM.Value;
    DM.C_ItensUNIDADE.Value := C_AcertoUNIDADE.Value;
    DM.C_ItensMESCLADO.Value := 'S';
    //
    GridItens.TS_ID := C_AcertoITEM.Value;
//    CopiarItem;
    DM.C_ItensQUANTIDADE.Value := C_AcertoicQuantidade.Value;
    DM.C_ItensMESCLADO.Value := 'N';

    DM.C_Itens.Post;


  finally
    DM.bMesclando := false;
  end;

end;


end.


{
Where 	s.Situacao = 'N'  and KK and  s.TipoPadrao in (ZZ)
and 	s.Favorecido in (XX)

}
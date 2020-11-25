unit Dlg_ImprimirOp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxDBTLCl, dxGrClms, DB, DBClient, Provider,
  IBCustomDataSet, IBQuery;

type
  TDlgImprimirOp = class(TFrmModeloCadastros)
    dbgVendas: TTS_QDBGrid;
    Q_Vendas: TIBQuery;
    P_Vendas: TDataSetProvider;
    C_Vendas: TClientDataSet;
    C_VendasDS: TDataSource;
    C_VendasSAIDA: TIntegerField;
    C_VendasNUMERO: TStringField;
    C_VendasDATA: TDateField;
    C_VendasTOTAL: TBCDField;
    C_VendasNOME: TStringField;
    dbgVendasSAIDA: TdxDBGridMaskColumn;
    dbgVendasNUMERO: TdxDBGridMaskColumn;
    dbgVendasDATA: TdxDBGridDateColumn;
    dbgVendasTOTAL: TdxDBGridCurrencyColumn;
    dbgVendasNOME: TdxDBGridMaskColumn;
    C_VendasVENDEDOR: TStringField;
    C_VendasDESCONTO: TBCDField;
    C_VendasOBS: TStringField;
    C_VendasEMPRESA: TIntegerField;
    C_VendasPDV: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nSaida: integer;
    sObs, sCliente, sVendedor: string;
    nDesconto: currency;
  end;

var
  DlgImprimirOp: TDlgImprimirOp;

implementation

{$R *.dfm}

uses DM_Projeto, DM_Financeiro;

procedure TDlgImprimirOp.FormCreate(Sender: TObject);
begin
  inherited;
  C_Vendas.Close;
  Q_Vendas.SQL.Text := 'select s.saida, s.numero, s.data, s.total, f.nome, v.nome as vendedor, ' +
                       's.desconto, s.obs ' +
                       'from saidas s ' +
                       'left join favorecidos f on f.favorecido = s.favorecido ' +
                       'left join favorecidos v on v.favorecido = s.vendedor ' +
                       'where s.data = :data and s.caixa = :caixa ' +
                       'and substr(s.numero,1,3) <> ''COO'' order by s.saida desc';
  Q_Vendas.ParamByName('data').AsDateTime := DMProjeto.dDataSistema;
  Q_Vendas.ParamByName('caixa').AsInteger := DMFinanceiro.nContaPadrao;
  C_Vendas.Open;
end;

procedure TDlgImprimirOp.btGravarClick(Sender: TObject);
begin
  inherited;
  nSaida := C_VendasSAIDA.AsInteger;
  sCliente := C_VendasNOME.AsString;
  sVendedor := C_VendasVENDEDOR.AsString;
  sObs := C_VendasOBS.AsString;
  nDesconto := C_VendasDESCONTO.AsCurrency;
  ModalResult := mrOK;
end;

procedure TDlgImprimirOp.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  ModalResult := -1;
end;

procedure TDlgImprimirOp.btLimparClick(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirDocumentosSaida(C_VendasSAIDA.AsInteger, C_VendasEMPRESA.AsInteger, C_VendasPDV.AsInteger);
  ModalResult := -1;
end;

end.

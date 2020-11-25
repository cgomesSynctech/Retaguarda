unit Dlg_EstatVendasProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Db, DBTables, DBCtrls, StdCtrls, ExtCtrls, DlgMsg, Menus,
  TS_PopupMenu, Buttons, TS_BitBtn, IBCustomDataSet, IBQuery, TS_DBText,
  TS_Label, TS_Bevel, TS_Shape, TS_LastDataObject, 
  TS_SpeedButton, FormsComponent, TS_Image, dxfLabel,
  TS_MaxPanel, teCtrls, TS_EffectsPanel, Variants, dxDBEdtr, dxDBELib,
  TS_DBLookupTipoFav, TS_EditFavorecido, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, TS_ButtonEdit, TS_EditItem, Placemnt, BTOdeum;

type
  TDlgEstatVendasProduto = class(TFrmModeloCadastros)
    Q_EstatisticasDS: TDataSource;
    Q_UltimasCompras: TIBQuery;
    TS_Shape4: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Shape7: TTS_Shape;
    TS_Shape6: TTS_Shape;
    TS_Shape5: TTS_Shape;
    TS_Shape3: TTS_Shape;
    Label2: TTS_Label;
    Label3: TTS_Label;
    Label4: TTS_Label;
    Label5: TTS_Label;
    Label6: TTS_Label;
    Label7: TTS_Label;
    DBText6: TTS_DBText;
    DBText2: TTS_DBText;
    DBText3: TTS_DBText;
    DBText4: TTS_DBText;
    DBText5: TTS_DBText;
    DBText7: TTS_DBText;
    DBText8: TTS_DBText;
    DBText9: TTS_DBText;
    TS_Shape8: TTS_Shape;
    Q_Estatisticas: TIBQuery;
    Q_EstatisticasPRODUTO: TIntegerField;
    IBQuery1: TIBQuery;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    Label8: TTS_Label;
    Label1: TTS_Label;
    dbtDataUltimaVenda: TTS_DBText;
    lblData: TLabel;
    dfItem: TTS_EditItem;
    dfCliente: TTS_EditFavorecido;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    Bevel1: TBevel;
    Q_EstatisticasPRECOMEDIO: TFloatField;
    Q_EstatisticasQUANTIDADEMEDIA: TFloatField;
    Q_EstatisticasPRECOMENOR: TFloatField;
    Q_EstatisticasQUANTIDADEMENOR: TFloatField;
    Q_EstatisticasPRECOMAIOR: TFloatField;
    Q_EstatisticasQUANTIDADEMAIOR: TFloatField;
    Q_EstatisticasULTIMACOMPRA: TDateField;
    IBQuery1PRODUTO: TIntegerField;
    IBQuery1PRECOMEDIO: TFloatField;
    IBQuery1QUANTIDADEMEDIA: TFloatField;
    IBQuery1PRECOMENOR: TFloatField;
    IBQuery1QUANTIDADEMENOR: TFloatField;
    IBQuery1PRECOMAIOR: TFloatField;
    IBQuery1QUANTIDADEMAIOR: TFloatField;
    IBQuery1ULTIMACOMPRA: TDateField;
    Q_UltimasComprasQUANTIDADE: TFloatField;
    Q_UltimasComprasPRECO: TFloatField;
    Q_EstatisticasUltimoPreco: TFloatField;
    Q_EstatisticasUltimaQuantidade: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Q_EstatisticasCalcFields(DataSet: TDataSet);
    procedure dfItemSelecionou(Sender: TObject);
    procedure dfClienteSelecionou(Sender: TObject);
  private
    nProduto, nCliente: integer;
    sDescricao: string;
    procedure MostraEstatisticas;
  public
    Constructor Create(AOwner: TComponent; xProduto, xCliente: integer;xDescricao:string);
  end;

var
  DlgEstatVendasProduto: TDlgEstatVendasProduto;

implementation
uses DM_Projeto;

{$R *.DFM}

constructor TDlgEstatVendasProduto.Create;
begin
  nProduto := xProduto;
  nCliente := xCliente;
  sDescricao := xDescricao;
  inherited Create(AOwner);
end;

procedure TDlgEstatVendasProduto.MostraEstatisticas;
begin
  if nProduto <= 0 then
    exit;
  Q_Estatisticas.close;
  if nCliente > 0 then begin
    Q_Estatisticas.ParamByName('nItem').AsInteger := nProduto;
    Q_Estatisticas.ParamByName('bCliente').AsInteger := 0;
    Q_Estatisticas.ParamByName('nCliente').AsInteger := nCliente;
    Q_Estatisticas.open;
  end
  else begin
    Q_Estatisticas.ParamByName('bCliente').AsInteger := 1;
    Q_Estatisticas.ParamByName('nCliente').AsInteger := nCliente;
    Q_Estatisticas.ParamByName('nItem').AsInteger := nProduto;
    Q_Estatisticas.open;
  end;
end;

procedure TDlgEstatVendasProduto.FormCreate(Sender: TObject);
begin
  inherited;
//  lblProduto.caption := sDescricao;
  if nCliente > 0 then
    dfCliente.ID := nCliente;
dfItem.ID := nProduto;

//  MostraEstatisticas;
  ShowModal;
end;

procedure TDlgEstatVendasProduto.Q_EstatisticasCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if Q_Estatisticas.Active then begin
    with Q_UltimasCompras do begin
      close;
      if Q_Estatisticas['UltimaCompra'] <> null then begin
        lblData.visible := false;
        ParamByName('dData').AsDateTime := Q_Estatisticas['UltimaCompra'];
        if nCliente > 0 then
          ParamByName('bCliente').AsInteger := 0
        else
          ParamByName('bCliente').AsInteger := 1;

        ParamByName('nCliente').AsInteger := nCliente;
        ParamByName('nItem').AsInteger   := Q_Estatisticas['Produto'];
        open;
        last;
        if RecordCount > 0 then begin
          Q_Estatisticas['UltimaQuantidade'] := Q_UltimasCompras['Quantidade'];
          Q_Estatisticas['UltimoPreco'] := Q_UltimasCompras['Preco'];
        end;
      end
      else begin
        dbtDataUltimaVenda.visible := false;
        lblData.visible := true;
      end;
    end;
  end;
end;

procedure TDlgEstatVendasProduto.dfItemSelecionou(Sender: TObject);
begin
  inherited;
  dfItem.SelectAll;
  nProduto := dfItem.ID;
  MostraEstatisticas;
end;

procedure TDlgEstatVendasProduto.dfClienteSelecionou(Sender: TObject);
begin
  inherited;
  nCliente := dfCliente.ID;
  MostraEstatisticas;
end;

end.

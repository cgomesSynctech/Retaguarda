unit Dlg_ComplementoICMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxDBTLCl, dxGrClms, dxGrClEx,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, TS_QDBGrid, DB, DBClient, Provider,
  IBCustomDataSet, IBUpdateSQL, IBQuery, ComCtrls, Grids, DBGrids;

type
  TDlgComplementoICMS = class(TFrmModeloCadastros)
    C_Tabela: TClientDataSet;
    C_TabelaDS: TDataSource;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    dbgSaidasItens: TTS_QDBGrid;
    dbgSaidasItensSaida: TdxDBGridColumn;
    dbgSaidasItensCodItem: TdxDBGridColumn;
    dbgSaidasItensDescricao: TdxDBGridColumn;
    Q_SaidasItens: TIBQuery;
    U_SaidasItens: TIBUpdateSQL;
    P_SaidasItens: TDataSetProvider;
    C_SaidasItens: TClientDataSet;
    C_SaidasItensDS: TDataSource;
    C_SaidasItensSAIDA: TIntegerField;
    C_SaidasItensITEM: TIntegerField;
    C_SaidasItensDESCRICAO: TStringField;
    C_SaidasItensALIQICMS: TBCDField;
    C_SaidasItensQUANTIDADE: TBCDField;
    C_SaidasItensPRECO: TFloatField;
    C_SaidasItensSUBTOTALITEM: TBCDField;
    dbgSaidasItenaliqicms: TdxDBGridColumn;
    dbgSaidasItensQuantidade: TdxDBGridColumn;
    dbgSaidasItensPreco: TdxDBGridColumn;
    dbgSaidasItensSubTotalItem: TdxDBGridColumn;
    teste: TIBQuery;
    dsTeste: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure abrirNota();
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
    nSaida: Integer;
  public
    { Public declarations }
  end;

var
  DlgComplementoICMS: TDlgComplementoICMS;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDlgComplementoICMS.FormShow(Sender: TObject);
var
        teste :string;
begin
  inherited;
    With Q_SaidasItens do Begin
      //Params[0].Value :=  nSaida;
      ParamByName('saida').Value := 95493 ;


      Open;
      while not eof do
      begin
          teste := fieldbyname('descricao').AsString;
          Next;
      end;
    End;
  //dbgSaidasItens.Visible := False;
  //btGravar.Enabled := False;
end;

procedure TDlgComplementoICMS.FormsComponentBeforeClearParams(
  Sender: TObject);
var
   sql:String;
begin
  inherited;
//  nSaida := DMProjeto.GetParametrosForm(1);
  abrirNota();
  sql := 'select si.saida,si.item ,i.descricao, si.aliqicms, si.quantidade, si.preco,si.subtotalitem '+
  ' from saidasitens si inner join itens i on i.item = si.item where si.saida = :saida';
    with teste do begin
        Database := DMProjeto.DB_Projeto;
        SQL.Clear;
        SQL.Add('select si.saida,si.item ,i.descricao, si.aliqicms, si.quantidade, si.preco,si.subtotalitem  from saidasitens si inner join itens i on i.item = si.item where si.saida = '+IntToStr(95493));
        Open;
        dsTeste.DataSet := teste;
    end;
end;

procedure TDlgComplementoICMS.abrirNota();
var
        teste : string;
Begin
    With Q_SaidasItens do Begin
      //Params[0].Value :=  nSaida;
      ParamByName('saida').Value := 95493 ;


      Open;
      while not eof do
      begin
          teste := fieldbyname('descricao').AsString;
          Next;
      end;
    End;
End;

procedure TDlgComplementoICMS.btGravarClick(Sender: TObject);
begin
  inherited;
  ShowMessage(C_SaidasItensDESCRICAO.Text);
end;

end.

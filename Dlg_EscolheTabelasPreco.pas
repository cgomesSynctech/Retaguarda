unit Dlg_EscolheTabelasPreco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Db, Provider, DBClient, IBCustomDataSet, IBQuery,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, TS_QDBGrid,
  FormsComponent, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, Menus, TS_PopupMenu;

type
  TDlgEscolheTabelasPreco = class(TFrmModeloCadastros)
    Q_TabelaPreco: TIBQuery;
    C_TabelaPreco: TClientDataSet;
    Q_TabelaPrecoProvider: TDataSetProvider;
    C_TabelaPrecoDS: TDataSource;
    C_TabelaPrecoTABELAPRECO: TIntegerField;
    C_TabelaPrecoDESCRICAO: TStringField;
    C_TabelaPrecoPERCENTUAL: TBCDField;
    C_TabelaPrecoDESATIVADO: TStringField;
    C_TabelaPrecoBASEADA: TStringField;
    gridTabelasPreco: TTS_QDBGrid;
    gridTabelasPrecoDESCRICAO: TdxDBGridMaskColumn;
    gridTabelasPrecoPERCENTUAL: TdxDBGridMaskColumn;
    gridTabelasPrecoDESATIVADO: TdxDBGridCheckColumn;
    gridTabelasPrecoBASEADA: TdxDBGridCheckColumn;
    C_TabelaPreco_icSelecionado: TIntegerField;
    Q_SQL: TIBQuery;
    procedure btGravarClick(Sender: TObject);
    procedure gridTabelasPrecoTS_OnSelection(Sender: TObject;
      bSelected: Boolean; var bCanSelect: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Quant: integer;
  public
    { Public declarations }
  end;

var
  DlgEscolheTabelasPreco: TDlgEscolheTabelasPreco;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgEscolheTabelasPreco.btGravarClick(Sender: TObject);
var Selecionados: string;
begin
  inherited;
  DMProjeto.sTabPrecoSelec := gridTabelasPreco.Selecionados;
  ModalResult := 1;
end;

procedure TDlgEscolheTabelasPreco.gridTabelasPrecoTS_OnSelection(
  Sender: TObject; bSelected: Boolean; var bCanSelect: Boolean);
begin
  inherited;
  if gridTabelasPreco.nQuantidadeSelecionada > 5 then
    bCanSelect := False;
end;

procedure TDlgEscolheTabelasPreco.FormCreate(Sender: TObject);
begin
  inherited;
  C_TabelaPreco.Open;
end;

procedure TDlgEscolheTabelasPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  C_TabelaPreco.Close;
end;

procedure TDlgEscolheTabelasPreco.FormsComponentBeforeLoadKey(
  Sendet: TObject; var Where: String);
//var i, cont: integer;
begin
  inherited;
{  with Q_SQL do begin
    Close;
    SQL.Text := 'Select tabelapreco, descricao From TabelasPreco';
    Open;
    cont := 1;
    while not(Eof) and (cont<=5) do begin
      if IndiceString(DMProjeto.sTabPrecoSelec,',',FieldByName('tabelapreco').AsString)>0 then begin
        dbgConsulta.ColumnByFieldName('TP'+IntToStr(cont)).Caption := FieldByName('descricao').AsString;
        query.Params.ParamByName('TP'+IntToStr(cont)).AsInteger := FieldByName('tabelapreco').AsInteger;
        Inc(cont);
      end;
      Next;
    end;
  end;
  for i:=cont to 5 do begin
    dbgConsulta.ColumnByFieldName('TP'+IntToStr(i)).Caption := 'TP '+IntToStr(i);
    query.Params.ParamByName('TP'+IntToStr(i)).AsInteger := -1;
  end;}
end;

procedure TDlgEscolheTabelasPreco.FormShow(Sender: TObject);
begin
  inherited;
  gridTabelasPreco.SetSelecionados(DMProjeto.sTabPrecoSelec);
end;

end.

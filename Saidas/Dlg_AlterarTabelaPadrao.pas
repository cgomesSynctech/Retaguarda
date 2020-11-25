unit Dlg_AlterarTabelaPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, DBCtrls, TS_RadioButton, TS_DBText, Db, IBCustomDataSet,
  IBQuery, DM_Saidas, Placemnt, BTOdeum;

type
  TDlgAlterarTabelaPadrao = class(TFrmModeloCadastros)
    lbTabelas: TDBLookupListBox;
    lbTabAtual: TTS_Label;
    TS_Label2: TTS_Label;
    rbTodos: TTS_RadioButton;
    rbNovos: TTS_RadioButton;
    Q_TabelasPreco: TIBQuery;
    Q_TabelasPrecoTABELAPRECO: TIntegerField;
    Q_TabelasPrecoDESCRICAO: TIBStringField;
    Q_TabelasPrecoPERCENTUAL: TIBBCDField;
    Q_TabelasPrecoDESATIVADO: TIBStringField;
    Q_TabelasPrecoBASEADA: TIBStringField;
    Q_TabelasPrecoDS: TDataSource;
    rbItemCorrente: TTS_RadioButton;
    lbTabItem: TTS_Label;
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Q_TabelasPrecoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    DM : TDMSaidas;
  end;

var
  DlgAlterarTabelaPadrao: TDlgAlterarTabelaPadrao;

implementation
  uses DM_Projeto;

{$R *.DFM}

procedure TDlgAlterarTabelaPadrao.FormShow(Sender: TObject);
begin
  inherited;
  Q_TabelasPreco.Open;

  Q_TabelasPreco.Locate('TabelaPreco', DM.C_ItensTabelaPreco.Value, []);
  lbTabItem.Caption := lbTabItem.Caption + '  ' + Q_TabelasPrecoDescricao.Value;

  Q_TabelasPreco.Locate('TabelaPreco', DM.C_TabelaTabelaPadrao.Value, []);
  lbTabAtual.Caption := lbTabAtual.Caption + '  ' + Q_TabelasPrecoDescricao.Value;

end;

procedure TDlgAlterarTabelaPadrao.btGravarClick(Sender: TObject);
begin
  inherited;

  if (DM.C_TabelaTabelaPadrao.Value <> Q_TabelasPrecoTabelaPreco.Value) and
     DMProjeto.PermissoesTabelasPreco( Q_TabelasPrecoTabelaPreco.Value, 'U', true ) then begin

    if not rbItemCorrente.Checked then begin
      DM.C_Tabela.edit;
      DM.C_TabelaTabelaPadrao.Value := Q_TabelasPrecoTabelaPreco.Value;
      if rbTodos.Checked then
        DM.AlterarTabelaPadrao(false);
    end else begin
      DM.AlterarTabelaItem(DM.C_ItensIDItem.Value, Q_TabelasPrecoTabelaPreco.Value, DM.C_ItensUnidade.Value);
    end;

    ModalResult := mrok;

  end;

end;

procedure TDlgAlterarTabelaPadrao.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    btGravarClick(self)
  else if key = #27 then
    ModalResult := -1;
end;

procedure TDlgAlterarTabelaPadrao.Q_TabelasPrecoFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept := DMProjeto.PermissoesTabelasPreco( DataSet.FieldByName('TabelaPreco').asInteger );
end;

end.

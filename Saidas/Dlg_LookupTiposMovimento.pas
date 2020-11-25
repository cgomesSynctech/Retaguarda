unit Dlg_LookupTiposMovimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, DBCtrls, TS_LastDataObject, DlgMsg,
  Menus, TS_PopupMenu, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  StdCtrls, TS_BitBtn, Db, DBClient, Provider, IBCustomDataSet,
  IBQuery, FormsComponent, TS_Label, TS_Image, dxfLabel,
  TS_MaxPanel, teCtrls, TS_EffectsPanel, TDM_Manutencao, Placemnt, BTOdeum;

type
  TDlgLookupTiposMovimento = class(TFrmModeloCadastros)
    DBLookupListBox1: TDBLookupListBox;
    Q_TiposMovimento: TIBQuery;
    P_TiposMovimento: TDataSetProvider;
    C_TiposMovimento: TClientDataSet;
    C_TiposMovimentoDS: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure Q_TiposMovimentoBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Tipo : String;
    DM : TDMManutencao;
  end;

var
  DlgLookupTiposMovimento: TDlgLookupTiposMovimento;

implementation
  uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgLookupTiposMovimento.FormShow(Sender: TObject);
begin
  inherited;
  C_TiposMovimento.Open;
end;

procedure TDlgLookupTiposMovimento.btGravarClick(Sender: TObject);
var
  i : integer;
begin                            
  inherited;
  with TDMManutencao(DM) do begin
    C_Tabela.Edit;
    for i := 0 to C_Tabela.FieldCount - 1 do begin
      if (Esquerda(C_Tabela.Fields[i].FieldName,3) = 'CB_') or
         (Esquerda(C_Tabela.Fields[i].FieldName,1) = 'B') or
         (Esquerda(C_Tabela.Fields[i].FieldName,1) = 'C') or
         (Esquerda(C_Tabela.Fields[i].FieldName,2) = 'PO') or
         (Esquerda(C_Tabela.Fields[i].FieldName,3) = 'TIT') then
        C_Tabela.Fields[i].Value := C_TiposMovimento.FieldByName(C_Tabela.Fields[i].FieldName).Value
    end;
    C_Tabela.Post;
  end;
  ModalResult := mrOk;
end;

procedure TDlgLookupTiposMovimento.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TDlgLookupTiposMovimento.Q_TiposMovimentoBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  Q_TiposMovimento.Params[0].asString := Tipo;
end;

end.

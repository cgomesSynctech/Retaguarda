unit Dlg_AlterarLocalizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, DB, DBClient, Provider, IBCustomDataSet,
  IBQuery, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  TS_LookupComboBox, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel;

type
  TDlgAlterarLocalizacao = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    cmbLocal: TTS_LookupComboBox;
    Q_Local: TIBQuery;
    P_Local: TDataSetProvider;
    C_Local: TClientDataSet;
    C_LocalDS: TDataSource;
    Q_Abertura: TIBQuery;
    C_LocalLOCALIZACAOEQUIPAMENTO: TIntegerField;
    C_LocalDESCRICAO: TStringField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
    nServico, nLocal:Integer;
  public
    { Public declarations }
  end;

var
  DlgAlterarLocalizacao: TDlgAlterarLocalizacao;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDlgAlterarLocalizacao.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  nServico := DMPRojeto.GetParametrosForm(0);
  nLocal := DMProjeto.GetParametrosForm(1);
  DlgAlterarLocalizacao:= Self;
  C_Local.Open;
  C_Local.Locate( 'LOCALIZACAOEQUIPAMENTO', nLocal, [] );
end;

procedure TDlgAlterarLocalizacao.btGravarClick(Sender: TObject);
begin
  inherited;
  try
    With Q_Abertura do Begin
      Parambyname('local').AsInteger := cmbLocal.LookupKeyValue;
      Parambyname('servico').AsInteger := nServico;
      Prepare;
      ExecSql;
    End;
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    Close;
  except
    on e:exception do begin
      DlgMsg.ShowMsg( 50, [e.message]);
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
    end;
  end;
end;

end.

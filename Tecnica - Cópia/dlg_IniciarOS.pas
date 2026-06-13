unit dlg_IniciarOS;

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
  TdlgIniciarOS = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    cmbTecnicos: TTS_LookupComboBox;
    Q_Tecnico: TIBQuery;
    P_Tecnico: TDataSetProvider;
    C_Tecnico: TClientDataSet;
    IntegerField1: TIntegerField;
    C_TecnicoDs: TDataSource;
    Q_Abertura: TIBQuery;
    C_TecnicoFAVORECIDO: TIntegerField;
    C_TecnicoNOME: TStringField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
    nServico:Integer;
  public
    { Public declarations }
  end;

var
  dlgIniciarOS: TdlgIniciarOS;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TdlgIniciarOS.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  nServico := DMPRojeto.GetParametrosForm(0);
  dlgIniciarOS:= Self;
  C_Tecnico.Open;
end;

procedure TdlgIniciarOS.btGravarClick(Sender: TObject);
begin
  inherited;
  try
    With Q_Abertura do Begin
      Parambyname('Tecnico').AsInteger := cmbTecnicos.LookupKeyValue;
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

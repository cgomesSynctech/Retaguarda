unit Frm_Memorizacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Provider, DBClient, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, Db, IBCustomDataSet, IBQuery, FormsComponent,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, 
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons,
  TS_SpeedButton, TS_BitBtn, dxDBTLCl, dxGrClms, teCtrls,
  TS_EffectsPanel, IBUpdateSQL, Menus, TS_PopupMenu, dxExEdtr, Placemnt,
  BTOdeum;

type
  TFrmMemorizacao = class(TFrmModeloCadastros)
    Q_Memorizacao: TIBQuery;
    C_MemorizacaoDS: TDataSource;
    dbgMemorizacao: TTS_QDBGrid;
    C_Memorizacao: TClientDataSet;
    Q_MemorizacaoProvider: TDataSetProvider;
    C_MemorizacaoMEMORIZACAO: TIntegerField;
    C_MemorizacaoDATA: TDateField;
    C_MemorizacaoORIGEM: TIntegerField;
    C_MemorizacaoIDGERADOR: TIntegerField;
    C_MemorizacaoDESCRICAO: TStringField;
    C_MemorizacaoNUMERO: TStringField;
    C_MemorizacaoTIPO: TStringField;
    C_MemorizacaoFORMNAME: TStringField;
    dbgMemorizacaoMEMORIZACAO: TdxDBGridMaskColumn;
    dbgMemorizacaoDATA: TdxDBGridDateColumn;
    dbgMemorizacaoORIGEM: TdxDBGridMaskColumn;
    dbgMemorizacaoIDGERADOR: TdxDBGridMaskColumn;
    dbgMemorizacaoDESCRICAO: TdxDBGridMaskColumn;
    dbgMemorizacaoNUMERO: TdxDBGridMaskColumn;
    dbgMemorizacaoTIPO: TdxDBGridMaskColumn;
    dbgMemorizacaoFORMNAME: TdxDBGridMaskColumn;
    U_Memorizacao: TIBUpdateSQL;
    ppmGridMemoriza: TTS_PopupMenu;
    Entrar1: TMenuItem;
    Apagar1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgMemorizacaoDblClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMemorizacao: TFrmMemorizacao;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TFrmMemorizacao.FormCreate(Sender: TObject);
begin
  inherited;
  C_Memorizacao.Open;
end;

procedure TFrmMemorizacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  C_Memorizacao.Close;
end;

procedure TFrmMemorizacao.dbgMemorizacaoDblClick(Sender: TObject);
begin
  inherited;
  if (C_Memorizacao.RecordCount <= 0) then
    exit;

  DMProjeto.SetParametrosForm([dbgMemorizacaoIDGERADOR.Field.Value]);
  DMProjeto.CriarForm(dbgMemorizacaoFORMNAME.Field.Value, self, true);
end;

procedure TFrmMemorizacao.btGravarClick(Sender: TObject);
begin
  inherited;
  if (C_Memorizacao.RecordCount <= 0) then
    exit;    
  if DlgMsg.ShowMsg(3075) <> 100 then begin
    exit;
  end;

  C_Memorizacao.delete;

  if C_Memorizacao.State = dsEdit then
    C_Memorizacao.Post;

  if (C_Memorizacao.ChangeCount > 0) then begin
    if not DMProjeto.IBT_Projeto.inTransaction then
      DMProjeto.IBT_Projeto.StartTransaction;
    try
      C_Memorizacao.ApplyUpdates(0);
      DMProjeto.IBT_Projeto.CommitRetaining;
    except
    end; //try
  end; // if ChangeCount

end;

end.

unit Dlg_ContasPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  dxDBTLCl, dxGrClEx, Db, DBClient, Provider, IBCustomDataSet, IBQuery, Dlg_PopupContas,
  IBUpdateSQL;

type
  TDlgContasPadrao = class(TFrmModeloCadastros)
    dbgContas: TTS_QDBGrid;
    C_ContasDS: TDataSource;
    Q_Contas: TIBQuery;
    P_Contas: TDataSetProvider;
    C_Contas: TClientDataSet;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasDESCTIPO: TStringField;
    C_ContasSALDO: TBCDField;
    C_ContasCONTAPAI: TIntegerField;
    C_ContasTIPOCONTA: TIntegerField;
    C_ContasCODIGOREDUZIDO: TStringField;
    P_ContasPadrao: TDataSetProvider;
    C_ContasPadrao: TClientDataSet;
    C_ContasPadraoDS: TDataSource;
    Q_ContasPadrao: TIBQuery;
    C_ContasPadraoDESCRICAO: TStringField;
    C_ContasPadraoID: TIntegerField;
    C_ContasPadraoCONTA: TIntegerField;
    dbgContasDescricao: TdxDBGridColumn;
    dbgContasID: TdxDBGridColumn;
    dbgContasConta: TdxDBGridPopupColumn;
    C_ContasPadraolkConta: TStringField;
    U_ContasPadrao: TIBUpdateSQL;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  protected
    DlgPopup :TDlgPopupContas;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgContasPadrao: TDlgContasPadrao;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDlgContasPadrao.FormCreate(Sender: TObject);
begin
  inherited;
  C_ContasPadrao.open;
  DlgPopup := TDlgPopupContas.Create(self,C_ContasDS,dbgContasConta,true);
end;

procedure TDlgContasPadrao.FormActivate(Sender: TObject);
begin
  inherited;
  dbgContasConta.PopupControl := DlgPopup.pnPopup;
end;

procedure TDlgContasPadrao.btGravarClick(Sender: TObject);
begin
  inherited;
  if C_ContasPadrao.state in [dsEdit,dsInsert] then
    C_ContasPadrao.post;

  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

  C_ContasPadrao.ApplyUpdates(0);

  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  close;  
end;

end.

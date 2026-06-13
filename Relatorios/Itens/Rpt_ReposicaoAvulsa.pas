unit Rpt_ReposicaoAvulsa;

interface
                                  
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  DB, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet, IBQuery, Placemnt,
  BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner,
  dxEdLib, TS_CheckBox, TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls,
  ComCtrls, ExtCtrls, TS_Label, Buttons, TS_SpeedButton, dxfLabel,
  TS_MaxPanel, TS_BitBtn;

type
  TRptReposicaoAvulsa  = class(TRptPadrao)
    cbEstoque: TTS_CheckBox;
    TS_BitBtn1: TTS_BitBtn;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaATUAL: TBCDField;
    C_ConsultaESTOQUEMINIMO: TBCDField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaLOCALIZACAO: TStringField;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaATUAL: TdxDBGridCurrencyColumn;
    dbgConsultaESTOQUEMINIMO: TdxDBGridCurrencyColumn;
    dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn;
    dbgConsultaLOCALIZACAO: TdxDBGridMaskColumn;
    C_ConsultaQTDDEPOSITO: TBCDField;
    C_ConsultaFABRICANTE: TStringField;
    dbgConsultaQTDDEPOSITO: TdxDBGridCurrencyColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }

  end;

var
  RptReposicaoAvulsa : TRptReposicaoAvulsa ;

implementation

uses DM_Projeto;

{$R *.dfm}

Procedure TRptReposicaoAvulsa.Atualizar;
Begin
  C_Consulta.Close;
  if ( cbEstoque.Checked ) THEN
  Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + '  and i.estoque > 0' ;

  C_Consulta.Open;
End;

procedure TRptReposicaoAvulsa.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptReposicaoAvulsa.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptReposicaoAvulsa.TS_BitBtn1Click(Sender: TObject);
begin
  inherited;
   if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
   With DMPRojeto.StoreProcedure do Begin
      StoredProcName := 'REPOSICAOGONDOLA';
      ExecProc;
   End;
   DMProjeto.DB_Projeto.DefaultTransaction.Commit;
   MessageDlg('Comando Realizado Com Êxito!', mtInformation, [mbOK], 0);
end;

end.

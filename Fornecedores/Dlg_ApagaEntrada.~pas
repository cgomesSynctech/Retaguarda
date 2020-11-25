unit dlg_apagaEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, TS_Edit,
  DM_projeto;

type
  TdlgapagaEntrada = class(TFrmPadrao)
    chave: TTS_Edit;
    TS_Label1: TTS_Label;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgapagaEntrada: TdlgapagaEntrada;

implementation

uses IBStoredProc, TDM_Projeto;

{$R *.dfm}

procedure TdlgapagaEntrada.btGravarClick(Sender: TObject);
begin
  inherited;
   if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
   With DMProjeto.StoreProcedure do Begin
      StoredProcName := 'SPED_CORRIGECFOPENTRADASITENS';
      ParamByName('ChaveNF').Value := chave.Text ;
      ParamByName('Usuario').Value := DMProjeto.nFuncionarioLogado ;
      ParamByName('DT').Value := DMProjeto.dDataSistemaAtual ;

      ExecProc;
   End;
   DMProjeto.DB_Projeto.DefaultTransaction.Commit;
   MessageDlg('Comando Realizado Com Êxito!', mtInformation, [mbOK], 0);

end;

end.

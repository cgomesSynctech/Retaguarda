unit dlg_AssistenciaPecasServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, dxCntner, TS_QDBGrid, dxEditor, dxEdLib, dxDBELib,
  TS_DBButtonEdit, TS_DBEditItem;

type
  TdlgAssistenciaPecasServicos = class(TFrmModeloCadastros)
    dbgItens: TTS_QDBGrid;
    dbgItens_icSelecionado: TdxDBGridColumn;
    dbgItensITEM: TdxDBGridMaskColumn;
    dbgItensQUANTIDADE: TdxDBGridCurrencyColumn;
    dbgItensSERVICO: TdxDBGridMaskColumn;
    dbgItensSERVICODET: TdxDBGridMaskColumn;
    dbgItensVALOR: TdxDBGridCurrencyColumn;
    dbgItensSSUBTOTAL: TdxDBGridColumn;
    ppmItens: TTS_PopupMenu;
    AdicionarItens1: TMenuItem;
    ExcluirItem1: TMenuItem;
    MostrarContagens1: TMenuItem;
    dbgItensDescricao: TdxDBGridButtonColumn;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgItensDescricaoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgAssistenciaPecasServicos: TdlgAssistenciaPecasServicos;

implementation

uses DM_Projeto, DM_AssistenciaLaboratorio;

{$R *.dfm}

procedure TdlgAssistenciaPecasServicos.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  dlgAssistenciaPecasServicos:=Self;
  dmAssistenciaLaboratorio.C_ServicosDet.Append;
end;

procedure TdlgAssistenciaPecasServicos.btFecharCadastroClick(
  Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TdlgAssistenciaPecasServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dlgAssistenciaPecasServicos:=Nil;
  Action := CaFree;
end;

procedure TdlgAssistenciaPecasServicos.dbgItensDescricaoButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if AbsoluteIndex = 1 then
    DMProjeto.CriarForm('FrmItens', self, true );
end;

end.

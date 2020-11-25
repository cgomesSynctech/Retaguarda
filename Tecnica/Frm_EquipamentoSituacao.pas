unit Frm_EquipamentoSituacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, dxTL, dxCntner, TS_QDBGrid, dxEdLib, dxDBELib, TS_DBMemo,
  dxEditor, TS_DBEdit, dxDBEdtr, TS_DBLookupComboBox;

type
  TFrmEquipamentoSituacao = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    TS_Label4: TTS_Label;
    TS_DBEdit10: TTS_DBEdit;
    TS_DBEdit11: TTS_DBEdit;
    TS_DBMemo1: TTS_DBMemo;
    TS_Panel2: TTS_Panel;
    TS_Label1: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    TS_DBEdit2: TTS_DBEdit;
    TS_DBMemo2: TTS_DBMemo;
    TS_QDBGrid1: TTS_QDBGrid;
    TS_QDBGrid1_icSelecionado: TdxDBGridColumn;
    TS_QDBGrid1DESCRICAOITEM: TdxDBGridMaskColumn;
    TS_QDBGrid1ITEM: TdxDBGridMaskColumn;
    TS_QDBGrid1QUANTIDADE: TdxDBGridCurrencyColumn;
    TS_QDBGrid1SERVICO: TdxDBGridMaskColumn;
    TS_QDBGrid1SERVICODET: TdxDBGridMaskColumn;
    TS_QDBGrid1VALOR: TdxDBGridCurrencyColumn;
    TS_QDBGrid1PRECO: TdxDBGridCurrencyColumn;
    TS_QDBGrid1SUBTOTAL: TdxDBGridColumn;
    cmbStatus: TTS_DBLookupComboBox;
    TS_Label5: TTS_Label;
    TS_Label2: TTS_Label;
    TS_DBLookupComboBox1: TTS_DBLookupComboBox;
    TS_QDBGrid1CODIGO: TdxDBGridColumn;
    TS_QDBGrid1DESCRICAO: TdxDBGridColumn;
    TS_Label3: TTS_Label;
    TS_DBLookupComboBox2: TTS_DBLookupComboBox;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEquipamentoSituacao: TFrmEquipamentoSituacao;

implementation

uses DM_Projeto, DM_EntradasAssistencia;

{$R *.dfm}

procedure TFrmEquipamentoSituacao.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  FrmEquipamentoSituacao:=Self;
end;

procedure TFrmEquipamentoSituacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmEquipamentoSituacao:=Nil;
  Action:=CaFree;
end;

end.

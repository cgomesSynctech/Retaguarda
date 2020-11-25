unit Dlg_DescricaoComplementar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DM_Saidas, FRM_MODELOCADASTROS, Placemnt, FormsComponent,
  BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls,
  TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, TS_Shape, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, TS_DBMemo, DBCtrls, TS_DBText;

type
  TDlgDescricaoComplementar = class(TFrmModeloCadastros)
    dfDescricao: TTS_DBMemo;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    dbtDescricao: TTS_DBText;
    dbtComplementar: TTS_DBText;
    dbtTecnica: TTS_DBText;
    dbtCodigo: TTS_DBText;
    dbtRef: TTS_DBText;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_Shape3: TTS_Shape;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btComando1Click(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharCadastroClick(Sender: TObject);
  private
    { Private declarations }
    sDescricao : String;

  public
    { Public declarations }
    DM : TDMSaidas;
  end;

var
  DlgDescricaoComplementar: TDlgDescricaoComplementar;

implementation
  uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDlgDescricaoComplementar.FormShow(Sender: TObject);
begin
  inherited;
  sDescricao := DM.C_ItensDescricaoComplementar.Value;

  dbtCodigo.DataSource := DM.C_ItensDS;
  dbtRef.DataSource := DM.C_ItensDS;
  dbtDescricao.DataSource := DM.C_ItensDS;
  dbtComplementar.DataSource := DM.C_ItensDS;
  dbtTecnica.DataSource := DM.C_ItensDS;
  dfDescricao.DataSource := DM.C_ItensDS;
end;

procedure TDlgDescricaoComplementar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM := nil;
end;

procedure TDlgDescricaoComplementar.btComando1Click(Sender: TObject);
begin
  inherited;
  DM.C_Itens.Edit;
  DM.C_ItensDescricao.Value := DM.C_ItensI_DescricaoComplementar.Value;
end;

procedure TDlgDescricaoComplementar.btComando2Click(Sender: TObject);
begin
  inherited;
  DM.C_Itens.Edit;
  DM.C_ItensDescricao.Value := DM.C_ItensI_DescricaoTecnica.Value;
end;

procedure TDlgDescricaoComplementar.btGravarClick(Sender: TObject);
begin
  inherited;
  ModalResult := 100;
end;

procedure TDlgDescricaoComplementar.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DM.C_Itens.Edit;
  DM.C_ItensDescricao.Value := DM.C_ItensI_Descricao.Value;
end;

procedure TDlgDescricaoComplementar.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #27 then
    btFecharCadastroClick(self);
end;

procedure TDlgDescricaoComplementar.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  DM.C_Itens.Edit;
  DM.C_ItensDescricaoComplementar.Value := sDescricao;

  ModalResult := -1;
end;

end.


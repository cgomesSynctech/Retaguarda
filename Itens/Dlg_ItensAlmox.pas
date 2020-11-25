unit Dlg_ItensAlmox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, dxDBTLCl, dxGrClms;

type
  TDlgItensAlmox = class(TFrmModeloCadastros)
    Grid: TTS_QDBGrid;
    ppmGrid: TTS_PopupMenu;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridESTOQUEALMOX: TdxDBGridMaskColumn;
    procedure btGravarClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  DlgItensAlmox: TDlgItensAlmox;

implementation
  uses DM_Projeto, DM_Itens, Funcoes;

{$R *.dfm}

procedure TDlgItensAlmox.btGravarClick(Sender: TObject);
begin
  inherited;

  DMProjeto.SetParametrosForm([null,DMItens.C_TabelaItem.Value]);
  DMProjeto.CriarForm('FrmTransferenciasAlmox',self, true);

  DMItens.C_Tabela.Refresh;
//  DMItens.C_ItensAlmox.Open;

end;

procedure TDlgItensAlmox.btFecharCadastroClick(Sender: TObject);
begin
  ModalResult := -1;
end;

procedure TDlgItensAlmox.FormShow(Sender: TObject);
begin
  inherited;
//  if DMItens.bAlteracao then
//    DMItens.C_ItensAlmox.Close;
//
//  DMItens.C_ItensAlmox.Open;
//
  lbEStadoForm.Caption := lbEstadoForm.Caption + UpperCase(DMItens.C_TabelaDescricao.Value) + ' - Estoque: ' + DMItens.C_TabelaEstoque.DisplayText;
end;

end.

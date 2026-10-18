unit Frm_Propagandas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxTLClms, dxTL, dxCntner,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxEdLib, TS_CheckBox, ExtDlgs, dxEditor,
  dxDBELib, TS_DBEdit, TS_DBSpinEdit, TS_DBCheckBox, dxDBTLCl, dxGrClms,
  Mask, DBCtrls;

type
  TFrmPropagandas = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    dfTitulo: TTS_DBEdit;
    TS_Label2: TTS_Label;
    pdFoto: TOpenPictureDialog;
    ppmFoto: TTS_PopupMenu;
    CarregarFoto1: TMenuItem;
    N4: TMenuItem;
    LimparFoto1: TMenuItem;
    dfImagem: TdxGraphicEdit;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    dfTempo: TTS_DBSpinEdit;
    dfOrdem: TTS_DBSpinEdit;
    TS_Label6: TTS_Label;
    btEfeito: TTS_SpeedButton;
    cbStrech: TTS_DBCheckBox;
    cbTransparent: TTS_DBCheckBox;
    GridPROPAGANDA: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridCONFIGIMG: TdxDBGridMaskColumn;
    GridMULTIMIDIA: TdxDBGridMaskColumn;
    GridTEMPO: TdxDBGridMaskColumn;
    GridORDEM_EXIBICAO: TdxDBGridMaskColumn;
    GridSTRECH: TdxDBGridCheckColumn;
    GridTRANSPARENTE: TdxDBGridCheckColumn;
    GridEFEITO: TdxDBGridButtonColumn;
    GridDESATIVADO: TdxDBGridCheckColumn;
    TS_DBCheckBox1: TTS_DBCheckBox;
    DBEdit1: TDBEdit;
    procedure CarregarFoto1Click(Sender: TObject);
    procedure LimparFoto1Click(Sender: TObject);
    procedure cbStrechChange(Sender: TObject);
    procedure cbTransparentChange(Sender: TObject);
    procedure btEfeitoClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure GridEFEITOButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPropagandas: TFrmPropagandas;

implementation
  uses DM_Projeto, DM_Propagandas, funcoes, db, Dlg_EfeitosTransicoes;

{$R *.dfm}

procedure TFrmPropagandas.CarregarFoto1Click(Sender: TObject);
begin
  inherited;
  if pdFoto.Execute then with DMPropagandas do begin

    if not(C_Tabela.State in [dsEdit,dsInsert]) then
      C_Tabela.Edit;

    C_TabelaImagem.Value := DMProjeto.AddFotoServidor( pdFoto.FileName );
    if FileExists(DMProjeto.ImgPath + C_TabelaImagem.Value) then
      dfImagem.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaImagem.Value);

  end;
end;

procedure TFrmPropagandas.LimparFoto1Click(Sender: TObject);
begin
  inherited;
  with DMPropagandas do begin
    if not(C_Tabela.State in [dsEdit,dsInsert]) then C_Tabela.Edit;
    C_TabelaImagem.Value := '';
    dfImagem.ClearPicture;
  end;
end;

procedure TFrmPropagandas.cbStrechChange(Sender: TObject);
begin
  inherited;

  dfImagem.Stretch := cbStrech.Checked;

end;

procedure TFrmPropagandas.cbTransparentChange(Sender: TObject);
begin
  inherited;

  if cbTransparent.Checked then
    dfImagem.GraphicTransparency := gtTransparent
  else
    dfImagem.GraphicTransparency := gtOpaque;

end;

procedure TFrmPropagandas.btEfeitoClick(Sender: TObject);
begin
  inherited;
  DlgEfeitosTransicoes := TDlgEfeitosTransicoes.Create(self);
  DlgEfeitosTransicoes.Efeito := DMPropagandas.C_TabelaEfeito.Value;
  DlgEfeitosTransicoes.ShowModal;

  if DlgEfeitosTransicoes.Efeito <> DMPropagandas.C_TabelaEfeito.Value then begin
    DMPropagandas.C_Tabela.Edit;
    DMPropagandas.C_TabelaEfeito.Value := DlgEfeitosTransicoes.Efeito;
  end;

  DlgEfeitosTransicoes.Release;

end;

procedure TFrmPropagandas.DBEdit1Change(Sender: TObject);
begin
  inherited;
  if (DMPropagandas.C_TabelaImagem.Value <> '' ) and FileExists(DMProjeto.ImgPath + DMPropagandas.C_TabelaImagem.Value) then
    dfImagem.Picture.LoadFromFile(DMProjeto.ImgPath + DMPropagandas.C_TabelaImagem.Value)
  else
    dfImagem.ClearPicture;
end;

procedure TFrmPropagandas.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;

  dfImagem.Stretch := cbStrech.Checked;

  if cbTransparent.Checked then
    dfImagem.GraphicTransparency := gtTransparent
  else
    dfImagem.GraphicTransparency := gtOpaque;

end;

procedure TFrmPropagandas.GridEFEITOButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  btEfeitoClick(self);
end;

end.

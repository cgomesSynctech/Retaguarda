unit Frm_Bancos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, Menus, StdCtrls, Buttons, ComCtrls, DBCtrls, ExtCtrls, Mask,
  ImgList, T_AutorizacaoDialog, TS_PopupMenu, TS_ScrollBox,
  TS_SpeedButton, TS_BitBtn,
  FormComponent, DlgMsg, TS_DBEdit, TS_Label,
  TS_LastDataObject, TS_Bevel, CheckLst, TS_CheckListBox,
  dxCntner, dxEditor, dxEdLib, dxDBELib, TS_Image, dxfLabel,
  TS_MaxPanel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  teCtrls, TS_EffectsPanel, dxTLClms, dxExEdtr, BTOdeum, Placemnt,
  dxfProgressBar, ExtDlgs, DB;

type
  TFrmBancos = class(TFrmPadrao)
    Label1: TTS_Label;
    DBEdit1: TTS_DBEdit;
    Label2: TTS_Label;
    DBEdit2: TTS_DBEdit;
    GridNome: TdxDBGridColumn;
    GridCodigo: TdxDBGridColumn;
    TS_Label1: TTS_Label;
    DF_Foto: TdxGraphicEdit;
    ppmFoto: TTS_PopupMenu;
    CarregarFoto1: TMenuItem;
    N4: TMenuItem;
    LimparFoto1: TMenuItem;
    pdFoto: TOpenPictureDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DF_FotoClick(Sender: TObject);
    procedure CarregarFoto1Click(Sender: TObject);
    procedure LimparFoto1Click(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBancos: TFrmBancos;

implementation

uses DM_Bancos, DM_Projeto;

{$R *.DFM}

procedure TFrmBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmBancos := nil;
end;

procedure TFrmBancos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [',','.'] then
    key := DecimalSeparator;
end;

procedure TFrmBancos.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if DMProjeto.VerificaExistenciaFav(4,DMBancos.C_TabelaFavorecido.value,'N',DMBancos.C_TabelaNOME.value) then begin
    DlgMsg.ShowMsg(5001,['Banco']);
  end;
end;

procedure TFrmBancos.DF_FotoClick(Sender: TObject);
begin
  inherited;
  ppmFoto.PopupFromCursorPos;
end;

procedure TFrmBancos.CarregarFoto1Click(Sender: TObject);
begin
  inherited;
  if pdFoto.Execute then with DMBancos do begin
    if not (C_Tabela.State in [dsEdit, dsInsert]) then
      C_Tabela.Edit;

    C_TabelaLogotipo.Value := DMProjeto.AddFotoServidor(pdFoto.FileName);
    if FileExists(DMProjeto.ImgPath + C_TabelaLogotipo.Value) then
      DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaLogotipo.Value);
  end;
end;

procedure TFrmBancos.LimparFoto1Click(Sender: TObject);
begin
  inherited;
  with DMBancos do begin
    if not(C_Tabela.State in [dsEdit,dsInsert]) then C_Tabela.Edit;
    C_TabelaLogotipo.Value := '';
    DF_Foto.ClearPicture;
  end;
end;

procedure TFrmBancos.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  with DMBancos do begin
    if C_TabelaFavorecido.value > 0 then begin
      if FileExists(DMProjeto.ImgPath + C_TabelaLogotipo.Value) then
        DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaLogotipo.Value)
      else DF_Foto.ClearPicture;
    end else begin
      DF_Foto.ClearPicture;
    end;
  end;
end;

end.

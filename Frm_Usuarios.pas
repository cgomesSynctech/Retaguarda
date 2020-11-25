unit Frm_Usuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, StdCtrls, TS_Label, FormComponent, ImgList, DlgMsg, Menus,
  TS_PopupMenu, TS_ScrollBox, ComCtrls, Grids, DBGrids, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, Mask, DBCtrls, TS_DBEdit,
  TS_DBLookupComboBox, TS_DBComboBox, TS_LastDataObject, TS_Bevel,
  TS_MaxPanel, CheckLst, TS_CheckListBox, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, dxDBEdtr, dxCntner, TS_Image, dxfLabel, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms,
  TS_DBImageEdit, TS_DBTimeEdit, teCtrls, TS_EffectsPanel, dxTLClms,
  TS_DBMaskEdit, db, ExtDlgs, Variants, BTOdeum, Placemnt, dxfProgressBar;

type
  TFrmUsuarios = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    DF_Usuario: TTS_DBEdit;
    DF_Senha: TTS_DBEdit;
    DF_Perfil: TTS_DBLookupComboBox;
    cmbTabelaPadrao: TTS_DBLookupComboBox;
    DF_Email: TTS_DBEdit;
    DF_IntHorario: TTS_DBMaskEdit;
    GridUSUARIO: TdxDBGridMaskColumn;
    GridPERFIL: TdxDBGridMaskColumn;
    GridLOGINNAME: TdxDBGridMaskColumn;
    GridLOGINPASS: TdxDBGridMaskColumn;
    GridIDIOMA: TdxDBGridMaskColumn;
    GridEMAIL: TdxDBGridMaskColumn;
    GridlkPerfil: TdxDBGridLookupColumn;
    GridlkIdioma: TdxDBGridLookupColumn;
    TS_Bevel1: TTS_Bevel;
    DF_FormatoHora: TTS_DBImageEdit;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    DF_HoraIni: TTS_DBImageEdit;
    DF_HoraFim: TTS_DBImageEdit;
    DF_Foto: TdxGraphicEdit;
    ppmFoto: TTS_PopupMenu;
    CarregarFoto1: TMenuItem;
    N4: TMenuItem;
    LimparFoto1: TMenuItem;
    pdFoto: TOpenPictureDialog;
    TS_DBLookupComboBox1: TTS_DBLookupComboBox;
    TS_Label11: TTS_Label;
    dfDesconto: TTS_DBEdit;
    TS_Label12: TTS_Label;
    TS_Label4: TTS_Label;
    cmbOperacaoPR: TTS_DBLookupComboBox;
    TS_Label13: TTS_Label;
    TS_DBLookupComboBox2: TTS_DBLookupComboBox;
    TS_Label14: TTS_Label;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DF_FormatoHoraChange(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure CarregarFoto1Click(Sender: TObject);
    procedure LimparFoto1Click(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure FormComponentAfterFormShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure PreencheComHorarios(Controle: TTS_DBImageEdit; nIntervalo: integer; bFormatoAMPM: boolean);
  public
    { Public declarations }
  end;

var
  FrmUsuarios: TFrmUsuarios;

implementation

uses DM_Usuarios, DM_Projeto, DM_Agenda;

{$R *.DFM}

procedure TFrmUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmUsuarios := nil;
end;

procedure TFrmUsuarios.PreencheComHorarios(Controle: TTS_DBImageEdit; nIntervalo: integer; bFormatoAMPM: boolean);
var hora_ini, hora_fim: integer;
begin
  if (nIntervalo<1)or(nIntervalo>120) then nIntervalo := 30;
  with DMUsuarios do begin
    if (C_TabelaHORA_INI.Value mod nIntervalo)<>0 then begin
      if not(C_Tabela.State in [dsInsert,dsEdit]) then C_Tabela.Edit;
      DMUsuarios.C_TabelaHORA_INI.AsVariant := null;
    end;
    if (C_TabelaHORA_FIM.Value mod nIntervalo)<>0 then begin
      if not(C_Tabela.State in [dsInsert,dsEdit]) then C_Tabela.Edit;
      DMUsuarios.C_TabelaHORA_FIM.AsVariant := null;
    end;
  end; //with
  //
  with Controle do begin
    Descriptions.Clear;
    ImageIndexes.Clear;
    Values.Clear;
    hora_ini := 0;
    hora_fim := 1439;
    while hora_ini<=hora_fim do begin
      Descriptions.Add(DMAgenda.IntegerToHora(hora_ini,bFormatoAMPM));
      ImageIndexes.Add('-1');
      Values.Add(IntToStr(hora_ini));
      hora_ini := hora_ini + nIntervalo;
    end;
  end; // with
end;


procedure TFrmUsuarios.DF_FormatoHoraChange(Sender: TObject);
var bFormatoAMPM: boolean;
begin
  inherited;
  if DMAgenda.IsNum(DF_IntHorario.Text) then begin
    bFormatoAMPM := (DF_FormatoHora.Text='US');
    PreencheComHorarios(DF_HoraIni, StrToInt(DF_IntHorario.Text), bFormatoAMPM);
    PreencheComHorarios(DF_HoraFim, StrToInt(DF_IntHorario.Text), bFormatoAMPM);
    DF_HoraIni.Refresh;
    DF_HoraFim.Refresh;
  end;
end;

procedure TFrmUsuarios.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  DF_FormatoHoraChange(TObject(DF_FormatoHora));
  with DMUsuarios do begin
    if C_TabelaUSUARIO.value > 0 then begin
      if FileExists(C_TabelaLOGOTIPO.Value) then
        DF_Foto.Picture.LoadFromFile(C_TabelaLOGOTIPO.Value)
      else DF_Foto.ClearPicture;
    end else begin
      DF_Foto.ClearPicture;
    end;
  end;
end;

procedure TFrmUsuarios.CarregarFoto1Click(Sender: TObject);
begin
  inherited;
  if pdFoto.Execute then with DMUsuarios do begin
    if not(C_Tabela.State in [dsEdit,dsInsert]) then
      C_Tabela.Edit;

    C_TabelaLogotipo.Value := DMProjeto.AddFotoServidor( pdFoto.FileName );
    if FileExists(DMProjeto.ImgPath + C_TabelaLogotipo.Value) then
      DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaLogotipo.Value);
  end;
end;

procedure TFrmUsuarios.LimparFoto1Click(Sender: TObject);
begin
  inherited;
  with DMUsuarios do begin
    if not(C_Tabela.State in [dsEdit,dsInsert]) then C_Tabela.Edit;
    C_TabelaLogotipo.Value := '';
    DF_Foto.ClearPicture;
  end;
end;

procedure TFrmUsuarios.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  with DMUsuarios do
    if DMProjeto.QtdParametrosForm>1 then begin
      C_TabelaLOGINNAME.Value := DMProjeto.GetParametrosForm(1);
      C_TabelaEMAIL.Value := DMProjeto.GetParametrosForm(2);
      C_TabelaFuncionario.Value := DMProjeto.GetParametrosForm(3);
    end;
end;

procedure TFrmUsuarios.FormComponentAfterFormShow(Sender: TObject);
begin
  inherited;
  ShowMessage('oi');
end;

procedure TFrmUsuarios.FormShow(Sender: TObject);
begin
//  inherited;
//   TS_Label14.Font.Color := '  '
end;

end.

unit Dlg_VendedorVR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  TS_QDBGrid, DB, DM_Saidas, IBCustomDataSet, IBQuery, Mask, DBCtrls,
  dxEditor, dxEdLib, TS_Edit;

type
  TDlgVendedorVR = class(TFrmModeloCadastros)
    Grid: TTS_QDBGrid;
    GridColumn1: TdxDBGridColumn;
    GridDS: TDataSource;
    Q_SQL: TIBQuery;
    DF_Foto: TdxGraphicEdit;
    dfCodigo: TTS_Edit;
    TS_Label1: TTS_Label;
    DBEdit1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Change(Sender: TObject);
    procedure dfCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure dfCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DM : TDMSaidas;
  end;

var
  DlgVendedorVR: TDlgVendedorVR;

implementation
  uses DM_Projeto, funcoes, Dlg_GetSenhaFunc;

{$R *.dfm}

procedure TDlgVendedorVR.FormShow(Sender: TObject);
begin
  inherited;
  If Not DM.C_Vendedores.Active Then
     DM.C_Vendedores.Open;
  GridDS.DataSet := DM.C_Vendedores;
  GridDS.DataSet.First;

  Grid.DataSource := GridDS;

  DBEdit1.DataSource := GridDS;
  dbedit1change(self);

end;

procedure TDlgVendedorVR.btGravarClick(Sender: TObject);
var
  nUsuarioAssoc : Integer;
  sSenhaUsuario, sSenha : string;
begin
  inherited;

  if dfCodigo.Text <> '' then
    if not DM.C_Vendedores.Locate('Codigo', CompleteCode(dfCodigo.Text,6), []) then
      DlgMsg.ShowMsg(2788);

  {Verificando a Senha do Funcionário pelo Usuário Associado}
  if DMProjeto.Parametro('PedirSenhaVR') = 'S' then with Q_SQL do begin
    Close;
    SQL.Text := 'Select Vendedor from Favorecidos where Favorecido = :F ';
    Params[0].asInteger := DM.C_VendedoresFavorecido.Value;
    Open;

    nUsuarioAssoc := FieldByName('Vendedor').asInteger;
    Close;

    if nUsuarioAssoc = 0 then begin
      DlgMsg.ShowMsg(2799);
      exit;
    end;

    SQL.Text := 'Select LOGINPASS from Usuarios where Usuario = :U ';
    Params[0].asInteger := nUsuarioAssoc;
    Open;

    sSenhaUsuario := FieldByName('LoginPass').asString;
    Close;

    DlgGetSenhaFunc := TDlgGetSenhaFunc.Create(self);
    DlgGetSenhaFunc.ShowModal;
    sSenha := DlgGetSenhaFunc.dfSenha.Text;
    DlgGetSenhaFunc.Release;

    criptografia(trim(sSenha),'','',sSenha);

    if sSenhaUsuario <> sSenha then begin
      DlgMsg.ShowMsg(2798);
      exit;
    end;

  end;

  DM.C_TabelaVendedor.Value := DM.C_VendedoresFavorecido.Value;

  ModalResult := mrok;

end;

procedure TDlgVendedorVR.GridDblClick(Sender: TObject);
begin
  inherited;
  btGravarClick(self);
end;

procedure TDlgVendedorVR.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    btGravarClick(self)
  else if key = #27 then
    ModalResult := -1;

end;

procedure TDlgVendedorVR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM := nil;
end;

procedure TDlgVendedorVR.DBEdit1Change(Sender: TObject);
begin
  inherited;
  if FileExists(DMProjeto.ImgPath + DBEdit1.Text) then
    DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + DBEdit1.Text)
  else
    DF_Foto.ClearPicture;

end;

procedure TDlgVendedorVR.dfCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = Vk_Down then
    GridDS.DataSet.Next
  else if key = VK_Up then
    GridDS.DataSet.Prior
  else if Key = 34 then
    GridDS.DataSet.MoveBy(6)
  else if Key = 33 then
    GridDS.DataSet.MoveBy(-6);
end;

procedure TDlgVendedorVR.GridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in ['0'..'9'] then
    dfCodigo.Text := dfCodigo.Text + Key;

  if Key = #13 then
    btGravarClick(self);
end;

procedure TDlgVendedorVR.dfCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btGravarClick(self);
end;

procedure TDlgVendedorVR.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  Modalresult := -1;
end;

end.

unit Dlg_VendedorVMR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  TS_QDBGrid, DB, IBCustomDataSet, IBQuery, Mask, DBCtrls,
  dxEditor, dxEdLib, TS_Edit, DBClient, Provider;

type
  TDlgVendedorVMR = class(TFrmModeloCadastros)
    Grid: TTS_QDBGrid;
    GridColumn1: TdxDBGridColumn;
    C_VendedoresDS: TDataSource;
    Q_SQL: TIBQuery;
    DF_Foto: TdxGraphicEdit;
    dfCodigo: TTS_Edit;
    TS_Label1: TTS_Label;
    DBEdit1: TDBEdit;
    Q_Vendedores: TIBQuery;
    P_Vendedores: TDataSetProvider;
    C_Vendedores: TClientDataSet;
    C_VendedoresFAVORECIDO: TIntegerField;
    C_VendedoresCODIGO: TStringField;
    C_VendedoresNOME: TStringField;
    C_VendedoresCOMISSAO: TBCDField;
    C_VendedoresLOGOTIPO: TStringField;
    procedure btGravarClick(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Change(Sender: TObject);
    procedure dfCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure dfCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nVendedor : integer;
    sVendedor: string;
  end;

var
  DlgVendedorVMR: TDlgVendedorVMR;

implementation
  uses DM_Projeto, funcoes, Dlg_GetSenhaFunc;

{$R *.dfm}

procedure TDlgVendedorVMR.btGravarClick(Sender: TObject);
var
  nUsuarioAssoc : Integer;
  sSenhaUsuario, sSenha : string;
begin
  inherited;

  if dfCodigo.Text <> '' then
    if not C_Vendedores.Locate('Codigo', CompleteCode(dfCodigo.Text,6), []) then
      DlgMsg.ShowMsg(2788);

  {Verificando a Senha do Funcionário pelo Usuário Associado}
  if DMProjeto.Parametro('PedirSenhaVR') = 'S' then with Q_SQL do begin
    Close;
    SQL.Text := 'Select Vendedor from Favorecidos where Favorecido = :F ';
    Params[0].asInteger := C_VendedoresFavorecido.Value;
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

  nVendedor := C_VendedoresFavorecido.Value;
  sVendedor := C_VendedoresNome.Value;

  ModalResult := mrok;

end;

procedure TDlgVendedorVMR.GridDblClick(Sender: TObject);
begin
  inherited;
  btGravarClick(self);
end;

procedure TDlgVendedorVMR.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    btGravarClick(self)
  else if key = #27 then
    ModalResult := -1;

end;

procedure TDlgVendedorVMR.DBEdit1Change(Sender: TObject);
begin
  inherited;
  if FileExists(DMProjeto.ImgPath + DBEdit1.Text) then
    DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + DBEdit1.Text)
  else
    DF_Foto.ClearPicture;

end;

procedure TDlgVendedorVMR.dfCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = Vk_Down then
    C_VendedoresDS.DataSet.Next
  else if key = VK_Up then
    C_VendedoresDS.DataSet.Prior
  else if Key = 34 then
    C_VendedoresDS.DataSet.MoveBy(6)
  else if Key = 33 then
    C_VendedoresDS.DataSet.MoveBy(-6);
end;

procedure TDlgVendedorVMR.GridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in ['0'..'9'] then
    dfCodigo.Text := dfCodigo.Text + Key;

  if Key = #13 then
    btGravarClick(self);
end;

procedure TDlgVendedorVMR.dfCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btGravarClick(self);
end;

procedure TDlgVendedorVMR.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  Modalresult := -1;
end;

procedure TDlgVendedorVMR.FormShow(Sender: TObject);
begin
  inherited;
  C_Vendedores.Close;
  C_Vendedores.Open;
  dbedit1change(self);
end;

end.

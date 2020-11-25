unit Frm_Empresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn, TS_Label, Mask,
  DBCtrls, TS_DBEdit, TS_DBLookupComboBox, TS_PageControl, TS_Image,
  ExtDlgs, DB, TS_LastDataObject, CheckLst,
  TS_CheckListBox, TS_Bevel, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxCntner, dxEdLib, dxfLabel, TS_MaxPanel, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, TS_EffectsPanel, dxTLClms,
  TS_Shape, TS_DBMaskEdit, teDiagon, TS_DBButtonEdit, ShellApi, BTOdeum,
  Placemnt, teCtrls, TS_DBCheckBox, TS_DBEditDate, dxfProgressBar,
  TS_DBImageEdit, TS_DBSpinEdit, TS_DBMemo;

type
  TFrmEmpresa = class(TFrmPadrao)
    ppmFoto: TPopupMenu;
    CarregarFoto: TMenuItem;
    N4: TMenuItem;
    LimparFoto1: TMenuItem;
    TS_Label17: TTS_Label;
    TS_Label18: TTS_Label;
    TS_Label19: TTS_Label;
    TS_Label20: TTS_Label;
    TS_Label21: TTS_Label;
    TS_Label3: TTS_Label;
    dfRua: TTS_DBEdit;
    dfCidade: TTS_DBEdit;
    dfFax: TTS_DBEdit;
    dfFone: TTS_DBEdit;
    DF_Foto: TdxGraphicEdit;
    pdFoto: TOpenPictureDialog;
    pnEnderecos: TTS_Panel;
    TS_Shape2: TTS_Shape;
    TS_Shape1: TTS_Shape;
    TS_Label7: TTS_Label;
    pnNome: TTS_Panel;
    dfNome: TTS_DBEdit;
    TS_Label1: TTS_Label;
    dfEstado: TTS_DBLookupComboBox;
    dfCep: TTS_DBMaskEdit;
    TS_Label27: TTS_Label;
    dfBairro: TTS_DBEdit;
    TS_Label28: TTS_Label;
    dfNumero: TTS_DBMaskEdit;
    TS_Label32: TTS_Label;
    dfComplemento: TTS_DBMaskEdit;
    dfCNPJ: TTS_DBMaskEdit;
    TS_Label23: TTS_Label;
    TS_Label11: TTS_Label;
    dfInscricao: TTS_DBMaskEdit;
    TS_Label4: TTS_Label;
    dfRazao: TTS_DBEdit;
    TS_Label6: TTS_Label;
    TS_DBMaskEdit1: TTS_DBMaskEdit;
    TS_PageControl1: TTS_PageControl;
    tsDiversos: TTS_TabSheet;
    tsContador: TTS_TabSheet;
    tsPagina3: TTS_TabSheet;
    TS_Label31: TTS_Label;
    TS_Label5: TTS_Label;
    TS_DBEditDate1: TTS_DBEditDate;
    TS_DBCheckBox1: TTS_DBCheckBox;
    edTipoEmpresa: TTS_DBImageEdit;
    TS_Label10: TTS_Label;
    dfNomeContador: TTS_DBEdit;
    dfCPFCNPJContador: TTS_DBMaskEdit;
    TS_Label12: TTS_Label;
    TS_Label13: TTS_Label;
    TS_DBEdit2: TTS_DBEdit;
    TS_Label14: TTS_Label;
    TS_DBEdit3: TTS_DBEdit;
    TS_Label15: TTS_Label;
    TS_DBEdit4: TTS_DBEdit;
    TS_Label2: TTS_Label;
    dfNomeResponsavel: TTS_DBEdit;
    dfCPFResponsavel: TTS_DBMaskEdit;
    TS_Label16: TTS_Label;
    TS_Label25: TTS_Label;
    TS_Label26: TTS_Label;
    TS_DBEdit9: TTS_DBEdit;
    TS_Label29: TTS_Label;
    TS_DBEdit10: TTS_DBEdit;
    TS_Label30: TTS_Label;
    TS_DBMaskEdit4: TTS_DBMaskEdit;
    TS_Label33: TTS_Label;
    TS_DBEdit11: TTS_DBEdit;
    TS_DBEdit6: TTS_DBEdit;
    TS_Label22: TTS_Label;
    TS_DBButtonEdit1: TTS_DBButtonEdit;
    TS_Label24: TTS_Label;
    TS_Label34: TTS_Label;
    TS_Label35: TTS_Label;
    TS_Label36: TTS_Label;
    dfRevenda: TTS_DBEdit;
    TS_DBMaskEdit2: TTS_DBMaskEdit;
    TS_Label8: TTS_Label;
    TS_Label9: TTS_Label;
    dfEmail: TTS_DBButtonEdit;
    dfSite: TTS_DBButtonEdit;
    TS_Label37: TTS_Label;
    dfInscricaoEstSub: TTS_DBMaskEdit;
    TS_Label39: TTS_Label;
    lcbMunicipio: TTS_DBLookupComboBox;
    TS_Label38: TTS_Label;
    lcbCNES: TTS_DBLookupComboBox;
    cmbMunicipios: TTS_DBLookupComboBox;
    TS_Label40: TTS_Label;
    TS_Label41: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    lblAliquotaCredito: TTS_Label;
    dfAliquotaCredito: TTS_DBMaskEdit;
    btComando3: TTS_SpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CarregarFotoClick(Sender: TObject);
    procedure LimparFoto1Click(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dfEmailButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure dfSiteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure TranLogotipoAfterTransition(Sender: TObject);
    procedure dfCNPJExit(Sender: TObject);
    procedure dfCNPJEnter(Sender: TObject);
    procedure FormComponentAfterFormShow(Sender: TObject);
    procedure FormComponentBeforeSave(Sender: TObject; var bSkip: Boolean);
    procedure dfCPFResponsavelExit(Sender: TObject);
    procedure dfCPFResponsavelEnter(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure dfRevendaExit(Sender: TObject);
    procedure dfEstadoChange(Sender: TObject);
    procedure btComando3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpresa: TFrmEmpresa;

implementation
uses DM_Empresa,DM_Projeto,funcoes, Form_Padrao, Md5;

{$R *.DFM}

procedure TFrmEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmEmpresa := nil;
end;

procedure TFrmEmpresa.CarregarFotoClick(Sender: TObject);
begin
  inherited;
  if pdFoto.Execute then
    with DMEmpresa do begin
       if not(C_Tabela.State in [dsEdit,dsInsert]) then
      	C_Tabela.Edit;
       C_TabelaLogotipo.Value := DMProjeto.AddFotoServidor( pdFoto.FileName );
       if FileExists(DMProjeto.ImgPath + C_TabelaLogotipo.Value) then begin
         DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaLogotipo.Value);
          if DF_Foto.Picture.Height > 90 then begin
            ShowMessage('ATENÇÃO: A altura do logotipo excede 90 pixels.'#13+
                        'O Cabeçalho dos relatórios não serão impressos corretamente.');
          end;
       end;
    end;
end;

procedure TFrmEmpresa.LimparFoto1Click(Sender: TObject);
begin
  inherited;
  with DMEmpresa do begin
    if not(C_Tabela.State in [dsEdit,dsInsert]) then C_Tabela.Edit;
    C_TabelaLogotipo.Value := '';
    DMProjeto.sLogotipoEmpresa := '';
    DF_Foto.ClearPicture;
  end;
end;

procedure TFrmEmpresa.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  if FileExists(DMProjeto.ImgPath+DMEmpresa.C_TabelaLogotipo.Value) then
     DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath+DMEmpresa.C_TabelaLogotipo.Value)
  else
     DF_Foto.ClearPicture;
	lbEstadoForm.caption := 'Cadastro da sua Empresa';

end;

procedure TFrmEmpresa.btGravarClick(Sender: TObject);
var slProgramAls: TStringList;
Begin
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'A' ) then
     exit;
  inherited;
  slProgramAls := TStringList.Create;
  with slProgramAls do begin
    if fileexists(ExtractFilePath(Application.ExeName)+'Program.Als') then begin
      LoadFromFile(ExtractFilePath(Application.ExeName)+'Program.Als');
      slProgramAls[DMProjeto.IndiceAlias] := SeparaStrings(slProgramAls[DMProjeto.IndiceAlias],';',1)+';'+dfNome.Text+';*';
      SaveToFile(ExtractFilePath(Application.ExeName)+'Program.Als');
      Free;
    end;
  end;
  DMEmpresa.GerarRegistro;
  Close;
end;

procedure TFrmEmpresa.dfEmailButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if DFEmail.Text<>'' then
     SendMail('','','','','',DFNome.Text,DFEmail.Text);
end;

procedure TFrmEmpresa.dfSiteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if dfSite.Text<>'' then
    ShellExecute(Application.Handle, nil, PChar(dfSite.Text), nil, nil, SW_SHOWNORMAL);
end;

procedure TFrmEmpresa.TranLogotipoAfterTransition(Sender: TObject);
begin
  inherited;
  dfNome.SelectAll;
  dfNome.SetFocus;
end;

procedure TFrmEmpresa.dfCNPJExit(Sender: TObject);
begin
  inherited;
  try
    Funcoes.CPF_CGCValido(AllTrim(TTS_DBMaskEdit(Sender).Text));
  Except
    on E: Exception do Begin
      DlgMsg.ShowMsg(50,[pChar('CPF/CNPJ inválido!')]);
      TTS_DBMaskEdit(Sender).SetFocus;
    End;
 End;
 if length(AllTrim(TTS_DBMaskEdit(Sender).Text)) = 11 then
    DMEmpresa.C_TabelaCPF_CNPJ.EditMask := '999.999.999-99;0; '
  else if length(TTS_DBMaskEdit(Sender).Text) = 14 then
    DMEmpresa.C_TabelaCPF_CNPJ.EditMask := '99.999.999/9999-99;0; ';
end;

procedure TFrmEmpresa.dfCNPJEnter(Sender: TObject);
begin
  inherited;
  DMEmpresa.C_EmpresasCPF_CNPJ_Contador.EditMask := '';
end;

procedure TFrmEmpresa.FormComponentAfterFormShow(Sender: TObject);
begin
  inherited;
  if DMEmpresa.C_Empresas.Active and (DMEmpresa.C_EmpresasFavorecido.value = 0) then
    DMEmpresa.C_Empresas.append;
end;

procedure TFrmEmpresa.FormComponentBeforeSave(Sender: TObject;
  var bSkip: Boolean);
Var sDados : TStringList;
    sDataExpira, sHoraExpira, sPlacarede, sCnpj, sRazao: String;
begin
  inherited;
  DMProjeto.DadosEmpresa;
end;

procedure TFrmEmpresa.dfCPFResponsavelExit(Sender: TObject);
begin
  inherited;
 if length(TTS_DBMaskEdit(Sender).Text) = 11 then
    DMEmpresa.C_EmpresasCPF_CNPJ_Contador.EditMask := '999.999.999-99;0; '
  else if length(TTS_DBMaskEdit(Sender).Text) = 14 then
    DMEmpresa.C_EmpresasCPF_CNPJ_Contador.EditMask := '99.999.999/9999-99;0; ';
end;

procedure TFrmEmpresa.dfCPFResponsavelEnter(Sender: TObject);
begin
  inherited;
  DMEmpresa.C_EmpresasCPF_CNPJ_Contador.EditMask := '';
end;

procedure TFrmEmpresa.btComando1Click(Sender: TObject);
begin
  inherited;
  DMEmpresa.imprimir;
end;

procedure TFrmEmpresa.btComando2Click(Sender: TObject);
begin
  inherited;
  DMEmpresa.GerarRegistro;
end;

procedure TFrmEmpresa.dfRevendaExit(Sender: TObject);
begin
  inherited;
  dfRevenda.Text := Copy('0000',1,4-Length(Alltrim(dfRevenda.Text)))+Alltrim(dfRevenda.Text);
end;

procedure TFrmEmpresa.dfEstadoChange(Sender: TObject);
begin
  inherited;
//  DMEmpresa.C_Municipios.Open;
end;

procedure TFrmEmpresa.btComando3Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmFlexdocs', self, true);
end;

end.

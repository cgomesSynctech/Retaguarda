unit Frm_LocalDeposito;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, StdCtrls, DBCtrls, TS_DBCheckBox, TS_DBLookupComboBox,
  TS_GroupBox, Mask, TS_DBEdit, TS_Label, FormComponent, ImgList, DlgMsg,
  Menus, TS_PopupMenu, TS_ScrollBox, ComCtrls, Buttons, TS_BitBtn,
  TS_SpeedButton, ExtCtrls, TS_PageControl, TS_DBText, TS_DBMemo, TS_Bevel,
  TS_LastDataObject, CheckLst, TS_CheckListBox, TS_DBEditFavorecido,
  TS_DBLookupTipoFav, dxExEdtr, dxEdLib, dxDBELib, TS_DBButtonEdit,
  dxEditor, dxDBEdtr, dxCntner, TS_Image, dxfLabel, TS_MaxPanel,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, dxTLClms, dxDBTLCl, dxGrClms, TS_ButtonEdit, shellapi, db,
  Placemnt, BTOdeum, dxfProgressBar;
 
type
  TFrmLocalDeposito = class(TFrmPadrao)
    pcAbas: TTS_PageControl;
    tsEndereco: TTS_TabSheet;
    TS_Label1: TTS_Label;
    TS_Label25: TTS_Label;
    TS_Label24: TTS_Label;
    TS_Label10: TTS_Label;
    TS_Label19: TTS_Label;
    DF_DataCad: TTS_DBText;
    DF_SSN: TTS_DBEdit;
    DF_Nome: TTS_DBEdit;
    DF_EIN: TTS_DBEdit;
    Panel2: TPanel;
    TS_Label2: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label13: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label12: TTS_Label;
    TS_Label11: TTS_Label;
    DF_Endereco: TTS_DBEdit;
    DF_Cidade: TTS_DBEdit;
    DF_CaixaPostal: TTS_DBEdit;
    DF_Fone1: TTS_DBEdit;
    DF_Contato: TTS_DBEdit;
    DF_UF: TTS_DBLookupComboBox;
    DF_CEP: TTS_DBEdit;
    DF_Fone2: TTS_DBEdit;
    DF_Pais: TTS_DBLookupComboBox;
    DF_Celular: TTS_DBEdit;
    TS_Label15: TTS_Label;
    DF_OBS: TTS_DBMemo;
    TS_DBLookupTipoFav: TTS_DBLookupTipoFav;
    GridFAVORECIDO: TdxDBGridMaskColumn;
    GridCODIGO: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridENDERECO: TdxDBGridMaskColumn;
    GridCIDADE: TdxDBGridMaskColumn;
    GridUF: TdxDBGridMaskColumn;
    GridCEP: TdxDBGridMaskColumn;
    GridCAIXAPOSTAL: TdxDBGridMaskColumn;
    GridPAIS: TdxDBGridMaskColumn;
    GridFONE1: TdxDBGridMaskColumn;
    GridFONE2: TdxDBGridMaskColumn;
    GridFAX: TdxDBGridMaskColumn;
    GridCELULAR: TdxDBGridMaskColumn;
    GridCONTATO: TdxDBGridMaskColumn;
    GridEMAIL: TdxDBGridMaskColumn;
    GridTAX: TdxDBGridMaskColumn;
    GridEIN: TdxDBGridMaskColumn;
    GridSSN: TdxDBGridMaskColumn;
    GridlkUF: TdxDBGridLookupColumn;
    GridlkPais: TdxDBGridLookupColumn;
    GridNOME_CLIENTE: TdxDBGridMaskColumn;
    TS_DBEditFavReceptor: TTS_DBEditFavorecido;
    DF_Codigo: TTS_DBButtonEdit;
    tsPagina2: TTS_TabSheet;
    TS_QDBGridDep: TTS_QDBGrid;
    TS_QDBGridDepRECEPTORDEPOSITO: TdxDBGridMaskColumn;
    TS_QDBGridDepRECEPTOR: TdxDBGridMaskColumn;
    TS_QDBGridDepDESCRICAO: TdxDBGridMaskColumn;
    TS_QDBGridDepCONTA: TdxDBGridMaskColumn;
    TS_QDBGridDepAGENCIA: TdxDBGridMaskColumn;
    TS_QDBGridDepBANCO: TdxDBGridMaskColumn;
    TS_QDBGridDepOBS: TdxDBGridMaskColumn;
    TS_QDBGridDepcbBanco: TdxDBGridLookupColumn;
    TS_Label9: TTS_Label;
    DF_Email: TTS_DBButtonEdit;
    TS_Label14: TTS_Label;
    DF_Site: TTS_DBButtonEdit;
    ppmContas: TTS_PopupMenu;
    Indexadores1: TMenuItem;
    TS_Label16: TTS_Label;
    TS_QDBGridDepColumn10: TdxDBGridCheckColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DF_CodigoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDepNovoClick(Sender: TObject);
    procedure dxDepRemoverClick(Sender: TObject);
    procedure DF_EmailButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
    procedure DF_SiteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
    procedure Apagar1Click(Sender: TObject);
    procedure Indexadores1Click(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure TS_QDBGridDepColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure FormComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
  private
    nCliente: integer;
  public
    { Public declarations }
  end;

var
  FrmLocalDeposito: TFrmLocalDeposito;

implementation

uses DM_Projeto, DM_LocalDeposito, funcoes;

{$R *.DFM}

procedure TFrmLocalDeposito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmLocalDeposito := nil;
end;

procedure TFrmLocalDeposito.FormCreate(Sender: TObject);
begin
  inherited;
  FrmLocalDeposito := Self;
end;

procedure TFrmLocalDeposito.DF_CodigoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  DMLocalDeposito.GeraCodigo;
end;

procedure TFrmLocalDeposito.dxDepNovoClick(Sender: TObject);
begin
  inherited;
  DMLocalDeposito.C_Deposito.Append;
end;

procedure TFrmLocalDeposito.dxDepRemoverClick(Sender: TObject);
begin
  inherited;
  if not DMLocalDeposito.C_Deposito.IsEmpty then begin
    DMLocalDeposito.C_Deposito.Delete;
  end;
end;

procedure TFrmLocalDeposito.DF_EmailButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if DF_Email.Text<>'' then SendMail('','','','','',DF_Nome.Text,DF_Email.Text);
end;

procedure TFrmLocalDeposito.DF_SiteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if DF_Site.Text<>'' then
    ShellExecute(Application.Handle, nil, PChar(DF_Site.Text), nil, nil, SW_SHOWNORMAL);
end;
procedure TFrmLocalDeposito.Apagar1Click(Sender: TObject);
begin
  inherited;
  if not DmLocalDeposito.C_Deposito.IsEmpty then begin
    DmLocalDeposito.C_Deposito.Delete;
  end;
end;

procedure TFrmLocalDeposito.Indexadores1Click(Sender: TObject);
begin
  inherited;
  if DmLocalDeposito.C_Deposito.State = dsInactive then begin
    DmLocalDeposito.C_Deposito.Open;
  end;
  if DmLocalDeposito.C_Deposito.State = dsBrowse then begin
    DmLocalDeposito.C_Deposito.Append;
  end;
end;

procedure TFrmLocalDeposito.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.QtdParametrosForm > 1 then begin
    DMLocalDeposito.C_Tabela.edit;
    DMLocalDeposito.C_TabelaVendedor.value := DMProjeto.GetParametrosForm(1);
    TS_DBEditFavReceptor.ID := DMLocalDeposito.C_TabelaVendedor.value;
  end;

end;

procedure TFrmLocalDeposito.TS_QDBGridDepColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
  if Column.FieldName = 'cbBanco' then begin
    DMProjeto.CriarForm('FrmBancos',self,true);
    DMLocalDeposito.C_Bancos.close;
    DMLocalDeposito.C_Bancos.open;
  end;
	Allow := false;
end;

procedure TFrmLocalDeposito.FormComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
  Where := lowercase(Where);

  if pos('favorecido', Where) > 0 then
    Where := replace(Where, 'favorecido', 'f.favorecido');

end;

end.

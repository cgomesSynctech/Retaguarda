unit Frm_Medicos;

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
  dxfProgressBar, TS_DBButtonEdit, TS_DBMaskEdit, dxDBEdtr,
  TS_DBLookupComboBox, variants, dxDBTLCl, dxGrClms;

type
  TFrmMedicos = class(TFrmPadrao)
    Label1: TTS_Label;
    dfCPFCNPJ: TTS_DBEdit;
    Label2: TTS_Label;
    dfNome: TTS_DBEdit;
    GridNome: TdxDBGridColumn;
    GridCodigo: TdxDBGridColumn;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label13: TTS_Label;
    TS_Label11: TTS_Label;
    TS_Label28: TTS_Label;
    DF_Endereco: TTS_DBEdit;
    DF_Cidade: TTS_DBEdit;
    DF_Fone1: TTS_DBEdit;
    DF_UF: TTS_DBLookupComboBox;
    DF_CEP: TTS_DBMaskEdit;
    DF_Fone2: TTS_DBEdit;
    DF_Celular: TTS_DBEdit;
    TS_DBEdit1: TTS_DBEdit;
    TS_Label9: TTS_Label;
    DF_Email: TTS_DBButtonEdit;
    TS_Label30: TTS_Label;
    dfFax: TTS_DBEdit;
    TS_Label19: TTS_Label;
    DF_Codigo: TTS_DBButtonEdit;
    TS_Label16: TTS_Label;
    DF_TipoAtividade: TTS_DBLookupComboBox;
    GridCRM: TdxDBGridColumn;
    GridFAVORECIDO: TdxDBGridMaskColumn;
    GridTIPOFAVORECIDO: TdxDBGridMaskColumn;
    GridDESATIVADO: TdxDBGridMaskColumn;
    GridENDERECO: TdxDBGridMaskColumn;
    GridBAIRRO: TdxDBGridMaskColumn;
    GridCIDADE: TdxDBGridMaskColumn;
    GridUF: TdxDBGridMaskColumn;
    GridCEP: TdxDBGridMaskColumn;
    GridFONE1: TdxDBGridMaskColumn;
    GridFONE2: TdxDBGridMaskColumn;
    GridFAX: TdxDBGridMaskColumn;
    GridCELULAR: TdxDBGridMaskColumn;
    GridEMAIL: TdxDBGridMaskColumn;
    GridlkUF: TdxDBGridLookupColumn;
    GridTIPOATIVIDADE: TdxDBGridMaskColumn;
    GridlkTipoAtividade: TdxDBGridLookupColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure dfNomeExit(Sender: TObject);
    procedure DF_CodigoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TS_Label16SetParametrosForm(Sender: TObject);
    procedure dfCPFCNPJExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMedicos: TFrmMedicos;

implementation

uses DM_Medicos, DM_Projeto;

{$R *.DFM}

procedure TFrmMedicos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmMedicos := nil;
end;

procedure TFrmMedicos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [',','.'] then
    key := DecimalSeparator;
end;

procedure TFrmMedicos.dfNomeExit(Sender: TObject);
begin
  inherited;
  if DMProjeto.VerificaExistenciaFav(7,DMMedicos.C_TabelaFavorecido.value,'N',DMMedicos.C_TabelaNOME.value) then begin
    DlgMsg.ShowMsg(5001,['Médico']);
  end;
end;

procedure TFrmMedicos.DF_CodigoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  DMMedicos.GeraCodigo;
  ActiveControl := dfNome;
end;

procedure TFrmMedicos.TS_Label16SetParametrosForm(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([null,7]); // tipofavorecido
end;

procedure TFrmMedicos.dfCPFCNPJExit(Sender: TObject);
begin
  inherited;
  if length(TTS_DBEdit(Sender).Text) = 11 then
    DMMedicos.C_TabelaCPF_CNPJ.EditMask := '999.999.999-99;0; ';
end;

end.

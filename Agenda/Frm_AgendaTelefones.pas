unit Frm_AgendaTelefones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus,
  ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, Mask, DBCtrls, TS_DBEdit,
  TS_Label, TS_DBLookupComboBox, TS_LastDataObject, TS_Bevel,
  TS_MaxPanel, dxCntner, dxEditor, dxEdLib, dxDBELib, TS_Image,
  dxfLabel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, CheckLst,
  TS_CheckListBox, Animate, GIFCtrl, teCtrls, TS_EffectsPanel,
  dxTLClms, TS_DBMaskEdit, dxExEdtr, TS_DBButtonEdit,
  TS_PopupMenu, dxDBTLCl, dxGrClms, Tabs, TS_DBSpinEdit, TS_DBImageEdit,
  dxDBEdtr, Placemnt, BTOdeum, dxfProgressBar;

type
  TFrmAgendaTelefones = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    DF_Nome: TTS_DBEdit;
    DF_Fone1: TTS_DBEdit;
    DF_Fone3: TTS_DBEdit;
    DF_Fone2: TTS_DBEdit;
    DF_Endereco: TTS_DBEdit;
    DF_Cidade: TTS_DBEdit;
    DF_Email: TTS_DBButtonEdit;
    DF_UF: TTS_DBLookupComboBox;
    DF_Site: TTS_DBButtonEdit;
    DF_CEP: TTS_DBMaskEdit;
    TS_Label4: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label14: TTS_Label;
    TS_Label9: TTS_Label;
    GridAGENDATELEFONE: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridTELEFONE1: TdxDBGridMaskColumn;
    GridTELEFONE2: TdxDBGridMaskColumn;
    GridTELEFONE3: TdxDBGridMaskColumn;
    GridEMAIL: TdxDBGridMaskColumn;
    GridSITE: TdxDBGridMaskColumn;
    GridENDERECO: TdxDBGridMaskColumn;
    GridCIDADE: TdxDBGridMaskColumn;
    GridCEP: TdxDBGridMaskColumn;
    GridlkUF: TdxDBGridLookupColumn;
    TabSheet: TTabSet;
    TS_Label10: TTS_Label;
    DF_Mes: TTS_DBImageEdit;
    DF_Dia: TTS_DBSpinEdit;
    GridDia_Nasc: TdxDBGridColumn;
    GridMes_Nasc: TdxDBGridImageColumn;
    TS_Label11: TTS_Label;
    TS_Label12: TTS_Label;
    dfEmpresa: TTS_DBEdit;
    dfCargo: TTS_DBEdit;
    procedure DF_EmailButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
    procedure DF_SiteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
    procedure TabSheetClick(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgendaTelefones: TFrmAgendaTelefones;

implementation

uses DM_AgendaTelefones, DM_Projeto, funcoes, ShellAPI;

{$R *.DFM}

procedure TFrmAgendaTelefones.DF_EmailButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if DF_Email.Text<>'' then SendMail('','','','','',DF_Nome.Text,DF_Email.Text);
end;

procedure TFrmAgendaTelefones.DF_SiteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if DF_Site.Text<>'' then
    ShellExecute(Application.Handle, nil, PChar(DF_Site.Text), nil, nil, SW_SHOWNORMAL);
end;

procedure TFrmAgendaTelefones.TabSheetClick(Sender: TObject);
begin
  inherited;
  if TabSheet.TabIndex < 26 then
		Localizar('',' where nome like '''+TabSheet.Tabs[TabSheet.TabIndex]+'%'' order by nome')
  else
		Localizar('',' where mes_nasc = '+formatdatetime('m',Date)+' order by mes_nasc, dia_nasc');
end;

procedure TFrmAgendaTelefones.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	TabSheet.TabIndex := -1;
end;

end.

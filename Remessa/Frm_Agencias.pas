unit Frm_Agencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, dxExEdtr, dxEdLib, dxDBELib, TS_DBMemo, TS_DBButtonEdit,
  dxEditor, TS_DBLookupComboBox, dxCntner, TS_DBEdit, ComCtrls,
  TS_PageControl, DBCtrls, TS_DBText, dxDBTLCl, dxGrClms, dxDBCtrl,
  dxDBGrid, FormComponent, ImgList, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel,
  dxTLClms, dxTL, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, ShellAPI, TS_DBEditNumber, db, TS_DBEditDate,
  TS_DateTimePicker, dxDBEdtr, Variants;
 
type
  TFrmAgencias = class(TFrmPadrao)
    pcAbas: TTS_PageControl;
    tsEndereco: TTS_TabSheet;
    tsCaracteristicas: TTS_TabSheet;
    Panel1: TPanel;
    TS_Label15: TTS_Label;
    DF_OBS: TTS_DBMemo;
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
    DF_Celular: TTS_DBEdit;
    TS_Label16: TTS_Label;
    TS_DBEdTaxa: TTS_DBEditNumber;
    TS_Label17: TTS_Label;
    TS_DBEdPerc: TTS_DBEditNumber;
    DF_Email: TTS_DBButtonEdit;
    DF_Site: TTS_DBButtonEdit;
    TS_Label14: TTS_Label;
    TS_Label9: TTS_Label;
    GridFAVORECIDO: TdxDBGridMaskColumn;
    GridCODIGO: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridENDERECO: TdxDBGridMaskColumn;
    GridCIDADE: TdxDBGridMaskColumn;
    GridCEP: TdxDBGridMaskColumn;
    GridCAIXAPOSTAL: TdxDBGridMaskColumn;
    GridFONE1: TdxDBGridMaskColumn;
    GridFONE2: TdxDBGridMaskColumn;
    GridFAX: TdxDBGridMaskColumn;
    GridCELULAR: TdxDBGridMaskColumn;
    GridCONTATO: TdxDBGridMaskColumn;
    GridEMAIL: TdxDBGridMaskColumn;
    GridEIN: TdxDBGridMaskColumn;
    GridSSN: TdxDBGridMaskColumn;
    GridDATACADASTRO: TdxDBGridDateColumn;
    GridJUROSFACTORY: TdxDBGridMaskColumn;
    GridTAXASFACTORY: TdxDBGridMaskColumn;
    GridlkUF: TdxDBGridLookupColumn;
    GridlkPais: TdxDBGridLookupColumn;
    GridlkConta: TdxDBGridLookupColumn;
    DF_Codigo: TTS_DBButtonEdit;
    DF_Pais: TTS_DBLookupComboBox;
    TS_Label7: TTS_Label;
    tsPagina3: TTS_TabSheet;
    TS_QDBGridCambio: TTS_QDBGrid;
    TS_Label18: TTS_Label;
    ppmIndexadores: TTS_PopupMenu;
    Indexadores1: TMenuItem;
    Apagar1: TMenuItem;
    N4: TMenuItem;
    CadastrarIndexador1: TMenuItem;
    TS_QDBGridCambiocbIndexador: TdxDBGridLookupColumn;
    TS_QDBGridCambioINDEXADOR: TdxDBGridMaskColumn;
    TS_QDBGridCambioAGENCIA: TdxDBGridMaskColumn;
    TS_QDBGridCambioCAMBIO: TdxDBGridMaskColumn;
    TS_QDBGridCambioFAVORECIDO: TdxDBGridMaskColumn;
    TS_Label20: TTS_Label;
    edData: TTS_DateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DF_EmailButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
    procedure DF_SiteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
    procedure DF_CodigoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure TS_QDBGridCambioColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure Apagar1Click(Sender: TObject);
    procedure CadastrarIndexador1Click(Sender: TObject);
    procedure Indexadores1Click(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure edDataDateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgencias: TFrmAgencias;

implementation

uses DM_Projeto, DM_Agencias, funcoes;

{$R *.DFM}

procedure TFrmAgencias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmAgencias := nil;
end;

procedure TFrmAgencias.DF_EmailButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if DF_Email.Text<>'' then SendMail('','','','','',DF_Nome.Text,DF_Email.Text);
end;

procedure TFrmAgencias.DF_SiteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if DF_Site.Text<>'' then
    ShellExecute(Application.Handle, nil, PChar(DF_Site.Text), nil, nil, SW_SHOWNORMAL);
end;
procedure TFrmAgencias.DF_CodigoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  DMAgencias.GeraCodigo;
end;

procedure TFrmAgencias.FormCreate(Sender: TObject);
begin
  inherited;
  FrmAgencias := Self;
end;

procedure TFrmAgencias.TS_QDBGridCambioColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
  if LowerCase(Column.FieldName) = 'cbindexador' then begin
    DMProjeto.CriarForm('FrmIndexador',self,true);
    DMAgencias.C_Indexador.Close;
    DMAgencias.C_Indexador.Open;
  end;
	Allow := false;
end;

procedure TFrmAgencias.Apagar1Click(Sender: TObject);
begin
  inherited;
  if not DMAgencias.C_AgentesCambio.IsEmpty then begin
    DMAgencias.C_AgentesCambio.Delete;
  end;
end;

procedure TFrmAgencias.CadastrarIndexador1Click(Sender: TObject);
begin
  inherited;
  LastDataObject.ObjectKey := null;
  DmProjeto.SetParametrosForm([null]);
  DmProjeto.CriarForm('FrmIndexador', Self, True);
  DMAgencias.C_Indexador.Close;
  DMAgencias.C_Indexador.Open;
  if (LastDataObject.ObjectKey <> null)
    and (LastDataObject.ObjectKey > 0) then
    if not DMAgencias.C_AgentesCambio.Locate('INDEXADOR', LastDataObject.ObjectKey,[]) then begin
      if DMAgencias.C_AgentesCambio.State = dsBrowse then
         DMAgencias.C_AgentesCambio.Append;
      if DMAgencias.C_AgentesCambio.State in [dsInsert, dsEdit] then begin
        DMAgencias.C_AgentesCambio.FieldByName('INDEXADOR').AsInteger := LastDataObject.ObjectKey;
        TS_QDBGridCambio.TS_SelectedColumn := 'cbindexador';
      end;
    end;
end;

procedure TFrmAgencias.Indexadores1Click(Sender: TObject);
begin
  inherited;
  if DMAgencias.C_AgentesCambio.State = dsInactive then begin
    DMAgencias.C_AgentesCambio.Open;
  end;
  if DMAgencias.C_AgentesCambio.State = dsBrowse then begin
    DMAgencias.C_AgentesCambio.Append;
  end;
end;

procedure TFrmAgencias.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  DmAgencias.AtualizaCambio;
end;

procedure TFrmAgencias.edDataDateChange(Sender: TObject);
begin
  inherited;
  DmAgencias.AtualizaCambio;
end;

procedure TFrmAgencias.FormShow(Sender: TObject);
begin
  inherited;
  edData.Date := DmProjeto.dDataSistema;
end;

end.

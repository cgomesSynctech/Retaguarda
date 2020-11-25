unit Frm_AgenciasEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, StdCtrls, Mask, DBCtrls, FormComponent, ImgList, DlgMsg,
  Menus, TS_PopupMenu, TS_ScrollBox, ComCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, TS_DBEdit,
  TS_Label, TS_LastDataObject, CheckLst, TS_CheckListBox, TS_Bevel, dxCntner,
  dxEditor, dxEdLib, dxDBELib, TS_Image, dxfLabel, TS_MaxPanel, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl,
  dxGrClms, teCtrls, TS_EffectsPanel, dxTLClms, db, dxExEdtr,
  TS_DBEditNumber, TS_DBEditDate, TS_DateTimePicker, Variants;

type

  TFrmAgenciasEmpresa = class(TFrmPadrao)
    ts_lbDescricao: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_DBEdAgencia: TTS_DBEdit;
    TS_DBEdPerc: TTS_DBEditNumber;
    TS_DBEdTaxa: TTS_DBEditNumber;
    TS_Label2: TTS_Label;
    TS_QDBGridCambio: TTS_QDBGrid;
    TS_QDBGridCambioAGENCIA: TdxDBGridMaskColumn;
    TS_QDBGridCambioINDEXADOR: TdxDBGridMaskColumn;
    TS_QDBGridCambioCAMBIO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridTAXA: TdxDBGridMaskColumn;
    GridPERC: TdxDBGridMaskColumn;
    ppmIndexadores: TTS_PopupMenu;
    Indexadores1: TMenuItem;
    Apagar1: TMenuItem;
    N4: TMenuItem;
    CadastrarIndexador1: TMenuItem;
    TS_QDBGridCambiocbIndexador: TdxDBGridLookupColumn;
    TS_Label1: TTS_Label;
    edData: TTS_DateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure dxAddMoedaClick(Sender: TObject);
    procedure dxDELMoedaClick(Sender: TObject);
    procedure TS_QDBGridCambioKeyPress(Sender: TObject; var Key: Char);
    procedure Indexadores1Click(Sender: TObject);
    procedure Apagar1Click(Sender: TObject);
    procedure CadastrarIndexador1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edDataDateChange(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TS_QDBGridCambioColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgenciasEmpresa: TFrmAgenciasEmpresa;

implementation

uses DM_Projeto, Dm_AgenciasEmpresa;

{$R *.DFM}

procedure TFrmAgenciasEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  FrmAgenciasEmpresa := Self;  
{  if DMProjeto.GetParametrosForm(0) <> -1 then begin
     if  Localizar('SELECT * FROM '+DMJanela.DMComponent.Tabela_Nome,
        ' WHERE '+ DMJanela.DMComponent.Tabela_Chave + '='
        + IntToStr(DMProjeto.GetParametrosForm(0))) > 0 then begin
        if DMProjeto.GetParametrosForm(1) <> -1 then begin
           DMAgenciasEmpresa.C_AgentesCambio.Insert;
           DMAgenciasEmpresa.C_AgentesCambio.FieldByName('Indexador').AsFloat := DMProjeto.GetParametrosForm(1);
           DMProjeto.LimparParametrosForm;
        end;
     end;
  end;}
end;

procedure TFrmAgenciasEmpresa.Novo1Click(Sender: TObject);
begin
  inherited;
  DMAgenciasEmpresa.C_AgentesCambio.Append;
  TS_QDBGridCambio.TS_SelectedColumn := 'cbIndexador';
  TS_QDBGridCambio.SetFocus;
end;

procedure TFrmAgenciasEmpresa.dxAddMoedaClick(Sender: TObject);
begin
  inherited;
  DMAgenciasEmpresa.C_AgentesCambio.Append;
  TS_QDBGridCambio.TS_SelectedColumn := 'cbIndexador';
  TS_QDBGridCambio.SetFocus;
end;

procedure TFrmAgenciasEmpresa.dxDELMoedaClick(Sender: TObject);
begin
  inherited;
  if DMAgenciasEmpresa.C_AgentesCambio.RecordCount > 0 then
    if DlgMsg.ShowMsg(3010) = 100 then begin
       DMAgenciasEmpresa.C_AgentesCambio.Delete;
    end;
end;

procedure TFrmAgenciasEmpresa.TS_QDBGridCambioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = '-' then
    key := #0;
end;

procedure TFrmAgenciasEmpresa.Indexadores1Click(Sender: TObject);
begin
  inherited;
  if DMAgenciasEmpresa.C_AgentesCambio.State = dsInactive then begin
    DMAgenciasEmpresa.C_AgentesCambio.Open;
  end;
  if DMAgenciasEmpresa.C_AgentesCambio.State = dsBrowse then begin
    DMAgenciasEmpresa.C_AgentesCambio.Append;
  end;
end;

procedure TFrmAgenciasEmpresa.Apagar1Click(Sender: TObject);
begin
  inherited;
  if not DMAgenciasEmpresa.C_AgentesCambio.IsEmpty then begin
    DMAgenciasEmpresa.C_AgentesCambio.Delete;
  end;
end;

procedure TFrmAgenciasEmpresa.CadastrarIndexador1Click(Sender: TObject);
begin
  inherited;
  LastDataObject.ObjectKey := null;
  DmProjeto.SetParametrosForm([null]);
  DmProjeto.CriarForm('FrmIndexador', Self, True);
  DMAgenciasEmpresa.Q_Indexador.Close;
  DMAgenciasEmpresa.Q_Indexador.Open;
  if (LastDataObject.ObjectKey <> null)
    and (LastDataObject.ObjectKey > 0) then
    if not DMAgenciasEmpresa.C_AgentesCambio.Locate('INDEXADOR', LastDataObject.ObjectKey,[]) then begin
      if DMAgenciasEmpresa.C_AgentesCambio.State = dsBrowse then
         DMAgenciasEmpresa.C_AgentesCambio.Append;
      if DMAgenciasEmpresa.C_AgentesCambio.State in [dsInsert, dsEdit] then begin
        DMAgenciasEmpresa.C_AgentesCambio.FieldByName('INDEXADOR').AsInteger := LastDataObject.ObjectKey;
        TS_QDBGridCambio.TS_SelectedColumn := 'cbindexador';
      end;
    end;
end;

procedure TFrmAgenciasEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  edData.Date := DmProjeto.dDataSistema;
  DmAgenciasEmpresa.FiltraDataCambio;
end;

procedure TFrmAgenciasEmpresa.edDataDateChange(Sender: TObject);
begin
  inherited;
  DmAgenciasEmpresa.FiltraDataCambio;
end;

procedure TFrmAgenciasEmpresa.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  DmAgenciasEmpresa.FiltraDataCambio;
end;

procedure TFrmAgenciasEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmAgenciasEmpresa := nil;
end;

procedure TFrmAgenciasEmpresa.TS_QDBGridCambioColumnSorting(
  Sender: TObject; Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
  if LowerCase(Column.FieldName) = 'cbindexador' then begin
    DMProjeto.CriarForm('FrmIndexador',self,true);
    DMAgenciasEmpresa.Q_Indexador.Close;
    DMAgenciasEmpresa.Q_Indexador.Open;
  end;
	Allow := false;
end;

end.

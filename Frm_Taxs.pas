unit Frm_Taxs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, Buttons,
  TS_SpeedButton, ExtCtrls, StdCtrls, TS_BitBtn, Mask, DBCtrls,
  TS_DBEdit, TS_Label, TS_LastDataObject, 
  TS_Bevel, TS_MaxPanel, CheckLst, TS_CheckListBox, dxCntner, dxEditor,
  dxEdLib, dxDBELib, TS_Image, dxfLabel, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, dxDBTLCl, dxGrClms, teCtrls,
  TS_EffectsPanel, dxTLClms, dxExEdtr, BTOdeum;

type
  TFrmTaxs = class(TFrmPadrao)
    TS_DBEdit1: TTS_DBEdit;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_DBEdit2: TTS_DBEdit;
    TS_Label3: TTS_Label;
    TS_QDBGrid1: TTS_QDBGrid;
    TS_QDBGrid1TAXITEM: TdxDBGridMaskColumn;
    TS_QDBGrid1TAX: TdxDBGridMaskColumn;
    TS_QDBGrid1TAXAGENCIA: TdxDBGridMaskColumn;
    TS_QDBGrid1DescTaxAgencia: TdxDBGridLookupColumn;
    Grid_icSelecionado: TdxDBGridColumn;
    GridTAX: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridQ_TaxItens: TdxDBGridColumn;
    GridPERCENTUAL: TdxDBGridMaskColumn;
    TS_QDBGrid1PERCENTUAL: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TS_Label3Click(Sender: TObject);
    procedure TS_QDBGrid1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTaxs: TFrmTaxs;

implementation

uses DM_Taxs, DM_Projeto;

{$R *.DFM}

procedure TFrmTaxs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FrmTaxs := nil;
end;

procedure TFrmTaxs.TS_Label3Click(Sender: TObject);
begin
  inherited;
  DMTaxs.C_TaxAgencias.close;
  DMTaxs.C_TaxAgencias.open;
end;

procedure TFrmTaxs.TS_QDBGrid1Enter(Sender: TObject);
begin
  inherited;
  DMTaxs.C_TaxItens.append;
end;

end.

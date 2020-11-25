unit Frm_InventarioEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib,
  TS_DBEditNumber, TS_DBEditDate, dxEditor, TS_DBButtonEdit, TS_DBEditItem,
  TS_DBEdit, dxDBTLCl, dxGrClms;

type
  TFrmInventarioEstoque = class(TFrmPadrao)
    dfItem: TTS_DBEditItem;
    TS_Label3: TTS_Label;
    TS_Label2: TTS_Label;
    TS_DBEditDate1: TTS_DBEditDate;
    TS_Label4: TTS_Label;
    dfQuantidade: TTS_DBEditNumber;
    lblNovaQtde: TTS_Label;
    dfNovaQuantidade: TTS_DBEditNumber;
    TS_DBEditNumber1: TTS_DBEditNumber;
    TS_DBEditNumber2: TTS_DBEditNumber;
    TS_DBEditNumber3: TTS_DBEditNumber;
    TS_Label1: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    Grid_icSelecionado: TdxDBGridColumn;
    GridDATA: TdxDBGridDateColumn;
    GridESTOQUEANTERIOR: TdxDBGridCurrencyColumn;
    GridENTRADAS: TdxDBGridCurrencyColumn;
    GridSAIDAS: TdxDBGridCurrencyColumn;
    GridESTOQUE: TdxDBGridCurrencyColumn;
    GridCUSTOMEDIO: TdxDBGridCurrencyColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridCODIGO: TdxDBGridMaskColumn;
    GridITEM: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInventarioEstoque: TFrmInventarioEstoque;

implementation

uses DM_Projeto, dm_InventarioEstoque;

{$R *.dfm}

end.

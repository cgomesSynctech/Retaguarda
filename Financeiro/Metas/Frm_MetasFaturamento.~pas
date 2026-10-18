unit Frm_MetasFaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, dxEdLib, dxDBELib, TS_DBEditNumber,
  dxCntner, dxEditor, TS_DBEditDate, Placemnt, BTOdeum, FormComponent,
  ImgList, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls,
  TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxTLClms, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, TS_DBSpinEdit, dxfProgressBar, dxDBTLCl,
  dxGrClms, TS_Shape, DB;

type
  TFrmMetasFaturamento = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_DBEditDate1: TTS_DBEditDate;
    dfQuantidade: TTS_DBEditNumber;
    TS_DBEditDate2: TTS_DBEditDate;
    GridColumn1: TdxDBGridColumn;
    GridColumn2: TdxDBGridColumn;
    GridColumn3: TdxDBGridColumn;
    odososRegistros1: TMenuItem;
    TS_Shape9: TTS_Shape;
    TS_Shape11: TTS_Shape;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_DBEditNumber1: TTS_DBEditNumber;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Label4: TTS_Label;
    dbgFunc: TTS_QDBGrid;
    dbgFuncMETADETALHE: TdxDBGridMaskColumn;
    dbgFuncVENDEDOR: TdxDBGridMaskColumn;
    dbgFuncID: TdxDBGridMaskColumn;
    dbgFuncMETAPERIODO: TdxDBGridCurrencyColumn;
    dbgFuncMETADIARIA: TdxDBGridCurrencyColumn;
    dbgFuncNOME: TdxDBGridButtonColumn;
    ppmGridFunc: TTS_PopupMenu;
    procedure odososRegistros1Click(Sender: TObject);
    procedure dbgFuncNOMEButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMetasFaturamento: TFrmMetasFaturamento;

implementation
uses DM_Projeto, DM_MetasFaturamento;
{$R *.dfm}

procedure TFrmMetasFaturamento.odososRegistros1Click(Sender: TObject);
begin
  inherited;
  Localizar('','');  
end;

procedure TFrmMetasFaturamento.dbgFuncNOMEButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if AbsoluteIndex = 1 then begin
    DMProjeto.SetParametrosForm([DMMetasFaturamento.C_DetalheVENDEDOR.asVariant]);
    DMProjeto.CriarForm('FrmFuncionarios', Self, True );
    if not (DMMetasFaturamento.C_Detalhe.State in [dsInsert,dsEdit]) then DMMetasFaturamento.C_Detalhe.Edit;
    dbgFunc.TS_ID := LastDataObject.ObjectKey;
  end;
end;

end.

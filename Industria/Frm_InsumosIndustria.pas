unit Frm_InsumosIndustria;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, dxExEdtr, dxEdLib, dxDBELib, TS_DBMemo,
    TS_DBEditNumber, dxDBEdtr, TS_DBLookupComboBox, TS_DBEdit, dxCntner,
    dxEditor, TS_DBButtonEdit, Placemnt, BTOdeum, FormComponent, ImgList,
    Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
    dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, dxDBTLCl, dxGrClms, TS_DBMaskEdit,
    TS_DBImageEdit, TS_DBCheckBox, TS_DBEditDate, ComCtrls, TS_PageControl;

type
    TFrmInsumosIndustria = class(TFrmPadrao)
        TS_Label2: TTS_Label;
        df_CODIGO: TTS_DBButtonEdit;
        TS_Label1: TTS_Label;
        df_Descricao: TTS_DBEdit;
        TS_Label6: TTS_Label;
        cmbUnidade: TTS_DBLookupComboBox;
        TS_Label4: TTS_Label;
        df_QuantidadeMinima: TTS_DBEditNumber;
        TS_Label3: TTS_Label;
        cmbTipoInsumo: TTS_DBLookupComboBox;
        TS_Label5: TTS_Label;
        df_Observacao: TTS_DBMemo;
        ppmMaodeObra: TTS_PopupMenu;
        ExcluirMaodeObra: TMenuItem;
        ppmTipoMaquina: TTS_PopupMenu;
        ExcluirTipoMaquina: TMenuItem;
        ppmMateriaPrima: TTS_PopupMenu;
        ExcluirMateriaPrima: TMenuItem;
        ppmInsumos: TTS_PopupMenu;
    ExcluirInsumo: TMenuItem;
        TS_PageControlInsumos: TTS_PageControl;
    tsMaodeObra: TTS_TabSheet;
    tsTipoMaquina: TTS_TabSheet;
    tsMateriaPrima: TTS_TabSheet;
    tsInsumos: TTS_TabSheet;
        TS_QDBGrid2: TTS_QDBGrid;
        dxDBGridMaskColumn6: TdxDBGridMaskColumn;
        dxDBGridMaskColumn7: TdxDBGridMaskColumn;
        TS_QDBGrid3: TTS_QDBGrid;
        dxDBGridLookupColumn5: TdxDBGridLookupColumn;
        dxDBGridMaskColumn8: TdxDBGridMaskColumn;
        dxDBGridMaskColumn9: TdxDBGridMaskColumn;
        TS_QDBGrid4: TTS_QDBGrid;
        dxDBGridLookupColumn6: TdxDBGridLookupColumn;
        dxDBGridMaskColumn10: TdxDBGridMaskColumn;
        TS_QDBGrid5: TTS_QDBGrid;
        dxDBGridMaskColumn11: TdxDBGridMaskColumn;
        dxDBGridMaskColumn12: TdxDBGridMaskColumn;
    TS_QDBGrid5Column4: TdxDBGridLookupColumn;
    dxDBGridLookupColumn4: TdxDBGridLookupColumn;
        procedure df_CODIGOButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure ExcluirMaodeObraClick(Sender: TObject);
        procedure ExcluirTipoMaquinaClick(Sender: TObject);
        procedure ExcluirMateriaPrimaClick(Sender: TObject);
        procedure ExcluirInsumoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmInsumosIndustria: TFrmInsumosIndustria;

implementation

uses DM_Projeto, DM_InsumosIndustria, Form_Padrao;

{$R *.dfm}

procedure TFrmInsumosIndustria.df_CODIGOButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    DMInsumosIndustria.GeraCodigo(DMInsumosIndustria.C_TabelaCODIGO.Value);
    ActiveControl := df_CODIGO;
end;

procedure TFrmInsumosIndustria.ExcluirMaodeObraClick(Sender: TObject);
begin
    inherited;
    if DlgMsg.ShowMsg(6042, ['Deseja realmente excluir esse registro ?']) = 100 then
        DMInsumosIndustria.C_InsumosMaodeObra.Delete;
end;

procedure TFrmInsumosIndustria.ExcluirTipoMaquinaClick(Sender: TObject);
begin
    inherited;
    if DlgMsg.ShowMsg(6042, ['Deseja realmente excluir esse registro ?']) = 100 then
        DMInsumosIndustria.C_InsumosTiposMaquinas.Delete;
end;

procedure TFrmInsumosIndustria.ExcluirMateriaPrimaClick(Sender: TObject);
begin
    inherited;
    if DlgMsg.ShowMsg(6042, ['Deseja realmente excluir esse registro ?']) = 100 then
        DMInsumosIndustria.C_InsumosMateriasPrimas.Delete;
end;

procedure TFrmInsumosIndustria.ExcluirInsumoClick(Sender: TObject);
begin
    inherited;
    if DlgMsg.ShowMsg(6042, ['Deseja realmente excluir esse registro ?']) = 100 then
        DMInsumosIndustria.C_ComposicaoInsumos.Delete;
end;

procedure TFrmInsumosIndustria.FormShow(Sender: TObject);
begin
  inherited;
        TS_PageControlInsumos.ActivePageIndex := 0;
end;

end.


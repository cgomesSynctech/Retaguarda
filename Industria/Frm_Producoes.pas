unit Frm_Producoes;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
    Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
    dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib, TS_DBEdit,
    dxEditor, TS_DBButtonEdit, TS_DBEditNumber, dxDBEdtr, TS_DBLookupComboBox,
    TS_DateTimePicker, TS_DBEditFavorecido, TS_DBLookupTipoFav,
    TS_ButtonEdit, TS_EditFavorecido, dxDBTLCl, dxGrClms, ComCtrls,
  TS_PageControl, TS_DBMemo, TS_DBEditDate;

type
    TFrmProducao = class(TFrmPadrao)
        TS_Label2: TTS_Label;
        df_CODIGO: TTS_DBButtonEdit;
        TS_Label1: TTS_Label;
        df_Descricao: TTS_DBEdit;
        TS_Label3: TTS_Label;
        cmbInsumo: TTS_DBLookupComboBox;
        TS_Label4: TTS_Label;
        df_CustoHora: TTS_DBEditNumber;
        TS_Label5: TTS_Label;
        TS_Label6: TTS_Label;
        lbCliente: TTS_Label;
        TS_Label7: TTS_Label;
        TS_DBEditNumber1: TTS_DBEditNumber;
    TS_PageControlInsumos: TTS_PageControl;
    tsTipoMaquina: TTS_TabSheet;
    TS_QDBGrid3: TTS_QDBGrid;
    dxDBGridLookupColumn5: TdxDBGridLookupColumn;
    dxDBGridMaskColumn8: TdxDBGridMaskColumn;
    dxDBGridMaskColumn9: TdxDBGridMaskColumn;
    tsMateriaPrima: TTS_TabSheet;
    TS_QDBGrid4: TTS_QDBGrid;
    dxDBGridLookupColumn6: TdxDBGridLookupColumn;
    dxDBGridMaskColumn10: TdxDBGridMaskColumn;
    tsInsumos: TTS_TabSheet;
    TS_QDBGrid5: TTS_QDBGrid;
    TS_QDBGrid5Column4: TdxDBGridLookupColumn;
    dxDBGridMaskColumn11: TdxDBGridMaskColumn;
    dxDBGridMaskColumn12: TdxDBGridMaskColumn;
    TS_QDBGrid3Column5: TdxDBGridDateColumn;
    TS_QDBGrid3Column6: TdxDBGridDateColumn;
    TS_Label8: TTS_Label;
    df_Observacao: TTS_DBMemo;
    ppmMaquinasIndustria: TTS_PopupMenu;
    ExcluirMaquina: TMenuItem;
    dfDataCompra: TTS_DBEditDate;
    TS_DBEditDate1: TTS_DBEditDate;
    dfUltForn1: TTS_DBEditFavorecido;
        procedure df_CODIGOButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
    procedure ExcluirMaquinaClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmProducao: TFrmProducao;

implementation

uses DM_Projeto, DM_Producoes, Form_Padrao;

{$R *.dfm}

procedure TFrmProducao.df_CODIGOButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    DMProducao.GeraCodigo(DMProducao.C_TabelaCODIGO.Value);
    ActiveControl := df_CODIGO;
end;

procedure TFrmProducao.ExcluirMaquinaClick(Sender: TObject);
begin
  inherited;
        if DlgMsg.ShowMsg(6042, ['Deseja realmente excluir esse registro ?']) = 100 then
            DMProducao.C_ProducoesMaquinas.Delete;
end;

end.


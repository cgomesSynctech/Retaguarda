unit Frm_FuncionariosIndustria;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
    Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
    dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, dxDBEdtr, dxDBELib,
    TS_DBLookupComboBox, dxEdLib, TS_DBEdit, dxEditor, TS_DBButtonEdit,
    TS_DBEditNumber, dxDBTLCl, dxGrClms;

type
    TFrmFuncionariosIndustria = class(TFrmPadrao)
        TS_Label2: TTS_Label;
        df_CODIGO: TTS_DBButtonEdit;
        TS_Label1: TTS_Label;
        df_Nome: TTS_DBEdit;
        cmbCargo: TTS_DBLookupComboBox;
        TS_Label3: TTS_Label;
        TS_Label4: TTS_Label;
        df_CustoHora: TTS_DBEditNumber;
        dbgInsumosMaodeObra: TTS_QDBGrid;
        dbgInsumoMaodeObra: TdxDBGridLookupColumn;
        TS_Label5: TTS_Label;
        ppmMaodeObra: TTS_PopupMenu;
        ExcluirMaodeObra: TMenuItem;
        procedure df_CODIGOButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure ExcluirMaodeObraClick(Sender: TObject);

    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmFuncionariosIndustria: TFrmFuncionariosIndustria;

implementation
uses DM_FuncionariosIndustria, DM_Projeto;

{$R *.dfm}

procedure TFrmFuncionariosIndustria.df_CODIGOButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    DMFuncionariosIndustria.GeraCodigo(DMFuncionariosIndustria.C_TabelaCodigo.value);
    ActiveControl := df_CODIGO;
end;

procedure TFrmFuncionariosIndustria.ExcluirMaodeObraClick(Sender: TObject);
begin
    inherited;
    if DlgMsg.ShowMsg(6042, ['Deseja realmente excluir esse registro ?']) = 100 then
        DMFuncionariosIndustria.C_MaosdeObraFuncionarios.Delete;
end;

end.


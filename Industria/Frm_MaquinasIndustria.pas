unit Frm_MaquinasIndustria;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, dxExEdtr, dxEdLib, dxDBELib, TS_DBEditNumber,
    dxDBEdtr, TS_DBLookupComboBox, TS_DBEdit, dxCntner, dxEditor,
    TS_DBButtonEdit, Placemnt, BTOdeum, FormComponent, ImgList, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
    TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms, dxTL,
    dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, TS_DBMemo;

type
    TFrmMaquinasIndustria = class(TFrmPadrao)
        TS_Label2: TTS_Label;
        df_CODIGO: TTS_DBButtonEdit;
        TS_Label1: TTS_Label;
        df_Descricao: TTS_DBEdit;
        TS_Label3: TTS_Label;
        cmbTipodeMaquina: TTS_DBLookupComboBox;
        TS_Label4: TTS_Label;
        df_CustoUnitario: TTS_DBEditNumber;
        TS_Label5: TTS_Label;
        TS_Label6: TTS_Label;
        cmbUnidadeConsumo: TTS_DBLookupComboBox;
        TS_Label7: TTS_Label;
        df_Observacao: TTS_DBMemo;
        procedure df_CODIGOButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmMaquinasIndustria: TFrmMaquinasIndustria;

implementation

uses DM_Projeto, DM_MaquinasIndustria;

{$R *.dfm}

procedure TFrmMaquinasIndustria.df_CODIGOButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    DMMaquinasIndustria.GeraCodigo(DMMaquinasIndustria.C_TabelaCODIGO.Value);
    ActiveControl := df_CODIGO;
end;

end.


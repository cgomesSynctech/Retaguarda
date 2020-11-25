unit Frm_MateriasPrimasIndustria;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, dxExEdtr, dxEdLib, dxDBELib, TS_DBMemo, dxDBEdtr,
    TS_DBLookupComboBox, TS_DBEdit, dxCntner, dxEditor, TS_DBButtonEdit,
    Placemnt, BTOdeum, FormComponent, ImgList, Menus, TS_PopupMenu,
    TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
    dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms, dxTL, dxDBCtrl,
    dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
    TS_EffectsPanel, dxDBTLCl, dxGrClms;

type
    TFrmMateriasPrimasIndustria = class(TFrmPadrao)
        TS_Label2: TTS_Label;
        df_CODIGO: TTS_DBButtonEdit;
        TS_Label1: TTS_Label;
        df_Descricao: TTS_DBEdit;
        TS_Label3: TTS_Label;
        df_Observacao: TTS_DBMemo;
        procedure df_CODIGOButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmMateriasPrimasIndustria: TFrmMateriasPrimasIndustria;

implementation

uses DM_Projeto, DM_MateriasPrimasIndustria;

{$R *.dfm}

procedure TFrmMateriasPrimasIndustria.df_CODIGOButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    DMMateriasPrimasIndustria.GeraCodigo(DMMateriasPrimasIndustria.C_TabelaCODIGO.Value);
    ActiveControl := df_CODIGO;
end;

end.


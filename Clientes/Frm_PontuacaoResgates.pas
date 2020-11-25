unit Frm_PontuacaoResgates;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
    Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
    dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib, TS_DBEdit,
    TS_DBEditNumber, TS_DBEditDate, dxEditor, dxDBEdtr, TS_DBLookupTipoFav,
    dxDBTLCl, dxGrClms, TS_DBLookupComboBox, TS_DBButtonEdit,
    TS_DBEditFavorecido;

type
    TFrmPontuacaoResgates = class(TFrmPadrao)
        dfTipoFav: TTS_DBLookupTipoFav;
        TS_Label4: TTS_Label;
        TS_Label156: TTS_Label;
        dfValorResgate: TTS_DBEditNumber;
        dfDataResgate: TTS_DBEditDate;
        Grid_icSelecionado: TdxDBGridColumn;
        GridPONTUACAORESGATE: TdxDBGridMaskColumn;
        GridPONTUACAO: TdxDBGridMaskColumn;
        GridDATA: TdxDBGridDateColumn;
        GridVALORRESGATE: TdxDBGridCurrencyColumn;
        GridC_Clientes: TdxDBGridColumn;
        GridFAVORECIDO: TdxDBGridMaskColumn;
        dfFavorecido: TTS_DBEditFavorecido;
        TS_Label1: TTS_Label;
        TS_DBEditNumber1: TTS_DBEditNumber;
        TS_Label2: TTS_Label;
        TS_Label3: TTS_Label;
        TS_Label5: TTS_Label;
        TS_DBEditNumber2: TTS_DBEditNumber;
        TS_DBEditNumber3: TTS_DBEditNumber;
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
    private
        { Private declarations }
        FavorecidoAtual: integer;
    public
        { Public declarations }
    end;

var
    FrmPontuacaoResgates: TFrmPontuacaoResgates;

implementation

uses DM_Projeto, DM_PontuacaoResgates;

{$R *.dfm}

procedure TFrmPontuacaoResgates.FormComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    try
        dfDataResgate.Date := Date;
        FavorecidoAtual := DMProjeto.GetParametrosForm(0);

        dfTipoFav.LookupKeyValue := DMProjeto.GetParametrosForm(1);
        dfFavorecido.ID := FavorecidoAtual;
    except
        dfDataResgate.Date := Date;
        dfTipoFav.LookupKeyValue := 1;
    end;
end;

procedure TFrmPontuacaoResgates.btLimparClick(Sender: TObject);
begin
    inherited;
    dfFavorecido.ID := FavorecidoAtual;
end;

procedure TFrmPontuacaoResgates.btGravarClick(Sender: TObject);
begin

    inherited;
    Close;
end;

end.


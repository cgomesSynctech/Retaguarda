unit Frm_Pontuacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxDBTLCl, dxGrClms, dxEdLib,
  dxDBELib, TS_DBEditNumber, TS_DBCheckBox, TS_DBEditDate, dxEditor,
  TS_DBPopupEdit, TS_DBEdit;

type
  TFrmPontuacoes = class(TFrmPadrao)
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    dfDataI: TTS_DBEditDate;
    TS_Label4: TTS_Label;
    dfDataF: TTS_DBEditDate;
    cbFechada: TTS_DBCheckBox;
    TS_Label155: TTS_Label;
    TS_DBEditNumber5: TTS_DBEditNumber;
    TS_Label156: TTS_Label;
    TS_DBEditNumber1: TTS_DBEditNumber;
    Grid_icSelecionado: TdxDBGridColumn;
    GridPONTUACAO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridINICIO: TdxDBGridDateColumn;
    GridFIM: TdxDBGridDateColumn;
    GridFATORPONTO: TdxDBGridCurrencyColumn;
    GridMINIMORESGATE: TdxDBGridCurrencyColumn;
    GridFECHADA: TdxDBGridMaskColumn;
    dfDescricao: TTS_DBEdit;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPontuacoes: TFrmPontuacoes;

implementation

uses DM_Projeto, DM_Pontuacoes;

{$R *.dfm}

procedure TFrmPontuacoes.btGravarClick(Sender: TObject);
begin
  inherited;
  If cbFechada.Checked Then
   DMPontuacoes.FecharPontuacao;

end;

end.

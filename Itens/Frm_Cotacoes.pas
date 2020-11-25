unit Frm_Cotacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib,
  TS_DBEditNumber, dxDBEdtr, TS_DBLookupComboBox, dxEditor, TS_DBEditDate,
  dxDBTLCl, dxGrClms;

type
  TFrmCotacoes = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    edData: TTS_DBEditDate;
    lbIndexador: TTS_Label;
    lkbIndex: TTS_DBLookupComboBox;
    TS_Label2: TTS_Label;
    edValor: TTS_DBEditNumber;
    GridDATA: TdxDBGridDateColumn;
    GridlkIndex: TdxDBGridLookupColumn;
    N4: TMenuItem;
    ValorMaisAtualizados1: TMenuItem;
    lbObs: TTS_Label;
    GridVALOR: TdxDBGridMaskColumn;
    procedure ValorMaisAtualizados1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCotacoes: TFrmCotacoes;

implementation

{$R *.dfm}

uses DM_Projeto, DM_Cotacoes;

procedure TFrmCotacoes.ValorMaisAtualizados1Click(Sender: TObject);
begin
  inherited;
  Localizar( '', 'where c.data in (select max(data) from cotacoes where indexador = c.indexador group by indexador )');
end;

end.

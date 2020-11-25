unit Frm_ItensFalta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, dxEdLib, dxDBELib, TS_DBEditNumber,
  TS_DBEditDate, dxCntner, dxEditor, TS_DBButtonEdit, TS_DBEditItem,
  Placemnt, BTOdeum, FormComponent, ImgList, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, dxTLClms, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel,
  TS_DBEditFavorecido, TS_DBEdit, dxfProgressBar;

type
  TFrmItensFalta = class(TFrmPadrao)
    DFItem: TTS_DBEditItem;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_DBEditDate1: TTS_DBEditDate;
    dfQuantidade: TTS_DBEditNumber;
    TS_Label3: TTS_Label;
    COLITEMFALTA: TdxDBGridColumn;
    ColItem: TdxDBGridColumn;
    ColData: TdxDBGridColumn;
    ColQtd: TdxDBGridColumn;
    TS_Label4: TTS_Label;
    dfFavorecido: TTS_DBEditFavorecido;
    TS_Label5: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    procedure DFItemSelecionou(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmItensFalta: TFrmItensFalta;

implementation
uses DM_Projeto, DM_ItensFalta;
{$R *.dfm}

procedure TFrmItensFalta.DFItemSelecionou(Sender: TObject);
begin
  inherited;
  DMProjeto.Q_SQL.CLose;
  DMProjeto.Q_SQL.Sql.Clear;
  DMProjeto.Q_SQL.Sql.Text := 'Select estoque from itens where item ='+IntToStr(DFItem.ID);
  DMProjeto.Q_SQL.Open;
  if DMProjeto.Q_SQL.FieldByName('estoque').AsInteger > 0 then
    DlgMsg.ShowMsg(50,['Este item não está em falta. Ele possui unidades em estoque.']);
end;

end.

unit Dlg_InserirFator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxEdLib, TS_Edit, dxExEdtr,
  TS_CurrencyEdit, TS_CalcEdit, TS_CheckBox, TS_Shape;

type
  TDlgInserirFator = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    lbItem: TTS_Label;
    lbUnidade: TTS_Label;
    lbFator: TTS_Label;
    edfator: TTS_CalcEdit;
    TS_Shape1: TTS_Shape;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure edfatorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    sItem, sUnidade : string;
    nItem : integer;

    nFator : double;
  end;

var
  DlgInserirFator: TDlgInserirFator;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDlgInserirFator.FormsComponentBeforeClearParams(
  Sender: TObject);
var sUnidMinima : string;
begin
  inherited;
  with DMProjeto.Q_SQL do begin
  	close;
    sql.text := 'select unidade from itensunidades '+
    						'where item = :item '+
                'order by fator ';
    parambyname('item').asInteger := nItem;
    open;
    sUnidMinima := fields[0].AsString;
    close;
  end;
	lbItem.Caption 		:= sItem;
  lbUnidade.Caption := sUnidade;
  lbFator.Caption 	:= replace(lbFator.caption,':u',UpperCase(sUnidade));
  lbFator.Caption 	:= replace(lbFator.caption,':minima',IIF(UpperCase(sUnidMinima) = '', 'Unidades',UpperCase(sUnidMinima)) );

  if nFator > 0 then
    edFator.Value := nFator;
    
end;

procedure TDlgInserirFator.btGravarClick(Sender: TObject);
begin
  if edFator.Value <= 0 then
  	exit;

  inherited;
  
	ModalResult := mrOk;
end;

procedure TDlgInserirFator.edfatorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btGravarClick(self);
end;

end.

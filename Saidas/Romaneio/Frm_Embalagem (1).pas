unit Frm_Embalagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBEdit;

type
  TFrmEmbalagem = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Pedido: TTS_DBEdit;
    TS_Label2: TTS_Label;
    L_Total: TTS_Label;
    L_favorecido: TTS_Label;
    procedure TS_PedidoKeyPress(Sender: TObject; var Key: Char);
    procedure TS_PedidoExit(Sender: TObject);
//    function GetDadosSaida(pedido: string) : Currency ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmbalagem: TFrmEmbalagem;

implementation
uses DM_Projeto, DM_Embalagem ;

{$R *.dfm}

procedure TFrmEmbalagem.TS_PedidoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

   if (Key = #13) then begin
//     ...funcao();
   end
end;


procedure TFrmEmbalagem.TS_PedidoExit(Sender: TObject);
begin
  inherited;
   GetDadosSaida(TS_Pedido.Text);
end;

end.

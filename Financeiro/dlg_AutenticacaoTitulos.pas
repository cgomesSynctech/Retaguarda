unit dlg_AutenticacaoTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, TS_QDBGrid, ZRCtrls, ZReport, DB, DBClient, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppVar, Printers;

type
  TdlgAutenticacaoTitulos = class(TFrmModeloCadastros)
    dbgAutenticacao: TTS_QDBGrid;
    dbgAutenticacaoTITULO: TdxDBGridMaskColumn;
    dbgAutenticacaoVALOR: TdxDBGridCurrencyColumn;
    dbgAutenticacaoVENCIMENTO: TdxDBGridDateColumn;
    dbgAutenticacaoMD5: TdxDBGridMaskColumn;
    dbgAutenticacaoDtpgto: TdxDBGridColumn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    nLinha:Word;
    procedure Autenticar;
  public
    { Public declarations }
  end;

var
  dlgAutenticacaoTitulos: TdlgAutenticacaoTitulos;

implementation

uses DM_Projeto, Dlg_Depositos;

{$R *.dfm}

procedure TdlgAutenticacaoTitulos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If Key = #13 Then Begin
    Autenticar;
  End;
end;
procedure TdlgAutenticacaoTitulos.Autenticar;
Begin
with Printer do
  begin
    Canvas.Refresh;
    BeginDoc;
      Canvas.TextOut(0, 0, 'CL'+Copy(dbgAutenticacaoMD5.Field.Value,1,10)+'-'+
                dbgAutenticacaoDtpgto.Field.Text+'R$'+dbgAutenticacaoValor.Field.Text);
      Canvas.TextOut(0, 1, ' ');
    EndDoc;
  end;
  Application.ProcessMessages;
End;

procedure TdlgAutenticacaoTitulos.btGravarClick(Sender: TObject);
begin
  inherited;
  Autenticar;
end;

procedure TdlgAutenticacaoTitulos.FormShow(Sender: TObject);
begin
  inherited;
  dbgAutenticacao.SetFocus;
  nLinha:=0;
end;

end.

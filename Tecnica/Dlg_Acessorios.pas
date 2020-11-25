unit Dlg_Acessorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, TS_CheckListBox, Buttons, TS_SpeedButton,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, TS_Memo, DB, IBCustomDataSet,
  IBQuery;

type
  TDlgAcessorios = class(TForm)
    btFecharCadastro: TTS_SpeedButton;
    clbAcessorios: TTS_CheckListBox;
    Q_Acessorios: TIBQuery;
    Q_AcessoriosDESCRICAO: TIBStringField;
    Q_AcessoriosACESSORIO: TIntegerField;
    procedure btFecharCadastroClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgAcessorios: TDlgAcessorios;

implementation

uses DM_EntradasAssistencia, DM_Projeto;

{$R *.dfm}


procedure TDlgAcessorios.btFecharCadastroClick(Sender: TObject);
Var i:Integer;
    sX:String;
begin
  sX := '';
  For i := 0 to clbAcessorios.Items.Count - 1 do Begin
    If clbAcessorios.Checked[i] Then
      sX := sX + ',' + clbAcessorios.Items.Strings[i];
  End;
  DMEntradasAssistencia.AtualizaAcessorios(Copy(sX,2,100));
  Close;

end;

procedure TDlgAcessorios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then btFecharCadastroClick(Sender);
end;

procedure TDlgAcessorios.FormCreate(Sender: TObject);
begin
  Q_Acessorios.Close;
  Q_Acessorios.Open;
  clbAcessorios.UpdateItems;
end;

end.

unit DLG_ExecutarComando;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxExEdtr, dxEdLib, TS_Memo;

type
  TDLGExecutarComando = class(TFrmModeloCadastros)
    OpenDialog1: TOpenDialog;
    MemoComando: TTS_Memo;
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DLGExecutarComando: TDLGExecutarComando;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TDLGExecutarComando.btGravarClick(Sender: TObject);
begin
  inherited;
  If OpenDialog1.Execute Then
     MemoComando.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TDLGExecutarComando.btLimparClick(Sender: TObject);
begin
  inherited;
  MemoComando.Lines.Clear;
  MemoComando.Refresh
end;

procedure TDLGExecutarComando.btComando1Click(Sender: TObject);
Var
 fComandos, fOrigem: TextFile;
 f: String;
 bExisteComando: Boolean;
begin
  inherited;
    Try
      bExisteComando:=False;
      If FileExists(ExtractFilePath(Application.ExeName)+'Comando.sql') Then
        DeleteFile(ExtractFilePath(Application.ExeName)+'Comando.sql');
      AssignFile(fComandos,ExtractFilePath(Application.ExeName)+'Comando.sql');
      Rewrite(fComandos);
      WriteLn(fComandos,'CONNECT '''+DMProjeto.DB_Projeto.DataBaseName+''' USER ''ANALISTATS'' PASSWORD ''wvaebxti'' ;');
      AssignFile(fOrigem,OpenDialog1.FileName);
      Reset(fOrigem);
      while not eof(fOrigem) do Begin
        Readln(fOrigem, F);
        WriteLn(fComandos,F);
        bExisteComando:=True;
      End;
      CloseFile(fOrigem);
      CloseFile(fComandos);
      If bExisteComando Then
        Begin
          ExecutePrograma(PChar('isql.exe -i '+ExtractFilePath(Application.ExeName)+'Comando.sql -s 3 -noautocommit'),false);
          Application.MessageBox(pchar('Comando executado com êxito.'),'Aviso',mb_ok);
          If FileExists(ExtractFilePath(Application.ExeName)+'Comando.sql') Then
             DeleteFile(ExtractFilePath(Application.ExeName)+'Comando.sql');
          btLimparClick(Sender);
        End
      Else
          Application.MessageBox(pchar('Não existe comando para executar.'),'Aviso',mb_ok);
    except
       On E: Exception do Application.MessageBox(pchar('Ocorreu um erro na execução do comando '+#13+E.Message),'Aviso',mb_ok);
    End;
end;

end.

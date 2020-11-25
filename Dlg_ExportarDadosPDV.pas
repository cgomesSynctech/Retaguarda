unit Dlg_ExportarDadosPDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, ComCtrls, CheckLst, TS_CheckListBox, dxEditor,
  dxExEdtr, dxEdLib, TS_ButtonEdit, dxCntner, TS_CheckBox, FileCtrl;

type
  TDlgExportarDadosPDV = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    clbArquivos: TTS_CheckListBox;
    pBar: TProgressBar;
    lbxTabelas: TdxfLabel;
    sdSalvar: TSaveDialog;
    dfLocalArquivos: TDirectoryListBox;
    dfDrive: TDriveComboBox;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
   aTabela: Array[0..2,0..8] of String;
  public
    { Public declarations }
  end;

var
  DlgExportarDadosPDV: TDlgExportarDadosPDV;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TDlgExportarDadosPDV.FormsComponentBeforeClearParams(
  Sender: TObject);
var
  i:Integer;
begin
  inherited;
  aTabela[0,0] := 'FAVORECIDOS.FBX';
  aTabela[0,1] := 'ITENS.FBX';
  aTabela[0,2] := 'ITENSUNIDADES.FBX';
  aTabela[0,3] := 'PRODUTOSPRECO.FBX';
  aTabela[0,4] := 'UNIDADES.FBX';
  aTabela[0,5] := 'GRUPOS.FBX';
  aTabela[0,6] := 'USUARIOS.FBX';
  aTabela[0,7] := 'CONTAS.FBX';
  aTabela[0,8] := 'ITENSCODIGOS.FBX';

  aTabela[1,0] := 'FAVORECIDOS';
  aTabela[1,1] := 'ITENS';
  aTabela[1,2] := 'ITENSUNIDADES';
  aTabela[1,3] := 'PRODUTOSPRECO';
  aTabela[1,4] := 'UNIDADES';
  aTabela[1,5] := 'GRUPOS';
  aTabela[1,6] := 'USUARIOS';
  aTabela[1,7] := 'CONTAS';
  aTabela[1,8] := 'ITENSCODIGOS';

    //Select
  aTabela[2,0] := ' -Q "SELECT ' + LerInformacoesImportacaoPDV(aTabela[1,0]) + ' FROM '+ aTabela[1,0] + ' WHERE FAVORECIDO > -1 " ';
  aTabela[2,1] := ' -Q "SELECT ' + LerInformacoesImportacaoPDV(aTabela[1,1]) + ' FROM '+ aTabela[1,1] + '" ';
  aTabela[2,2] := ' -Q "SELECT ' + LerInformacoesImportacaoPDV(aTabela[1,2]) + ' FROM '+ aTabela[1,2] + '" ';
  aTabela[2,3] := ' -Q "SELECT ' + LerInformacoesImportacaoPDV(aTabela[1,3]) + ' FROM '+ aTabela[1,3] + '" ';
  aTabela[2,4] := ' -Q "SELECT ' + LerInformacoesImportacaoPDV(aTabela[1,4]) + ' FROM '+ aTabela[1,4] + '" ';
  aTabela[2,5] := ' -Q "SELECT ' + LerInformacoesImportacaoPDV(aTabela[1,5]) + ' FROM '+ aTabela[1,5] + '" ';
  aTabela[2,6] := ' -Q "SELECT ' + LerInformacoesImportacaoPDV(aTabela[1,6]) + ' FROM '+ aTabela[1,6] + '" ';
  aTabela[2,7] := ' -Q "SELECT ' + LerInformacoesImportacaoPDV(aTabela[1,7]) + ' FROM '+ aTabela[1,7] + '" ';
  aTabela[2,8] := ' -Q "SELECT ' + LerInformacoesImportacaoPDV(aTabela[1,8]) + ' FROM '+ aTabela[1,8] + '" ';

  clbArquivos.Items.Clear;
  For i := 0 to 8 do Begin
    clbArquivos.Items.Add(aTabela[1,i]+' - '+aTabela[0,i]);
    clbArquivos.Checked[i] := True;
  End;
  try
    dfLocalArquivos.Directory := DMProjeto.Parametro('LocalArquivosCarga');
  Except
    dfLocalArquivos.Directory := ExtractFilePath(Application.ExeName);
  End;
end;

procedure TDlgExportarDadosPDV.btGravarClick(Sender: TObject);
Var sComando,sLocal, sBaseDados, sHost:String;
    k:Integer;
begin
  inherited;
  Try
   sHost := '';
   sLocal:= dfLocalArquivos.Directory +'\';
   sBaseDados:= DMProjeto.DB_Projeto.DatabaseName;
   If Pos(Copy(sBaseDados,1,1),'0123456789') > 0 Then Begin
     sHost := ' -H '+Copy(sBaseDados,1,Pos(':',sBaseDados)-1);
     sBaseDados:= Copy(sBaseDados,Pos(':',sBaseDados)+1,Length(sBaseDados));
   End;
   pBar.Max := 6;;
   pBar.Position := 0;
   For k:=0 to 8 do Begin
    pBar.Position := k+1;
    If clbArquivos.Checked[k] Then Begin
      If FileExists(sLocal+aTabela[0,k]) Then
         DeleteFile(sLocal+aTabela[0,k]);
      lbxTabelas.Caption := 'Exportantdo: '+aTabela[1,k];
      Application.ProcessMessages;
      //sComando := 'FBExport -S -V '+aTabela[1,k]+' '+sHost+' -D '+sBaseDados+' -J "M.D.Y" -U analistats -P wvaebxti -F '+sLocal+aTabela[0,k];
      sComando := 'FBExport -S '+sHost+' -D '+sBaseDados+' -J "M.D.Y" -U ANALISTATS -P wvaebxti -F '+sLocal+aTabela[0,k] + aTabela[2,k];
      ExecutePrograma(pchar(scomando),false);
    End;
  End;
  DlgMsg.ShowMsg(8061);
  Close;
 Except
    DlgMsg.ShowMsg(8062);
 End;

end;

end.

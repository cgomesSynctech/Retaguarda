unit Dlg_ExportarMovimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, ComCtrls, CheckLst, TS_CheckListBox, dxEditor,
  dxExEdtr, dxEdLib, TS_ButtonEdit, dxCntner, TS_CheckBox, FileCtrl, DB,
  IBCustomDataSet, IBQuery, TS_Edit;

type
  TDlgExportarMovimentos = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    clbArquivos: TTS_CheckListBox;
    pBar: TProgressBar;
    lbxTabelas: TdxfLabel;
    sdSalvar: TSaveDialog;
    Q_PDVS: TIBQuery;
    dfLocalArquivos: TTS_Edit;
    procedure btGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
   aTabela: Array[0..1,0..31] of String;
  public
    { Public declarations }
  end;

var
  DlgExportarMovimentos: TDlgExportarMovimentos;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TDlgExportarMovimentos.btGravarClick(Sender: TObject);
Var sComando,sLocal, sBaseDados, sHost:String;
    k:Integer;
begin
  inherited;
  Try
   sHost := '';
   sLocal:= dfLocalArquivos.Text;
   sBaseDados:= DMProjeto.DB_Projeto.DatabaseName;
   If Pos(Copy(sBaseDados,1,1),'0123456789') > 0 Then Begin
     sHost := ' -H '+Copy(sBaseDados,1,Pos(':',sBaseDados)-1);
     sBaseDados:= Copy(sBaseDados,Pos(':',sBaseDados)+1,Length(sBaseDados));
   End;
   pBar.Max := 31;;
   pBar.Position := 0;
   For k:=0 to 31 do Begin
    pBar.Position := (pBar.Position+1);
    If clbArquivos.Checked[k] Then Begin
      If FileExists(sLocal+aTabela[1,k]) Then
         DeleteFile(sLocal+aTabela[1,k]);
       lbxTabelas.Caption := 'Exportando: '+aTabela[0,k];
      Application.ProcessMessages;
      sComando := 'FBExport -S -V '+aTabela[0,k]+' '+sHost+' -D '+sBaseDados+' -J "M.D.Y" -U analistats -P wvaebxti -F '+sLocal+aTabela[1,k] +' -Q "WHERE IMPORTACAO = 0" ';
      ExecutePrograma(pchar(scomando),false);
      sComando := 'FBExport -X '+sHost+' -D '+sBaseDados+' -J "M.D.Y" -U analistats -P wvaebxti  -Q "UPDATE '+ aTabela[0,k]+' SET IMPORTACAO = 1 WHERE IMPORTACAO = 0 " ';
      ExecutePrograma(pchar(scomando),false);
    End;
  End;
    DlgMsg.ShowMsg(8061);
  Close;
 Except
  on E: Exception do application.messagebox(pchar(e.message),'aviso',mb_ok);
 End;

end;

procedure TDlgExportarMovimentos.FormCreate(Sender: TObject);
Var
  sData: String;
  i:Integer;
begin
  inherited;
  aTabela[0,00] := 'entradas';
  aTabela[0,01] := 'entradasitens';
  aTabela[0,02] := 'entradasitensfilhos';
  aTabela[0,03] := 'entradasitensidents';
  aTabela[0,04] := 'entradasitensmescla';
  aTabela[0,05] := 'saidas';
  aTabela[0,06] := 'saidasitens';
  aTabela[0,07] := 'saidasitensfilhos';
  aTabela[0,08] := 'saidasitensidents';
  aTabela[0,09] := 'saidasitensmescla';
  aTabela[0,10] := 'titulosareceber';
  aTabela[0,11] := 'duplicatasapagar';
  aTabela[0,12] := 'depositos';
  aTabela[0,13] := 'depositosdoc';
  aTabela[0,14] := 'depositostitulos';
  aTabela[0,15] := 'retiradas';
  aTabela[0,16] := 'retiradaschequescaixa';
  aTabela[0,17] := 'retiradasdoc';
  aTabela[0,18] := 'retiradasduplicatas';
  aTabela[0,19] := 'operacoesdoc';
  aTabela[0,20] := 'operacoesfinanceiras';
  aTabela[0,21] := 'operacoesfinanceirasdet';
  aTabela[0,22] := 'transacoes';
  aTabela[0,23] := 'reducaoz';
  aTabela[0,24] := 'reducaoz_r03';
  aTabela[0,25] := 'reducaoz_r06';
  aTabela[0,26] := 'reducaoz_r07';
  aTabela[0,27] := 'SINTEGRA_60A';
  aTabela[0,28] := 'SINTEGRA_60D';
  aTabela[0,29] := 'SINTEGRA_60I';
  aTabela[0,30] := 'SINTEGRA_60M';
  aTabela[0,31] := 'SINTEGRA_60R';
  clbArquivos.Items.Clear;
  sData := FormatDateTime('YYYMMDDHHNNSS',Now);
  For i := 0 to 31 do Begin
    clbArquivos.Items.Add(aTabela[0,i]);
    aTabela[1,i] := aTabela[0,i] + '_' + sData + '.FBX';
    clbArquivos.Checked[i] := True;
  End;
  with Q_PDVS do begin
     close;
     SQL.clear;
     SQL.Text := ' SELECT LOCALARQUIVOS FROM PDVs WHERE NumeroECF = ' + IntToStr(DMProjeto.nPDV);
     Open;
     try
       dfLocalArquivos.Text := FieldByName('LOCALARQUIVOS').Value;
     Except
       dfLocalArquivos.Text := ExtractFilePath(Application.ExeName);
     End;
  End;
end;

end.

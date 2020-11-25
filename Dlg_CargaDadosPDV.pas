unit Dlg_CargaDadosPDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, DB, IBCustomDataSet, IBQuery, CheckLst,
  TS_CheckListBox, dxCntner, dxEditor, dxExEdtr, dxEdLib, TS_PopupEdit,
  dxfProgressBar, DBClient, Provider, ComCtrls, TS_RadioGroup, TS_Edit;


type
  TDlgCargaDadosPDV = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    Q_PDVS: TIBQuery;
    Q_PDVSDs: TDataSource;
    lbxArquivos: TdxfLabel;
    C_PDVSelecionados: TClientDataSet;
    Q_PDVSelecionados: TIBQuery;
    P_PDVSelecionados: TDataSetProvider;
    C_PDVSelecionadosPDV: TIntegerField;
    C_PDVSelecionadosLOCALARQUIVOS: TStringField;
    C_PDVSelecionadosDESCRICAO: TStringField;
    bArquivos: TProgressBar;
    tAutomatico: TTimer;
    dfLocalArquivos: TTS_Edit;
    TS_Label1: TTS_Label;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure pdPDVSCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure btGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    aTabela: Array[0..2,0..8] of String;
  public
    { Public declarations }
  end;

var
  DlgCargaDadosPDV: TDlgCargaDadosPDV;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TDlgCargaDadosPDV.FormsComponentBeforeClearParams(
  Sender: TObject);
Var i:Integer;
begin
  inherited;
  with Q_PDVS do begin
     close;
     SQL.clear;
     SQL.Text := 'SELECT CARGAARQUIVOS FROM PDVs WHERE NumeroECF = ' + IntToStr(DMProjeto.nPDV);
     Open;
     try
       dfLocalArquivos.Text := FieldByName('CARGAARQUIVOS').Value;
     except
       dfLocalArquivos.Text := ExtractFilePath(Application.ExeName);//FieldByName('CARGAARQUIVOS').Value;
     end;


  End;
end;

procedure TDlgCargaDadosPDV.pdPDVSCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Accept := true;
end;

procedure TDlgCargaDadosPDV.btGravarClick(Sender: TObject);
Var k,y,PdvProgres: Integer;
    sComando,sLocal, sBaseDados, sHost:String;
begin
  inherited;
  Try
   lbxArquivos.Visible := True;
   bArquivos.Max := 6;
   bArquivos.Position := 1;
   lbxArquivos.Caption := 'Desativa Triggers';
   Application.ProcessMessages;
   //SQL.Text := 'EXECUTE PROCEDURE PP_ZERARDADOSCARGA ';
   Try
     sHost := '';
     sBaseDados:= DMProjeto.DB_Projeto.DatabaseName;
     If Pos(Copy(sBaseDados,1,1),'0123456789') > 0 Then Begin
       sHost := ' -H '+Copy(sBaseDados,1,Pos(':',sBaseDados)-1);
       sBaseDados:= Copy(sBaseDados,Pos(':',sBaseDados)+1,Length(sBaseDados));
     End;
     if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
     Q_PDVS.close;
     Q_PDVS.SQL.clear;
     Q_PDVS.Sql.Text := ' EXECUTE PROCEDURE PP_DESATIVARTRIGGERS';
     Q_PDVS.Prepare;
     Q_PDVS.ExecSql;
     Q_PDVS.close;
     lbxArquivos.Caption := 'Limpando Dados...';
     Application.ProcessMessages;
     Q_PDVS.SQL.clear;
     Q_PDVS.Sql.Text := ' EXECUTE PROCEDURE PP_ZERARDADOSCARGA ';
     Q_PDVS.Prepare;
     Q_PDVS.ExecSql;
     Application.ProcessMessages;
     if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
     if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
     For k:= 0 to 8 do Begin
        if (FileExists(dfLocalArquivos.Text + aTabela[0,k])) Then Begin
          lbxArquivos.Caption := 'Carregando: '+aTabela[0,k];
          bArquivos.Position := (bArquivos.Position + 1);
          Application.ProcessMessages;
          //sComando := 'FBExport -I '+sHost+' -D '+sBaseDados+' -J "M.D.Y" -U analistats -P wvaebxti -F '+dfLocalArquivos.Text + aTabela[0,k] +' -V '+aTabela[1,k];
          sComando := 'FBExport -I '+sHost+' -D '+sBaseDados+' -J "M.D.Y" -U analistats -P wvaebxti -F '+dfLocalArquivos.Text + aTabela[0,k] + aTabela[2,k];
          ExecutePrograma(pchar(scomando),false);
        end;
     End;
     lbxArquivos.Caption := 'Atualiza Estoque';
     Application.ProcessMessages;
     Q_PDVS.close;
     Q_PDVS.SQL.clear;
     Q_PDVS.Sql.Text := ' EXECUTE PROCEDURE PP_ATUALIZAESTOQUEPOSCARGA ';
     Q_PDVS.Prepare;
     Q_PDVS.ExecSql;
     Q_PDVS.close;
     lbxArquivos.Caption := 'Ativa Triggers';
     Application.ProcessMessages;
     Q_PDVS.SQL.clear;
     Q_PDVS.Sql.Text := ' EXECUTE PROCEDURE PP_ATIVARTRIGGERS';
     Q_PDVS.Prepare;
     Q_PDVS.ExecSql;
     if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
     DlgMsg.ShowMsg(50,[pchar('Carga Realizada Com Êxito')]);
   Except
    On E:Exception Do DlgMsg.ShowMsg(50,[pchar(E.Message)]);
   End;
   bArquivos.Position := 0;
   lbxArquivos.Caption := '';
   lbxArquivos.Visible := False;;
  Except
   On E:Exception do DlgMsg.ShowMsg(50,[pchar('Ocorreu um Erro na Importação'+#13+e.message)]);
  End;

end;

procedure TDlgCargaDadosPDV.FormCreate(Sender: TObject);
begin
  inherited;
  //Onde Vou Ler
  aTabela[0,0] := 'FAVORECIDOS.FBX';
  aTabela[0,1] := 'ITENS.FBX';
  aTabela[0,2] := 'ITENSUNIDADES.FBX';
  aTabela[0,3] := 'PRODUTOSPRECO.FBX';
  aTabela[0,4] := 'UNIDADES.FBX';
  aTabela[0,5] := 'GRUPOS.FBX';
  aTabela[0,6] := 'USUARIOS.FBX';
  aTabela[0,7] := 'CONTAS.FBX';
  aTabela[0,8] := 'ITENSCODIGOS.FBX';

  //Tabela Origem
  aTabela[1,0] := 'FAVORECIDOS';
  aTabela[1,1] := 'ITENS';
  aTabela[1,2] := 'ITENSUNIDADES';
  aTabela[1,3] := 'PRODUTOSPRECO';
  aTabela[1,4] := 'UNIDADES';
  aTabela[1,5] := 'GRUPOS';
  aTabela[1,6] := 'USUARIOS';
  aTabela[1,7] := 'CONTAS';
  aTabela[1,8] := 'ITENSCODIGOS';
  //Insert
  aTabela[2,0] := ' -Q "INSERT INTO ' + aTabela[1,0] + ' (' + LerInformacoesImportacaoPDV(aTabela[1,0]) + ')" ';
  aTabela[2,1] := ' -Q "INSERT INTO ' + aTabela[1,1] + ' (' + LerInformacoesImportacaoPDV(aTabela[1,1]) + ')" ';
  aTabela[2,2] := ' -Q "INSERT INTO ' + aTabela[1,2] + ' (' + LerInformacoesImportacaoPDV(aTabela[1,2]) + ')" ';
  aTabela[2,3] := ' -Q "INSERT INTO ' + aTabela[1,3] + ' (' + LerInformacoesImportacaoPDV(aTabela[1,3]) + ')" ';
  aTabela[2,4] := ' -Q "INSERT INTO ' + aTabela[1,4] + ' (' + LerInformacoesImportacaoPDV(aTabela[1,4]) + ')" ';
  aTabela[2,5] := ' -Q "INSERT INTO ' + aTabela[1,5] + ' (' + LerInformacoesImportacaoPDV(aTabela[1,5]) + ')" ';
  aTabela[2,6] := ' -Q "INSERT INTO ' + aTabela[1,6] + ' (' + LerInformacoesImportacaoPDV(aTabela[1,6]) + ')" ';
  aTabela[2,7] := ' -Q "INSERT INTO ' + aTabela[1,7] + ' (' + LerInformacoesImportacaoPDV(aTabela[1,7]) + ')" ';
  aTabela[2,8] := ' -Q "INSERT INTO ' + aTabela[1,8] + ' (' + LerInformacoesImportacaoPDV(aTabela[1,8]) + ')" ';

end;

end.

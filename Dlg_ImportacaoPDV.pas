unit Dlg_ImportacaoPDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, DB, IBCustomDataSet, IBQuery, CheckLst,
  TS_CheckListBox, dxCntner, dxEditor, dxExEdtr, dxEdLib, TS_PopupEdit,
  dxfProgressBar, DBClient, Provider, ComCtrls, TS_RadioGroup;


type
  TDlgImportacaoPDV = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    pdPDVS: TTS_PopupEdit;
    TS_Label3: TTS_Label;
    clbPDVS: TTS_CheckListBox;
    Q_PDVS: TIBQuery;
    Q_PDVSDs: TDataSource;
    Q_PDVSPDV: TIntegerField;
    Q_PDVSDESCRICAO: TIBStringField;
    Q_PDVSLOCALARQUIVOS: TIBStringField;
    lbxPDVs: TdxfLabel;
    lbxArquivos: TdxfLabel;
    C_PDVSelecionados: TClientDataSet;
    Q_PDVSelecionados: TIBQuery;
    P_PDVSelecionados: TDataSetProvider;
    C_PDVSelecionadosPDV: TIntegerField;
    C_PDVSelecionadosLOCALARQUIVOS: TStringField;
    C_PDVSelecionadosDESCRICAO: TStringField;
    bPDV: TProgressBar;
    bArquivos: TProgressBar;
    rgAutomatico: TTS_RadioGroup;
    tAutomatico: TTimer;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure pdPDVSCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure tAutomaticoTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    aTabela: Array[0..31] of String;
  public
    { Public declarations }
  end;

var
  DlgImportacaoPDV: TDlgImportacaoPDV;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TDlgImportacaoPDV.FormsComponentBeforeClearParams(
  Sender: TObject);
Var i:Integer;
begin
  inherited;
  Q_PDVS.Close;
  Q_PDVS.Open;
  clbPDVS.SetDataset(Q_PDVS);
  For i:=0 to clbPDVS.Count -1 do
    clbPDVS.Checked[i] := True;
end;

procedure TDlgImportacaoPDV.pdPDVSCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Accept := true;
end;

procedure TDlgImportacaoPDV.btGravarClick(Sender: TObject);
Var k,y,PdvProgres: Integer;
    ListaArq: TStringList;
    sComando,sLocal, sBaseDados, sHost:String;
begin
  inherited;
  Try
   tAutomatico.Enabled := False;
   sHost := '';
   sBaseDados:= DMProjeto.DB_Projeto.DatabaseName;
   If Pos(Copy(sBaseDados,1,1),'0123456789') > 0 Then Begin
     sHost := ' -H '+Copy(sBaseDados,1,Pos(':',sBaseDados)-1);
     sBaseDados:= Copy(sBaseDados,Pos(':',sBaseDados)+1,Length(sBaseDados));
   End;
   sBaseDados:= DMProjeto.DB_Projeto.DatabaseName;
   ListaArq := TStringList.Create;
   With C_PDVSelecionados do Begin
      Q_PDVSelecionados.Close;
      Q_PDVSelecionados.Sql.Text := 'Select pdv, LOCALARQUIVOS, coalesce(NUMEROECF,numeroserieecf)||'' - ''||coalesce(maquina,'''') AS DESCRICAO from PDVS where pdv in ('+clbpdvs.Selecionados(False)+')';
      Open;
      First;
      bPDV.Max := RecordCount;
      While Not Eof do Begin
         lbxPDVS.Caption := FieldByName('DESCRICAO').AsString;
         Inc(PdvProgres);
         bPDV.Position := PdvProgres;
         If Copy(FieldByName('LOCALARQUIVOS').AsString,Length(FieldByName('LOCALARQUIVOS').AsString),1) = '\' Then
            ListaArq := GetFileList( FieldByName('LOCALARQUIVOS').AsString + '*.FBX' )
         Else
            ListaArq := GetFileList( FieldByName('LOCALARQUIVOS').AsString + '\*.FBX' );
         bArquivos.Max := ListaArq.Count;
         For k:=0 to ListaArq.Count - 1 do Begin
            bArquivos.Position := (K + 1);
            lbxArquivos.Caption := ListaArq.Strings[k];
             Application.ProcessMessages;
             For y:=0 to (Length(aTabela) -1) do Begin
               if Pos(aTabela[y],ListaArq.Strings[k]) > 0 Then Begin
                 // sComando := 'FBExport -I '+sHost+' -D '+sBaseDados+' -J "M.D.Y" -A "NONE" -U analistats -P wvaebxti -F '+
                 //         FieldByName('LOCALARQUIVOS').AsString + ListaArq.Strings[k]+' -V '+Copy(aTabela[y],1,Length(aTabela[y])-1);
                  sComando := 'fbexport -I -H	'+sHost+' -D '+sBaseDados+' -U ANALISTATS -P wvaebxti -F '+
                          FieldByName('LOCALARQUIVOS').AsString + ListaArq.Strings[k]+' -V '+Copy(aTabela[y],1,Length(aTabela[y])-1);
                  ExecutePrograma(pchar(scomando),false);
                  RenameFile(FieldByName('LOCALARQUIVOS').AsString + ListaArq.Strings[k], FieldByName('LOCALARQUIVOS').AsString + (Replace(lbxArquivos.Caption,'.FBX','.OK')));
               End;

             End;
         End;
         ListaArq.Clear;
         Next;
      End;
   End;
   If tAutomatico.Interval = 0 Then
      DlgMsg.ShowMsg(50,['Processamento Finalizado com êxito'])
   Else Begin
      tAutomatico.Enabled := True;
      lbxPdvs.Caption := 'Aguardando Horário Para Importação';
   End;
   C_PDVSelecionados.Close;
   ListaArq.Free;
   bPDV.Position := 0;
   bArquivos.Position := 0;
   lbxPDVS.Caption := '';
   lbxArquivos.Caption := '';
  Except
   On E:Exception do DlgMsg.ShowMsg(50,[pchar('Ocorreu um Erro na Importação'+#13+e.message)]);
  End;

end;

procedure TDlgImportacaoPDV.btLimparClick(Sender: TObject);
begin
  inherited;
 tAutomatico.Enabled := False;
 If btLimpar.Caption =  '&Automatizar' Then Begin
    Case rgautomatico.ItemIndex Of
    -1: tAutomatico.Interval :=  0;
     0: tAutomatico.Interval :=  300000;
     1: tAutomatico.Interval :=  600000;
     2: tAutomatico.Interval :=  900000;
     3: tAutomatico.Interval := 1800000;
     4: tAutomatico.Interval := 3600000;
    End;
    If tAutomatico.Interval > 0 Then Begin
       tAutomatico.Enabled := True;
       btLimpar.Caption :=  '&Parar';
       lbxPdvs.Caption := 'Aguardando Horário Para Importação';
       btGravar.Enabled := False;
       btFecharCadastro.Enabled := False;
    end;
  End Else
    Begin
     btLimpar.Caption :=  '&Automatizar';
     tAutomatico.Enabled := False;
     btGravar.Enabled := True;
     btFecharCadastro.Enabled := True;
    End;
end;

procedure TDlgImportacaoPDV.tAutomaticoTimer(Sender: TObject);
begin
  inherited;
  btGravarClick(Sender);
end;

procedure TDlgImportacaoPDV.FormCreate(Sender: TObject);
begin
  inherited;
  aTabela[00] := 'entradas_';
  aTabela[01] := 'entradasitens_';
  aTabela[02] := 'entradasitensfilhos_';
  aTabela[03] := 'entradasitensidents_';
  aTabela[04] := 'entradasitensmescla_';
  aTabela[05] := 'saidas_';
  aTabela[06] := 'saidasitens_';
  aTabela[07] := 'saidasitensfilhos_';
  aTabela[08] := 'saidasitensidents_';
  aTabela[09] := 'saidasitensmescla_';
  aTabela[10] := 'titulosareceber_';
  aTabela[11] := 'duplicatasapagar_';
  aTabela[12] := 'depositos_';
  aTabela[13] := 'depositosdoc_';
  aTabela[14] := 'depositostitulos_';
  aTabela[15] := 'retiradas_';
  aTabela[16] := 'retiradaschequescaixa_';
  aTabela[17] := 'retiradasdoc_';
  aTabela[18] := 'retiradasduplicatas_';
  aTabela[19] := 'operacoesdoc_';
  aTabela[20] := 'operacoesfinanceiras_';
  aTabela[21] := 'operacoesfinanceirasdet_';
  aTabela[22] := 'transacoes_';

  aTabela[23] := 'reducaoz_';
  aTabela[24] := 'reducaoz_r03_';
  aTabela[25] := 'reducaoz_r06_';
  aTabela[26] := 'reducaoz_r07_';
  aTabela[27] := 'SINTEGRA_60A_';
  aTabela[28] := 'SINTEGRA_60D_';
  aTabela[29] := 'SINTEGRA_60I_';
  aTabela[30] := 'SINTEGRA_60M_';
  aTabela[31] := 'SINTEGRA_60R_';

end;

end.

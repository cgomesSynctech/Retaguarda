unit Frm_Contas;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_PADRAO, Menus, StdCtrls, Buttons, ComCtrls, DBCtrls, ExtCtrls, Mask,
    ImgList, T_AutorizacaoDialog, TS_SpeedButton,
    TS_PopupMenu, TS_ScrollBox, TS_BitBtn, FormComponent,
    DlgMsg, TS_DBCheckBox, TS_DBLookupComboBox, TS_DBEdit,
    TS_Label, DB, TS_LastDataObject, TS_Bevel, TS_MaxPanel,
    CheckLst, TS_CheckListBox, TS_PageControl, TS_DBText, TS_DBMemo, dxtree,
    dxdbtree, dxTL, dxDBCtrl, dxCntner, dxDBTL, dxExEdtr, dxEdLib, dxDBELib,
    dxEditor, dxDBEdtr, TS_Image, dxfLabel, dxDBGrid, TS_QDBGrid,
    dxDBTLCl, dxGrClms, teCtrls, TS_EffectsPanel,
    dxTLClms, Dlg_PopupContas, TS_DBPopupEdit, TS_DBButtonEdit, Variants,
    BTOdeum, TS_DBEditNumber, Placemnt, dxfProgressBar;

type
    TFrmContas = class(TFrmPadrao)
        lblConta: TTS_Label;
        Label2: TTS_Label;
        dfDescricao: TTS_DBEdit;
        pcContas: TTS_PageControl;
        tsBancos: TTS_TabSheet;
        Label4: TTS_Label;
        Label6: TTS_Label;
        Label8: TTS_Label;
        TS_Label1: TTS_Label;
        DBEdit4: TTS_DBEdit;
        DBEdit3: TTS_DBEdit;
        DBEdit6: TTS_DBEdit;
        TS_DBEdit1: TTS_DBEdit;
        Label3: TTS_Label;
        cmbBanco: TTS_DBLookupComboBox;
        TS_Label2: TTS_Label;
        tsCaixas: TTS_TabSheet;
        cmbTipoConta: TTS_DBLookupComboBox;
        dfCodigo: TTS_DBButtonEdit;
        Bevel1: TBevel;
        TS_Label3: TTS_Label;
        TS_Label5: TTS_Label;
        TS_Label6: TTS_Label;
        TS_DBText1: TTS_DBText;
        TS_DBText2: TTS_DBText;
        tsContabilidade: TTS_TabSheet;
        TS_DBMemo1: TTS_DBMemo;
        TS_Label7: TTS_Label;
        TS_Label8: TTS_Label;
        lbSaldo: TTS_Label;
        TS_DBLookupComboBox4: TTS_DBLookupComboBox;
        GridDescBanco: TdxDBGridLookupColumn;
        GridCONTA: TdxDBGridMaskColumn;
        GridDESCRICAO: TdxDBGridMaskColumn;
        GridNUMCONTA: TdxDBGridMaskColumn;
        GridAGENCIA: TdxDBGridMaskColumn;
        GridGERENTE: TdxDBGridMaskColumn;
        GridDATASALDOINICIAL: TdxDBGridDateColumn;
        GridSITUACAO: TdxDBGridMaskColumn;
        GridMOVIMENTOCORRENTE: TdxDBGridDateColumn;
        GridBANCO: TdxDBGridMaskColumn;
        GridSALDOINICIAL: TdxDBGridMaskColumn;
        GridDESATIVADO: TdxDBGridMaskColumn;
        GridNUMCHEQUEBASE: TdxDBGridMaskColumn;
        GridDESCRICAOATUAL: TdxDBGridMaskColumn;
        GridLIMITECREDITO: TdxDBGridMaskColumn;
        GridTIPOCONTA: TdxDBGridMaskColumn;
        GridOBS: TdxDBGridMaskColumn;
        GridCODIGOCONTA: TdxDBGridMaskColumn;
        GridlkTipoConta: TdxDBGridLookupColumn;
        GridDATACONCILIACAO: TdxDBGridDateColumn;
        GridSALDOCONCILIACAO: TdxDBGridMaskColumn;
        GridCONTAPAI: TdxDBGridMaskColumn;
        GridCODIGOREDUZIDO: TdxDBGridMaskColumn;
        GridUSUARIOCAIXA: TdxDBGridMaskColumn;
        GridSALDO: TdxDBGridMaskColumn;
        GridlkUsuario: TdxDBGridLookupColumn;
        GridlkContaPai: TdxDBGridLookupColumn;
        TS_DBCheckBox1: TTS_DBCheckBox;
        TS_Label12: TTS_Label;
        Bevel2: TBevel;
        TS_Label13: TTS_Label;
        Bevel3: TBevel;
        TS_Label14: TTS_Label;
        Bevel4: TBevel;
        TS_DBPopupEdit3: TTS_DBPopupEdit;
        dbTreeContas: TdxDBTreeList;
        dbTreeContasColumn2: TdxDBTreeListColumn;
        dbTreeContasColumn1: TdxDBTreeListColumn;
        dbTreeContasSaldo: TdxDBTreeListColumn;
        dfSaldo: TTS_DBEditNumber;
        TS_Label9: TTS_Label;
        chkDespesaFixa: TTS_DBCheckBox;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure btLimparClick(Sender: TObject);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure FormComponentEstado_Navegacao(Sender: TObject;
            var bSkip: Boolean);
        procedure dbTreeContasDblClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure cmbTipoContaChange(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure TS_DBPopupEdit2InitPopup(Sender: TObject);
        procedure FormComponentLayoutChange(Sender: TObject;
            LayoutGrid: Boolean; var bSkip: Boolean);
        procedure dfCodigoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
        procedure dfDescricaoExit(Sender: TObject);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
    protected
        DlgPopupCX: TDlgPopupContas;
    private
        bTabelaList: boolean;
    public
    end;

var
    FrmContas: TFrmContas;

implementation
uses DM_Contas, DM_Projeto, funcoes;
//  Frm_Registros;

{$R *.DFM}

procedure TFrmContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
    FrmContas := nil;
end;

procedure TFrmContas.btLimparClick(Sender: TObject);
begin
    FormatoTabela.Checked := false;
    dbTreeContas.datasource := nil;
    dbTreeContas.visible := false;
    inherited;
    FormComponentAfterScroll(self);
end;

procedure TFrmContas.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;
    DMContas.C_TiposContas.locate('tipoconta', DMContas.C_TabelaTipoConta.value, []);
    cmbTipoContaChange(self);
end;

procedure TFrmContas.FormComponentEstado_Navegacao(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    cmbTipoConta.color := $00E0D1E0;
    cmbTipoConta.readonly := true;
    dfSaldo.color := $00E0D1E0;
    dfSaldo.readonly := true;
    //  if not Visible then
      //dbTreeContas.visible := true;
      //dbTreeContas.BringToFront;
end;

procedure TFrmContas.dbTreeContasDblClick(Sender: TObject);
begin
    inherited;
    FormatoTabela.Checked := false;
    dbTreeContas.visible := false;
    dbTreeContas.datasource := nil;

    DMContas.C_TiposContas.locate('tipoconta', DMContas.C_TabelaTipoConta.value, []);
    cmbTipoContaChange(self);
end;

procedure TFrmContas.FormCreate(Sender: TObject);
begin
    inherited;
    if bTabelaList then
        begin
            bIniciarComDados := true;
            Localizar('', '');
            dbTreeContas.BringToFront;
            dbTreeContas.visible := true;
            bIniciarComDados := false;
        end;
    DlgPopupCX := TDlgPopupContas.Create(self, DMContas.C_ContasDS, nil, true, true);
end;

procedure TFrmContas.cmbTipoContaChange(Sender: TObject);
begin
    inherited;
    {  if DMContas.C_TabelaConta.AsString <> '' then begin
        DMContas.C_Contas.Filtered := false;
        DMContas.C_Contas.Filter := 'conta <> '+DMContas.C_TabelaConta.AsString;
        DMContas.C_Contas.Filtered := true;
        DMContas.C_Contas.first;
      end;}
    if DMContas.C_TabelaConta.value = 1 then
        begin
            pcContas.ActivePage := nil;
            chkDespesaFixa.Visible := False;
        end
    else if DMContas.C_TabelaTipoConta.value = 1 then
        begin
            pcContas.ActivePage := tsCaixas;
            chkDespesaFixa.Visible := False;
        end
    else if DMContas.C_TabelaTipoConta.value = 2 then
        begin
            pcContas.ActivePage := tsBancos;
            chkDespesaFixa.Visible := False;
        end
    else if DMContas.C_TabelaTIPOCONTA.Value = 15 then
        chkDespesaFixa.Visible := True
    else
        begin
            pcContas.ActivePage := tsContabilidade;
            chkDespesaFixa.Visible := False;
        end;
end;

procedure TFrmContas.btComando2Click(Sender: TObject);
var nSaldo: currency;
    bErro: boolean;
begin
    inherited;
    nSaldo := DMProjeto.SaldoContaAtual(DMContas.C_TabelaConta.value, 0, 0);
    if nSaldo <> DMContas.C_TabelaSaldo.value then
        begin
            if DlgMsg.ShowMsg(3003) = 100 then
                begin // Se deseja atualizar o saldo
                    DMContas.C_Tabela.edit;
                    DMContas.C_TabelaSaldo.value := nSaldo;
                    DMProjeto.GeraLog('Contas', 'Saldo da conta:' + DMContas.C_TabelaConta.AsString + ' com Diferença!');

                    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
                    with DMProjeto.Q_SQL do
                        begin
                            SQL.text := 'update contas set saldo = :saldo where conta = ' + DMContas.C_TabelaConta.AsString;
                            params[0].ascurrency := nSaldo;
                            execsql;
                        end;
                    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
                end;
        end
    else
        DlgMsg.ShowMsg(3005); // Saldo Correto

    if Application.MessageBox('Deseja Verificar de todas as contas?', 'Atenção', mb_yesno) <> id_yes then
        exit;

    with DMProjeto.Q_SQL do
        begin
            close;
            SQL.text := 'select sum(valor) as Saldo from lancamentos l, lancamentositens li where l.lancamento = li.lancamento';
            open;
            if FieldByName('saldo').ascurrency <> 0 then
                ShowMessage('Falha: Não passou pelo 1º Teste!')
            else
                ShowMessage('Sucesso: Passou pelo 1º Teste!');
            //////////////////
            close;
            SQL.text := 'select sum(valor) as Saldo from lancamentos l, lancamentositens li, contas c where l.lancamento = li.lancamento and li.conta = c.conta';
            open;
            if FieldByName('saldo').ascurrency <> 0 then
                ShowMessage('Falha: Não passou pelo 2º Teste!')
            else
                ShowMessage('Sucesso: Passou pelo 2º Teste!');
            //////////////////
            DMProjeto.Q_ComandoSQL.close;
            DMProjeto.Q_ComandoSQL.SQL.text := 'select conta,saldo from contas where desativado = ''N'' and sintetico = ''N''';
            DMProjeto.Q_ComandoSQL.open;
            bErro := false;
            while not DMProjeto.Q_ComandoSQL.eof do
                begin
                    nSaldo := DMProjeto.SaldoContaAtual(DMProjeto.Q_ComandoSQL.FieldByName('Conta').asinteger, 0, 0);
                    if nSaldo <> DMProjeto.Q_ComandoSQL.FieldByName('Saldo').ascurrency then
                        begin
                            bErro := true;
                            ShowMessage('Conta: ' + DMProjeto.Q_ComandoSQL.FieldByName('Conta').asstring + ' está com problema de saldo!');
                        end;
                    DMProjeto.Q_ComandoSQL.next;
                end;
            if bErro then
                ShowMessage('Falha: Algumas Contas estão com saldo errado!')
            else
                ShowMessage('Sucesso: Passou pelo 3º Teste!');
        end;

    {  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'REGCTA') then
        exit;

      if DMContas.C_TabelaConta.value <= 0 then begin
        DlgMsg.ShowMsg(3069);
        exit;
      end;

      FrmRegistros := TFrmRegistros.Create(self,DMContas.C_TabelaConta.value,DMContas.C_TabelaDescricao.value);
      FrmRegistros.ShowModal;
      FrmRegistros.Free;}
end;

procedure TFrmContas.FormComponentBeforeClearParams(Sender: TObject);
var bVisualizarSaldo: boolean;
begin
    inherited;
    if DMProjeto.ExisteParametrosForm then
        begin

            if (DMProjeto.getParametrosForm(0) = null) then
                begin
                    if DMProjeto.QtdParametrosForm > 1 then
                        DMContas.nTipoConta := DMProjeto.getParametrosForm(1);

                    if (DMContas.bAlteracao) then
                        Estado_Inicial;

                    if DMContas.nTipoConta <> 0 then
                        DMContas.C_TabelaTipoConta.Value := DMContas.nTipoConta;

                    cmbTipoContaChange(sender);
                end;

        end
    else
        begin
            DMContas.nTipoConta := 2;
            bTabelaList := true;
        end;
    bVisualizarSaldo := DMProjeto.LerPermissao(self.name, 'VERSALDO');
    dbTreeContasSaldo.Visible := bVisualizarSaldo;
    lbSaldo.Visible := bVisualizarSaldo;
    dfSaldo.Visible := bVisualizarSaldo;
end;

procedure TFrmContas.TS_DBPopupEdit2InitPopup(Sender: TObject);
begin
    inherited;
    DlgPopupCX.SetDS(DMContas.C_ContasDS);
    DlgPopupCX.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TFrmContas.FormComponentLayoutChange(Sender: TObject;
    LayoutGrid: Boolean; var bSkip: Boolean);
begin
    inherited;
    grid.datasource := nil;
    grid.visible := false;

    dbTreeContas.visible := LayoutGrid;
    dbTreeContas.BringToFront;
    if dbTreeContas.visible then
        begin
            dbTreeContas.datasource := DMContas.C_TabelaDS;
            ActiveControl := dbTreeContas;
        end
    else
        dbTreeContas.datasource := nil;

    bSkip := true;
    DMContas.C_TiposContas.locate('tipoconta', DMContas.C_TabelaTipoConta.value, []);
    cmbTipoContaChange(self);
end;

procedure TFrmContas.dfCodigoButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if not (DMContas.C_Tabela.State in [dsEdit, dsInsert]) then
        DMContas.C_Tabela.edit;
    DMContas.C_TabelaCodigoReduzido.value := DMProjeto.GeraCodigoConta(DMContas.C_TabelaCodigoReduzido.value, DMContas.C_TabelaConta.value);
    ActiveControl := dfDescricao;
end;

procedure TFrmContas.dfDescricaoExit(Sender: TObject);
begin
    inherited;
    if DMProjeto.VerificaExistenciaConta(DMContas.C_TabelaConta.value, 'N', DMContas.C_TabelaDESCRICAO.value) then
        begin
            DlgMsg.ShowMsg(5001, ['Conta']);
        end;
end;

procedure TFrmContas.FormComponentEstado_Inicial(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    cmbTipoConta.color := clWindow;
    cmbTipoConta.readonly := false;
    dfSaldo.color := clWindow;
    dfSaldo.readonly := false;
end;

end.


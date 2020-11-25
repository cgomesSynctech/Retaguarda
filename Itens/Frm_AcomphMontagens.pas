unit Frm_AcomphMontagens;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu,
    TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
    dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
    TS_EffectsPanel, IBCustomDataSet, IBUpdateSQL, DBClient, Provider, Db,
    IBQuery, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl,
    dxGrClms, dxDBEdtr, dxDBELib, TS_DBLookupComboBox, dxExEdtr, dxEdLib,
    TS_DBMemo, TS_DBEditNumber, dxEditor, TS_DBEditDate, TS_DateTimePicker,
    TS_LookupComboBox, DBCtrls, TS_DBText, TS_RadioGroup, variants, Placemnt,
    BTOdeum, ppBands, ppCtrls, ppReport, ppSubRpt, myChkBox, ppPrnabl,
    ppClass, ppStrtch, ppRegion, ppCache, ppProd, ppDB, ppComm, ppRelatv,
    ppDBPipe, TS_PopupEdit, CheckLst, TS_CheckListBox;

type
    TFrmAcomphMontagens = class(TFrmModeloCadastros)
        dbgItens: TTS_QDBGrid;
        Q_MontagensDS: TDataSource;
        Q_Montagens: TIBQuery;
        P_Montagens: TDataSetProvider;
        C_Montagens: TClientDataSet;
        U_Montagens: TIBUpdateSQL;
        C_MontagensMONTAGEM: TIntegerField;
        C_MontagensDATA: TDateField;
        C_MontagensMONTADOR: TIntegerField;
        C_MontagensITEM: TIntegerField;
        C_MontagensQTDESOLIC: TBCDField;
        C_MontagensQTDEPRODUZIDO: TBCDField;
        C_MontagensSTATUS: TIntegerField;
        C_MontagensOBS: TStringField;
        C_MontagensDATACONCLUSAO: TDateField;
        C_MontagensHORACONCLUSAO: TStringField;
        C_MontagensPREVISAOCONCLUSAO: TDateField;
        C_MontagensDATAENTREGA: TDateField;
        C_MontagensTIPO: TStringField;
        C_MontagensURGENTE: TStringField;
        C_MontagensDESCRICAO: TStringField;
        dbgItensMONTAGEM: TdxDBGridMaskColumn;
        dbgItensDATA: TdxDBGridDateColumn;
        dbgItensMONTADOR: TdxDBGridMaskColumn;
        dbgItensITEM: TdxDBGridMaskColumn;
        dbgItensQTDESOLIC: TdxDBGridMaskColumn;
        dbgItensQTDEPRODUZIDO: TdxDBGridMaskColumn;
        dbgItensSTATUS: TdxDBGridMaskColumn;
        dbgItensOBS: TdxDBGridMaskColumn;
        dbgItensDATACONCLUSAO: TdxDBGridDateColumn;
        dbgItensHORACONCLUSAO: TdxDBGridMaskColumn;
        dbgItensPREVISAOCONCLUSAO: TdxDBGridDateColumn;
        dbgItensDATAENTREGA: TdxDBGridDateColumn;
        dbgItensTIPO: TdxDBGridMaskColumn;
        dbgItensURGENTE: TdxDBGridCheckColumn;
        dbgItensDESCRICAO: TdxDBGridMaskColumn;
        C_MontagensDescTipo: TStringField;
        dfQtdeProd: TTS_DBEditNumber;
        TS_DBEditDate2: TTS_DBEditDate;
        TS_DBMemo1: TTS_DBMemo;
        TS_Label1: TTS_Label;
        TS_Label2: TTS_Label;
        TS_Label3: TTS_Label;
        TS_Label4: TTS_Label;
        TS_Label5: TTS_Label;
        TS_Label6: TTS_Label;
        Q_Operadores: TIBQuery;
        P_Operadores: TDataSetProvider;
        C_Operadores: TClientDataSet;
        C_MontagenslkOperador: TStringField;
        TS_DBLookupComboBox1: TTS_DBLookupComboBox;
        C_MontagensFilhos: TClientDataSet;
        C_MontagensFilhosMONTAGEMFILHO: TIntegerField;
        C_MontagensFilhosMONTAGEM: TIntegerField;
        C_MontagensFilhosITEM: TIntegerField;
        C_MontagensFilhosQUANTIDADE: TBCDField;
        C_MontagensFilhosCODIGO: TStringField;
        C_MontagensFilhosDESCRICAO: TStringField;
        Q_MontagensFilhos: TIBQuery;
        C_MontagensFilhosDS: TDataSource;
        dbgSubItens: TTS_QDBGrid;
        dbgSubItensMONTAGEMFILHO: TdxDBGridMaskColumn;
        dbgSubItensMONTAGEM: TdxDBGridMaskColumn;
        dbgSubItensITEM: TdxDBGridMaskColumn;
        dbgSubItensCodigo: TdxDBGridButtonColumn;
        dbgSubItensDescricao: TdxDBGridButtonColumn;
        dbgSubItensQUANTIDADE: TdxDBGridMaskColumn;
        Q_MasterDS: TDataSource;
        TS_Label9: TTS_Label;
        cmbStatus: TTS_LookupComboBox;
        Q_Status: TIBQuery;
        P_Status: TDataSetProvider;
        C_Status: TClientDataSet;
        C_StatusSTATUS: TIntegerField;
        C_StatusDESCRICAO: TStringField;
        C_StatusDS: TDataSource;
        TS_DBText1: TTS_DBText;
        TS_DBText2: TTS_DBText;
        rgTipo: TTS_RadioGroup;
        TS_Label7: TTS_Label;
        cmbOperador: TTS_LookupComboBox;
        C_OperadoresDS: TDataSource;
        C_OperadoresOPERADOR: TIntegerField;
        C_OperadoresNOME: TStringField;
        TS_DBText3: TTS_DBText;
        Bevel1: TBevel;
        btEntregar: TTS_SpeedButton;
        btCancelar: TTS_SpeedButton;
        TS_Bevel2: TTS_Bevel;
        C_MontagensQ_MontagensFilhos: TDataSetField;
        C_MontagensNUMERO: TStringField;
        dbgItensColumn17: TdxDBGridColumn;
        C_MontagensFilhosUNIDADE: TStringField;
        dbgSubItensUNIDADE: TdxDBGridColumn;
        U_MontagensFilhos: TIBUpdateSQL;
        P_MontagensFilho: TDataSetProvider;
        ppDBMontagens: TppDBPipeline;
        ppDBMontagensFilho: TppDBPipeline;
        ppMontagens: TppReport;
        ppHeaderBand1: TppHeaderBand;
        regCab: TppRegion;
        ppLabel23: TppLabel;
        ppDetailBand1: TppDetailBand;
        ppDBText1: TppDBText;
        ppDBText2: TppDBText;
        ppDBText3: TppDBText;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        ppDBText7: TppDBText;
        ppDBText8: TppDBText;
        ppDBText10: TppDBText;
        ppDBText11: TppDBText;
        ppDBText12: TppDBText;
        ppDBText13: TppDBText;
        ppDBText14: TppDBText;
        ppLabel1: TppLabel;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppLabel4: TppLabel;
        ppLabel5: TppLabel;
        ppLabel6: TppLabel;
        ppLabel7: TppLabel;
        ppLabel9: TppLabel;
        ppLabel10: TppLabel;
        ppLabel11: TppLabel;
        ppLabel12: TppLabel;
        ppLabel13: TppLabel;
        myDBCheckBox1: TmyDBCheckBox;
        ppLabel14: TppLabel;
        ppSubReport1: TppSubReport;
        ppChildReport1: TppChildReport;
        ppTitleBand1: TppTitleBand;
        ppLabel16: TppLabel;
        ppLabel17: TppLabel;
        ppLabel18: TppLabel;
        ppLabel20: TppLabel;
        ppLabel21: TppLabel;
        ppLabel22: TppLabel;
        ppDetailBand2: TppDetailBand;
        ppDBText17: TppDBText;
        ppDBText18: TppDBText;
        ppDBText19: TppDBText;
        ppDBText20: TppDBText;
        ppDBText22: TppDBText;
        ppSummaryBand1: TppSummaryBand;
        ppLine2: TppLine;
        ppLabel15: TppLabel;
        ppLine1: TppLine;
        ppFooterBand1: TppFooterBand;
        C_MontagensFilhosFABRICANTE: TStringField;
        C_MontagensUNIDADE: TStringField;
        C_MontagensCODIGO: TStringField;
        ppLabel8: TppLabel;
        ppDBCalc1: TppDBCalc;
        ppDBCalc2: TppDBCalc;
        clbTabelaPreco: TTS_CheckListBox;
        TS_PopupEdit1: TTS_PopupEdit;
        TS_Label8: TTS_Label;
        procedure C_MontagensCalcFields(DataSet: TDataSet);
        procedure btLimparClick(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure rgTipoClick(Sender: TObject);
        procedure cmbStatusChange(Sender: TObject);
        procedure btCancelarClick(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure btEntregarClick(Sender: TObject);
        procedure C_MontagensBeforeScroll(DataSet: TDataSet);
        procedure C_MontagensAfterScroll(DataSet: TDataSet);
        procedure C_MontagensQTDEPRODUZIDOValidate(Sender: TField);
        procedure dbgItensDblClick(Sender: TObject);
        procedure dbgSubItensDblClick(Sender: TObject);
        procedure BaixarEstoque(montagem: integer);
    private
        bSalvar, bSalvando: boolean;
        procedure Validacoes;
        procedure Atualiza;
        function ValidarEstoqueMontagem(): boolean;
    public
    end;

var
    FrmAcomphMontagens: TFrmAcomphMontagens;

implementation
uses DM_Projeto, Form_Padrao;

{$R *.DFM}

procedure TFrmAcomphMontagens.C_MontagensCalcFields(DataSet: TDataSet);
begin
    inherited;
    if C_MontagensTipo.value = 'F' then
        C_MontagensDescTipo.value := 'Fazer'
    else
        C_MontagensDescTipo.value := 'Desfazer';
end;

procedure TFrmAcomphMontagens.btLimparClick(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('FrmMontagens', self, false);
    Atualiza;
end;

procedure TFrmAcomphMontagens.btComando1Click(Sender: TObject);
begin
    inherited;
    //  dbgSubItens.visible := btComando1.down;
    //  dbgSubItens.BringToFront;
    btComando1.Down := True; //  deixar bot�o pressionado
    DMProjeto.SetParametrosForm([C_MontagensMONTAGEM.Value, C_MontagensSTATUS.Value, C_MontagensDESCRICAO.Value]);
    DMProjeto.CriarForm('FrmMontagensProduto', Self, true);
    btComando1.Down := False; // deixar bot�o livre
end;

procedure TFrmAcomphMontagens.FormsComponentBeforeClearParams(
    Sender: TObject);
var sTipo: string;
begin
    inherited;
    if rgTipo.ItemIndex = 0 then
        sTipo := 'F'
    else
        sTipo := 'D';

    C_Montagens.close;
    C_Montagens.FetchParams;
    C_Montagens.params[0].asinteger := cmbStatus.LookupKeyValue;
    C_Montagens.params[1].asstring := sTipo;
    if (cmbOperador.LookupKeyValue <> null) and (cmbOperador.LookupKeyValue > 0) then
        begin
            C_Montagens.params[2].asinteger := 0;
            C_Montagens.params[3].asinteger := cmbOperador.LookupKeyValue;
        end
    else
        begin
            C_Montagens.params[2].asinteger := 1;
            C_Montagens.params[3].asinteger := 0;
        end;
    C_Montagens.open;
    btComando2.down := false;
end;

procedure TFrmAcomphMontagens.FormCreate(Sender: TObject);
begin
    inherited;
    C_operadores.open;
    C_Status.open;
    cmbStatus.LookupKeyValue := 1;
    bSalvar := false;
    bSalvando := false;
    btEntregar.enabled := true;
    btComando2.enabled := true;
    btCancelar.enabled := true;
    btEntregar.enabled := false;
end;

procedure TFrmAcomphMontagens.rgTipoClick(Sender: TObject);
begin
    inherited;
    FormsComponentBeforeClearParams(self);
end;

procedure TFrmAcomphMontagens.cmbStatusChange(Sender: TObject);
begin
    inherited;
    btEntregar.enabled := true;
    btComando2.enabled := true;
    btCancelar.enabled := true;
    btEntregar.enabled := true;
    if cmbStatus.LookupKeyValue = 1 then
        btEntregar.enabled := false
    else if cmbStatus.LookupKeyValue = 2 then
        btComando2.enabled := false
    else if cmbStatus.LookupKeyValue = 3 then
        begin
            btEntregar.enabled := false;
            btComando2.enabled := false;
            btCancelar.enabled := false;
            btEntregar.enabled := false;
        end
    else if cmbStatus.LookupKeyValue = 4 then
        begin
            btComando2.enabled := false;
            btEntregar.enabled := false;
        end
    else if cmbStatus.LookupKeyValue = 5 then
        begin
            btComando2.Enabled := False;
            btEntregar.Enabled := False;
        end;
    FormsComponentBeforeClearParams(self);
end;

procedure TFrmAcomphMontagens.btCancelarClick(Sender: TObject);
begin
    inherited;
    C_Montagens.edit;
    C_MontagensStatus.value := 3;
    C_Montagens.post;

    btGravarClick(self);
end;

procedure TFrmAcomphMontagens.btGravarClick(Sender: TObject);
begin
    inherited;
    bSalvando := true;
    if C_Montagens.state in [dsEdit, dsInsert] then
        C_Montagens.post;
    bSalvando := false;
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    if C_Montagens.ChangeCount > 0 then
        C_Montagens.ApplyUpdates(0);

    {  if (cmbStatus.LookupKeyValue = 1) and (C_MontagensStatus.value = 2) then begin // Se estiver pendente e for concluir
        DMProjeto.BaixaEstoque(C_MontagensItem.value,'+',C_MontagensQtdeProduzido.value);
        if C_MontagensQtdeSolic.value <> C_MontagensQtdeProduzido.value then begin
          C_MontagensFilhos.first;
          while not C_MontagensFilhos.eof do begin
            DMProjeto.BaixaEstoque(C_MontagensFilhosItem.value,'+',(C_MontagensQtdeSolic.value - C_MontagensQtdeProduzido.value) * C_MontagensFilhosQuantidade.value);
            C_MontagensFilhos.next;
          end;
        end;
      end
      else if (cmbStatus.LookupKeyValue = 1) and (C_MontagensStatus.value = 3) then begin // Se estiver pendente e for cancelar
        C_MontagensFilhos.first;
        while not C_MontagensFilhos.eof do begin
          DMProjeto.BaixaEstoque(C_MontagensFilhosItem.value,'+',C_MontagensQtdeSolic.value * C_MontagensFilhosQuantidade.value);
          C_MontagensFilhos.next;
        end;
      end
      else if (cmbStatus.LookupKeyValue = 2) and (C_MontagensStatus.value = 3) then begin // Se estiver concluido e for cancelar
        DMProjeto.BaixaEstoque(C_MontagensItem.value,'-',C_MontagensQtdeProduzido.value);
        C_MontagensFilhos.first;
        while not C_MontagensFilhos.eof do begin
          DMProjeto.BaixaEstoque(C_MontagensFilhosItem.value,'+',C_MontagensQtdeProduzido.value * C_MontagensFilhosQuantidade.value);
          C_MontagensFilhos.next;
        end;
      end;
    }
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    DMProjeto.ImprimirCabecalho(regCab);
    ppMontagens.Print;

    Atualiza;
end;

procedure TFrmAcomphMontagens.BaixarEstoque(montagem: integer);
Begin
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        with DMProjeto.Q_auxiliar do begin
          Close;
          Sql.Text := 'Update MONTAGENSFILHOS set ORIGEMREPLIC = ''X'' where MONTAGEM = :montagem';
          ParamByName('montagem').AsInteger := montagem;
          Open;
        end;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
End;


{ Evento concluir montagem }

procedure TFrmAcomphMontagens.btComando2Click(Sender: TObject);
begin
    //if (ValidarEstoqueMontagem()) then
    if (True) then
        begin
            inherited;
            if btComando2.down then
                begin
                    C_Montagens.edit;
                    C_MontagensStatus.value := 2;
                    C_MontagensQtdeProduzido.value := C_MontagensQtdeSolic.value;
                    C_MontagensDataConclusao.value := DMProjeto.dDataSistema;
                    C_MontagensHoraConclusao.value := copy(timetostr(time), 1, 5);
                    BaixarEstoque(C_MontagensMontagem.AsInteger);
                    dfQtdeProd.color := clWhite;
                    dfQtdeProd.readonly := false;
                    ActiveControl := dfQtdeProd;
                end
            else
                begin
                    C_Montagens.RevertRecord;
                    dfQtdeProd.color := pnDados.color;
                    dfQtdeProd.readonly := true;
                    ActiveControl := dbgItens;
                end;
        end
    else
        begin
            DlgMsg.ShowMsg(50, ['Existem itens na produ��o que est�o com estoque negativo ou insuficiente. N�o ser� poss�vel prosseguir com a ' +
                'opera��o.']);
                btComando2.Down := False;
        end;

end;

procedure TFrmAcomphMontagens.btEntregarClick(Sender: TObject);
begin
    inherited;
    C_Montagens.edit;
    C_MontagensStatus.value := 4;
    C_MontagensDataEntrega.value := DMProjeto.dDataSistema;
    C_Montagens.post;

    btGravarClick(self);
end;

procedure TFrmAcomphMontagens.Atualiza;
begin
    Validacoes;
    C_Montagens.close;
    C_Montagens.open;
    btComando2.down := false;
    dfQtdeProd.color := pnDados.color;
    dfQtdeProd.readonly := true;
end;

procedure TFrmAcomphMontagens.C_MontagensBeforeScroll(DataSet: TDataSet);
begin
    inherited;
    Validacoes;
end;

procedure TFrmAcomphMontagens.C_MontagensAfterScroll(DataSet: TDataSet);
begin
    inherited;
    if bSalvar then
        begin
            bSalvar := false;
            btGravarClick(self);
        end;
end;

procedure TFrmAcomphMontagens.Validacoes;
begin
    if bSalvando then
        exit;
    bSalvar := false;
    if C_Montagens.changecount > 0 then
        begin
            if DlgMsg.ShowMsg(3139) <> 100 then
                begin
                    C_Montagens.RevertRecord;
                    btComando2.down := false;
                end
            else
                bSalvar := true;
        end;
end;

procedure TFrmAcomphMontagens.C_MontagensQTDEPRODUZIDOValidate(
    Sender: TField);
begin
    inherited;
    //  if C_MontagensQtdeProduzido.value > C_MontagensQtdeSolic.value then begin
    //    DlgMsg.ShowMsg(3140);
    //    raise Exception.Create('@');
    //  end;
end;

procedure TFrmAcomphMontagens.dbgItensDblClick(Sender: TObject);
begin
    inherited;
    if dbgItens.TS_SelectedColumn = 'DESCRICAO' then
        begin
            DMProjeto.SetParametrosForm([C_MontagensItem.value]);
            DMProjeto.CriarForm('FrmItens', Self, true);
        end
    else
        begin
            DMProjeto.SetParametrosForm([C_MontagensMontagem.value]);
            DMProjeto.CriarForm('FrmMontagens', self, true);
        end;
end;

procedure TFrmAcomphMontagens.dbgSubItensDblClick(Sender: TObject);
var nItem: integer;
begin
    inherited;
    nItem := dbgSubItens.GetFieldValue(dbgSubItens.FocusedNode, 'Item', 0);
    DMProjeto.SetParametrosForm([nItem]);
    DMProjeto.CriarForm('FrmItens', Self, true);

end;

function TFrmAcomphMontagens.ValidarEstoqueMontagem(): boolean;
var
    isValido: boolean;
begin
    isValido := True;

    with DMProjeto.Q_SQL3 do
        begin
            Close;
            SQL.Text := 'select ii.estoque, case when ii.estoque < mf.quantidadetotal then mf.quantidadetotal - ii.estoque else 0 end as qtdsolicitar ' +
                'from montagens m inner join montagensfilhos mf on m.montagem = mf.montagem ' +
                'inner join itens ii on mf.item = ii.item ' +
                'where m.montagem = :montagem';
            ParamByName('montagem').AsInteger := C_MontagensMONTAGEM.Value;
            Open;

            while not Eof do
                begin
                    if (FieldByName('estoque').AsCurrency <= 0) or (FieldByName('qtdsolicitar').AsCurrency > 0) then
                        begin
                            isValido := False;
                            break;
                        end;
                    Next;
                end;
        end;

    Result := isValido;
end;

end.


unit dlg_AcompanhamentoMecanica;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, TS_Panel, dxEditor, dxDBEdtr, dxDBELib, TS_DBLookupComboBox,
    dxDBTLCl, dxGrClms, DB, DBClient, Provider, IBCustomDataSet, IBQuery,
    dxEdLib, TS_DBImageEdit, TS_LookupComboBox, TS_DateTimePicker,
    TS_CheckBox, TS_PopupEdit, CheckLst, TS_CheckListBox, XMLDoc, XmlIntf,
    TS_DBEditDate, TS_Edit, TS_ComboBox;

type
    TdlgAcompanhamentoMecanica = class(TFrmModeloCadastros)
        Q_Mecanica: TIBQuery;
        P_Mecanica: TDataSetProvider;
        C_Mecanica: TClientDataSet;
        IntegerField5: TIntegerField;
        C_MecanicaDs: TDataSource;
        qdbServicos: TTS_QDBGrid;
        TS_PanelCorner1: TTS_PanelCorner;
        qdbServicosOSNUMERO: TdxDBGridMaskColumn;
        qdbServicosDATAENTRADA: TdxDBGridDateColumn;
        qdbServicosNUMEROSERIE: TdxDBGridMaskColumn;
        qdbServicosDESCRICAO: TdxDBGridMaskColumn;
        qdbServicosTECNICO: TdxDBGridMaskColumn;
        Q_StatusServico: TIBQuery;
        P_StatusServico: TDataSetProvider;
        C_StatusServico: TClientDataSet;
        IntegerField4: TIntegerField;
        C_StatusServicoSTATUSSERVICO: TIntegerField;
        C_StatusServicoDESCRICAO: TStringField;
        C_StatusServicoDs: TDataSource;
        TS_Label5: TTS_Label;
        cmbTecnicos: TTS_LookupComboBox;
        lbTecnicoServico: TTS_Label;
        Q_Tecnico: TIBQuery;
        P_Tecnico: TDataSetProvider;
        C_Tecnico: TClientDataSet;
        IntegerField1: TIntegerField;
        C_TecnicoDs: TDataSource;
        btIniciar: TTS_SpeedButton;
        C_TecnicoFAVORECIDO: TIntegerField;
        C_TecnicoNOME: TStringField;
        qdbServicosSTATUSSERVICO: TdxDBGridMaskColumn;
        cbFinalizados: TTS_CheckBox;
        clbStatus: TTS_CheckListBox;
        ppeStatus: TTS_PopupEdit;
        qdbServicosValor: TdxDBGridColumn;
        qdbServicosLOCAL: TdxDBGridColumn;
        C_MecanicaSERVICO: TIntegerField;
        C_MecanicaOSNUMERO: TStringField;
        C_MecanicaDATAENTRADA: TDateField;
        C_MecanicaSTATUS: TStringField;
        C_MecanicaTECNICO: TStringField;
        C_MecanicaNUMEROSERIE: TStringField;
        C_MecanicaSTATUSSERVICO: TIntegerField;
        C_MecanicaLOCAL: TStringField;
        C_MecanicaVALOR: TFloatField;
        C_MecanicaLOCALIZACAO: TIntegerField;
        TS_SpeedButton1: TTS_SpeedButton;
        TS_SpeedButton2: TTS_SpeedButton;
        TS_SpeedButton4: TTS_SpeedButton;
        TS_SpeedButton5: TTS_SpeedButton;
        TS_SpeedButton6: TTS_SpeedButton;
        TS_SpeedButton7: TTS_SpeedButton;
        TS_SpeedButton3: TTS_SpeedButton;
        TS_SpeedButton8: TTS_SpeedButton;
        Q_ExportarXML: TIBQuery;
        Label1: TLabel;
        dtDataInicial: TTS_DateTimePicker;
        dtDataFinal: TTS_DateTimePicker;
        Label2: TLabel;
        btImprimir: TTS_SpeedButton;
        TS_SpeedButton9: TTS_SpeedButton;
        numOS: TTS_Edit;
        TS_Label2: TTS_Label;
        TS_Label3: TTS_Label;
        TS_SpeedButton10: TTS_SpeedButton;
        TS_SpeedButton11: TTS_SpeedButton;
        cmbStatusGarantia: TTS_ComboBox;
        ppeMarcas: TTS_PopupEdit;
        TS_Label4: TTS_Label;
        clbMarcas: TTS_CheckListBox;
        C_MarcasDS: TDataSource;
        C_Marcas: TClientDataSet;
        IntegerField2: TIntegerField;
        P_Marcas: TDataSetProvider;
        Q_Marcas: TIBQuery;
        C_MarcasMARCA: TIntegerField;
        C_MarcasDESCRICAO: TStringField;
        qdbServicosDESCMODELO: TdxDBGridMaskColumn;
        lbTecnicoOrcamento: TTS_Label;
        cmbTecnicoOrcamento: TTS_LookupComboBox;
    C_MecanicaEQUIPAMENTO: TIntegerField;
    C_MecanicaTECNICOORCAMENTO: TStringField;
    qdbServicosTECNICOORCAMENTO: TdxDBGridMaskColumn;
    C_MecanicaDATAORCAMENTO: TDateField;
    C_MecanicaDATASERVICO: TDateField;
    qdbServicosDATAORCAMENTO: TdxDBGridDateColumn;
    qdbServicosDATASERVICO: TdxDBGridDateColumn;
    qdbServicosDESCMARCA: TdxDBGridMaskColumn;
    C_MecanicaDESC_EQUIPAMENTO: TStringField;
    C_MecanicaDESC_MARCA: TStringField;
    C_MecanicaDESC_MODELO: TStringField;
    qdbServicosDESCEQUIPAMENTO: TdxDBGridMaskColumn;
    C_MecanicaNOME: TStringField;
    qdbServicosNome: TdxDBGridColumn;
    C_MecanicaPLACA: TStringField;
    C_MecanicaMARCAMODELO: TIntegerField;
    C_MecanicaPRISMA: TStringField;
    C_MecanicaANO: TStringField;
    C_MecanicaMOTOR: TStringField;
    qdbServicos_icSelecionado: TdxDBGridColumn;
    qdbServicosSERVICO: TdxDBGridMaskColumn;
    qdbServicosColumn19: TdxDBGridMaskColumn;
    qdbServicosColumn20: TdxDBGridDateColumn;
    qdbServicosSTATUS: TdxDBGridMaskColumn;
    qdbServicosColumn22: TdxDBGridMaskColumn;
    qdbServicosColumn23: TdxDBGridMaskColumn;
    qdbServicosColumn24: TdxDBGridMaskColumn;
    qdbServicosColumn25: TdxDBGridMaskColumn;
    qdbServicosColumn26: TdxDBGridMaskColumn;
    qdbServicosLOCALIZACAO: TdxDBGridMaskColumn;
    qdbServicosEQUIPAMENTO: TdxDBGridMaskColumn;
    qdbServicosColumn29: TdxDBGridMaskColumn;
    qdbServicosColumn30: TdxDBGridDateColumn;
    qdbServicosColumn31: TdxDBGridDateColumn;
    qdbServicosDESC_EQUIPAMENTO: TdxDBGridMaskColumn;
    qdbServicosDESC_MARCA: TdxDBGridMaskColumn;
    qdbServicosDESC_MODELO: TdxDBGridMaskColumn;
    qdbServicosColumn35: TdxDBGridMaskColumn;
    qdbServicosPLACA: TdxDBGridMaskColumn;
    qdbServicosMARCAMODELO: TdxDBGridMaskColumn;
    qdbServicosPRISMA: TdxDBGridMaskColumn;
    qdbServicosANO: TdxDBGridMaskColumn;
    qdbServicosMOTOR: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    lbPlaca: TTS_Edit;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure cmbStatusChange(Sender: TObject);
        procedure qdbServicosDblClick(Sender: TObject);
        procedure btIniciarClick(Sender: TObject);
        procedure qdbServicosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
        procedure btComando1Click(Sender: TObject);
        procedure cbFinalizadosChange(Sender: TObject);
        procedure edDataFDateChange(Sender: TObject);
        procedure ppeStatusChange(Sender: TObject);
        procedure ppeStatusCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure TS_SpeedButton2Click(Sender: TObject);
        procedure TS_SpeedButton6Click(Sender: TObject);
        procedure TS_SpeedButton1Click(Sender: TObject);
        procedure TS_SpeedButton5Click(Sender: TObject);
        procedure TS_SpeedButton4Click(Sender: TObject);
        procedure TS_SpeedButton3Click(Sender: TObject);
        procedure TS_SpeedButton8Click(Sender: TObject);
        procedure TS_SpeedButton7Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure btImprimirClick(Sender: TObject);
        procedure TS_SpeedButton9Click(Sender: TObject);
        procedure TS_SpeedButton10Click(Sender: TObject);
        procedure TS_SpeedButton11Click(Sender: TObject);
        procedure TS_ComboBox1Change(Sender: TObject);
        procedure cmbStatusGarantiaChange(Sender: TObject);

    private
        { Private declarations }
        procedure atualizar;
    public
        osnumero: string;
        sStatusM: string;
        sStatusS: string;
        sStatusSer: string;
        { Public declarations }
    end;

var
    dlgAcompanhamentoMecanica: TdlgAcompanhamentoMecanica;

implementation

uses DM_Projeto, Rpt_Tecnica, Form_Padrao;

{$R *.dfm}

procedure TdlgAcompanhamentoMecanica.atualizar;
var sStatus, sStatusMarcas: string;
    data1, data2: TTime;
begin
    Q_Mecanica.Close;
    C_Mecanica.Close;
    Q_Mecanica.SQL.Text := 'select  s.servico,s.osnumero,s.dataentrada, s.dataorcamento, s.dataservico, ss.descricao as Status, '+
        'fa.nome as Tecnico, fav.nome as TecnicoOrcamento, ' +
        'c.numeroserie, c.equipamento, S.STATUSSERVICO , l.descricao as Local, s.localizacao, ' +
        '(select coalesce( sum(quantidade * valor) , 0) from servicosdet sd where sd.servico = s.servico) as Valor ,' +
        'te.descricao as desc_equipamento, ma.descricao as desc_marca, m.descricao as desc_modelo, ff.nome, S.PLACA, S.HODOMETRO, S.MOTOR, S.COR, ' +
        ' S.MOTORISTA, S.MARCAMODELO , S.PRISMA, S.ANO '+
        'from servicos s ' +
        'Left Join localizacaoequipamento l on l.localizacaoequipamento = s.localizacao ' +
        'left join statusservicos ss on ss.statusservico = s.statusservico ' +
        //'Left join Favorecidos f on f.favorecido = s.tecnico '+
    'left join favorecidos fa on s.tecnicodaos = fa.favorecido ' +
    'left join favorecidos fav on s.tecnico = fav.favorecido '+
        'Left Join clientesequipamentos c on c.equipamento = s.equipamento ' +
        'Left Join modelos m on m.modelo = c.modelo ' +
        'left join marcas ma on ma.marca = m.marca ' +
        'left join tipoequipamentos te on te.tipoequipamento = m.tipoequipamento ' +
        'left join favorecidos ff on ff.favorecido = s.cliente '+
        'where (s.dataentrada >= :data1 and s.dataentrada <= :data2) ' +
        //                             'and s.statusservico <> 60 '+
    ' and s.servico is not null and s.osnumero like ''%' + numOS.Text + '%''';

    // if cbFinalizados.Checked then
    //    Q_Mecanica.SQL.Text := Q_Mecanica.SQL.Text + ' and s.statusservico = 50 and s.datasaida = :dt '
    //  else if cmbStatus.LookupKeyValue <> null Then
    //    Q_Mecanica.SQL.Text := Q_Mecanica.SQL.Text + ' and s.statusservico = ' + IntToStr(cmbStatus.LookupKeyValue)
    //  else Q_Mecanica.SQL.Text := Q_Mecanica.SQL.Text + ' and s.statusservico < 50 ';
    if numOS.Text = '' then
        begin
            data1 := dtDataInicial.Date;
            data2 := dtDataFinal.Date;
        end
    else
        begin
            data1 := StrToDate('01/01/1900');
            data2 := StrToDate('01/01/2999');
        end;

 //   case cmbStatusGarantia.ItemIndex of
 //       1: Q_Mecanica.SQL.Text := Q_Mecanica.SQL.Text + ' and s.GARANTIAFABRICA = ''S''';
 //       2: Q_Mecanica.SQL.Text := Q_Mecanica.SQL.Text + ' and s.FORAGARANTIA = ''S''';
 //       3: Q_Mecanica.SQL.Text := Q_Mecanica.SQL.Text + ' and s.RETORNO = ''S''';
 //   end;

    sStatus := '';
    sStatus := clbStatus.Selecionados();
    sStatusS := clbStatus.Selecionados();
    ppeStatus.Text := clbStatus.Selecionados(True);
    if (sStatus <> '') then
        begin
            sStatus := ' and s.statusServico in (' + sStatus + ') ';
        end;

    sStatusMarcas := '';
    sStatusMarcas := clbMarcas.Selecionados();
    sStatusM := clbMarcas.Selecionados();
    ppeMarcas.Text := clbMarcas.Selecionados(True);
    if (sStatusMarcas <> '') then
        begin
            sStatusMarcas := ' and ma.marca in (' + sStatusMarcas + ') ';
        end;

    if cmbTecnicos.LookupKeyValue <> null then
        Q_Mecanica.SQL.Text := Q_Mecanica.SQL.Text + ' and s.TECNICODAOS = ' + inttostr(cmbTecnicos.LookupKeyValue);

    if cmbTecnicoOrcamento.LookupKeyValue <> null then
        Q_Mecanica.SQL.Text := Q_Mecanica.SQL.Text + ' and s.tecnico = ' + inttostr(cmbTecnicoOrcamento.LookupKeyValue);

    if ( lbPlaca.Text <> '') then
        Q_Mecanica.SQL.Text := Q_Mecanica.SQL.Text + ' and s.placa = ''' + lbPlaca.Text + '''' ;

    Q_Mecanica.SQL.Text := Q_Mecanica.SQL.Text + sStatus + sStatusMarcas + ' Order by  s.osnumero desc';
    //  if cbFinalizados.Checked then
    Q_Mecanica.ParamByName('data1').AsDateTime := data1;
    Q_Mecanica.ParamByName('data2').AsDateTime := data2;
    C_Mecanica.ProviderName := 'P_Mecanica';
    C_Mecanica.FetchParams;
    C_Mecanica.Open;
end;

procedure TdlgAcompanhamentoMecanica.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    dlgAcompanhamentoMecanica := Self;
    C_StatusServico.Open;
    C_Marcas.Open;

    clbStatus.SetDataSet(C_StatusServico);
    clbStatus.UpdateItems;

    clbMarcas.SetDataSet(C_Marcas);
    clbMarcas.UpdateItems;
    //clbFormaPagamento.SetSelecionados( '3' );
    ppeStatus.Text := clbStatus.Selecionados(true);
    ppeMarcas.Text := clbMarcas.Selecionados(true);
    C_Tecnico.Open;
    // Atualizar;
end;

procedure TdlgAcompanhamentoMecanica.btGravarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TdlgAcompanhamentoMecanica.btComando2Click(Sender: TObject);
begin
    inherited;
    if C_MecanicaSTATUSSERVICO.Value = 60 then
        begin
            DlgMsg.ShowMsg(50, [pChar('Equipamento já entregue, não pode ser alterado!')]);
            raise Exception.Create('@@');
        end;
    if (C_MecanicaSTATUSSERVICO.Value < 20) and (C_MecanicaSTATUSSERVICO.Value <> 11) then
        DlgMsg.ShowMsg(8021)
    else
        begin
            DMProjeto.SetParametrosForm([C_MecanicaSERVICO.Value]);
            osnumero := C_MecanicaOSNUMERO.Value;
            DMProjeto.CriarForm('FrmMecanicaLaboratorio', self, True);
            Atualizar;
            BringToFront;
        end;
end;

procedure TdlgAcompanhamentoMecanica.cmbStatusChange(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TdlgAcompanhamentoMecanica.qdbServicosDblClick(
    Sender: TObject);
begin
    inherited;
    btComando2Click(Sender);
end;

procedure TdlgAcompanhamentoMecanica.btIniciarClick(Sender: TObject);
begin
    inherited;
    if (C_MecanicaTecnico.IsNull) and (C_MecanicaSTATUSSERVICO.AsInteger < 20) then
        begin
            DMProjeto.SetParametrosForm([C_MecanicaSERVICO.Value]);
            DMProjeto.CriarForm('dlgIniciarOS', self, True);
            BringToFront;
            Atualizar;
        end;
end;

procedure TdlgAcompanhamentoMecanica.qdbServicosCustomDrawCell(
    Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
var I: Integer;
begin
    inherited;
    I := ANode.Values[qdbServicos.FindColumnByFieldName('STATUSSERVICO').Index];
    if I = null then
        I := 10;
    case I of
        10:
            begin {RECEBIDO PELA RECEPÇÃO }
                AColor := $00EBD9D8;
            end;
        11:
            begin {AGUARDANDO ACERTO}
                AColor := clSkyBlue;
                AFont.Style := [fsBold];
            end;
        20:
            begin {AGUARDANDO AUTORIZAÇÃO}
                AColor := $00D5EAFF;
                AFont.Style := [fsBold];
            end;
        21:
            begin {AGUARDANDO AUTORIZAÇÃO}
                AColor := $0009FFFB;
                AFont.Style := [fsBold];
            end;
        30:
            begin {ENTRADA NO LABORATÓRIO}
                AColor := clRed;
                AFont.Style := [fsBold];
            end;
        40:
            begin {AGUARDANDO PEÇAS}
                AColor := $00EAEDC9;
                AFont.Style := [fsBold];
            end;
        50:
            begin {EQUIPAMENTO ENTREGUE}
                AColor := $0009FFFB;
                AFont.Style := [fsBold];
            end;
        60:
            begin
                AColor := clMoneyGreen;
                AFont.Style := [fsBold];
            end;
    end;
    if AFocused then
        begin
            AFont.Style := [fsBold];
        end;

end;
//Paulo inicio

procedure TdlgAcompanhamentoMecanica.btComando1Click(Sender: TObject);
var
    i: integer;
    xml: TXMLDocument;
    reg, campo: IXMLNode;
    arq: string;
begin
    inherited;
    if (C_MecanicaSTATUSSERVICO.Value <> 11) and (C_MecanicaSTATUSSERVICO.Value <> 60) then
        begin
            xml := TXMLDocument.Create(nil);
            arq := ExtractFilePath(application.ExeName) + 'OSXML.XML';
            try
                xml.Active := True;
                with dlgAcompanhamentoMecanica.Q_ExportarXML do
                    begin
                        close;
                        sql.Clear;
                        sql.add(' SELECT SUM(SD.VALOR  * sd.quantidade) AS VALORORCAMENTO,S.OSNUMERO, F.NOME, F.CPF_CNPJ,F.codigo AS CODIGOCLIENTE, ' +
                            ' M.DESCRICAO AS DESCMODELO,TP.descricao, SS.DESCRICAO AS DESCSTATUS, L.DESCRICAO AS DESCLOCAL,S.observacao ' +
                            ' FROM SERVICOS S ' +
                            ' INNER JOIN FAVORECIDOS F ON F.FAVORECIDO = S.CLIENTE ' +
                            ' LEFT JOIN CLIENTESEQUIPAMENTOS CE ON S.EQUIPAMENTO = CE.EQUIPAMENTO ' +
                            ' LEFT JOIN MODELOS M ON CE.MODELO = M.MODELO ' +
                            ' LEFT JOIN STATUSSERVICOS SS ON SS.STATUSSERVICO = S.STATUSSERVICO ' +
                            ' LEFT JOIN FAVORECIDOS T ON T.FAVORECIDO = S.TECNICO ' +
                            ' LEFT JOIN LOCALIZACAOEQUIPAMENTO L ON L.LOCALIZACAOEQUIPAMENTO = S.LOCALIZACAO ' +
                            ' LEFT JOIN SERVICOSDET SD ON SD.SERVICO = S.SERVICO ' +
                            ' LEFT JOIN ITENS I ON I.ITEM = SD.ITEM ' +
                            ' LEFT JOIN PRODUTOSPRECO PP ON PP.ITEM = I.ITEM AND PP.TABELAPRECO = 0 ' +
                            ' INNER JOIN tipoequipamentos TP on TP.tipoequipamento = M.tipoequipamento ' +
                            ' WHERE SS.STATUSSERVICO <> 60 and SS.STATUSSERVICO <> 11 ' +
                            ' GROUP BY S.OSNUMERO, F.NOME, F.CPF_CNPJ, M.DESCRICAO, SS.DESCRICAO, L.DESCRICAO,TP.descricao,F.codigo,S.observacao ' +
                            ' ORDER BY S.OSNUMERO ');
                        Open;
                        First;
                        xml.DocumentElement := xml.CreateElement('EsquemaXML', '');
                        First;
                        while not Eof do
                            begin
                                reg := xml.DocumentElement.AddChild('DadosOS');
                                for i := 0 to Fields.Count - 1 do
                                    begin
                                        campo := reg.AddChild(Fields[i].DisplayLabel);
                                        campo.Text := Fields[i].DisplayText;
                                    end;
                                Next;
                            end;
                    end;
                xml.SaveToFile(arq);
                ShowMessage('Arquivo exportado com sucesso' + #13 + arq);

            finally
                xml.free;
            end;
        end
    else
        DlgMsg.ShowMsg(50, ['Não é possivel exportar XML de uma Ordem de Serviço que esteja com um dos seguintes status: ' + #13
            + '- Aguardando Acerto' + #13
            + '- Equipamento Entregue']);
end;
//Paulo Fim

procedure TdlgAcompanhamentoMecanica.cbFinalizadosChange(
    Sender: TObject);
begin
    inherited;
//    edDataF.Visible := cbFinalizados.Checked;
    //cmbStatus.Enabled := not cbFinalizados.Checked;
//    if cbFinalizados.Checked then
//        edDataF.Date := Date;
    Atualizar;
end;

procedure TdlgAcompanhamentoMecanica.edDataFDateChange(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TdlgAcompanhamentoMecanica.ppeStatusChange(Sender: TObject);
begin
    inherited;
    atualizar;
end;

procedure TdlgAcompanhamentoMecanica.ppeStatusCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Atualizar;
end;
//Paulo inicio

procedure TdlgAcompanhamentoMecanica.TS_SpeedButton2Click(
    Sender: TObject);
begin
    inherited;
    RptTecnica := TRptTecnica.Create(Self);
    RptTecnica.ImprimirPecasPendentesGeral;
    RptTecnica.Release;
    RptTecnica := nil;
end;

procedure TdlgAcompanhamentoMecanica.TS_SpeedButton6Click(
    Sender: TObject);
begin
    inherited;
    if MessageDlg(' Para orçamentos aceitos clique em sim , para orçamentos não aceitos clique em não.', mtInformation, [mbyes, mbno], 0) = mryes then
        begin
            RptTecnica := TRptTecnica.Create(Self);
            RptTecnica.ImprimirOrcamentoNaoAceito('S', 'S', 'S', 'S', 'N', 'N', 'N', 'N', 2, dtDataInicial.Date, dtDataFinal.Date);
            RptTecnica.Release;
            RptTecnica := nil;
            exit;
        end;
    RptTecnica := TRptTecnica.Create(Self);
    RptTecnica.ImprimirOrcamentoNaoAceito('N', 'N', 'S', 'S', 'N', 'N', 'N', 'N', 1, dtDataInicial.Date, dtDataFinal.Date);
    RptTecnica.Release;
    RptTecnica := nil;
end;

procedure TdlgAcompanhamentoMecanica.TS_SpeedButton1Click(
    Sender: TObject);
begin
    inherited;
    if MessageDlg(' Para orçamentos avisados clique em sim , para orçamentos não avisados clique em não.', mtInformation, [mbyes, mbno], 0) = mryes then
        begin
            RptTecnica := TRptTecnica.Create(Self);
            RptTecnica.ImprimirOrcamentoNaoAceito('S', 'N', 'S', 'S', 'N', 'N', 'N', 'N', 4, dtDataInicial.Date, dtDataFinal.Date);
            RptTecnica.Release;
            RptTecnica := nil;
            exit;
        end;
    RptTecnica := TRptTecnica.Create(Self);
    RptTecnica.ImprimirOrcamentoNaoAceito('S', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 3, dtDataInicial.Date, dtDataFinal.Date);
    RptTecnica.Release;
    RptTecnica := nil;
end;

procedure TdlgAcompanhamentoMecanica.TS_SpeedButton5Click(
    Sender: TObject);
begin
    inherited;
    RptTecnica := TRptTecnica.Create(Self);
    RptTecnica.ImprimirOrcamentoNaoAceito('S', 'N', 'S', 'N', 'S', 'S', 'N', 'N', 5, dtDataInicial.Date, dtDataFinal.Date);
    RptTecnica.Release;
    RptTecnica := nil;
end;
//Paulo Fim

procedure TdlgAcompanhamentoMecanica.TS_SpeedButton4Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([C_MecanicaSERVICO.Value, C_MecanicaLOCALIZACAO.Value]);
    DMProjeto.CriarForm('DlgAlterarLocalizacao', self, True);
    BringToFront;
    Atualizar;
end;
//Paulo inicio

procedure TdlgAcompanhamentoMecanica.TS_SpeedButton3Click(
    Sender: TObject);
var
    dataInicial, dataFinal: TTime;
    idTecnicoServico, idTecnicoOrcamento: integer;
begin
    inherited;

    dataInicial := dtDataInicial.Date;
    dataFinal := dtDataFinal.Date;
    idTecnicoServico := 0;
    idTecnicoOrcamento := 0;

    if cmbTecnicos.LookupKeyValue <> null then
        idTecnicoServico := cmbTecnicos.LookupKeyValue;

    if cmbTecnicoOrcamento.LookupKeyValue <> null then
        idTecnicoOrcamento := cmbTecnicoOrcamento.LookupKeyValue;

    RptTecnica := TRptTecnica.Create(Self);
    RptTecnica.ImprimirPecasPendentes(numOS.Text, sStatusM, sStatusS, dataInicial, dataFinal, cmbStatusGarantia.ItemIndex, idTecnicoServico, idTecnicoOrcamento);
    RptTecnica.Release;
    RptTecnica := nil;
end;

procedure TdlgAcompanhamentoMecanica.TS_SpeedButton8Click(
    Sender: TObject);
begin
    inherited;
    RptTecnica := TRptTecnica.Create(Self);
    RptTecnica.ImprimirOrcamentoNaoAceito('S', 'N', 'S', 'N', 'S', 'S', 'N', 'N', 6, dtDataInicial.Date, dtDataFinal.Date);
    RptTecnica.Release;
    RptTecnica := nil;
end;

procedure TdlgAcompanhamentoMecanica.TS_SpeedButton7Click(
    Sender: TObject);
begin
    inherited;
end;
//Paulo Fim

procedure TdlgAcompanhamentoMecanica.FormShow(Sender: TObject);
begin
    inherited;
    dtDataInicial.Date := DMProjeto.getDataServidor;
    dtDataFinal.Date := DMProjeto.getDataServidor;
    TS_SpeedButton1.Caption := 'Orçamentos' + #13 + 'Avisados / Não Avisados';
    TS_SpeedButton6.Caption := 'Orçamentos' + #13 + 'Aceitos / Não Aceitos';
    TS_SpeedButton5.Caption := 'Orçamentos' + #13 + 'Prontos e Não Avisados';

end;

procedure TdlgAcompanhamentoMecanica.btImprimirClick(Sender: TObject);
begin
    inherited;
    RptTecnica := TRptTecnica.Create(Self);
    RptTecnica.ImprimirControleInterno(C_MecanicaSERVICO.Value);
    RptTecnica.Release;
    RptTecnica := nil;
    if C_MecanicaSTATUSSERVICO.Value < 20 then
        with DMProjeto.Q_SQL do
            begin
                Close;
                SQL.Text := ' UPDATE SERVICOS ' +
                    ' SET STATUSSERVICO = 12 ' +
                    ' WHERE (SERVICO = :servico);';
                ParamByName('servico').AsInteger := C_MecanicaSERVICO.Value;
                ExecSQL;
            end;
    //  if not (C_Mecanica.State in [dsInsert,dsEdit]) then
    //    C_Mecanica.Edit;
    //  C_MecanicaSTATUSSERVICO.Value := 12;
    //  C_Mecanica.UpdateRecord;
    DMProjeto.DB_Projeto.DefaultTransaction.Commit;
    Atualizar;
end;

procedure TdlgAcompanhamentoMecanica.TS_SpeedButton9Click(
    Sender: TObject);
begin
    inherited;
    if (C_MecanicaSTATUSSERVICO.Value <> 11) and (C_MecanicaSTATUSSERVICO.Value <> 60) then
        begin
            try
            if DlgMsg.ShowMsg(6042, ['Deseja realmente excluir a O.S. de número: ' + C_MecanicaOSNUMERO.Value]) = 100 then
                with DMProjeto.Q_SQL do
                    begin
                        // apagando a ordem de servico
                        Close;
                        SQL.Text := ' DELETE FROM SERVICOS WHERE (SERVICO = :servico);';
                        ParamByName('servico').AsInteger := C_MecanicaSERVICO.Value;
                        ExecSQL;
                        // apagando o equipamento incluso na ordem de servico
                        Close;
                        SQL.Text := 'delete from clientesequipamentos where equipamento = :EquipamentoCliente;';
                        ParamByName('EquipamentoCliente').AsInteger := C_MecanicaEQUIPAMENTO.Value;
                        ExecSQL;
                    end;
            except
                DlgMsg.ShowMsg(6047, ['Ocorreu um Erro ao tentar excluir a O.S. número: '+ C_MecanicaOSNUMERO.Value]);
                Exit;
            end;
        end
    else
        begin
            DlgMsg.ShowMsg(50, ['Não é possivel excluir Ordem de Serviço que esteja com um dos seguintes status: ' + #13
                + '- Aguardando Acerto' + #13
                    + '- Equipamento Entregue']);
            Exit;
        end;

    //  if not (C_Mecanica.State in [dsInsert,dsEdit]) then
    //    C_Mecanica.Edit;
    //  C_MecanicaSTATUSSERVICO.Value := 12;
    //  C_Mecanica.UpdateRecord;
    DMProjeto.DB_Projeto.DefaultTransaction.Commit;
    Atualizar;
end;

procedure TdlgAcompanhamentoMecanica.TS_SpeedButton10Click(
    Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgMarcasRelatorio', self, True);
    BringToFront;
end;

procedure TdlgAcompanhamentoMecanica.TS_SpeedButton11Click(
    Sender: TObject);
var
    data1, data2: TTime;
    idTecnicoServico, idTecnicoOrcamento: integer;
begin
    inherited;

    data1 := dtDataInicial.Date;
    data2 := dtDataFinal.Date;
    idTecnicoServico := 0;
    idTecnicoOrcamento := 0;

    if cmbTecnicos.LookupKeyValue <> null then
        idTecnicoServico := cmbTecnicos.LookupKeyValue;

    if cmbTecnicoOrcamento.LookupKeyValue <> null then
        idTecnicoOrcamento := cmbTecnicoOrcamento.LookupKeyValue;

    RptTecnica := TRptTecnica.Create(Self);
    RptTecnica.ImprimirRelatorioPorMarca(numOS.Text, sStatusM, sStatusS, data1, data2, cmbStatusGarantia.ItemIndex, idTecnicoServico, idTecnicoOrcamento);
    RptTecnica.Release;
    RptTecnica := nil;
end;

procedure TdlgAcompanhamentoMecanica.TS_ComboBox1Change(
    Sender: TObject);
begin
    inherited;
    atualizar;
end;

procedure TdlgAcompanhamentoMecanica.cmbStatusGarantiaChange(
    Sender: TObject);
begin
    inherited;
    atualizar;
end;



end.


unit Dlg_LerRetorno;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, gbCobranca, ZRCtrls, ZReport, dxfProgressBar,
    DB, IBCustomDataSet, IBQuery, Provider, DBClient;

type
    TDlgLerRetorno = class(TFrmModeloCadastros)
        gbRetorno: TgbCobranca;
        ZRelatorio: TZReport;
        zBandaHeader: TZRBand;
        lbRelatorio: TZRLabel;
        OpenDlg: TOpenDialog;
        Barra: TdxfProgressBar;
        Q_SQL: TIBQuery;
        C_Titulos: TClientDataSet;
        Q_Titulos: TIBQuery;
        P_Titulos: TDataSetProvider;
        C_TitulosID: TIntegerField;
        C_TitulosTITULO: TStringField;
        C_TitulosVALOR_TEMP: TBCDField;
        C_TitulosVENCIMENTO: TDateField;
        C_TitulosCOMPETENCIA: TDateField;
        C_TitulosCLIENTE: TIntegerField;
        C_TitulosCODCLIENTE: TStringField;
        C_TitulosFONE1: TStringField;
        C_TitulosFONE2: TStringField;
        C_TitulosNOME: TStringField;
        C_TitulosENDERECO: TStringField;
        C_TitulosBAIRRO: TStringField;
        C_TitulosCIDADE: TStringField;
        C_TitulosUF: TStringField;
        C_TitulosCEP: TStringField;
        C_TitulosCPF_CNPJ: TStringField;
        C_TitulosCARTEIRA: TIntegerField;
        C_TitulosNUMEROCARTEIRA: TStringField;
        C_TitulosLOCALDEPAGAMENTO: TStringField;
        C_TitulosESPECIE: TStringField;
        C_TitulosESPECIEDOC: TStringField;
        C_TitulosQUANTIDADE: TStringField;
        C_TitulosACEITE: TStringField;
        C_TitulosAGENCIA: TStringField;
        C_TitulosCODIGO: TStringField;
        C_TitulosINSTRUCOES_TEMP: TStringField;
        C_TitulosNOSSONUMERO: TStringField;
        C_TitulosJUROSINSTRUCOES: TFloatField;
        C_TitulosCOBRAREMISSAO: TStringField;
        C_TitulosTARIFAEMISSAO: TBCDField;
        C_TitulosPREIMPRESSO: TStringField;
        C_TitulosDIGITOCODIGO: TStringField;
        C_TitulosNUMCONTA: TStringField;
        C_TitulosCODBANCO: TStringField;
        C_TitulosDESCBANCO: TStringField;
        C_TitulosLOGOTIPO: TStringField;
        C_TitulosCONTA: TIntegerField;
        procedure btGravarClick(Sender: TObject);
    private
        { Private declarations }
        procedure ImprimirRelatorioConferencia(sRelatorio, sArquivo: string);
    public
        { Public declarations }
    end;

var
    DlgLerRetorno: TDlgLerRetorno;

implementation

{$R *.dfm}

uses DM_Projeto, DM_Financeiro;

procedure TDlgLerRetorno.btGravarClick(Sender: TObject);
var sArq, sItens, sRelatorio: string;
    i, Deposito: integer;
begin
    inherited;
    if not DirectoryExists(ExtractFilePath(Application.ExeName) + '\Retorno') then
        CreateDir(ExtractFilePath(Application.ExeName) + '\Retorno');
    OpenDlg.InitialDir := ExtractFilePath(Application.ExeName) + '\Retorno';
    if OpenDlg.Execute then
        sArq := OpenDlg.FileName
    else
        Exit;
    try
        Screen.Cursor := crHourGlass;
        Barra.Visible := True;
        Barra.Position := 0;
        gbRetorno.NomeArquivo := sArq;
        if gbRetorno.LerRetorno then
            begin
                with DMProjeto.Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'select count(*) from CARTEIRASARQUIVOS ' +
                            'where NUMEROARQUIVO = :NUM and Upper(NOMEARQUIVO) = :NOME ';
                        ParamByName('num').AsInteger := gbRetorno.NumeroArquivo;
                        ParamByName('nome').AsString := UpperCase(ExtractFileName(gbRetorno.NomeArquivo));
                        Open;
                        if Fields[0].AsInteger > 0 then
                            begin
                                Screen.Cursor := crDefault;
                                DlgMsg.ShowMsg(8034);
                                Close;
                                Exit;
                            end;
                        Close;
                    end;
                //
                Barra.Max := gbRetorno.Titulos.Count;
                Barra.Position := 0;
                sRelatorio := '';
                // Baixando os títulos automaticamente.
                for i := 0 to gbRetorno.Titulos.Count - 1 do
                    begin
                        Barra.Position := Barra.Position + 1;
                        {comentado por EVERTON -- nao estava compilando testes boleto}
                        //if gbRetorno.Titulos[i].Liquidado then
//                            begin
//                                C_Titulos.Close;
//                                Q_Titulos.ParamByName('id').AsInteger := StrToIntDef(gbRetorno.Titulos[i].SeuNumero, -999);
//                                C_Titulos.Open;
//                                if C_Titulos.RecordCount > 0 then
//                                    begin
//                                        sItens := gbRetorno.Titulos[i].SeuNumero + #13 +
//                                            'ValorAReceber|||Pagamento|||Juros|||Descontos' + #13 +
//                                            CurrToStr(gbRetorno.Titulos[i].ValorDocumento) + '|||' +
//                                            CurrToStr(gbRetorno.Titulos[i].ValorPago) + '|||' +
//                                            CurrToStr(gbRetorno.Titulos[i].ValorMoraJuros) + '|||' +
//                                            CurrToStr(gbRetorno.Titulos[i].ValorDesconto);
//                                        Deposito := DMFinanceiro.ReceberTitulos(0, sItens, C_TitulosCLIENTE.Value, C_TitulosCONTA.Value,
//                                            gbRetorno.Titulos[i].DataRecebimento, 0, 0, 'Receb.Arq.Retorno Nº' + IntToStr(gbRetorno.NumeroArquivo));
//                                        DMFinanceiro.ReceberDoc(0, 1, Deposito, 20, gbRetorno.Titulos[i].ValorPago, gbRetorno.Titulos[i].DataRecebimento,
//                                            'Receb.Arq.Retorno Nº' + IntToStr(gbRetorno.NumeroArquivo), 0, 0, '', C_TitulosCONTA.Value);
//                                        DMFinanceiro.BaixarTitulo(gbRetorno.Titulos[i].SeuNumero);
//                                        sRelatorio := StringOfChar('=', 80) + #13#10 + 'Título: ' + C_TitulosTITULO.AsString + #13#10 +
//                                            'Cliente: ' + C_TitulosNome.AsString + #13#10 +
//                                            'Data de Vencimento: ' + FormatDateTime(ShortDateFormat, C_TitulosVENCIMENTO.AsDateTime) + #13#10 +
//                                            'Data de Pagamento:  ' + FormatDateTime(ShortDateFormat, gbRetorno.Titulos[i].DataRecebimento) + #13#10 +
//                                            'Valor Pago:         ' + FormatFloat('#,##0.00', gbRetorno.Titulos[i].ValorPago) + #13#10;
//                                    end;
//                            end;
                    end;
                with DMProjeto.Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'insert into carteirasarquivos ( numeroarquivo, nomearquivo ) ' +
                            'values ( :num, :nome ) ';
                        ParamByName('num').AsInteger := gbRetorno.NumeroArquivo;
                        ParamByName('nome').AsString := ExtractFileName(gbRetorno.NomeArquivo);
                        ExecSQL;
                        Close;
                    end;
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
                Screen.Cursor := crDefault;
                ImprimirRelatorioConferencia(sRelatorio, gbRetorno.NomeArquivo);
                lbRelatorio.Caption := gbRetorno.GerarRelatorio.Text;
                ZRelatorio.Preview;
            end
        else
            DlgMsg.ShowMsg(8033);
    except
        on e: exception do
            begin
                Screen.Cursor := crDefault;
                DlgMsg.ShowMsg(6047, ['ERRO' + #13#10 + e.message]);
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
            end;
    end;
end;

procedure TDlgLerRetorno.ImprimirRelatorioConferencia(sRelatorio, sArquivo: string);
var sRel: string;
begin
    sRel := sRelatorio;
    if sRel = '' then
        sRel := StringOfChar('=', 80) + #13#10 +
            'Nenhum título retornado pelo arquivo foi encontrado no banco de dados.' +
            #13#10 + 'Verifique com o seu banco.';
    lbRelatorio.Caption := FormatDateTime(LongDateFormat, Now) + ' ' + FormatDateTime(LongTimeFormat, Now) +
        #13#10 + 'ARQUIVO PROCESSADO: ' + sArquivo + #13#10 + sRel + #13#10 + StringOfChar('=', 80);
    ZRelatorio.Preview;
end;

end.


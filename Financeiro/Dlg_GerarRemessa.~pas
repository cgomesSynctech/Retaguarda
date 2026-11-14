unit Dlg_GerarRemessa;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
    TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, dxExEdtr, dxCntner, dxEditor, dxDBEdtr,
    dxDBELib, TS_LookupComboBox, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
    dxDBGrid, DB, IBCustomDataSet, IBQuery, DBClient, Provider, TS_QDBGrid,
    gbCobranca;

type
    TDlgGerarRemessa = class(TFrmModeloCadastros)
        dbgTitulos: TTS_QDBGrid;
        C_TitulosDS: TDataSource;
        P_Titulos: TDataSetProvider;
        C_Titulos: TClientDataSet;
        Q_Titulos: TIBQuery;
        dbgTitulosID: TdxDBGridMaskColumn;
        dbgTitulosTITULO: TdxDBGridMaskColumn;
        dbgTitulosCOMPETENCIA: TdxDBGridDateColumn;
        dbgTitulosVENCIMENTO: TdxDBGridDateColumn;
        dbgTitulosVALOR: TdxDBGridCurrencyColumn;
        dbgTitulosNOME: TdxDBGridMaskColumn;
        dbgTitulosCPF_CNPJ: TdxDBGridMaskColumn;
        dbgTitulosCODIGO: TdxDBGridMaskColumn;
        TS_Panel1: TTS_Panel;
        TS_Label1: TTS_Label;
        cmbCarteira: TTS_LookupComboBox;
        C_Titulos_icSelecionado: TIntegerField;
        C_CarteirasDS: TDataSource;
        C_Carteiras: TClientDataSet;
        P_Carteiras: TDataSetProvider;
        Q_Carteiras: TIBQuery;
        C_CarteirasCARTEIRA: TIntegerField;
        C_CarteirasNUMEROCARTEIRA: TStringField;
        gbTitulo1: TgbTitulo;
        gbRemessa: TgbCobranca;
    C_TitulosNOTAFISCAL: TStringField;
    C_TitulosTITULO: TStringField;
    C_TitulosVENCIMENTO: TDateField;
    C_TitulosCODVENDEDOR: TStringField;
    C_TitulosVENDEDOR: TStringField;
    C_TitulosCODCLIENTE: TStringField;
    C_TitulosFONE1: TStringField;
    C_TitulosFONE2: TStringField;
    C_TitulosPLANOPAGAMENTO: TStringField;
    C_TitulosCOMPETENCIA: TDateField;
    C_TitulosNOME: TStringField;
    C_TitulosENDERECO: TStringField;
    C_TitulosEMAIL: TStringField;
    C_TitulosNRO: TStringField;
    C_TitulosFAVORECIDO: TIntegerField;
    C_TitulosBAIRRO: TStringField;
    C_TitulosCIDADE: TStringField;
    C_TitulosUF: TStringField;
    C_TitulosCEP: TStringField;
    C_TitulosCPF_CNPJ: TStringField;
    C_TitulosINSCRICAO_EST: TStringField;
    C_TitulosDATAANTECIPACAO: TDateField;
    C_TitulosDATANASC: TDateField;
    C_TitulosPAI: TStringField;
    C_TitulosMAE: TStringField;
    C_TitulosTIPOCOBRANCA: TIntegerField;
    C_TitulosDESCTIPOCOBRANCA: TStringField;
    C_TitulosNUMCONTA: TStringField;
    C_TitulosCODBANCO: TStringField;
    C_TitulosDESCBANCO: TStringField;
    C_TitulosLOGOTIPO: TStringField;
    C_TitulosID: TIntegerField;
    C_TitulosOBS: TStringField;
    C_TitulosDATA: TDateField;
    C_TitulosNOME_AVAL: TStringField;
    C_TitulosENDERECO_AVAL: TStringField;
    C_TitulosCIDADE_AVAL: TStringField;
    C_TitulosCEP_AVAL: TStringField;
    C_TitulosCPF_AVAL: TStringField;
    C_TitulosRG: TStringField;
    C_TitulosOBSSAIDA: TStringField;
    C_TitulosCARTEIRA: TIntegerField;
    C_TitulosNUMEROCARTEIRA: TStringField;
    C_TitulosLOCALDEPAGAMENTO: TStringField;
    C_TitulosESPECIE: TStringField;
    C_TitulosESPECIEDOC: TStringField;
    C_TitulosACEITE: TStringField;
    C_TitulosAGENCIA: TStringField;
    C_TitulosCODIGO: TStringField;
    C_TitulosNOSSONUMERO: TStringField;
    C_TitulosQUANTIDADE: TStringField;
    C_TitulosINSTRUCOES_TEMP: TStringField;
    C_TitulosDESCRICAO: TStringField;
    C_TitulosDESATIVADO: TStringField;
    C_TitulosBANCO: TIntegerField;
    C_TitulosCONTA: TIntegerField;
    C_TitulosJUROSINSTRUCOES: TFloatField;
    C_TitulosCOBRAREMISSAO: TStringField;
    C_TitulosPREIMPRESSO: TStringField;
    C_TitulosDIGITOCODIGO: TStringField;
    C_TitulosTIPOCARTEIRA: TStringField;
    C_TitulosDIGITOAGENCIA: TStringField;
    C_TitulosCONVENIO: TStringField;
    C_TitulosSACADOR_NOME: TStringField;
    C_TitulosSACADOR_CPFCNPJ: TStringField;
    C_TitulosCEDENTE_NOME: TStringField;
    C_TitulosCEDENTE_CPFCNPJ: TStringField;
    C_TitulosIMGBOLETOIMPRESSO: TStringField;
    C_TitulosNUMERO: TStringField;
    C_TitulosDIGITONOSSONUMERO: TStringField;
    C_TitulosVALORDESCANTECIPADO: TBCDField;
    C_TitulosVALORJUROSMORA: TBCDField;
    C_TitulosTOTAL: TFloatField;
    C_TitulosTARIFAEMISSAO: TBCDField;
    C_TitulosVALOR: TBCDField;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure cmbCarteiraChange(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure C_TitulosCalcFields(DataSet: TDataSet);
        procedure btLimparClick(Sender: TObject);
    private
        procedure Atualizar;
        function Validacoes: boolean;
        procedure PrepararTitulo;
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DlgGerarRemessa: TDlgGerarRemessa;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDlgGerarRemessa.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    C_Carteiras.Close;
    C_Carteiras.Open;
    cmbCarteira.LookUpKeyValue := C_CarteirasCarteira.AsInteger;
    //Atualizar;
    //dbgTitulos.SelectAll;
    //dbgTitulos.GoToFirst;
end;

procedure TDlgGerarRemessa.Atualizar;
begin
    C_Titulos.Close;
    Q_Titulos.ParamByName('carteira').AsInteger := C_CarteirasCARTEIRA.AsInteger;
    C_Titulos.Open;
end;

procedure TDlgGerarRemessa.cmbCarteiraChange(
    Sender: TObject);
begin
    inherited;
    Atualizar;
end;

function TDlgGerarRemessa.Validacoes: boolean;
begin
    result := false;
    if dbgTitulos.Selecionados = '' then
        begin
            DlgMsg.ShowMsg(929, ['os títulos que deseja gerar a remessa.']);
            Exit;
        end;
    result := true;
end;

procedure TDlgGerarRemessa.btGravarClick(Sender: TObject);
var sArq, sSelecionados: string;
    nArq: integer;
begin
    inherited;
    if not Validacoes then
        Exit;
    if not DirectoryExists(ExtractFilePath(Application.ExeName) + '\Remessa') then
        CreateDir(ExtractFilePath(Application.ExeName) + '\Remessa');
    nArq := DMProjeto.NextID('ARQREMESSA');
    sArq := ExtractFilePath(Application.ExeName) + '\Remessa\' +
        FormatFloat('000000', nArq) + '.REM';
    sSelecionados := dbgTitulos.Selecionados;
    gbRemessa.NumeroArquivo := nArq;
    gbRemessa.NomeArquivo := sArq;
    gbRemessa.DataArquivo := Now;
    gbRemessa.Titulos.Clear;
    DMProjeto.DadosEmpresa;
    try
        Screen.Cursor := crHourGlass;
        C_Titulos.DisableControls;
        C_Titulos.First;
        while not C_Titulos.EOF do
            begin
                if (C_Titulos_icSelecionado.Value = 1) then
                    begin
                        PrepararTitulo;
                        gbRemessa.Titulos.Add(gbTitulo1);
                    end;
                C_Titulos.Next;
            end;
    finally
        C_Titulos.EnableControls;
        Screen.Cursor := crDefault;
    end;
    if gbRemessa.GerarRemessa then
        begin
            with DMProjeto.Q_SQL do
                begin
                    Close;
                    SQL.Text := 'update titulosareceber set remessa = ''S'' ' +
                        'where id in (' + sSelecionados + ')';
                    ExecSQL;
                    Close;
                end;
            if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
            Atualizar;
            DlgMsg.ShowMsg(8032, [UpperCase(sArq)]);
        end
    else
        DlgMsg.ShowMsg(8031);
end;

procedure TDlgGerarRemessa.C_TitulosCalcFields(DataSet: TDataSet);
begin
    inherited;
    if DataSet.FieldByName('COBRAREMISSAO').AsString = 'S' then
        begin
            DataSet.FieldByName('VALOR').Value := DataSet.FieldByName('VALOR').Value +
                DataSet.FieldByName('TARIFAEMISSAO').Value;
            DataSet.FieldByName('INSTRUCOES_TEMP').Value := DataSet.FieldByName('INSTRUCOES_TEMP').Value +
                #13#10 + '- INCLUIDA NA PARCELA A TARIFA DE EMISSAO DESTE DOC. DE ' + DataSet.FieldByName('ESPECIE').AsString +
                ' ' + FormatFloat('0.00', DataSet.FieldByName('TARIFAEMISSAO').Value) + '.';
        end
    else
        begin
            DataSet.FieldByName('VALOR').Value := DataSet.FieldByName('VALOR').Value;
            DataSet.FieldByName('INSTRUCOES_TEMP').Value := DataSet.FieldByName('INSTRUCOES_TEMP').Value;
        end;
end;

procedure TDlgGerarRemessa.PrepararTitulo;
begin

    gbTitulo1.NumeroDocumento := C_TitulosTITULO.AsString;

    gbTitulo1.BoletoComImagem := C_TitulosIMGBOLETOIMPRESSO.AsString = 'S';

    gbTitulo1.Cedente.Nome := C_TitulosCEDENTE_NOME.AsString;
    gbTitulo1.Cedente.NumeroCPFCGC := C_TitulosCEDENTE_CPFCNPJ.AsString;
    if Length(gbTitulo1.Cedente.NumeroCPFCGC) > 11 then
        begin
            gbTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
        end;

    gbTitulo1.Sacador.Nome := C_TitulosSACADOR_NOME.AsString;
    gbTitulo1.Sacador.NumeroCPFCGC := C_TitulosSACADOR_CPFCNPJ.AsString;
    if Length(gbTitulo1.Sacador.NumeroCPFCGC) > 11 then
        begin
            gbTitulo1.Sacador.TipoInscricao := tiPessoaJuridica;
        end;

    gbTitulo1.Carteira := C_TitulosNUMEROCARTEIRA.AsString;

    gbTitulo1.Cedente.CodigoCedente := C_TitulosCODIGO.AsString;
    gbTitulo1.Cedente.DigitoCodigoCedente := C_TitulosDIGITOCODIGO.AsString;
    //
    gbTitulo1.Cedente.ContaBancaria.Banco.Codigo := C_TitulosCODBANCO.AsString;
    gbTitulo1.Cedente.ContaBancaria.CodigoAgencia := C_TitulosAGENCIA.AsString; //Copy(C_TitulosAGENCIA.AsString, 1, Length(C_TitulosAGENCIA.AsString));
    gbTitulo1.Cedente.ContaBancaria.DigitoAgencia := C_TitulosDIGITOAGENCIA.AsString; //Copy(C_TitulosAGENCIA.AsString, Length(C_TitulosAGENCIA.AsString), 1);

    gbTitulo1.Cedente.ContaBancaria.NumeroConta := C_TitulosNUMCONTA.AsString; // Copy(C_TitulosCodigo.AsString, 1, Length(C_TitulosCodigo.AsString));
    gbTitulo1.Cedente.ContaBancaria.DigitoConta := C_TitulosDIGITOCODIGO.AsString; //Copy(C_TitulosCodigo.AsString, Length(C_TitulosCodigo.AsString), 1);
    //
    gbTitulo1.Cedente.Endereco.Bairro := DMProjeto.sBairroEmpresa;
    gbTitulo1.Cedente.Endereco.CEP := DMProjeto.sCEPEmpresa;
    gbTitulo1.Cedente.Endereco.Cidade := DMProjeto.sCidadeEmpresa;
    gbTitulo1.Cedente.Endereco.Email := DMProjeto.sEmailEmpresa;
    //gbTitulo1.Cedente.Endereco.Estado := DMProjeto.sUFEmpresa;
    gbTitulo1.Cedente.Endereco.Estado := '';
    gbTitulo1.Cedente.Endereco.Rua := DMProjeto.sEnderecoEmpresa;
    //
    gbTitulo1.DataDocumento := C_TitulosCOMPETENCIA.AsDateTime;
    gbTitulo1.DataVencimento := C_TitulosVENCIMENTO.AsDateTime;
    //gbTitulo1.EspecieMoeda := C_TitulosESPECIE.AsString;
    gbTitulo1.LocalPagamento := C_TitulosLOCALDEPAGAMENTO.AsString;
    gbTitulo1.NossoNumero := C_TitulosNOSSONUMERO.AsString;

    { Felipe -  Verifica se o boleto é para banco Bradesco. Se for, atribui o valor do campo DIGITONOSSONUMERO da tabela de
                TITULOSARECEBER para ser gerado o arquivo remessa }
    if (StrtoInt(C_CarteirasNUMEROCARTEIRA.Value) in [03, 06, 09]) then
        gbTitulo1.DigitoNossoNumeroBradesco := C_TitulosDIGITONOSSONUMERO.AsString;

    //  Sacado
    gbTitulo1.Sacado.Nome := C_TitulosNOME.AsString;
    gbTitulo1.Sacado.Endereco.Bairro := C_TitulosBAIRRO.AsString;
    gbTitulo1.Sacado.Endereco.CEP := funcoes.SoNumeros(C_TitulosCEP.AsString, 8);    
    gbTitulo1.Sacado.Endereco.Cidade := C_TitulosCIDADE.AsString;
    gbTitulo1.Sacado.Endereco.Estado := C_TitulosUF.AsString;
    gbTitulo1.Sacado.Endereco.Rua := C_TitulosENDERECO.AsString;
    gbTitulo1.Sacado.Endereco.Numero := C_TitulosNRO.AsString;
    gbTitulo1.Sacado.NumeroCPFCGC := C_TitulosCPF_CNPJ.AsString;
    gbTitulo1.Sacado.TipoInscricao := iif(Length(Trim(C_TitulosCPF_CNPJ.AsString)) = 11, tiPessoaFisica,
        iif(Length(Trim(C_TitulosCPF_CNPJ.AsString)) = 14, tiPessoaJuridica, tiOutro));
    gbTitulo1.SeuNumero := SemZeroEsq(C_TitulosTITULO.AsString);
    gbTitulo1.ValorDocumento := C_TitulosVALOR.AsCurrency;
    gbTitulo1.Instrucoes.Clear;
    gbTitulo1.Instrucoes.Add(C_TitulosINSTRUCOES_TEMP.AsString);
    if (C_TitulosLOGOTIPO.AsString <> '') and FileExists(DMProjeto.ImgPath + C_TitulosLOGOTIPO.Value) then
        begin
            try
                //gbTitulo1.ImgBanco.LoadFromFile(DMProjeto.ImgPath + C_TitulosLOGOTIPO.Value);
                gbTitulo1.ImagemBoleto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TitulosLOGOTIPO.Value);
            except
            end;
        end;

    {gbBoleto.NumeroDocumento := C_TitulosTITULO.AsString;
    gbBoleto.Carteira := C_TitulosNUMEROCARTEIRA.AsString;
    gbBoleto.Cedente.Nome := C_TitulosCEDENTE_NOME.AsString;
    gbBoleto.Cedente.NumeroCPFCGC := C_TitulosCEDENTE_CPFCNPJ.AsString;

    gbBoleto.Cedente.CodigoCedente := C_TitulosCODIGO.AsString;
    gbBoleto.Cedente.DigitoCodigoCedente := C_TitulosDIGITOCODIGO.AsString;
    //
    gbBoleto.Cedente.ContaBancaria.Banco.Codigo := C_TitulosCODBANCO.AsString;
    gbBoleto.Cedente.ContaBancaria.CodigoAgencia := Copy(C_TitulosAGENCIA.AsString, 1, Length(C_TitulosAGENCIA.AsString) - 1);
    gbBoleto.Cedente.ContaBancaria.DigitoAgencia := Copy(C_TitulosAGENCIA.AsString, Length(C_TitulosAGENCIA.AsString), 1);
    gbBoleto.Cedente.ContaBancaria.NumeroConta := SoNumeros(Copy(C_TitulosNUMCONTA.AsString, 1, Length(C_TitulosNUMCONTA.AsString) - 1), 0);
    gbBoleto.Cedente.ContaBancaria.DigitoConta := Copy(C_TitulosNUMCONTA.AsString, Length(C_TitulosNUMCONTA.AsString), 1);
    //
    gbBoleto.Cedente.Endereco.Bairro := DMProjeto.sBairroEmpresa;
    gbBoleto.Cedente.Endereco.CEP := DMProjeto.sCEPEmpresa;
    gbBoleto.Cedente.Endereco.Cidade := DMProjeto.sCidadeEmpresa;
    gbBoleto.Cedente.Endereco.Email := DMProjeto.sEmailEmpresa;
    gbBoleto.Cedente.Endereco.Estado := DMProjeto.sUFEmpresa;
    gbBoleto.Cedente.Endereco.Rua := DMProjeto.sEnderecoEmpresa;

    gbBoleto.Cedente.TipoInscricao := tiPessoaJuridica;
    //
    gbBoleto.DataDocumento := C_TitulosCOMPETENCIA.AsDateTime;
    gbBoleto.DataVencimento := C_TitulosVENCIMENTO.AsDateTime;
    //gbBoleto.EspecieMoeda := C_TitulosESPECIE.AsString;
    gbBoleto.LocalPagamento := C_TitulosLOCALDEPAGAMENTO.AsString;
    gbBoleto.NossoNumero := C_TitulosID.AsString;
    //
    gbBoleto.Sacado.Nome := C_TitulosNOME.AsString;
    gbBoleto.Sacado.Endereco.Bairro := C_TitulosBAIRRO.AsString;
    gbBoleto.Sacado.Endereco.CEP := funcoes.SoNumeros(C_TitulosCEP.AsString,8);
    gbBoleto.Sacado.Endereco.Cidade := C_TitulosCIDADE.AsString;
    gbBoleto.Sacado.Endereco.Estado := C_TitulosUF.AsString;
    gbBoleto.Sacado.Endereco.Rua := C_TitulosENDERECO.AsString;
    gbBoleto.Sacado.NumeroCPFCGC := C_TitulosCPF_CNPJ.AsString;
    gbBoleto.Sacado.TipoInscricao := iif(Length(Trim(C_TitulosCPF_CNPJ.AsString)) = 11, tiPessoaFisica,
        iif(Length(Trim(C_TitulosCPF_CNPJ.AsString)) = 14, tiPessoaJuridica, tiOutro));
    gbBoleto.SeuNumero := C_TitulosID.AsString;
    gbBoleto.ValorDocumento := C_TitulosVALOR.AsCurrency;
    gbBoleto.Instrucoes.Clear;
    gbBoleto.Instrucoes.Add(C_TitulosINSTRUCOES.AsString);
    if (C_TitulosLOGOTIPO.AsString <> '') and FileExists(DMProjeto.ImgPath + C_TitulosLOGOTIPO.Value) then
        begin
            try
                //gbBoleto.ImgBanco.LoadFromFile(DMProjeto.ImgPath + C_TitulosLOGOTIPO.Value);
            except
            end;
        end;
        }
end;

procedure TDlgGerarRemessa.btLimparClick(Sender: TObject);
begin
    inherited;
    Atualizar;
    dbgTitulos.SelectAll;
    dbgTitulos.GoToFirst;
end;

end.


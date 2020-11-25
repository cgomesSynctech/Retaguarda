unit DM_Grupos;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    TDM_MANUTENCAO, Db, IBCustomDataSet, DlgMsg, DMComponent, IBUpdateSQL,
    IBQuery, DBClient, Provider;

type
    TDMGrupos = class(TDMManutencao)
        Q_TiposItem: TIBQuery;
        C_TabelaGRUPO: TIntegerField;
        C_TabelaCODIGO: TStringField;
        C_TabelaDESCRICAOGRUPO: TStringField;
        C_TabelaTIPOITEM: TIntegerField;
        C_TabelaIMPORTACAO: TIntegerField;
        P_TiposItens: TDataSetProvider;
        C_TiposItens: TClientDataSet;
        C_TabelacmbTipo: TStringField;
        C_TiposItensTIPOITEM: TIntegerField;
        C_TiposItensDESCRICAO: TStringField;
        C_TabelaFOTO: TStringField;
        C_TabelaCOMISSAO: TBCDField;
        C_TabelaDESCONTOMAXIMO: TBCDField;
        C_TabelaCUSTODESPESAS: TBCDField;
        C_TabelaFATORLUCRO: TBCDField;
        C_TabelaicDespesaFixa: TCurrencyField;
        C_TabelaicEncargosCartoes: TCurrencyField;
        C_TabelaicComissaoAplic: TCurrencyField;
        C_TabelaicFator: TFloatField;
        Q_SQL: TIBQuery;
        C_TabelaicComissao: TCurrencyField;
        C_TabelaicDescontoMaximo: TCurrencyField;
        C_TabelaicFatorLucro: TCurrencyField;
        C_TabelaCST: TStringField;
        C_TabelaREDUCAOCST: TBCDField;
        C_TabelaALIQICMS: TBCDField;
        C_TabelaSITUACAOECF: TStringField;
        C_TabelaTVA: TBCDField;
        C_TabelaTVAFONTE: TBCDField;
        Q_SitECF: TIBQuery;
        P_SitECF: TDataSetProvider;
        C_SitECF: TClientDataSet;
        C_SitECFSITUACAOECF: TStringField;
        C_SitECFDESCRICAO: TStringField;
        Q_CSTs: TIBQuery;
        P_CSTs: TDataSetProvider;
        C_CSTs: TClientDataSet;
        C_CSTsDESCRICAO: TStringField;
        C_CSTsDS: TDataSource;
        C_TabelalkCST: TStringField;
        C_TabelalkSitECF: TStringField;
        C_TabelaicImpostosFederais: TBCDField;
        C_TabelaicICMSAplicado: TBCDField;
    Q_TabelasGrupos: TIBQuery;
    C_TabelaQ_TabelasGrupos: TDataSetField;
    C_TabelasGrupos: TClientDataSet;
    C_TabelasGruposTABELAGRUPO: TIntegerField;
    C_TabelasGruposGRUPO: TIntegerField;
    C_TabelasGruposTABELAPRECO: TIntegerField;
    C_TabelasGruposPERCENTUAL: TBCDField;
    C_TabelasGruposDS: TDataSource;
    U_TabelasGrupos: TIBUpdateSQL;
    Q_TabelasPreco: TIBQuery;
    P_TabelasPreco: TDataSetProvider;
    C_TabelasPreco: TClientDataSet;
    C_TabelasPrecoTABELAPRECO: TIntegerField;
    C_TabelasPrecoDESCRICAO: TStringField;
    C_TabelasGruposlkTabelaPreco: TStringField;
    C_TabelaDTHALTERACAO: TDateTimeField;
    Q_GrupoPAI: TIBQuery;
    P_GrupoPAI: TDataSetProvider;
    C_GrupoPAI: TClientDataSet;
    C_GrupoPAIGRUPO: TIntegerField;
    C_GrupoPAIDESCRICAOGRUPO: TStringField;
    C_TabelaGRUPOPAI: TIntegerField;
    C_TabelalkGrupoPai: TStringField;
    Q_MODALIDADESBCICMSST: TIBQuery;
    Q_MODALIDADESBCICMS: TIBQuery;
    Q_Origem: TIBQuery;
    Q_Generos: TIBQuery;
    Q_CstsIPI: TIBQuery;
    P_CstsIPI: TDataSetProvider;
    P_Generos: TDataSetProvider;
    P_Origem: TDataSetProvider;
    P_MODALIDADESBCICMS: TDataSetProvider;
    P_MODALIDADESBCICMSST: TDataSetProvider;
    C_MODALIDADESBCICMSST: TClientDataSet;
    StringField9: TStringField;
    C_MODALIDADESBCICMSSTMODALIDADEBCICMSST: TIntegerField;
    C_MODALIDADESBCICMS: TClientDataSet;
    StringField8: TStringField;
    C_MODALIDADESBCICMSMODALIDADEBCICMS: TIntegerField;
    C_Origem: TClientDataSet;
    StringField7: TStringField;
    C_OrigemORIGEMMERCADORIA: TIntegerField;
    C_Generos: TClientDataSet;
    StringField6: TStringField;
    C_GenerosGENERO: TStringField;
    C_CstsIPI: TClientDataSet;
    StringField4: TStringField;
    C_CstsIPICSTIPI: TStringField;
    C_TabelaMODALIDADEBCICMS: TIntegerField;
    C_TabelaMODALIDADEBCICMSST: TIntegerField;
    C_TabelaCSTPISCOFINS: TStringField;
    C_TabelaALIQPIS: TBCDField;
    C_TabelaALIQCOFINS: TBCDField;
    C_TabelaCSTIPI: TStringField;
    C_TabelaGENERO: TStringField;
    C_TabelaALIQIR: TBCDField;
    C_TabelaALIQSS: TBCDField;
    C_TabelalkCSTPISCONFINS: TStringField;
    C_TabelalkCSTSIPI: TStringField;
    C_TabelalkGeneros: TStringField;
    C_TabelalkOrigem: TStringField;
    C_TabelalkModalidadeICMS: TStringField;
    C_TabelalkModaledadeICMSST: TStringField;
    C_TabelaIDTRIBFEDERAL: TIntegerField;
    C_TabelaORIGEMMERCADORIA: TIntegerField;
    C_TabelaIPICOMPRA: TBCDField;
    C_TabelaIPIVENDA: TBCDField;
    Q_TribFederal: TIBQuery;
    P_TribFederal: TDataSetProvider;
    C_TribFederal: TClientDataSet;
    C_TribFederalIDTRIBFEDERAL: TIntegerField;
    C_TribFederalDESCRICAO: TStringField;
    C_TribFederalDs: TDataSource;
    C_TabelalkTibFederalID: TStringField;
    C_CSTsCST: TStringField;
    C_TabelaCSTPISCOFINSSAIDA: TStringField;
    C_TabelaNATURAZARECEITAPISCOFINS: TIntegerField;
    C_TabelaALIQPISSAIDA: TFloatField;
    C_TabelaALIQCOFINSSAIDA: TFloatField;
    C_TabelaVINCULOCREDITOPISCOFINS: TStringField;
    C_TabelaBASECREDITOPISCOFINS: TStringField;
    Q_CstPisCofins: TIBQuery;
    P_CstPisCofins: TDataSetProvider;
    C_CstPisCofins: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    Q_CstPisCofinsSAIDA: TIBQuery;
    P_CstPisCofinsSAIDA: TDataSetProvider;
    C_CstPisCofinsSAIDA: TClientDataSet;
    C_CstPisCofinsSAIDACSTPISCOFINS: TStringField;
    C_CstPisCofinsSAIDADESCRICAO: TStringField;
    Q_VinculoCreditoPisCofins: TIBQuery;
    P_VinculoCreditoPisCofins: TDataSetProvider;
    C_VinculoCreditoPisCofins: TClientDataSet;
    C_VinculoCreditoPisCofinsCODIGO: TStringField;
    C_VinculoCreditoPisCofinsDESCRICAO: TStringField;
    Q_BaseCreditoPisCofins: TIBQuery;
    P_BaseCreditoPisCofins: TDataSetProvider;
    C_BaseCreditoPisCofins: TClientDataSet;
    C_BaseCreditoPisCofinsCODIGO: TStringField;
    C_BaseCreditoPisCofinsDESCRICAO: TStringField;
    Q_NaturezaReceitaPisCofins: TIBQuery;
    P_NaturezaReceitaPisCofins: TDataSetProvider;
    C_NaturezaReceitaPisCofins: TClientDataSet;
    C_NaturezaReceitaPisCofinsCODIGO: TIntegerField;
    C_NaturezaReceitaPisCofinsDESCRICAO: TStringField;
    C_NaturezaReceitaPisCofinsCST: TStringField;
    C_CstPisCofinsSAIDADs: TDataSource;
    C_TabelalkcstPisCofinsSaidas: TStringField;
    C_TabelalkNaturezareceita: TStringField;
    C_TabelaPISCOFINS: TStringField;
    C_TabelaDESPESASFIXAS: TBCDField;
    C_TabelaENCARGOSCARTOES: TBCDField;
    C_TabelaCOMISSAOAPLICADA: TBCDField;
    C_TabelaIMPOSTOSFEDERAIS: TBCDField;
    C_TabelaMENORVALORVENDA: TBCDField;
    C_TabelaNCM: TStringField;
        procedure DataModuleCreate(Sender: TObject);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure DMComponentGravar3_AposApply(Sender: TObject);
        procedure C_TabelaDESCRICAOGRUPOValidate(Sender: TField);
        procedure C_TabelaCODIGOValidate(Sender: TField);
        procedure C_TabelaCalcFields(DataSet: TDataSet);
        procedure DMComponentAposIniciar(Sender: TObject);
        procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
        procedure C_TabelaSITUACAOECFChange(Sender: TField);
        procedure C_TabelaCSTChange(Sender: TField);
        procedure C_TabelaTIPOITEMChange(Sender: TField);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentAntesDeIniciar(Sender: TObject);
    procedure C_TabelasGruposNewRecord(DataSet: TDataSet);
    procedure C_TabelasGruposTABELAPRECOValidate(Sender: TField);
    private
        nTabGrupo: integer;
    public
        yMaiorComissao, yDespesaFixa, yImpostosFederais, yEncargosCartoes, yLucroPadrao: Currency;
        xTipoItem: integer;
        nDescMaxUsuarios: Currency;
    end;

var
    DMGrupos: TDMGrupos;

implementation
uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDMGrupos.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMGrupos := self;
    xTipoItem := 1;
end;

procedure TDMGrupos.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_TabelaTipoItem.value := xTipoItem;
    C_TabelaDescontoMaximo.value := -999;
    C_TabelaComissao.value := -999;
    C_TabelaFatorLucro.Value := -999;
    C_TabelaCustoDespesas.Value := 0;
    C_TabelaSituacaoECF.value := 'T';
    C_TabelaAliqICMS.value := DMProjeto.nICMSInterno;
    C_TabelaCST.value := '000';
    C_TabelaReducaoCST.value := 0;
    C_TabelaTVA.value := 0;
    C_TabelaTVAFonte.value := 0;
    C_TabelaCSTIPI.Value := '02';
    C_TabelaIPICOMPRA.Value := 0;
    C_TabelaIPIVENDA.Value := 0;
    C_TabelaIDTRIBFEDERAL.Value := iif(DMProjeto.sTipoTributEmpresa = 'R', 1, 2);
    C_TabelaCSTPISCOFINS.Value := '50';
    C_TabelaALIQPIS.Value := 0;
    C_TabelaALIQCOFINS.Value := 0;
    C_TabelaCSTPISCOFINSSAIDA.Value := '01';
    C_TabelaALIQPISSAIDA.Value := 0;
    C_TabelaALIQCOFINSSAIDA.Value := 0;
    C_TabelaALIQIR.Value := 0;
    C_TabelaALIQSS.Value := 0;
end;

procedure TDMGrupos.DMComponentGravar3_AposApply(Sender: TObject);
begin
    inherited;
    xTipoItem := C_TabelaTipoItem.value;
end;

procedure TDMGrupos.C_TabelaDESCRICAOGRUPOValidate(Sender: TField);
begin
    inherited;
    if DMProjeto.VerificaExistencia(C_TabelaGrupo.value, 'grupos', 'grupo', C_TabelaDESCRICAOGRUPO.value, 'descricaogrupo') then
    begin
        DlgMsg.ShowMsg(5001, ['Grupo']);
        raise Exception.Create('@@');
    end;
end;

procedure TDMGrupos.C_TabelaCODIGOValidate(Sender: TField);
begin
    inherited;
    if DMProjeto.VerificaExistencia(C_TabelaGrupo.value, 'grupos', 'grupo', C_TabelaCODIGO.value, 'codigo') then
    begin
        DlgMsg.ShowMsg(5001, ['Grupo']);
        raise Exception.Create('@@');
    end;
end;

procedure TDMGrupos.C_TabelaCalcFields(DataSet: TDataSet);
var nFator: double;
begin
    inherited;
    C_TabelaicComissao.Value := IIF(C_TabelaComissao.Value = -999, yMaiorComissao, C_TabelaComissao.Value);

    C_TabelaicComissaoAplic.Value := IIF(C_TabelaComissao.Value = -999, yMaiorComissao, C_TabelaComissao.Value);

    C_TabelaicDescontoMaximo.Value := IIF(C_TabelaDescontoMaximo.Value = -999, nDescMaxUsuarios, C_TabelaDescontoMaximo.Value);

    C_TabelaicFatorLucro.Value := IIF(C_TabelaFatorLucro.Value = -999, yLucroPadrao, C_TabelaFatorLucro.Value);

    C_TabelaicDespesaFixa.Value := yDespesaFixa;

    C_TabelaicImpostosFederais.Value := yImpostosFederais;

    C_TabelaicEncargosCartoes.Value := yEncargosCartoes;

    if (C_TabelaCST.Value <> '') and (C_TabelaReducaoCST.Value > 0) and (C_TabelaCST.Value[2] = '2') then
        C_TabelaicICMSAplicado.Value := Arredondar((1 - (C_TabelaReducaoCST.Value / 100)) * C_TabelaAliqICMS.Value, 2)
    else
        C_TabelaicICMSAplicado.Value := C_TabelaAliqICMS.Value;

    nFator := C_TabelaicComissaoAplic.Value +
        C_TabelaicDespesaFixa.Value +
        C_TabelaicEncargosCartoes.Value +
        C_TabelaCustoDespesas.Value +
        C_TabelaicImpostosFederais.Value +
        C_TabelaicICMSAplicado.Value +
        C_TabelaicFatorLucro.Value;

    if nFator > 100 then
        nFator := 99.999;

    C_TabelaicFator.Value := (100 - nFator) / 100;
end;

procedure TDMGrupos.DMComponentAposIniciar(Sender: TObject);
begin
    inherited;

    with Q_SQL do
    begin
        close;
        SQL.Text := 'Select Max(DescontoMaximo) as DesctMax from Usuarios where Desativado = ''N'' ';
        Open;
        nDescMaxUsuarios := FieldByName('DesctMax').asCurrency;
        Close;
    end;

    DMProjeto.FatoresCustos(yMaiorComissao, yDespesaFixa, yEncargosCartoes, yLucroPadrao, yImpostosFederais);
end;

procedure TDMGrupos.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
    inherited;
    C_TabelaFatorLucro.Value := yLucroPadrao;
end;

procedure TDMGrupos.C_TabelaSITUACAOECFChange(Sender: TField);
begin
    inherited;
    if C_TabelaSituacaoECF.value = 'T' then
        C_TabelaCST.value := '000'
    else if C_TabelaSituacaoECF.value = 'F' then
        C_TabelaCST.value := '010'
    else if C_TabelaSituacaoECF.value = 'I' then
        C_TabelaCST.value := '040'
    else if C_TabelaSituacaoECF.value = 'N' then
        C_TabelaCST.value := '040';

    if C_TabelaSituacaoECF.Value <> 'T' then
        C_TabelaAliqICMS.Value := 0
    else if C_TabelaSituacaoECF.Value <> ' ' then
        C_TabelaAliqICMS.Value := DMProjeto.nICMSInterno;
end;

procedure TDMGrupos.C_TabelaCSTChange(Sender: TField);
begin
    inherited;
    if sender.asstring = '' then
        C_TabelaReducaoCST.Value := 0
    else if Sender.asString[2] <> '2' then
        C_TabelaReducaoCST.Value := 0;
end;

procedure TDMGrupos.C_TabelaTIPOITEMChange(Sender: TField);
begin
    inherited;
    if C_TabelaTipoItem.value = 3 then
    begin
        C_TabelaSituacaoECF.value := 'S';
        C_TabelaAliqICMS.value := 0;
    end
    else
    begin
        C_TabelaSituacaoECF.value := 'T';
        C_TabelaAliqICMS.value := DMProjeto.nICMSInterno;
    end;
end;

procedure TDMGrupos.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
    inherited;
    If C_TiposItensTIPOITEM.Value = 3 Then Begin
       C_TabelaSituacaoECF.value := 'T';
       C_TabelaAliqICMS.value := DMProjeto.nISS;
    End;
    C_Tabela.Edit;
    C_TabelaDTHALTERACAO.Value := Now;
    C_Tabela.Post;
end;

procedure TDMGrupos.DMComponentAntesDeIniciar(Sender: TObject);
begin
    inherited;
    nTabGrupo := -1;
end;

procedure TDMGrupos.C_TabelasGruposNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet['TABELAGRUPO'] := nTabGrupo;
  DataSet['PERCENTUAL'] := 0;
  Dec(nTabGrupo);
end;

procedure TDMGrupos.C_TabelasGruposTABELAPRECOValidate(Sender: TField);
var TmpDS : TClientDataSet;
begin
  inherited;
  try
    TmpDS := TClientDataSet.Create(self);
    TmpDS.CloneCursor(C_TabelasGrupos,true);
    TmpDS.First;
    while not TmpDS.EOF  do begin
      if TmpDS.FieldByName('TABELAPRECO').Value = Sender.Value then begin
        DlgMsg.ShowMsg(8062);
        raise Exception.Create('@@');
      end;
      TmpDS.Next;
    end;
  finally
    TmpDS.Free;
  end;
end;

end.


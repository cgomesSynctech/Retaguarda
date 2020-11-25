unit DM_OrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMOrdemServico = class(TDMManutencao)
    C_TabelaNUMERO: TStringField;
    C_TabelaCLIENTE: TIntegerField;
    C_TabelaEQUIPAMENTO: TIntegerField;
    C_TabelaFUNCIONARIO: TIntegerField;
    C_TabelaROTA: TIntegerField;
    C_TabelaOBS: TStringField;
    C_TabelaDTAVISO: TDateField;
    C_TabelaHORAAVISO: TTimeField;
    C_TabelaDTCHEGADA: TDateField;
    C_TabelaHORACHEGADA: TTimeField;
    C_TabelaDTTERMINO: TDateField;
    C_TabelaDESCRICAOSERVICO: TStringField;
    C_TabelaORDEMSERVICO: TIntegerField;
    C_TabelaDESCCLIENTE: TStringField;
    C_TabelaDESCFUNCIONARIO: TStringField;
    Q_Rotas: TIBQuery;
    P_Rotas: TDataSetProvider;
    C_Rotas: TClientDataSet;
    C_RotasROTA: TIntegerField;
    C_RotasDESCRICAO: TStringField;
    C_TabelalkRotas: TStringField;
    Q_Equip: TIBQuery;
    P_Equip: TDataSetProvider;
    C_Equip: TClientDataSet;
    C_EquipEQUIPAMENTO: TIntegerField;
    C_EquipNUMMAQUINA: TStringField;
    C_TabelaHORATERMINO: TTimeField;
    Q_Unidades: TIBQuery;
    P_Unidades: TDataSetProvider;
    C_Unidades: TClientDataSet;
    C_UnidadesUNIDADE: TStringField;
    C_UnidadesDESCRICAO: TStringField;
    Q_ServicosDet: TIBQuery;
    U_ServicosDet: TIBUpdateSQL;
    C_ServicosDet: TClientDataSet;
    IntegerField1: TIntegerField;
    C_ServicosDetDESCRICAOITEM: TStringField;
    C_ServicosDetITEM: TIntegerField;
    C_ServicosDetQUANTIDADE: TBCDField;
    C_ServicosDetVALOR: TBCDField;
    C_ServicosDetCODIGO: TStringField;
    C_ServicosDetDESCRICAO: TStringField;
    C_ServicosDetPRECO: TBCDField;
    C_ServicosDetUNIDADE: TStringField;
    C_ServicosDeticSubTotal: TCurrencyField;
    C_ServicosDetlkUnidade: TStringField;
    C_ServicosDetDs: TDataSource;
    C_ServicosDetORDEMSERVICO: TIntegerField;
    C_ServicosDetORDEMSERVICODET: TIntegerField;
    C_TabelaFATURADO: TStringField;
    C_TabelaORDEMSERVICOVICULO: TIntegerField;
    C_TabelaNUMEROANTERIOR: TStringField;
    C_TabelaQ_ServicosDet: TDataSetField;
    C_TabelaTIPOSERVICO: TIntegerField;
    C_TabelaSTATUSATENDIMENTO: TIntegerField;
    C_TabelaDTMODIFICACAO: TDateTimeField;
    C_EquipFAVORECIDO: TIntegerField;
    C_EquipDS: TDataSource;
    C_TabelaDtDecorrido: TTimeField;
    C_TabelaDtAtendDecorrido: TTimeField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_ServicosDetCalcFields(DataSet: TDataSet);
    procedure C_ServicosDetNewRecord(DataSet: TDataSet);
    procedure C_ServicosDetITEMChange(Sender: TField);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure C_TabelaNUMEROANTERIORValidate(Sender: TField);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure DMComponentPesquisar4_Dados(Sender: TObject);
    procedure DMComponentGravar5_Terminar(Sender: TObject);
    procedure C_TabelaCalcFields(DataSet: TDataSet);
  private
    nSeq : integer;
    bNumeroAnterior: boolean;
  public

  end;

var
  DMOrdemServico: TDMOrdemServico;

implementation

uses DM_Projeto, TDM_Projeto;

{$R *.dfm}

procedure TDMOrdemServico.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMOrdemServico := Self;
  bNumeroAnterior := false;  
  nSeq := -1;  
end;

procedure TDMOrdemServico.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaORDEMSERVICOVICULO.Value   := 0;
  C_TabelaTIPOSERVICO.Value := 1;
  C_TabelaSTATUSATENDIMENTO.Value := 1;
  C_TabelaDTAVISO.AsDateTime := DMProjeto.dDataSistema;
  C_TabelaHORAAVISO.AsDateTime := Now;

end;

procedure TDMOrdemServico.C_ServicosDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ServicosDeticSUBTOTAL.Value := C_ServicosDetQUANTIDADE.Value * C_ServicosDetVALOR.Value;
end;

procedure TDMOrdemServico.C_ServicosDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec(nSeq);
  C_ServicosDetORDEMSERVICODET.Value := nSeq;
  C_ServicosDetQUANTIDADE.Value := 1;
  C_ServicosDetVALOR.Value := 0;
end;

procedure TDMOrdemServico.C_ServicosDetITEMChange(Sender: TField);
begin
  inherited;
  if DMProjeto.C_LocalizarItensicQuantidade.Value > 0 then
    C_ServicosDetQUANTIDADE.Value := DMPRojeto.C_LocalizarItensicQuantidade.Value
  else
    C_ServicosDetQUANTIDADE.Value := 1;

  C_ServicosDetVALOR.Value := DMProjeto.C_LocalizarItensicPreco.Value;
  C_ServicosDetCODIGO.Value := DMProjeto.C_LocalizarItensCODIGO.Value;
  C_ServicosDetDESCRICAOITEM.Value := DMProjeto.C_LocalizarItensDESCRICAO.Value;
  C_ServicosDetUNIDADE.Value := DMProjeto.C_LocalizarItensUnidade.value;
end;

procedure TDMOrdemServico.DMComponentGravar2_AposIDS_Tabela(
  Sender: TObject);
begin
  inherited;
  if (C_TabelaORDEMSERVICOVICULO.Value = 0) then begin
  	if C_Tabela.State in [dsBrowse] then
  		C_Tabela.Edit;  
    C_TabelaORDEMSERVICOVICULO.Value := C_TabelaORDEMSERVICO.Value;
  end;
end;

procedure TDMOrdemServico.C_TabelaNUMEROANTERIORValidate(Sender: TField);
begin
  inherited;
  if bNumeroAnterior then exit;
  bNumeroAnterior := true;

// Verificar se o numero é válido
  DMProjeto.Q_Sql.Close;
  DMProjeto.Q_Sql.Sql.Text := 'select os.ordemservico, os.ordemservicoviculo from ordensservicos os ' +
                              ' where os.numero = :numero ';

  DMProjeto.Q_Sql.Params[0].AsString := C_TabelaNUMEROANTERIOR.Value;
  DMProjeto.Q_Sql.Open;
  if (DMProjeto.Q_Sql.RecordCount > 0) then begin
    C_TabelaORDEMSERVICOVICULO.Value   := DMProjeto.Q_Sql.Fields[1].AsInteger;
  end
  else begin
    C_TabelaORDEMSERVICOVICULO.Value := 0;
    C_TabelaNUMEROANTERIOR.Value := '';
  end;
  bNumeroAnterior := false;
end;

procedure TDMOrdemServico.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  C_Tabela.Edit;
  C_TabelaDTMODIFICACAO.Value := DMProjeto.GetTimeServidor;
  C_Tabela.Post;
end;

procedure TDMOrdemServico.DMComponentModoInclusao1_Iniciar(
  Sender: TObject);
begin
  inherited;
  C_Equip.Close;
  Q_Equip.ParamByName('CLIENTE').AsInteger := -1;
  C_Equip.Open;
end;

procedure TDMOrdemServico.DMComponentPesquisar4_Dados(Sender: TObject);
begin
  inherited;
  C_Equip.Close;
  Q_Equip.ParamByName('CLIENTE').AsInteger := C_TabelaCLIENTE.AsInteger;
  C_Equip.Open;
end;

procedure TDMOrdemServico.DMComponentGravar5_Terminar(Sender: TObject);
begin
  inherited;
  If Not (C_TabelaNUMEROANTERIOR.IsNull) Then Begin
    if DlgMsg.ShowMsg(8066) = 100 then begin
       With DMProjeto.Q_Sql do Begin
         Close;
         Sql.Text := 'Update ordensservicos set STATUSATENDIMENTO = 1 WHERE NUMERO = '''+
           C_TabelaNUMEROANTERIOR.AsString + '''';
         ExecSql;
       End;
    end;

  End;
end;

procedure TDMOrdemServico.C_TabelaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('DtDecorrido').AsDateTime := (C_TabelaDTTERMINO.AsDateTime+C_TabelaHORATERMINO.AsDateTime) -
                                                   (C_TabelaDTCHEGADA.AsDateTime+C_TabelaHORACHEGADA.AsDateTime);

  DataSet.FieldByName('DtATENDDecorrido').AsDateTime := (C_TabelaDTCHEGADA.AsDateTime+C_TabelaHORACHEGADA.AsDateTime) -
                                                        (C_TabelaDTAVISO.AsDateTime+C_TabelaHORAAVISO.AsDateTime);

end;

end.

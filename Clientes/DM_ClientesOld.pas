unit DM_Clientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, IBCustomDataSet, DlgMsg, DMComponent, IBUpdateSQL,
  IBQuery, DBClient, Provider;

type
  TDMClientes = class(TDMManutencao)
    Q_UFS: TIBQuery;
    Q_Paises: TIBQuery;
    Q_PlanoPagamento: TIBQuery;
    Q_Vendedor: TIBQuery;
    Q_TAXS: TIBQuery;
    Q_TiposEntrega: TIBQuery;
    Q_TiposAtividade: TIBQuery;
    P_UFs: TDataSetProvider;
    C_UFs: TClientDataSet;
    C_UFsDESCRICAO: TStringField;
    C_UFsUF: TStringField;
    P_Vendedor: TDataSetProvider;
    C_Vendedor: TClientDataSet;
    P_TiposEntrega: TDataSetProvider;
    C_TiposEntrega: TClientDataSet;
    C_TiposEntregaTIPOENTREGA: TIntegerField;
    P_TiposAtividade: TDataSetProvider;
    C_TiposAtividade: TClientDataSet;
    P_TAXS: TDataSetProvider;
    C_TAXS: TClientDataSet;
    P_Paises: TDataSetProvider;
    C_Paises: TClientDataSet;
    P_PlanoPagamento: TDataSetProvider;
    C_PlanosPagamento: TClientDataSet;
    C_PlanosPagamentoDESCRICAO: TStringField;
    C_PlanosPagamentoPLANOPAGAMENTO: TIntegerField;
    C_PaisesPAIS: TIntegerField;
    C_PaisesDESCRICAO: TStringField;
    C_TiposEntregaDESCRICAO: TStringField;
    C_VendedorFAVORECIDO: TIntegerField;
    C_VendedorVENDEDOR: TStringField;
    C_TiposAtividadeTIPOATIVIDADE: TIntegerField;
    C_TiposAtividadeATIVIDADE: TStringField;
    C_TAXSDESCRICAO: TStringField;
    C_TAXSTAX: TIntegerField;
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaCODIGO: TStringField;
    C_TabelaNOME: TStringField;
    C_TabelaRAZAO: TStringField;
    C_TabelaENDERECO: TStringField;
    C_TabelaCIDADE: TStringField;
    C_TabelaUF: TStringField;
    C_TabelaCEP: TStringField;
    C_TabelaCAIXAPOSTAL: TStringField;
    C_TabelaPAIS: TIntegerField;
    C_TabelaFONE1: TStringField;
    C_TabelaFONE2: TStringField;
    C_TabelaFAX: TStringField;
    C_TabelaCELULAR: TStringField;
    C_TabelaCONTATO: TStringField;
    C_TabelaEMAIL: TStringField;
    C_TabelaTIPOFAVORECIDO: TIntegerField;
    C_TabelaTIPOATIVIDADE: TIntegerField;
    C_TabelaPLANOPAGAMENTO: TIntegerField;
    C_TabelaVENDEDOR: TIntegerField;
    C_TabelaLIMITECREDITO: TBCDField;
    C_TabelaTAXAVEL: TStringField;
    C_TabelaTAX: TIntegerField;
    C_TabelaEIN: TStringField;
    C_TabelaSSN: TStringField;
    C_TabelaTABELAPRECO: TIntegerField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaEXIGIVEL1099: TStringField;
    C_TabelaTIPOENTREGA: TIntegerField;
    C_TabelaDATACADASTRO: TDateField;
    C_TabelaSITE: TStringField;
    C_TabelaOBS: TStringField;
    C_TabelaIMPORTACAO: TIntegerField;
    C_TabelaSITUACAO: TStringField;
    C_TabelaCARGO: TIntegerField;
    C_TabelaLOGOTIPO: TStringField;
    C_TabelaJUROSFACTORY: TBCDField;
    C_TabelaTAXASFACTORY: TBCDField;
    C_TabelaFLOATINGFACTORY: TBCDField;
    C_TabelaMEMO_CHECK: TStringField;
    C_TabelaCREDITO: TBCDField;
    C_TabelaCONTA: TIntegerField;
    C_TabelaNUMERO_REVENDA: TStringField;
    C_TabelaTIPO_FUNC: TStringField;
    C_TabelaSALDO: TBCDField;
    C_TabelalkUF: TStringField;
    C_TabelalkPais: TStringField;
    C_TabelalkTipoAtividade: TStringField;
    C_TabelalkPlanoPagamento: TStringField;
    C_TabelalkTAX: TStringField;
    C_TabelalkVendedor: TStringField;
    Q_TabelaPreco: TIBQuery;
    P_TabelaPreco: TDataSetProvider;
    C_TabelasPreco: TClientDataSet;
    C_TabelasPrecoTABELAPRECO: TIntegerField;
    C_TabelasPrecoDESCRICAO: TStringField;
    C_ContasDS: TDataSource;
    C_TabelalkTipoEntrega: TStringField;
    C_TabelalkTabelaPreco: TStringField;
    C_TabelalkConta: TStringField;
    C_TabelacfSALDO: TBCDField;
    C_TabelacfCREDITO: TBCDField;
    C_TabelaDATANASC: TDateField;
    Q_Consultas: TIBQuery;
    P_Consultas: TDataSetProvider;
    C_Consultas: TClientDataSet;
    C_ConsultasDS: TDataSource;
    C_TabelacfCHEQUESPENDENTES: TFloatField;
    C_TabelaCAMPO01: TStringField;
    C_TabelaCAMPO02: TStringField;
    C_TabelaCAMPO03: TStringField;
    C_TabelaCAMPO04: TStringField;
    C_TabelaCAMPO05: TStringField;
    C_TabelaCAMPO06: TStringField;
    C_TabelaCAMPO07: TStringField;
    C_TabelaCAMPO08: TStringField;
    C_TabelaCAMPO09: TStringField;
    C_TabelaCAMPO10: TStringField;
    C_TabelaCOMISSAO: TBCDField;
    C_TabelaISVENDEDOR: TStringField;
    C_TabelaCHEQPENDENTES: TBCDField;
    C_TabelaCONTAPAGAMENTO: TIntegerField;
    Q_Contas: TIBQuery;
    P_Contas: TDataSetProvider;
    C_Contas: TClientDataSet;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasDESCTIPO: TStringField;
    C_ContasSALDO: TBCDField;
    C_ContasCONTAPAI: TIntegerField;
    Q_LocaisEntrega: TIBQuery;
    C_LocaisEntrega: TClientDataSet;
    C_LocaisEntregaENTREGA: TIntegerField;
    C_LocaisEntregaFAVORECIDO: TIntegerField;
    C_LocaisEntregaENDERECOENTREGA: TStringField;
    C_LocaisEntregaCIDADEENTREGA: TStringField;
    C_LocaisEntregaUFENTREGA: TStringField;
    C_LocaisEntregaCEPENTREGA: TStringField;
    C_TabelaCONTADESPESAS: TIntegerField;
    C_TabelaULTCOMPRA: TDateField;
    C_TabelaULTVALORCOMPRA: TBCDField;
    C_TabelaQ_LocaisEntrega: TDataSetField;
    C_LocaisEntregaDS: TDataSource;
    C_LocaisEntregalkUFENTREGA: TStringField;
    U_LocaisEntrega: TIBUpdateSQL;
    C_ContasTIPOCONTA: TIntegerField;
    C_ContasCODIGOREDUZIDO: TStringField;
    Q_Contratos: TIBQuery;
    U_Contratos: TIBUpdateSQL;
    C_Contratos: TClientDataSet;
    C_TabelaQ_Contratos: TDataSetField;
    C_ContratosDS: TDataSource;
    C_ContratosCONTRATO: TIntegerField;
    C_ContratosDESCRICAO: TStringField;
    C_ContratosFAVORECIDO: TIntegerField;
    C_ContratosITEM: TIntegerField;
    C_ContratosPRECO: TBCDField;
    C_ContratosPERIODICIDADE: TStringField;
    C_ContratosMETODOPGTO: TStringField;
    C_ContratosFUNCPAYITEM: TIntegerField;
    C_ContratosGRUPOCOBRANCA: TIntegerField;
    C_ContratosDIACOBRANCA: TStringField;
    C_ContratosNOMEFUNCIONARIO: TStringField;
    C_ItensDS: TDataSource;
    Q_Itens: TIBQuery;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensHASCHILDREN: TStringField;
    C_ContratoslkItem: TStringField;
    C_LocaisEntregaPAISENTREGA: TIntegerField;
    C_LocaisEntregaDESCRICAO: TStringField;
    C_LocaisEntregalkPais: TStringField;
    C_LocaisEntrega_icSelecionado: TIntegerField;
    C_LocaisEntregaFONEENTREGA: TStringField;
    C_TabelaPERIODICIDADE: TStringField;
    C_TabelaDATAADIMISSAO: TDateField;
    C_TabelaDATADEMISSAO: TDateField;
    C_TabelaDATAAUMENTO: TDateField;
    C_TabelaAGRUPARPORITEM: TStringField;
    Q_Familiar: TIBQuery;
    U_Familiar: TIBUpdateSQL;
    C_Familiar: TClientDataSet;
    C_FamiliarDS: TDataSource;
    C_TabelaQ_Familiar: TDataSetField;
    C_FamiliarNOME: TStringField;
    C_FamiliarDATANASC: TDateField;
    C_FamiliarID: TIntegerField;
    C_FamiliarTIPOFAVORECIDO: TIntegerField;
    C_FamiliarDESATIVADO: TStringField;
    C_TabelaRELACIONAMENTO: TIntegerField;
    C_FamiliarRELACIONAMENTO: TIntegerField;
    C_TabelaRELAC: TIntegerField;
    C_TabelaDESCRICAORELAC: TStringField;
    C_FamiliarDESCRICAORELAC: TStringField;
    C_FamiliarEIN: TStringField;
    C_FamiliarSSN: TStringField;
    C_FamiliarENDERECO: TStringField;
    C_FamiliarCIDADE: TStringField;
    C_FamiliarUF: TStringField;
    C_FamiliarFONE1: TStringField;
    C_TabelaINICIOSEMANA: TIntegerField;
    C_TabelaDIASPERIODO: TIntegerField;
    Q_Aux: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure C_TabelaCalcFields(DataSet: TDataSet);
    procedure C_TabelaAfterScroll(DataSet: TDataSet);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentAntesDeIniciar(Sender: TObject);
    procedure C_LocaisEntregaNewRecord(DataSet: TDataSet);
    procedure C_ContratosNewRecord(DataSet: TDataSet);
    procedure C_ContratosPERIODICIDADEChange(Sender: TField);
    procedure C_ContratosBeforePost(DataSet: TDataSet);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure C_FamiliarNewRecord(DataSet: TDataSet);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure C_TabelaRELACChange(Sender: TField);
    procedure C_TabelaCODIGOValidate(Sender: TField);
  private
    { Private declarations }
    nLocalEntrega, nSeqContratos, nSeq : integer;
  public
    { Public declarations }
    procedure GeraCodigo;
  end;

var
  DMClientes: TDMClientes;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}


procedure TDMClientes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMClientes := Self;
end;

procedure TDMClientes.GeraCodigo;
var xID,xCasas: integer;
    sNomeDoCampo: string;
begin
  inherited;
  sNomeDoCampo := 'IDCodigoCliente';
  if not(C_Tabela.State in [dsEdit,dsInsert]) then
    C_Tabela.Edit;
  C_Tabela.UpdateRecord;
  if Direita(C_TabelaCODIGO.Value,1)='-' then begin
    xCasas := 6;
    xID := DMProjeto.NextIDIntervalo(copy(C_TabelaCODIGO.Value,1,Pos('-',C_TabelaCODIGO.Value)-1),1);
    if Length(IntToStr(xID))>6 then
      xCasas := Length(IntToStr(xID));
    C_TabelaCODIGO.Value := C_TabelaCODIGO.Value+AdicionarStr(IntToStr(xID),'0',xCasas);
  end else if Trim(C_TabelaCODIGO.Value)='' then begin
    xCasas := 6;
    xID := DMProjeto.NextIDIntervalo(sNomeDoCampo,1);
    if Length(IntToStr(xID))>6 then
      xCasas := Length(IntToStr(xID));
    C_TabelaCODIGO.Value := AdicionarStr(IntToStr(xID),'0',xCasas);
  end;
end;

procedure TDMClientes.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
  inherited;
  nSeqContratos := -10;

end;

procedure TDMClientes.C_TabelaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_TabelaSALDO.AsVariant = null then
    C_TabelacfSALDO.AsFloat := 0
  else C_TabelacfSALDO.AsFloat := C_TabelaSALDO.AsFloat;

  if C_TabelaCREDITO.AsVariant = null then
    C_TabelacfCREDITO.AsFloat := 0
  else C_TabelacfCREDITO.AsFloat := C_TabelaCREDITO.AsFloat;

  if C_TabelaCHEQPENDENTES.AsVariant = null then
    C_TabelacfCHEQUESPENDENTES.AsFloat := 0
  else C_TabelacfCHEQUESPENDENTES.AsFloat := C_TabelaCHEQPENDENTES.AsFloat;
end;

procedure TDMClientes.C_TabelaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // mestre-detalhe
  if (C_Consultas.Active)and not(C_Tabela.IsEmpty) then
    C_Consultas.Filter := 'ID='+C_TabelaFAVORECIDO.AsString;
end;

procedure TDMClientes.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  // Código não existente
  if (C_TabelaCODIGO.Value='') then begin
    GeraCodigo;
  end;
  // Código duplicados
  if (C_TabelaCODIGO.Value<>'') then begin
    with DMProjeto.Q_SQL do begin
      Close;
      SQL.Text := 'Select Count(favorecido) From Favorecidos '+
        'Where tipofavorecido=1 And codigo='+QuotedStr(C_TabelaCODIGO.Value)+
        'And favorecido<>'+C_TabelaFAVORECIDO.AsString;
      Open;
      if (Fields[0].AsInteger>0) then begin
        DlgMsg.ShowMsg(933,['[CÓDIGO]']);
        bSkip := True;
        Exit;
      end;
    end; // with
  end; // if

  {Validando Contratos}
  with C_Contratos do begin
    First;
    while not EOF do begin
      if C_ContratosItem.Value = 0 then begin
        DlgMsg.ShowMsg(1998);
        bSkip := true;
        exit;
      end;
      Next;
    end;
  end;

  with C_LocaisEntrega do begin
    First;
    while not EOF do begin
      if (C_LocaisEntregaDescricao.Value = '') or (C_LocaisEntregaEnderecoEntrega.Value = '') then begin
        DlgMsg.ShowMsg(2160);
        Raise Exception.Create('@@');
      end;
      Next;
    end;
  end;

end;

procedure TDMClientes.DMComponentAntesDeIniciar(Sender: TObject);
begin
  inherited;
  nLocalEntrega := -1;
end;

procedure TDMClientes.C_LocaisEntregaNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec(nLocalEntrega);
  C_LocaisEntregaENTREGA.Value := nLocalEntrega;

end;

procedure TDMClientes.C_ContratosNewRecord(DataSet: TDataSet);
begin
  inherited;
  dec(nSeqContratos);

  C_ContratosContrato.Value := nSeqContratos;
  C_ContratosPreco.Value := 0;
  C_ContratosPeriodicidade.Value := 'S';
  C_ContratosDiaCobranca.Value := '2';
  C_ContratosMetodoPgto.Value := 'H';
  C_ContratosGrupoCobranca.Value := 1;

end;

procedure TDMClientes.C_ContratosPERIODICIDADEChange(Sender: TField);
begin
  inherited;
  if (Sender.asString[1] in ['S', 'Q']) and (C_ContratosDiaCobranca.asString <> '') and 
     (C_ContratosDiaCobranca.asInteger > 7) then
    C_ContratosDiaCobranca.Value := '7';

end;

procedure TDMClientes.C_ContratosBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (C_ContratosDescricao.Value = '') then begin
    C_ContratosDescricao.Value := CExp(C_ContratosNomeFuncionario.Value, ' - ') +
                                  C_ContratoslkItem.Value;
  end;

end;

procedure TDMClientes.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaTIPOFAVORECIDO.Value := 1; // Cliente
  C_TabelaDATACADASTRO.Value := DMProjeto.dDataSistema;
  C_TabelaTAXAVEL.Value := 'N';
  C_TabelaDESATIVADO.Value := 'N';
  C_TabelaEXIGIVEL1099.Value := 'N';
  C_TabelaLOGOTIPO.Value := '';
  C_TabelaLIMITECREDITO.Value := 0;
  C_TabelaSituacao.Value := 'N';
end;

procedure TDMClientes.DMComponentModoInclusao1_Iniciar(Sender: TObject);
begin
  inherited;
  nSeq := -1;
end;

procedure TDMClientes.C_FamiliarNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec(nSeq);
  C_FamiliarID.Value := nSeq;
  C_FamiliarTipoFavorecido.Value := 1;
  C_FamiliarDesativado.Value     := 'N';
end;

procedure TDMClientes.DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
begin
  inherited;
  if C_Tabela.State in [dsBrowse] then
  	C_Tabela.Edit;
  C_TabelaRelacionamento.Value := C_TabelaFavorecido.Value;
  C_TabelaRelac.Value := C_TabelaFavorecido.Value;
end;

procedure TDMClientes.C_TabelaRELACChange(Sender: TField);
begin
  inherited;
  with C_Familiar do begin
    DisableControls;
  	First;
  	while not EOF do begin
  		Edit;
    	C_FamiliarRelacionamento.Value := C_TabelaRelac.Value;
      C_FamiliarDescricaoRelac.Value := C_TabelaDescricaoRelac.Value;
    	Post;
    	Next;
    end;
    enablecontrols;
  end;
end;

procedure TDMClientes.C_TabelaCODIGOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistenciaFav(1,'C',C_TabelaCODIGO.value) then begin
    DlgMsg.ShowMsg(5001,['Cliente']);
    raise Exception.Create('@@');
  end;
end;

end.

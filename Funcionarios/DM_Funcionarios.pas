unit DM_Funcionarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, IBCustomDataSet, DlgMsg, DMComponent, IBUpdateSQL,
  IBQuery, DBClient, Provider, Variants, IBEvents;

type
  TDMFuncionarios = class(TDMManutencao)
    Q_UFS: TIBQuery;
    Q_Paises: TIBQuery;
    Q_TiposAtividade: TIBQuery;
    P_UFs: TDataSetProvider;
    C_UFs: TClientDataSet;
    C_UFsDESCRICAO: TStringField;
    C_UFsUF: TStringField;
    P_TiposAtividade: TDataSetProvider;
    C_TiposAtividade: TClientDataSet;
    P_Paises: TDataSetProvider;
    C_Paises: TClientDataSet;
    C_PaisesPAIS: TIntegerField;
    C_PaisesDESCRICAO: TStringField;
    C_TiposAtividadeTIPOATIVIDADE: TIntegerField;
    C_TiposAtividadeATIVIDADE: TStringField;
    C_TabelalkUF: TStringField;
    C_TabelalkPais: TStringField;
    C_TabelalkTipoAtividade: TStringField;
    Q_Cargos: TIBQuery;
    P_Cargos: TDataSetProvider;
    C_Cargos: TClientDataSet;
    C_CargosCARGO: TIntegerField;
    C_CargosDESCRICAO: TStringField;
    C_TabelalkCargo: TStringField;
    C_TabelacfCREDITO: TBCDField;
    Q_Consultas: TIBQuery;
    Q_ConsultasProvider: TDataSetProvider;
    C_Consultas: TClientDataSet;
    C_ConsultasDS: TDataSource;
    Q_Contas: TIBQuery;
    P_Contas: TDataSetProvider;
    C_Contas: TClientDataSet;
    C_ContasDS: TDataSource;
    C_TabelalkContaPagto: TStringField;
    U_ComissaoGerente: TIBUpdateSQL;
    C_ComissaoGerente: TClientDataSet;
    Q_ComissaoGerente: TIBQuery;
    C_ComissaoGerenteDS: TDataSource;
    Q_LookFuncionario: TIBQuery;
    C_ComissaoGerenteCOMISSAO: TBCDField;
    C_ComissaoGerenteVENDEDOR_VENDAS: TIntegerField;
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
    C_TabelaDATANASC: TDateField;
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
    C_TabelaCONTAPAGAMENTO: TIntegerField;
    C_TabelaCONTADESPESAS: TIntegerField;
    C_TabelaULTCOMPRA: TDateField;
    C_TabelaULTVALORCOMPRA: TBCDField;
    C_TabelaQ_ComissaoGerente: TDataSetField;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasDESCTIPO: TStringField;
    C_ContasSALDO: TBCDField;
    C_ContasCONTAPAI: TIntegerField;
    Q_FuncsPayItens: TIBQuery;
    U_FuncsPayItens: TIBUpdateSQL;
    C_FuncsPayItens: TClientDataSet;
    C_TabelaPERIODICIDADE: TStringField;
    C_FuncsPayItensFUNCPAYITEM: TIntegerField;
    C_FuncsPayItensFUNCIONARIO: TIntegerField;
    C_FuncsPayItensITEM: TIntegerField;
    C_FuncsPayItensPAYROLLITEM: TIntegerField;
    C_FuncsPayItensVALOR: TBCDField;
    C_FuncsPayItensPERCENTUAL: TBCDField;
    C_FuncsPayItensQTDHORAS: TBCDField;
    C_FuncsPayItensLIMITE: TBCDField;
    C_FuncsPayItensFAVORECIDO: TIntegerField;
    C_TabelaDATAADIMISSAO: TDateField;
    C_TabelaDATADEMISSAO: TDateField;
    C_TabelaDATAAUMENTO: TDateField;
    Q_PayrollItens: TIBQuery;
    P_PayrollItens: TDataSetProvider;
    C_PayrollItens: TClientDataSet;
    C_PayrollItensPAYROLLITEM: TIntegerField;
    C_PayrollItensDESCRICAO: TStringField;
    C_PayrollItensTIPOPAYROLL: TIntegerField;
    C_PayrollItensCONTA: TIntegerField;
    C_PayrollItensVALOR: TBCDField;
    C_PayrollItensPERCENTUAL: TBCDField;
    C_PayrollItensLIMITE: TBCDField;
    C_PayrollItensTIPOWAGE: TStringField;
    C_FuncsPayItenslkPayrollItem: TStringField;
    Q_Itens: TIBQuery;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensHASCHILDREN: TStringField;
    C_FuncsPayItensTIPOPAYROLL: TIntegerField;
    C_FuncsPayItenslkItem: TStringField;
    C_ComissaoGerenteID: TIntegerField;
    C_ComissaoGerenteFAVORECIDO: TIntegerField;
    C_ComissaoGerentelkVendedor: TStringField;
    C_ContasTIPOCONTA: TIntegerField;
    C_ContasCODIGOREDUZIDO: TStringField;
    C_ContasCODIGOCONTA: TStringField;
    C_FuncsPayItensDS: TDataSource;
    C_FuncsPayItensPRODUTIVIDADE: TStringField;
    C_MetasDS: TDataSource;
    Q_Metas: TIBQuery;
    C_Metas: TClientDataSet;
    U_Metas: TIBUpdateSQL;
    C_PayrollItensAGENCIA: TIntegerField;
    C_PayrollItensIDENTIFICACAO: TStringField;
    C_PayrollItensCONTALIABILITY: TIntegerField;
    C_PayrollItensDESATIVADO: TStringField;
    C_PayrollItensMETODOADIC: TIntegerField;
    C_PayrollItensPADRAOFUNCS: TStringField;
    Q_MasterFuncPayItensDS: TDataSource;
    C_MetasFUNCPAYITEMMETA: TIntegerField;
    C_MetasFUNCPAYITEM: TIntegerField;
    C_MetasVENDAMINIMA: TBCDField;
    C_MetasVENDAMAXIMA: TBCDField;
    C_MetasVALOR: TBCDField;
    C_MetasTIPOPERCENTUAL: TStringField;
    Q_SQL: TIBQuery;
    C_FuncsPayItensicValorGrid: TCurrencyField;
    Q_Usuarios: TIBQuery;
    C_Usuarios: TClientDataSet;
    C_UsuariosUSUARIO: TIntegerField;
    C_UsuariosLOGINNAME: TStringField;
    Q_UsuariosProvider: TDataSetProvider;
    C_TabelalkUsuario: TStringField;
    C_FuncsPayItensTEMPORARIO: TStringField;
    C_FuncsPayItensVALIDADE: TDateField;
    C_PayrollItensTEMPORARIO: TStringField;
    C_PayrollItensVALIDADE: TDateField;
    C_PayrollItensITEM: TIntegerField;
    C_PayrollItensQTDHORAS: TBCDField;
    DS_ComissaoDia: TDataSource;
    Q_ComissaoDia: TIBQuery;
    C_ComissaoDia: TClientDataSet;
    U_ComissaoDia: TIBUpdateSQL;
    C_ComissaoDiaCOMISSAO_DIA: TIntegerField;
    C_ComissaoDiaPAYROLLITEM: TIntegerField;
    C_ComissaoDiaDIA_SEMANA: TIntegerField;
    C_ComissaoDiaADD_COMISSAO: TBCDField;
    C_FuncsPayItensTIPO: TStringField;
    C_FuncsPayItenslbDescPayRollItem: TStringField;
    C_FuncsPayItensMETODOADIC: TIntegerField;
    C_PayrollItensTIPO: TStringField;
    C_FuncsPayItensDESCTIPOPAYROLL: TStringField;
    C_PayrollItensCB_PAYROLLITEM: TStringField;
    C_PayrollItensCB_VALOR: TStringField;
    C_PayrollItensCB_LIMITE: TStringField;
    C_PayrollItensCB_HORAS: TStringField;
    C_PayrollItensDESCTIPOPAYROLL: TStringField;
    C_TabelaQ_FuncsPayItens: TDataSetField;
    C_FuncsPayItensQ_Metas: TDataSetField;
    Q_MasterPayrollItem: TDataSource;
    IBEventos_Funcionarios: TIBEvents;
    C_TabelaSEXO: TStringField;
    C_TabelaCPF_CNPJ: TStringField;
    C_TabelaBAIRRO: TStringField;
    C_TabelaRG: TStringField;
    C_TabelaHORAMODIFICACAO: TDateTimeField;
    C_PayrollItensQ_ComissaoDia: TDataSetField;
    C_TabelaEMPRESA: TIntegerField;
    C_TabelaEMAIL: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaCalcFields(DataSet: TDataSet);
    procedure C_TabelaAfterScroll(DataSet: TDataSet);
    procedure C_ComissaoGerenteNewRecord(DataSet: TDataSet);
    procedure C_FuncsPayItensBeforePost(DataSet: TDataSet);
    procedure C_FuncsPayItensNewRecord(DataSet: TDataSet);
    procedure C_FuncsPayItensPAYROLLITEMChange(Sender: TField);
    procedure C_FuncsPayItensVALORChange(Sender: TField);
    procedure C_FuncsPayItensPERCENTUALChange(Sender: TField);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaCOMISSAOChange(Sender: TField);
    procedure C_FuncsPayItensAfterPost(DataSet: TDataSet);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure C_FuncsPayItensLIMITEChange(Sender: TField);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_MetasNewRecord(DataSet: TDataSet);
    procedure C_MetasAfterPost(DataSet: TDataSet);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure C_FuncsPayItensTIPOPAYROLLChange(Sender: TField);
    procedure C_MetasBeforePost(DataSet: TDataSet);
    procedure C_FuncsPayItensCalcFields(DataSet: TDataSet);
    procedure C_FuncsPayItensQTDHORASChange(Sender: TField);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure C_ComissaoDiaNewRecord(DataSet: TDataSet);
    procedure IBEventos_FuncionariosEventAlert(Sender: TObject;
      EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
    procedure C_TabelaCPF_CNPJValidate(Sender: TField);
  private
    { Private declarations }
    nSeqPayItens, nSeqMetas : Integer;
    nLastMaxValor : Currency;
    bAppend, bChange : Boolean;
  public
    { Public declarations }
    procedure GeraCodigo;
  end;

var
  DMFuncionarios: TDMFuncionarios;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDMFuncionarios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMFuncionarios := Self;
  IBEventos_Funcionarios.RegisterEvents;
end;

procedure TDMFuncionarios.GeraCodigo;
var xID,xCasas: integer;
    sNomeDoCampo,sCodigo,xCodigo: string;
begin
  inherited;
  sNomeDoCampo := 'IDCodigoFuncionario';
  if not(C_Tabela.State in [dsEdit,dsInsert]) then
    C_Tabela.Edit;
  C_Tabela.UpdateRecord;
  sCodigo := C_TabelaCODIGO.Value;
  xCodigo := sCodigo;
  if Direita(xCodigo,1)='-' then begin
    xCasas := 6;
    while (Direita(xCodigo,1)='-') or DMProjeto.VerificaExistenciaFav(3,C_TabelaFavorecido.value,'C',xCodigo) do begin
      xID := DMProjeto.NextID(copy(sCodigo,1,Pos('-',sCodigo)-1),1);
      if Length(IntToStr(xID))>6 then
        xCasas := Length(IntToStr(xID));
      xCodigo := sCodigo+AdicionarStr(IntToStr(xID),'0',xCasas);
    end;
  end else if Trim(xCodigo)='' then begin
    xCasas := 6;
    while (trim(xCodigo)='') or DMProjeto.VerificaExistenciaFav(3,C_TabelaFavorecido.value,'C',xCodigo) do begin
      xID := DMProjeto.NextID(sNomeDoCampo,1);
      if Length(IntToStr(xID))>6 then
        xCasas := Length(IntToStr(xID));
      xCodigo := AdicionarStr(IntToStr(xID),'0',xCasas);
    end;
  end;
  C_TabelaCODIGO.Value := xCodigo;
end;

procedure TDMFuncionarios.C_TabelaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_TabelaCREDITO.AsVariant = null then
    C_TabelacfCREDITO.AsFloat := 0
  else
    C_TabelacfCREDITO.AsFloat := C_TabelaCREDITO.AsFloat;

end;

procedure TDMFuncionarios.C_TabelaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // mestre-detalhe
  if (C_Consultas.Active)and not(C_Tabela.IsEmpty) then
    C_Consultas.Filter := 'ID='+C_TabelaFAVORECIDO.AsString;
end;

procedure TDMFuncionarios.C_ComissaoGerenteNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_ComissaoGerenteID.Value := -1;
  C_ComissaoGerenteCOMISSAO.Value := 0;
end;

procedure TDMFuncionarios.C_FuncsPayItensBeforePost(DataSet: TDataSet);
begin
  inherited;
//  C_FuncsPayItensFuncionario.asVariant := C_FuncsPayItensFavorecido.asVariant;
end;

procedure TDMFuncionarios.C_FuncsPayItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec( nSeqPayItens, 3 );

  C_FuncsPayItensFuncPayItem.Value := nSeqPayItens;
  C_FuncsPayItensValor.Value := 0;
  C_FuncsPayItensPercentual.Value := 0;
  C_FuncsPayItensQTDHoras.Value := 0;
  C_FuncsPayItensLimite.Value := 0;
  C_FuncsPayItensProdutividade.Value := 'N';
  C_FuncsPayItensMetodoAdic.Value := 2;
end;

procedure TDMFuncionarios.C_FuncsPayItensPAYROLLITEMChange(Sender: TField);
begin
  inherited;
  if Sender.asVariant <> null then begin
    C_PayrollItens.Locate('PayrollItem', Sender.asInteger, []);

    C_FuncsPayItensTipoPayroll.Value 	:= C_PayrollItensTipoPayroll.Value;
    C_FuncsPayItensValor.Value 				:= C_PayrollItensValor.Value;
    C_FuncsPayItensPercentual.Value 	:= C_PayrollItensPercentual.Value;
    C_FuncsPayItensLimite.Value 			:= C_PayrollItensLimite.Value;
    C_FuncsPayItensMetodoAdic.Value 	:= C_PayrollItensMetodoAdic.Value;
    C_FuncsPayItensQtdHoras.Value 		:= C_PayrollItensQtdHoras.Value;
		C_FuncsPayItensItem.Value 				:= C_PayrollItensItem.Value;
    C_FuncsPayItensDescTipoPayroll.Value := C_PayrollItensDescTipoPayroll.Value;

    if (C_FuncsPayItensTipoPayroll.Value = 1) then
      C_FuncsPayItensProdutividade.Value := 'S';

    if (C_FuncsPayItensTipoPayroll.Value = 2) and (not bChange) then begin
      C_Tabela.Edit;
      C_TabelaComissao.Value := C_PayrollItensPercentual.Value;
    end;

  end;
end;

procedure TDMFuncionarios.C_FuncsPayItensVALORChange(Sender: TField);
begin
  inherited;
  if (Sender.asCurrency < 0) or (Sender.asVariant = null) then
    C_FuncsPayItensValor.Value := 0
  else if (Sender.asCurrency > 0) then begin
    C_FuncsPayItensPercentual.Value := 0;
    C_FuncsPayItensMetodoAdic.Value := 5;
  end;
end;

procedure TDMFuncionarios.C_FuncsPayItensPERCENTUALChange(Sender: TField);
begin
  inherited;
  if (Sender.asCurrency < 0) or (Sender.asVariant = null) then
    C_FuncsPayItensPercentual.Value := 0
  else if (Sender.asCurrency > 0) then
    C_FuncsPayItensValor.Value := 0;
end;

procedure TDMFuncionarios.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  bAppend := true;
  try
    C_TabelaEMPRESA.Value       	:= DMProjeto.nEmpresaLogada;
    C_TabelaComissao.Value := 0;
    C_TabelaTIPOFAVORECIDO.Value 	:= 3; // Funcionário
    C_TabelaDATACADASTRO.Value 		:= DMProjeto.dDataSistema;
    C_TabelaTAXAVEL.Value 				:= 'S';
    C_TabelaPERIODICIDADE.Value 	:= 'S';
    C_TabelaDESATIVADO.Value 			:= 'N';
    C_TabelaEXIGIVEL1099.Value 		:= 'N';
    C_TabelaTIPO_FUNC.Value 			:= 'E';
    C_TabelaISVENDEDOR.Value 			:= 'N';
    C_TabelaLIMITECREDITO.Value 	:= 0;
    C_TabelaUF.Value := DMProjeto.sUFEmpresa;
    C_TabelaCidade.Value := DMProjeto.sCidadeEmpresa;
  finally
    bAppend := false;
  end;
end;


procedure TDMFuncionarios.C_TabelaCOMISSAOChange(Sender: TField);
begin
  inherited;

  {Atualizando o PayrollItem Comissao}
  if not bAppend and not bChange then begin  //Para evitar que este código ocorra no New Record para Comissao
    bChange := true;
    if not (C_FuncsPayItensTipoPayroll.Value = 2) and not C_FuncsPayItens.Locate('TipoPayroll', 2, []) then begin
      C_PayrollItens.Locate('TipoPayroll', 2, []);

      C_FuncsPayItens.Append;
      C_FuncsPayItensPayrollItem.Value := C_PayrollItensPayrollItem.Value;

    end;

    C_FuncsPayItens.Edit;
    C_FuncsPayItensPercentual.Value := IIF(Sender.asFloat > 0, Sender.asFloat, 0);
    bChange := false;
  end;
end;

procedure TDMFuncionarios.C_FuncsPayItensAfterPost(DataSet: TDataSet);
begin
  inherited;
  if (C_FuncsPayItensTipoPayroll.Value = 2) and (C_TabelaComissao.Value <> C_FuncsPayItensPERCENTUAL.Value) then begin
    C_Tabela.Edit;
    bAppend := true;
    try
      C_TabelaComissao.Value := C_FuncsPayItensPERCENTUAL.Value;
    finally
      bAppend := false;
    end;
  end;
end;

procedure TDMFuncionarios.DMComponentModoInclusao1_Iniciar(
  Sender: TObject);
begin
  inherited;
  nSeqPayItens 	:= -10;
  nSeqMetas 		:= -10;
  nLastMaxValor := -0.01;
end;

procedure TDMFuncionarios.C_FuncsPayItensLIMITEChange(Sender: TField);
begin
  inherited;
  if (Sender.asCurrency < 0) or (Sender.asVariant = null) then
    C_FuncsPayItensLimite.Value := 0;
end;

procedure TDMFuncionarios.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
var bObriga : boolean;
begin
  // Código não existente
  if (C_TabelaCODIGO.Value='') then
    GeraCodigo;

  inherited;

  C_Tabela.Edit;
  C_TabelaHORAMODIFICACAO.AsDateTime := now;
  C_Tabela.Post;

	bObriga := DMProjeto.Parametro('PermitirDuplicidadeFav') <> 'S';
  if DMProjeto.VerificaExistenciaFav(3,DMFuncionarios.C_TabelaFavorecido.value,'C',DMFuncionarios.C_TabelaCodigo.value) then begin
    DlgMsg.ShowMsg(5001,['Fornecedor']);
    if bObriga then begin
    	bSkip := true;
    	Exit;
    end;
  end;

  if DMProjeto.VerificaExistenciaFav(3,DMFuncionarios.C_TabelaFavorecido.value,'N',DMFuncionarios.C_TabelaNOME.value) then begin
    DlgMsg.ShowMsg(5001,['Fornecedor']);
    if bObriga then begin
    	bSkip := true;
    	Exit;
    end;
  end;
  // Código duplicados
  {
  if (C_TabelaCODIGO.Value<>'') then begin
    with DMProjeto.Q_SQL do begin
      Close;
      SQL.Text := 'Select Count(favorecido) From Favorecidos '+
        					'Where tipofavorecido=3 And codigo='+QuotedStr(C_TabelaCODIGO.Value)+' '+
        					'And favorecido <> '+C_TabelaFAVORECIDO.AsString;
      Open;
      if (Fields[0].AsInteger>0) then begin
        DlgMsg.ShowMsg(933,['[CÓDIGO]']);
        bSkip := True;
      end;
    end; // with
  end; // if
  }
end;

procedure TDMFuncionarios.C_MetasNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec(nSeqMetas);
  C_MetasFUNCPAYITEMMETA.Value := nSeqMetas;
  C_MetasVendaMinima.Value := nLastMaxValor + 0.01;
  C_MetasVendaMaxima.Value := 0;
  C_MetasValor.Value       := 0;
  C_MetasTipoPercentual.Value := 'N';
end;

procedure TDMFuncionarios.C_MetasAfterPost(DataSet: TDataSet);
var
  TmpDS : TClientDataSet;
begin
  inherited;

  TmpDS := TClientDataSet.Create(self);
  with TmpDS do begin
    CloneCursor(C_Metas,true);
    First;
    nLastMaxValor := 0;
    while not EOF  do begin
      if nLastMaxValor < FieldByName('VendaMaxima').asCurrency then
        nLastMaxValor := FieldByName('VendaMaxima').asCurrency;

      Next;
    end;
  end;
  TmpDS.Free;

  {Se existe metas o percentual / valor considerados será o da meta}
  C_FuncsPayItens.Edit;
  C_FuncsPayItensValor.Value := 0;
  C_FuncsPayItensPercentual.Value := 0;

end;

procedure TDMFuncionarios.DMComponentModoInclusao2_Terminar(
  Sender: TObject);
begin
  inherited;
  {Adicionando os Itens de Payroll padrão para os novos funcionários}
  with C_PayrollItens do begin
    First;
    while not EOF do begin
      if FieldByName('PadraoFuncs').asString = 'S' then begin
        if ((FieldByName('Temporario').AsString = 'N') or
           ((FieldByName('Temporario').AsString = 'S') and (FieldByName('Validade').AsDateTime >= DMProjeto.dDataSistema))) then begin
        	C_FuncsPayItens.Append;
        	C_FuncsPayItensPayrollItem.Value := FieldByName('PayrollItem').asInteger;
          C_FuncsPayItensValor.Value 			 := FieldByName('Valor').asCurrency;
          C_FuncsPayItensQtdHoras.Value 	 := FieldByName('QtdHoras').asCurrency;
          C_FuncsPayItensPercentual.Value  := FieldByName('Percentual').asCurrency;
          C_FuncsPayItensLimite.Value 	 	 := FieldByName('Limite').asCurrency;
          C_FuncsPayItensMetodoAdic.Value  := FieldByName('MetodoAdic').asInteger;
          C_FuncsPayItensTipo.Value  			 := FieldByName('Tipo').asString;
          C_FuncsPayItensItem.Value 			 := FieldByName('Item').asInteger;
       // C_FuncsPayItensConta.Value 			 := FieldByName('Conta').asInteger;
        	C_FuncsPayItens.Post;
        end;
      end;
      Next;
    end;
  end;
end;

procedure TDMFuncionarios.C_FuncsPayItensTIPOPAYROLLChange(Sender: TField);
begin
  inherited;
  if Sender.asInteger = 3 then with Q_SQL do begin {adicao}
    Close;
    SQL.Text := 'Select * from payrollitensmetas where PayrollItem = :P ';
    Params[0].asInteger := C_FuncsPayItensPayrollItem.Value;
    Open;

    while not EOF do begin
      C_Metas.Append;
      C_MetasVendaMinima.asCurrency := FieldByName('VendaMinima').asCurrency;
      C_MetasVendaMaxima.asCurrency := FieldByName('VendaMaxima').asCurrency;
      C_MetasValor.asCurrency 			:= FieldByName('Valor').asCurrency;
      C_MetasTipoPercentual.asString:= FieldByName('TipoPercentual').asString;
      C_Metas.Post;
      Next;
    end;
    Close;
  end;
end;

procedure TDMFuncionarios.C_MetasBeforePost(DataSet: TDataSet);
begin
  inherited;
  if C_MetasVendaMaxima.asCurrency < C_MetasVendaMinima.asCurrency then begin
    DlgMsg.ShowMsg(2165);
    raise Exception.Create('@@');
  end;
end;

procedure TDMFuncionarios.C_FuncsPayItensCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_FuncsPayItensTipo.Value = 'V' then
    C_FuncsPayItensicValorGrid.Value := C_FuncsPayItensValor.Value
  else
    C_FuncsPayItensicValorGrid.Value := C_FuncsPayItensPercentual.Value;
end;

procedure TDMFuncionarios.C_FuncsPayItensQTDHORASChange(Sender: TField);
begin
  inherited;
  if (Sender.asInteger = 0) and (C_FuncsPayItensTipoPayroll.Value = 1) then
    C_FuncsPayItensProdutividade.Value := 'S';
end;

procedure TDMFuncionarios.DMComponentGravar3_AposApply(Sender: TObject);
begin
  inherited;
  if not C_TabelaVendedor.IsNull then begin
    Q_SQL.SQL.text := 'update usuarios set Funcionario = :usuario where usuario = :vendedor';
    Q_SQL.params[0].asinteger := C_TabelaFavorecido.value;
    Q_SQL.params[1].asinteger := C_TabelaVendedor.value;
    Q_SQL.ExecSQL;
  end;
  if not DMFuncionarios.bAlteracao then begin
    with Q_SQL do begin
    	close;
      sql.text := 'insert into funcspayitens '+
      						'(funcionario, payrollitem, valor, percentual, qtdhoras ) '+
                  'values '+
                  '(:funcionario, :payrollitem, 0, 0, 0 ) ';
      parambyname('Funcionario').AsInteger := C_TabelaFavorecido.Value;
      parambyname('payrollitem').AsInteger := 803;
      execsql;
      close;
    end;
  end;
end;

procedure TDMFuncionarios.C_ComissaoDiaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_ComissaoDiaComissao_Dia.value := -1;
end;

procedure TDMFuncionarios.IBEventos_FuncionariosEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  inherited;
  if EventName = 'EVENTO_CARGOS' then begin
    C_Cargos.close;
    C_Cargos.open;
  end
  else if EventName = 'EVENTO_CONTAS' then begin
    C_Contas.close;
    C_Contas.open;
  end
  else if EventName = 'EVENTO_ITENS' then begin
    C_Itens.close;
    C_Itens.open;
  end
  else if EventName = 'EVENTO_USUARIOS' then begin
    C_Usuarios.close;
    C_Usuarios.open;
  end;
end;

procedure TDMFuncionarios.C_TabelaCPF_CNPJValidate(Sender: TField);
var sDescricao: string;
begin
  inherited;
  if (Sender.AsVariant = null) or (Sender.AsString = '') then
    exit;

  CPF_CGCValido(Sender.Text);

  with DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'Select Favorecido, TipoFavorecido From Favorecidos where CPF_CNPJ = :C and Desativado = ''N''';
    Params[0].asString := Sender.AsString;
    Open;
    if (Length(Sender.Text) = 11) and ((FieldByName('Favorecido').asinteger > 0) or (FieldByName('Favorecido').asinteger = -1)) and (FieldByName('TipoFavorecido').asinteger = 3) then begin
      sDescricao := DMProjeto.DescTipoFav(FieldByName('TipoFavorecido').asinteger)+'!';
      DlgMsg.ShowMsg(7006,[sDescricao]);
      raise Exception.Create('@@');
    end
    else if (FieldByName('Favorecido').asinteger > 0) or (FieldByName('Favorecido').asinteger = -1) then begin
      sDescricao := DMProjeto.DescTipoFav(FieldByName('TipoFavorecido').asinteger)+'!';
      DlgMsg.ShowMsg(7007,[sDescricao]);

      Close;
      exit;
    end;
  end;
end;

end.

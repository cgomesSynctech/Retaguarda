unit DM_Fornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, IBCustomDataSet, DlgMsg, DMComponent, IBUpdateSQL,
  IBQuery, DBClient, Provider, Variants, IBEvents;

type
  TDMFornecedores = class(TDMManutencao)
    Q_UFS: TIBQuery;
    Q_Paises: TIBQuery;
    Q_PlanosPagamento: TIBQuery;
    Q_LookTipoEntrega: TIBQuery;
    Q_TiposAtividade: TIBQuery;
    P_UFs: TDataSetProvider;
    C_UFs: TClientDataSet;
    C_UFsDESCRICAO: TStringField;
    C_UFsUF: TStringField;
    Q_TipoEntregaProvider: TDataSetProvider;
    C_TipoEntrega: TClientDataSet;
    C_TipoEntregaTIPOENTREGA: TIntegerField;
    C_TipoEntregaDESCRICAO: TStringField;
    P_TiposAtividade: TDataSetProvider;
    C_TiposAtividade: TClientDataSet;
    C_TiposAtividadeTIPOATIVIDADE: TIntegerField;
    C_TiposAtividadeATIVIDADE: TStringField;
    P_Paises: TDataSetProvider;
    C_Paises: TClientDataSet;
    C_PaisesPAIS: TIntegerField;
    C_PaisesDESCRICAO: TStringField;
    P_PlanosPagamento: TDataSetProvider;
    C_PlanosPagamento: TClientDataSet;
    C_PlanosPagamentoDESCRICAO: TStringField;
    C_PlanosPagamentoPLANOPAGAMENTO: TIntegerField;
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
    C_TabelaSALDO: TBCDField;
    C_TabelalkUF: TStringField;
    C_TabelalkPais: TStringField;
    C_TabelalkTipoEntrega: TStringField;
    C_TabelalkPlanoPagamento: TStringField;
    C_TabelalkTipoAtividade: TStringField;
    C_ContasDS: TDataSource;
    Q_Contas: TIBQuery;
    P_Contas: TDataSetProvider;
    C_Contas: TClientDataSet;
    C_ContasPagtoDS: TDataSource;
    Q_ContasPagto: TIBQuery;
    P_ContasPagto: TDataSetProvider;
    C_ContasPagto: TClientDataSet;
    C_TabelalkConta: TStringField;
    C_TabelalkContaPagto: TStringField;
    Q_ContaDespesas: TIBQuery;
    P_ContaDespesas: TDataSetProvider;
    C_ContaDespesas: TClientDataSet;
    C_ContaDespesasDS: TDataSource;
    C_TabelaCONTADESPESAS: TIntegerField;
    C_TabelalkContaDespesas: TStringField;
    C_TabelacfSALDO: TFloatField;
    C_ContasPagtoCONTA: TIntegerField;
    C_ContasPagtoDESCRICAO: TStringField;
    C_ContasPagtoDESCTIPO: TStringField;
    C_ContasPagtoSALDO: TBCDField;
    C_ContasPagtoCONTAPAI: TIntegerField;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasDESCTIPO: TStringField;
    C_ContasSALDO: TBCDField;
    C_ContasCONTAPAI: TIntegerField;
    C_ContaDespesasCONTA: TIntegerField;
    C_ContaDespesasDESCRICAO: TStringField;
    C_ContaDespesasDESCTIPO: TStringField;
    C_ContaDespesasSALDO: TBCDField;
    C_ContaDespesasCONTAPAI: TIntegerField;
    C_TabelaULTCOMPRA: TDateField;
    C_TabelaULTVALORCOMPRA: TBCDField;
    C_ContasPagtoCODIGOREDUZIDO: TStringField;
    C_ContasPagtoCODIGOCONTA: TStringField;
    C_ContaDespesasCODIGOREDUZIDO: TStringField;
    C_ContaDespesasCODIGOCONTA: TStringField;
    C_ContasCODIGOREDUZIDO: TStringField;
    C_ContasCODIGOCONTA: TStringField;
    C_ContasPagtoTIPOCONTA: TIntegerField;
    C_ContaDespesasTIPOCONTA: TIntegerField;
    C_ContasTIPOCONTA: TIntegerField;
    C_TabelaDIASPERIODO: TIntegerField;
    IBEventos_Fornecedores: TIBEvents;
    C_TabelaCPF_CNPJ: TStringField;
    C_TabelaINSCRICAO_EST: TStringField;
    C_TabelaBAIRRO: TStringField;
    C_TabelaTIPOEMPRESA: TStringField;
    C_TabelaPESSOA_FJ: TStringField;
    C_TabelaFONTE: TStringField;
    C_TabelaOLDNOME: TStringField;
    C_UFsDS: TDataSource;
    Q_Municipios: TIBQuery;
    P_Municipios: TDataSetProvider;
    C_Municipios: TClientDataSet;
    C_MunicipiosMUNICIPIO: TIntegerField;
    C_MunicipiosCODUF: TIntegerField;
    C_MunicipiosDESCRICAO: TStringField;
    C_MunicipiosDs: TDataSource;
    C_TabelaMUNICIPIO: TIntegerField;
    C_TabelalkMunicipio: TStringField;
    C_TabelaNRO: TStringField;
    C_TabelaEMPRESA: TIntegerField;
    C_TabelaEMAIL: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure C_TabelaCalcFields(DataSet: TDataSet);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure IBEventos_FornecedoresEventAlert(Sender: TObject;
      EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
    procedure C_TabelaCPF_CNPJValidate(Sender: TField);
    procedure C_TabelaAfterScroll(DataSet: TDataSet);
    procedure C_TabelaNOMEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GeraCodigo;
  end;

var
  DMFornecedores: TDMFornecedores;

implementation

uses DM_Projeto, funcoes, TDM_Projeto;

{$R *.DFM}

procedure TDMFornecedores.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMFornecedores := self;
  IBEventos_Fornecedores.RegisterEvents;
end;

procedure TDMFornecedores.GeraCodigo;
var xID,xCasas: integer;
    sNomeDoCampo,sCodigo,xCodigo: string;
begin
  inherited;
  sNomeDoCampo := 'IDCodigoFornecedor';
  if not(C_Tabela.State in [dsEdit,dsInsert]) then
    C_Tabela.Edit;
  C_Tabela.UpdateRecord;
  sCodigo := C_TabelaCODIGO.Value;
  xCodigo := sCodigo;
  if Direita(xCodigo,1)='-' then begin
    xCasas := 6;
    while (Direita(xCodigo,1)='-') or DMProjeto.VerificaExistenciaFav(2,C_TabelaFavorecido.value,'C',xCodigo) do begin
      xID := DMProjeto.NextID(copy(sCodigo,1,Pos('-',sCodigo)-1),1);
      if Length(IntToStr(xID))>6 then
        xCasas := Length(IntToStr(xID));
      xCodigo := sCodigo+AdicionarStr(IntToStr(xID),'0',xCasas);
    end;
  end else if Trim(xCodigo)='' then begin
    xCasas := 6;
    while (trim(xCodigo)='') or DMProjeto.VerificaExistenciaFav(2,C_TabelaFavorecido.value,'C',xCodigo) do begin
      xID := DMProjeto.NextID(sNomeDoCampo,1);
      if Length(IntToStr(xID))>6 then
        xCasas := Length(IntToStr(xID));
      xCodigo := AdicionarStr(IntToStr(xID),'0',xCasas);
    end;
  end;
  C_TabelaCODIGO.Value := xCodigo;
end;

procedure TDMFornecedores.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
  inherited;
  C_TabelaDataCadastro.Value := DMProjeto.dDataSistema;
  C_TabelaTIPOFAVORECIDO.Value := 2;
  C_TabelaTAXAVEL.Value := 'N';
  C_TabelaDESATIVADO.Value := 'N';
  C_TabelaEXIGIVEL1099.Value := 'N';
  C_TabelaLIMITECREDITO.Value := 0;
end;

procedure TDMFornecedores.C_TabelaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_TabelacfSALDO.AsFloat := IIF(C_TabelaSALDO.AsVariant = null, 0, C_TabelaSALDO.AsFloat);
end;

procedure TDMFornecedores.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
var bObriga : boolean;
begin



  // Código não existente
  if (C_TabelaCODIGO.Value='') then
    GeraCodigo;

  inherited;
  // Código duplicados
	bObriga := DMProjeto.Parametro('PermitirDuplicidadeFav') <> 'S';
  if DMProjeto.VerificaExistenciaFav(2,DMFornecedores.C_TabelaFavorecido.value,'C',DMFornecedores.C_TabelaCodigo.value) then begin
    DlgMsg.ShowMsg(5001,['Fornecedor']);
    if bObriga then begin
    	bSkip := true;
    	Exit;
    end;
  end;
  if DMProjeto.VerificaExistenciaFav(2,DMFornecedores.C_TabelaFavorecido.value,'N',DMFornecedores.C_TabelaNome.value) then begin
    DlgMsg.ShowMsg(5001,['Fornecedor']);
    if bObriga then begin
      bSkip := true;
    	Exit;
    end;
  end;
  {
  if (C_TabelaCODIGO.Value<>'') then begin
    with DMProjeto.Q_SQL do begin
      Close;
      SQL.Text := 'Select Count(favorecido) From Favorecidos '+
        'Where tipofavorecido=2 And codigo='+QuotedStr(C_TabelaCODIGO.Value)+
        'And favorecido<>'+C_TabelaFAVORECIDO.AsString;
      Open;
      if (Fields[0].AsInteger>0) then begin
        DlgMsg.ShowMsg(933,['[CÓDIGO]']);
        bSkip := True;
      end;
    end; // with
  end; // if
  }
end;

procedure TDMFornecedores.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaUF.Value := DMProjeto.sUFEmpresa;
  C_TabelaCidade.Value := DMProjeto.sCidadeEmpresa;
  C_TabelaCredito.Value := 0;
  C_TabelaTipoEmpresa.Value := 'P';
  C_TabelaFonte.value := 'N';
  C_TabelaPessoa_FJ.value := 'F';
  C_TabelaPais.value := 1058;
  C_TabelaEmpresa.Value := DMPRojeto.nEmpresaLogada;
end;

procedure TDMFornecedores.IBEventos_FornecedoresEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  inherited;
  if EventName = 'EVENTO_CONTAS' then begin
    C_Contas.close;
    C_Contas.open;
    C_ContasPagto.close;
    C_ContasPagto.open;
    C_ContaDespesas.close;
    C_ContaDespesas.open;
  end
  else if EventName = 'EVENTO_PLANOSPAGAMENTO' then begin
    C_PlanosPagamento.close;
    C_PlanosPagamento.open;
  end;
end;

procedure TDMFornecedores.C_TabelaCPF_CNPJValidate(Sender: TField);
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
    if (Length(Sender.Text) = 11) and ((FieldByName('Favorecido').asinteger > 0) or (FieldByName('Favorecido').asinteger = -1)) and (FieldByName('TipoFavorecido').asinteger = 2) then begin
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

procedure TDMFornecedores.C_TabelaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if length(C_TabelaCPF_CNPJ.Text) = 11 then
    C_TabelaCPF_CNPJ.EditMask := '999.999.999-99;0; '
  else if length(C_TabelaCPF_CNPJ.Text) = 14 then
    C_TabelaCPF_CNPJ.EditMask := '99.999.999/9999-99;0; ';
end;

procedure TDMFornecedores.C_TabelaNOMEChange(Sender: TField);
begin
  inherited;
  if C_TabelaRazao.IsNull or (C_TabelaOldNOME.value = C_TabelaRAZAO.value) then
    C_TabelaRazao.value := C_TabelaNome.value;
  C_TabelaOldNome.value := C_TabelaNome.value;
end;

end.

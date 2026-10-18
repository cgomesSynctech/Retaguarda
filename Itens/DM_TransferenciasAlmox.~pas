unit DM_TransferenciasAlmox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTransferenciasAlmox = class(TDMManutencao)
    C_TabelaTRANSFALMOX: TIntegerField;
    C_TabelaNUMERO: TStringField;
    C_TabelaDATA: TDateField;
    C_TabelaUSUARIO: TIntegerField;
    C_TabelaALMOX_ORIGEM: TIntegerField;
    C_TabelaALMOX_DESTINO: TIntegerField;
    C_TabelaSITUACAO: TStringField;
    Q_Almoxarifados: TIBQuery;
    P_Almoxarifados: TDataSetProvider;
    C_Almoxarifados: TClientDataSet;
    C_TabelalkAmoxOrigem: TStringField;
    C_TabelalkAlmoxDestino: TStringField;
    Q_Usuarios: TIBQuery;
    P_Usuarios: TDataSetProvider;
    C_Usuarios: TClientDataSet;
    C_UsuariosUSUARIO: TIntegerField;
    C_UsuariosLOGINNAME: TStringField;
    C_UsuariosLOGINPASS: TStringField;
    C_UsuariosFUNCIONARIO: TIntegerField;
    C_TabelalkUsuario: TStringField;
    Q_TransfAlmoxItens: TIBQuery;
    C_TransfAlmoxItens: TClientDataSet;
    U_TransfAlmoxItens: TIBUpdateSQL;
    C_TransfAlmoxItensDS: TDataSource;
    C_TabelaQ_TransfAlmoxItens: TDataSetField;
    C_TransfAlmoxItensTRANSFALMOXITEM: TIntegerField;
    C_TransfAlmoxItensTRANSFALMOX: TIntegerField;
    C_TransfAlmoxItensITEM: TIntegerField;
    C_TransfAlmoxItensQUANTIDADE: TBCDField;
    C_TransfAlmoxItensUNIDADE: TStringField;
    C_TransfAlmoxItensFATOR: TFloatField;
    C_TransfAlmoxItensCODIGO: TStringField;
    C_TransfAlmoxItensDESCRICAO: TStringField;
    C_TransfAlmoxItensREFERENCIA: TStringField;
    C_TransfAlmoxItens_icSelecionado: TIntegerField;
    Q_Unidades: TIBQuery;
    C_Unidades: TClientDataSet;
    C_UnidadesUNIDADE: TStringField;
    C_UnidadesDESCRICAO: TStringField;
    P_Unidades: TDataSetProvider;
    C_TransfAlmoxItenslkUnidade: TStringField;
    C_AlmoxarifadosALMOXARIFADO: TIntegerField;
    C_AlmoxarifadosDESCRICAO: TStringField;
    Q_Lotes: TIBQuery;
    P_Lotes: TDataSetProvider;
    C_Lotes: TClientDataSet;
    C_LotesIDLOTE: TIntegerField;
    C_LotesITEM: TIntegerField;
    C_LotesNUMEROLOTE: TStringField;
    C_LotesVALIDADE: TDateField;
    C_LotesESTOQUELOTE: TBCDField;
    C_LotesQTDENTRADAS: TBCDField;
    C_LotesFATORUNDVENDA: TFloatField;
    C_LotesicEstoqueLote: TCurrencyField;
    C_LotesDS: TDataSource;
    C_TransfAlmoxItensNUMEROLOTE: TStringField;
    C_TransfAlmoxItensALMOX_ORIGEM: TIntegerField;
    C_TransfAlmoxItensALMOX_DESTINO: TIntegerField;
    C_TransfAlmoxItensUnidadeOld: TStringField;
    C_TransfAlmoxItensEMPRESA: TIntegerField;
    C_TransfAlmoxItensULTIMOFORNECEDOR: TIntegerField;
    C_TransfAlmoxItensFORNECPREFERENCIA: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaALMOX_ORIGEMChange(Sender: TField);
    procedure C_TabelaALMOX_DESTINOChange(Sender: TField);
    procedure C_TransfAlmoxItensUNIDADEChange(Sender: TField);
    procedure C_TransfAlmoxItensNewRecord(DataSet: TDataSet);
    procedure C_TransfAlmoxItensITEMChange(Sender: TField);
    procedure DMComponentGravar1_Iniciar(Sender: TObject; var bSkip: Boolean);
  private
    { Private declarations }
    nSeqItens : Integer;
  public
    { Public declarations }
    function GeraNumero(sCodigo:string;nChave:integer) : string;
    
  end;

var
  DMTransferenciasAlmox: TDMTransferenciasAlmox;

implementation
  uses DM_Projeto, TDM_Projeto, funcoes;

{$R *.dfm}



procedure TDMTransferenciasAlmox.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMTransferenciasAlmox := self;
end;

procedure TDMTransferenciasAlmox.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaData.Value := DMProjeto.dDataSistema;
  C_TabelaUsuario.Value := DMProjeto.nFuncionario;
  C_TabelaSituacao.Value := 'N';
end;

function TDMTransferenciasAlmox.GeraNumero;
var xID,xCasas: integer;
    xCodigo: string;
begin
  xCodigo := trim(sCodigo);
  if direita(trim(sCodigo),1) = '-' then begin
    xCasas := 6;
    while (direita(xCodigo,1) = '-') or DMProjeto.VerificaExistencia(nChave,'TransfAlmoxs','TransfAlmox',xCodigo,'Numero') do begin
      xID := DMProjeto.NextID(copy(sCodigo,1,pos('-',sCodigo)-1),1);
      if length(IntToStr(xID)) > 6 then
        xCasas := length(IntToStr(xID));
      xCodigo := sCodigo +
      AdicionarStr(IntToStr(xID),'0',xCasas);
    end;
  end
  else if trim(sCodigo) = '' then begin
    xCasas := 6;
    while (trim(xCodigo) = '') or DMProjeto.VerificaExistencia(nChave,'TransfAlmoxs','TransfAlmox',xCodigo,'numero') do begin
      xID := DMProjeto.NextID('IDNumTransfAlmox',1);
      if length(IntToStr(xID)) > 6 then
        xCasas := length(IntToStr(xID));
      xCodigo := AdicionarStr(IntToStr(xID),'0',xCasas);
    end;
  end;
  result := xCodigo;
end;

procedure TDMTransferenciasAlmox.C_TabelaALMOX_ORIGEMChange(
  Sender: TField);
var
  nChave : Integer;
begin
  inherited;
  with C_TransfAlmoxItens do begin
    DisableControls;
    nChave := C_TransfAlmoxItensTRANSFALMOXITEM.Value;

    First;
    While not EOF do begin
      Edit;
      C_TransfAlmoxItensALMOX_ORIGEM.Value := Sender.asInteger;
      Next;
    end;

    Locate('TransfAlmoxItem', nChave, []);

    EnableControls;

  end;
end;

procedure TDMTransferenciasAlmox.C_TabelaALMOX_DESTINOChange(
  Sender: TField);
var
  nChave : Integer;
begin
  inherited;
  with C_TransfAlmoxItens do begin
    DisableControls;
    nChave := C_TransfAlmoxItensTRANSFALMOXITEM.Value;

    First;
    While not EOF do begin
      Edit;
      C_TransfAlmoxItensALMOX_DESTINO.Value := Sender.asInteger;
      Next;
    end;

    Locate('TransfAlmoxItem', nChave, []);

    EnableControls;

  end;

end;

procedure TDMTransferenciasAlmox.C_TransfAlmoxItensUNIDADEChange(
  Sender: TField);
var
  nNovoFator : double;
begin
  inherited;
  nNovoFator := DMProjeto.GetFatorUnidade(C_TransfAlmoxItensITEM.Value, Sender.asString);
  if nNovoFator <= 0 then begin
    C_TransfAlmoxItensUnidade.Value := C_TransfAlmoxItensUnidadeOld.Value;
    exit;
  end else
    C_TransfAlmoxItensFATOR.Value := nNovoFator;
    
  C_TransfAlmoxItensUnidadeOld.Value := Sender.asString;
end;

procedure TDMTransferenciasAlmox.C_TransfAlmoxItensNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  dec(nSeqItens);
  C_TransfAlmoxItensTRANSFALMOXITEM.Value := nSeqItens;
  C_TransfAlmoxItensALMOX_ORIGEM.Value := C_TabelaALMOX_ORIGEM.Value;
  C_TransfAlmoxItensALMOX_DESTINO.Value := C_TabelaALMOX_DESTINO.Value;
  C_TransfAlmoxItensQuantidade.Value := 1;
  C_TransfAlmoxItensEMPRESA.Value := DMProjeto.nEmpresaLogada;
  C_TransfAlmoxItensULTIMOFORNECEDOR.value := -9;
  C_TransfAlmoxItensFORNECPREFERENCIA.Value := -9;

end;

procedure TDMTransferenciasAlmox.C_TransfAlmoxItensITEMChange(Sender: TField);
begin
  inherited;
  C_TransfAlmoxItensCodigo.Value := DMProjeto.C_LocalizarItensCodigo.Value;
  C_TransfAlmoxItensDESCRICAO.Value := DMProjeto.C_LocalizarItensDescricao.Value;
  C_TransfAlmoxItensReferencia.Value := DMProjeto.C_LocalizarItensReferencia.Value;
  C_TransfAlmoxItensUnidade.Value := DMProjeto.C_LocalizarItensUnidade.Value;

  if DMProjeto.C_LocalizarItensicQuantidade.Value > 0 then
    C_TransfAlmoxItensQuantidade.VAlue := DMProjeto.C_LocalizarItensicQuantidade.Value
  Else
    C_TransfAlmoxItensQuantidade.VAlue := 1;

end;

procedure TDMTransferenciasAlmox.DMComponentGravar1_Iniciar(
  Sender: TObject; var bSkip: Boolean);
begin
  inherited;
   if C_TabelaAlmox_Origem.value = C_TabelaAlmox_Destino.value then begin
    DlgMsg.ShowMsg(7005);
    bSkip := true;
  end;
end;



end.

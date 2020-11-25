unit DM_Remessa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery, DBTables, ppDB, ppDBPipe, ppBands, ppCtrls,
  ppMemo, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, printers, StdCtrls, Variants;

type
  TDMRemessa = class(TDMManutencao)  
    Q_LookAgencias: TIBQuery;
    Q_LocalDeposito: TIBQuery;
    Q_LookEmpresa: TIBQuery;
    PEmpresa: TDataSetProvider;
    C_Empresa: TClientDataSet;
    dsEmpresa: TDataSource;
    P_LocalDeposito: TDataSetProvider;
    P_Agencias: TDataSetProvider;
    C_LocalDeposito: TClientDataSet;
    C_Agencias: TClientDataSet;
    dsLocalDeposito: TDataSource;
    dsAgencias: TDataSource;
    Q_MoedaRemetente: TIBQuery;
    Q_MoedaAgente: TIBQuery;
    dsMoedaAgente: TDataSource;
    PMoedaRemetente: TDataSetProvider;
    PMoedaLocalDP: TDataSetProvider;
    PMoedaAgente: TDataSetProvider;
    C_MoedaRemente: TClientDataSet;
    C_MoedaLocalDP: TClientDataSet;
    C_MoedaAgente: TClientDataSet;
    dsMoedaRemente: TDataSource;
    dsMoedaLocalDP: TDataSource;
    Q_MoedaLocal: TIBQuery;
    C_TabelaREMESSA: TIntegerField;
    C_TabelaCLIENTE: TIntegerField;
    C_TabelaMOEDA_REMETENTE: TIntegerField;
    C_TabelaEMPRESA: TIntegerField;
    C_TabelaTAXA_EMP: TBCDField;
    C_TabelaPERC_EMP: TBCDField;
    C_TabelaCAMBIO_EMP: TBCDField;
    C_TabelaVALOR_EMPRESA: TBCDField;
    C_TabelaAGENTE: TIntegerField;
    C_TabelaTAXA_AG: TBCDField;
    C_TabelaMOEDA_AGENTE: TIntegerField;
    C_TabelaPERC_AG: TBCDField;
    C_TabelaCAMBIO_AG: TBCDField;
    C_TabelaVALOR_AGENCIA: TBCDField;
    C_TabelaLOCAL_DEPOSITO: TIntegerField;
    C_TabelaMOEDA_LOCAL: TIntegerField;
    C_TabelaNOME: TStringField;
    Q_Cambio: TIBQuery;
    C_EmpresaAGENCIA: TIntegerField;
    C_EmpresaDESCRICAO: TStringField;
    C_EmpresaTAXA: TBCDField;
    C_EmpresaPERC: TBCDField;
    C_TabelaLUCRO_EMPRESA: TBCDField;
    C_TabelaLUCRO_AGENTE: TBCDField;
    C_TabelaVALOR_CLIENTE: TBCDField;
    C_TabelaVALOR_LOCAL: TBCDField;
    C_TabelaCAMBIO_LOCAL: TBCDField;
    C_TabelaDATA_PREVISAO: TDateField;
    C_TabelaDATA_ENVIO: TDateField;
    Q_StatusRemessa: TIBQuery;
    C_StatusRemessa: TClientDataSet;
    PStatusRemessa: TDataSetProvider;
    C_TabelaSTATUS: TIntegerField;
    C_TabelacbDesc_Status: TStringField;
    C_TabelaDESATIVAR_REMESSA: TStringField;
    C_TabelaOBS: TStringField;
    C_TabelaDATAABERTURA: TDateField;
    C_AgenciasJUROSFACTORY: TBCDField;
    C_AgenciasTAXASFACTORY: TBCDField;
    C_AgenciasFAVORECIDO: TIntegerField;
    C_AgenciasNOME: TStringField;
    C_TabelaCONTA_A_PAGAR: TIntegerField;
    C_TabelaCONTA_A_RECEBER: TIntegerField;
    C_LocalDepositoFAVORECIDO: TIntegerField;
    C_LocalDepositoNOME: TStringField;
    Q_LocalDep: TIBQuery;
    C_LocalDep: TClientDataSet;
    dsLocalDep: TDataSource;
    Q_LocalDepositoDS: TDataSource;
    C_LocalDepRECEPTORDEPOSITO: TIntegerField;
    C_LocalDepRECEPTOR: TIntegerField;
    C_LocalDepDESCRICAO: TStringField;
    C_LocalDepCONTA: TStringField;
    C_LocalDepAGENCIA: TStringField;
    C_LocalDepBANCO: TIntegerField;
    C_LocalDepOBS: TStringField;
    C_TabelaRECEPTORDEPOSITO: TIntegerField;
    C_LocalDepFAVORECIDO: TIntegerField;
    C_LocalDepNOMEBANCO: TStringField;
    Q_VerificarCambio: TIBQuery;
    C_LocalDepDescConta: TStringField;
    C_TabelaNOMELOCAL_DEPOSITO: TStringField;
    C_LocalDepPADRAO: TStringField;
    C_TabelaCODIGO: TStringField;
    P_Localdep: TDataSetProvider;
    C_TabelaTIPOCALCULO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaEMPRESAChange(Sender: TField);
    procedure C_TabelaAGENTEChange(Sender: TField);
    procedure C_TabelaMOEDA_LOCALChange(Sender: TField);
    procedure C_TabelaMOEDA_REMETENTEChange(Sender: TField);
    procedure C_TabelaVALOR_CLIENTEChange(Sender: TField);
    procedure C_TabelaVALOR_LOCALChange(Sender: TField);
    procedure DMComponentAposIniciar(Sender: TObject);
    procedure DMComponentAposFechar(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaVALOR_AGENCIAValidate(Sender: TField);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure C_TabelaCLIENTEChange(Sender: TField);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_LocalDepCalcFields(DataSet: TDataSet);
    procedure C_TabelaLOCAL_DEPOSITOChange(Sender: TField);
    procedure Q_LocalDepBeforeOpen(DataSet: TDataSet);
    procedure C_TabelaCAMBIO_AGChange(Sender: TField);
    procedure C_TabelaTAXA_AGChange(Sender: TField);
    procedure C_TabelaPERC_AGChange(Sender: TField);
    procedure C_TabelaCAMBIO_LOCALChange(Sender: TField);
    procedure C_TabelaTAXA_EMPChange(Sender: TField);
  private
    { Private declarations }
   FOcorreCalculo : Boolean;
   procedure AtualizaDadosAgente;
//   procedure CalculaValorEntrada(AtualizaCambio : Boolean = False;
//                                 ConsultaAgente : Boolean = True;
//                                 AtualizaTaxas : Boolean = True);
   function  ValorCambioEmpresa(Agente, Moeda: Integer; MostrarCadastro : Boolean = True) : real;
   function  ValorCambioAgencia(Agente, Moeda: Integer; MostrarCadastro : Boolean = True) : real;
  public
   property OcorreCalculo : boolean read FOcorreCalculo write FOcorreCalculo;
//   procedure CalculaValorSaida;
//   procedure CalculaValorEntradaAgente;
   procedure CalculaValores(sTipo:string);
   procedure GeraCodigo;
   procedure AtualizaCambios;
   function  MelhorAgente : Integer;
  end;

var
  DMRemessa: TDMRemessa;

implementation

uses DM_Projeto, DM_Financeiro, funcoes;

{$R *.DFM}

procedure TDMRemessa.AtualizaCambios;
begin
  // Se a moeda do valor à receber não for o dólar,
  // pega o câmbio da rpara conversão deste valor para o dólar.
  if C_TabelaEmpresa.value > 0 then begin
    if (C_Tabela.FieldByName('MOEDA_REMETENTE').AsInteger = 0) then
      C_Tabela.FieldByName('Cambio_Emp').AsFloat := 1
    else begin
      C_Tabela.FieldByName('Cambio_Emp').AsFloat := ValorCambioEmpresa(C_Empresa.FieldByName('AGENCIA').AsInteger,
                                                    C_Tabela.FieldByName('MOEDA_REMETENTE').AsInteger);
    end;

    if (C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger = 0) then begin
      C_Tabela.FieldByName('Cambio_Local').AsFloat := 1;
      C_Tabela.FieldByName('Cambio_Ag').AsFloat := 1;
    end
    else
      C_Tabela.FieldByName('Cambio_Local').AsFloat := ValorCambioEmpresa(C_Tabela.FieldByName('EMPRESA').AsInteger,
                                                      C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger);
  end;
  if C_Tabela.FieldByName('Cambio_Emp').AsFloat <= 0 then
    C_Tabela.FieldByName('Cambio_Emp').AsFloat := 1;
  if C_Tabela.FieldByName('Cambio_Local').AsFloat <= 0 then
    C_Tabela.FieldByName('Cambio_Local').AsFloat := 1;
  if (C_Tabela.FieldByName('Cambio_Ag').AsFloat <= 0) {or (C_Tabela.FieldByName('Cambio_Emp').AsFloat = 1)} then
    C_Tabela.FieldByName('Cambio_Ag').AsFloat := 1;
end;

procedure TDMRemessa.CalculaValores;
begin
  try
    FOcorreCalculo := True;
    if (C_Tabela.FieldByName('Cambio_Emp').AsFloat > 0 ) then begin
        C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat := C_Tabela.FieldByName('VALOR_CLIENTE').AsFloat
                                                         / C_Tabela.FieldByName('Cambio_Emp').AsFloat;
    end
    else
      C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat := C_Tabela.FieldByName('VALOR_CLIENTE').AsFloat;

    if C_TabelaEmpresa.value > 0 then begin
      if ((sTipo = '') and (C_TabelaTipoCalculo.value = 'E')) or (sTipo = 'E') then // Calcula o valor de entrega
        C_Tabela.FieldByName('VALOR_LOCAL').AsFloat
               := ((C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat
                - C_Tabela.FieldByName('Taxa_Emp').AsFloat)
                /((C_Tabela.FieldByName('Perc_Emp').AsFloat+100)/100))
                * C_Tabela.FieldByName('Cambio_Local').AsFloat
      else begin
        C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat :=
        (C_Tabela.FieldByName('VALOR_LOCAL').AsFloat / C_Tabela.FieldByName('Cambio_Local').AsFloat)
        + (((C_Tabela.FieldByName('VALOR_LOCAL').AsFloat / C_Tabela.FieldByName('Cambio_Local').AsFloat)
        * C_Tabela.FieldByName('Perc_Emp').AsFloat) / 100)
        + C_Tabela.FieldByName('Taxa_Emp').AsFloat;

        C_Tabela.FieldByName('VALOR_CLIENTE').AsFloat := C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat * C_Tabela.FieldByName('Cambio_EMP').AsFloat;
      end;
    end;
    C_Tabela.FieldByName('LUCRO_AGENTE').AsFloat  := (((C_Tabela.FieldByName('VALOR_LOCAL').AsFloat
                                                     / C_Tabela.FieldByName('CAMBIO_AG').AsFloat)
                                                     * C_Tabela.FieldByName('Perc_AG').AsFloat)/100)
                                                     + C_Tabela.FieldByName('Taxa_AG').AsFloat;

    C_Tabela.FieldByName('VALOR_AGENCIA').AsFloat := (C_Tabela.FieldByName('VALOR_LOCAL').AsFloat
                                                     / C_Tabela.FieldByName('CAMBIO_AG').AsFloat)
                                                     + C_Tabela.FieldByName('LUCRO_AGENTE').AsFloat;

    C_Tabela.FieldByName('LUCRO_EMPRESA').AsFloat := C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat - C_Tabela.FieldByName('VALOR_AGENCIA').AsFloat;
  finally
    FOcorreCalculo := false;
  end;  
end;
(*
procedure TDMRemessa.CalculaValorEntrada;
var
   iMelhorAgente : Integer;
begin
  if (C_Tabela.FieldByName('MOEDA_REMETENTE').AsVariant = null)
    or (C_Tabela.FieldByName('MOEDA_LOCAL').AsVariant= null)
    or (C_Tabela.FieldByName('EMPRESA').AsVariant = null)
    or (C_Tabela.FieldByName('AGENTE').AsVariant= null) then begin
{      with FrmRemessa do begin
        TS_DBEdCambioEmp.Visible := False;
        tslbCambioEmp.Visible := TS_DBEdCambioEmp.Visible;
        TS_DBEdCambioRemessa.Visible := False;
        TS_lbLocal.Visible := TS_DBEdCambioRemessa.Visible;
        TS_DBEdCambioag.Visible := False;
        TS_lbCambioAG.Visible := TS_DBEdCambioag.Visible;
      end;}

      exit;
  end;

  FOcorreCalculo := True;

  if AtualizaCambio then begin
    if  (C_Tabela.FieldByName('MOEDA_REMETENTE').AsInteger>=0) then begin
        if (C_Tabela.FieldByName('MOEDA_REMETENTE').AsInteger = 0) then
            C_Tabela.FieldByName('Cambio_Emp').AsFloat := 1
        else begin
            C_Tabela.FieldByName('Cambio_Emp').AsFloat :=
                ValorCambioEmpresa(C_Empresa.FieldByName('AGENCIA').AsInteger,
                            C_Tabela.FieldByName('MOEDA_REMETENTE').AsInteger);
        end;
    end;

    if (C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger = 0) then
       C_Tabela.FieldByName('Cambio_Local').AsFloat := 1
    else
        C_Tabela.FieldByName('Cambio_Local').AsFloat :=
          ValorCambioEmpresa(C_Tabela.FieldByName('EMPRESA').AsInteger,
                      C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger);
  end;

  if (C_Tabela.FieldByName('CAMBIO_local').AsInteger = 0)
     or (C_Tabela.FieldByName('CAMBIO_Emp').AsInteger=0) then begin
      FOcorreCalculo := False;
      exit;
  end;

  //Convertendo o que o Cliente Passou independente de moeda para dolar
  if (C_Tabela.FieldByName('Cambio_Emp').AsFloat > 0 ) then begin
      C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat
      := C_Tabela.FieldByName('VALOR_CLIENTE').AsFloat
         / C_Tabela.FieldByName('Cambio_Emp').AsFloat;
  end;
  if (C_Tabela.FieldByName('MOEDA_LOCAL').AsFloat >= 0 ) then begin

        C_Tabela.FieldByName('VALOR_LOCAL').AsFloat
             := ((C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat
              - C_Tabela.FieldByName('Taxa_Emp').AsFloat)
              /((C_Tabela.FieldByName('Perc_Emp').AsFloat+100)/100))
              * C_Tabela.FieldByName('Cambio_Local').AsFloat;

        C_Tabela.FieldByName('LUCRO_EMPRESA').AsFloat :=
         ((C_Tabela.FieldByName('VALOR_LOCAL').AsFloat /
           C_Tabela.FieldByName('CAMBIO_LOCAL').AsFloat)
         * ((C_Tabela.FieldByName('Perc_Emp').AsFloat+100)/100))
         + C_Tabela.FieldByName('Taxa_Emp').AsFloat;

        if ConsultaAgente then begin
          iMelhorAgente := MelhorAgente;
          if iMelhorAgente <> 0 then begin
            C_Agencias.Locate('Favorecido', iMelhorAgente,[]);
            C_Tabela.FieldByName('AGENTE').AsInteger := iMelhorAgente;
          end;
          AtualizaTaxas := True;
        end;

        if (C_Tabela.FieldByName('AGENTE').AsInteger <> 0) then begin

            if AtualizaTaxas then begin
               C_Tabela.FieldByName('Taxa_AG').AsFloat := C_Agencias.FieldByName('TAXASFACTORY').AsFloat;
               C_Tabela.FieldByName('Perc_AG').AsFloat := C_Agencias.FieldByName('JUROSFACTORY').AsFloat;
               if (C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger = 0) then
                    C_Tabela.FieldByName('Cambio_Ag').AsFloat := 1
                else begin
                    C_Tabela.FieldByName('Cambio_Ag').AsFloat :=
                        ValorCambioAgencia(C_Tabela.FieldByName('AGENTE').AsInteger,
                                    C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger);
                end;
            end;
            if C_Tabela.FieldByName('CAMBIO_AG').AsFloat = 0 then begin
              FOcorreCalculo := False;
              exit;
            end;

            C_Tabela.FieldByName('LUCRO_AGENTE').AsFloat  :=
                   (((C_Tabela.FieldByName('VALOR_LOCAL').AsFloat
                   / C_Tabela.FieldByName('CAMBIO_AG').AsFloat)
                   * C_Tabela.FieldByName('Perc_AG').AsFloat)/100)
                   + C_Tabela.FieldByName('Taxa_AG').AsFloat;

            C_Tabela.FieldByName('VALOR_AGENCIA').AsFloat :=
                 (C_Tabela.FieldByName('VALOR_LOCAL').AsFloat
                   / C_Tabela.FieldByName('CAMBIO_AG').AsFloat)
                   + C_Tabela.FieldByName('LUCRO_AGENTE').AsFloat;

        end
        else begin
          C_Tabela.FieldByName('VALOR_AGENCIA').AsFloat := 0;
          C_Tabela.FieldByName('LUCRO_AGENTE').AsFloat := 0;
        end;
  end;

{  with FrmRemessa do begin
    TS_DBEdCambioEmp.Visible := not (C_Tabela.FieldByName('Cambio_Emp').AsFloat = 1);
    tslbCambioEmp.Visible := TS_DBEdCambioEmp.Visible;
    TS_DBEdCambioRemessa.Visible := not (C_Tabela.FieldByName('Cambio_Local').AsFloat = 1);
    TS_lbLocal.Visible := TS_DBEdCambioRemessa.Visible;
    TS_DBEdCambioag.Visible := not (C_Tabela.FieldByName('Cambio_Ag').AsFloat = 1);
    TS_lbCambioAG.Visible := TS_DBEdCambioag.Visible;
  end;}

  if C_Tabela.FieldByName('CAMBIO_AG').AsFloat = 0 then begin
    FOcorreCalculo := False;
    exit;
  end;

  C_Tabela.FieldByName('LUCRO_EMPRESA').AsFloat
   := C_Tabela.FieldByName('LUCRO_EMPRESA').AsFloat
    - C_Tabela.FieldByName('LUCRO_AGENTE').AsFloat
    + (C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat - C_Tabela.FieldByName('LUCRO_EMPRESA').AsFloat
    - (C_Tabela.FieldByName('VALOR_LOCAL').AsFloat
      / C_Tabela.FieldByName('CAMBIO_AG').AsFloat));

  FOcorreCalculo := False;
end;
*)

(*
procedure TDMRemessa.CalculaValorSaida;
var
    iMelhorAgente : Integer;
    nCambioLocal, nCambioEmp: single;
begin
  nCambioLocal := IIF(C_Tabela.FieldByName('Cambio_LOCAL').AsFloat = 0,1,C_Tabela.FieldByName('Cambio_LOCAL').AsFloat);
  nCambioEmp   := IIF(C_Tabela.FieldByName('Cambio_EMP').AsFloat = 0,1,C_Tabela.FieldByName('Cambio_EMP').AsFloat);

{  with FrmRemessa do begin
    TS_DBEdCambioEmp.Visible := not (nCambioEmp = 1);
    tslbCambioEmp.Visible := TS_DBEdCambioEmp.Visible;
    TS_DBEdCambioRemessa.Visible := not (nCambioLocal = 1);
    TS_lbLocal.Visible := TS_DBEdCambioRemessa.Visible;
    TS_DBEdCambioag.Visible := not (C_Tabela.FieldByName('Cambio_Ag').AsFloat = 1);
    TS_lbCambioAG.Visible := TS_DBEdCambioag.Visible;
  end;}

  FOcorreCalculo := True;

{  if (C_Tabela.FieldByName('CAMBIO_local').AsInteger = 0)
     or (C_Tabela.FieldByName('CAMBIO_Emp').AsInteger=0) then begin
      FOcorreCalculo := False;
      exit;
  end;}

  if (C_Tabela.FieldByName('Empresa').AsFloat <> 0)
     and (C_Tabela.FieldByName('MOEDA_LOCAL').AsFloat >= 0)
     and (C_Tabela.FieldByName('MOEDA_REMETENTE').AsFloat >= 0) then begin

      C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat :=
       (C_Tabela.FieldByName('VALOR_LOCAL').AsFloat / nCambioLocal)
       + (((C_Tabela.FieldByName('VALOR_LOCAL').AsFloat / nCambioLocal)
         * C_Tabela.FieldByName('Perc_Emp').AsFloat) / 100)
         + C_Tabela.FieldByName('Taxa_Emp').AsFloat;

      C_Tabela.FieldByName('LUCRO_EMPRESA').AsFloat :=
       ((C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat
       * C_Tabela.FieldByName('Perc_Emp').AsFloat)/100)
       +(C_Tabela.FieldByName('Taxa_Emp').AsFloat);

//      if (C_Tabela.FieldByName('Cambio_EMP').AsFloat>0) then begin
      C_Tabela.FieldByName('VALOR_CLIENTE').AsFloat :=
      C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat * nCambioEmp;
//      end;
  end;

  if (C_Tabela.FieldByName('AGENTE').AsInteger <> 0)
   and (C_Tabela.FieldByName('CAMBIO_AG').AsFloat >0) then begin

       C_Tabela.FieldByName('LUCRO_AGENTE').AsFloat  :=
             (((C_Tabela.FieldByName('VALOR_LOCAL').AsFloat
             / C_Tabela.FieldByName('CAMBIO_AG').AsFloat)
             * C_Tabela.FieldByName('Perc_AG').AsFloat)/100)
             + C_Tabela.FieldByName('Taxa_AG').AsFloat;

       if C_Tabela.FieldByName('CAMBIO_AG').AsFloat = 0 then begin
          FOcorreCalculo := False;
          exit;
       end;

       C_Tabela.FieldByName('VALOR_AGENCIA').AsFloat :=
           (C_Tabela.FieldByName('VALOR_LOCAL').AsFloat
             / C_Tabela.FieldByName('CAMBIO_AG').AsFloat)
             + C_Tabela.FieldByName('LUCRO_AGENTE').AsFloat;
  end
  else begin
    C_Tabela.FieldByName('VALOR_AGENCIA').AsFloat := 0;
    C_Tabela.FieldByName('LUCRO_AGENTE').AsFloat := 0;
  end;

  if C_Tabela.FieldByName('CAMBIO_AG').AsFloat = 0 then begin
    FOcorreCalculo := False;
    exit;
  end;

  C_Tabela.FieldByName('LUCRO_EMPRESA').AsFloat
   := C_Tabela.FieldByName('LUCRO_EMPRESA').AsFloat
    - C_Tabela.FieldByName('LUCRO_AGENTE').AsFloat
    + (C_Tabela.FieldByName('VALOR_EMPRESA').AsFloat - C_Tabela.FieldByName('LUCRO_EMPRESA').AsFloat
    - (C_Tabela.FieldByName('VALOR_LOCAL').AsFloat
      / C_Tabela.FieldByName('CAMBIO_AG').AsFloat));

  FOcorreCalculo := False;

end;
*)

function  TDMRemessa.ValorCambioEmpresa;
begin
  if Moeda = 0 then begin //Se for o dolar
    Result := 1;
    Exit;
  end;

  with  Q_Cambio do begin
    Close;
    ParamByName('AGENTE').AsInteger := Agente;
    ParamByName('MOEDA').AsInteger := Moeda;
    ParamByName('DATA').AsDateTime := C_Tabela.FieldByName('DataAbertura').AsDateTime;
    Open;
    if IsEmpty and MostrarCadastro then begin
      DlgMsg.ShowMsg(3009);

      DMProjeto.SetParametrosForm([agente,moeda]);

      DMProjeto.CriarForm('FrmAgenciasEmpresa',self,true);
      Close;
      ParamByName('AGENTE').AsInteger := Agente;
      ParamByName('MOEDA').AsInteger := Moeda;
      Open;
      DMProjeto.LimparParametrosForm;
    end;
    if IsEmpty then
      Result := 1
    else
      Result := FieldByName('CAMBIO').AsFloat;
    if result = 0 then
      result := 1;
    Close;
{    while IsEmpty do begin
//       Application.MessageBox('É necessário que se tenha relação de cambio com o dolar!',
//                              'MaxShop', MB_OK or MB_ICONINFORMATION);
      DlgMsg.ShowMsg(3009);

      DMProjeto.SetParametrosForm([agente,moeda]);
      DMProjeto.CriarForm('FrmAgenciasEmpresa',self,true);
      Close;
      ParamByName('AGENTE').AsInteger := Agente;
      ParamByName('MOEDA').AsInteger := Moeda;
      Open;
      DMProjeto.LimparParametrosForm;
    end;
    Result := FieldByName('CAMBIO').AsFloat;
    Close;}
  end;
end;

procedure TDMRemessa.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMRemessa := Self;
  FOcorreCalculo := False;
end;

procedure TDMRemessa.C_TabelaEMPRESAChange(Sender: TField);
begin
  inherited;
  if (Sender.AsInteger=0) then
       exit;
  if (FOcorreCalculo) then
     exit;
  C_Tabela.FieldByName('Taxa_Emp').AsFloat := C_Empresa.FieldByName('Taxa').AsFloat;
  C_Tabela.FieldByName('Perc_Emp').AsFloat := C_Empresa.FieldByName('Perc').AsFloat;
  AtualizaCambios;

  CalculaValores('');
{  if C_TabelaTipoCalculo.value = 'E' then
    if C_TabelaValor_Cliente.value <= 0 then
      CalculaValorSaida
    else
      CalculaValorEntrada(True)
  else
    CalculaValorSaida;}
end;


procedure TDMRemessa.C_TabelaAGENTEChange(Sender: TField);
begin
  inherited;
  if (FOcorreCalculo) then
     exit;

  C_Tabela.FieldByName('Taxa_AG').AsFloat := C_Agencias.FieldByName('TAXASFACTORY').AsFloat;
  C_Tabela.FieldByName('Perc_AG').AsFloat := C_Agencias.FieldByName('JUROSFACTORY').AsFloat;
  if (C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger = 0) then
    C_Tabela.FieldByName('Cambio_Ag').AsFloat := 1
  else begin
    C_Tabela.FieldByName('Cambio_Ag').AsFloat := ValorCambioAgencia(C_Tabela.FieldByName('AGENTE').AsInteger,
                                                 C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger);
  end;

  AtualizaCambios;
  CalculaValores('');
{  if C_TabelaTipoCalculo.value = 'E' then begin
    if C_TabelaValor_Cliente.value <= 0 then
      CalculaValorSaida
    else
      CalculaValorEntrada(True, False, True)
  end
  else
    CalculaValorSaida}
end;

procedure TDMRemessa.C_TabelaMOEDA_LOCALChange(Sender: TField);
begin
  inherited;
  if (FOcorreCalculo) then
     exit;
//  CalculaValorEntrada(True);
  CalculaValores('');
end;

procedure TDMRemessa.C_TabelaMOEDA_REMETENTEChange(Sender: TField);
begin
  inherited;
  if (FOcorreCalculo) then
     exit;
//  CalculaValorEntrada(True);
  CalculaValores('');
end;

procedure TDMRemessa.C_TabelaVALOR_CLIENTEChange(Sender: TField);
begin
  inherited;
  if (FOcorreCalculo) then
     exit;
//  CalculaValorEntrada;
  CalculaValores('E');
end;

procedure TDMRemessa.C_TabelaVALOR_LOCALChange(Sender: TField);
begin
  inherited;
  if (FOcorreCalculo) then
     exit;
//  CalculaValorSaida;
  CalculaValores('R');
end;

procedure TDMRemessa.DMComponentAposIniciar(Sender: TObject);
begin
  inherited;
  DMRemessa.C_Empresa.Open;
  DMRemessa.C_Agencias.Open;
  DMRemessa.C_LocalDeposito.Open;
  DMRemessa.C_MoedaRemente.Open;
  DMRemessa.C_MoedaAgente.Open;
end;

procedure TDMRemessa.DMComponentAposFechar(Sender: TObject);
begin
  inherited;
  DMRemessa.C_Empresa.Close;
  DMRemessa.C_Agencias.Close;
  DMRemessa.C_LocalDeposito.Close;
  DMRemessa.C_MoedaRemente.Close;
  DMRemessa.C_MoedaAgente.Close;
end;

procedure TDMRemessa.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaDataAbertura.value := DMProjeto.dDataSistema;
  DataSet.FieldByName('DESATIVAR_REMESSA').AsString := 'N';
  DataSet.FieldByName('Status').AsInteger :=
      C_StatusRemessa.FieldByName('Status_Remessa').AsInteger;
  if DMProjeto.Parametro('RemetentePadrao') <> '' then
    DataSet.FieldByName('Empresa').AsString := DMProjeto.Parametro('RemetentePadrao');
  FOcorreCalculo := True;
  DataSet.FieldByName('VALOR_CLIENTE').AsFloat := 0;
  DataSet.FieldByName('VALOR_LOCAL').AsFloat := 0;
  DataSet.FieldByName('VALOR_AGENCIA').AsFloat := 0;
  DataSet.FieldByName('MOEDA_LOCAL').AsFloat := 0;
  DataSet.FieldByName('MOEDA_REMETENTE').AsFloat := 0;
  C_Tabela.FieldByName('Cambio_Emp').AsFloat := 1;
  C_Tabela.FieldByName('Cambio_Local').AsFloat := 1;
  C_Tabela.FieldByName('Cambio_Ag').AsFloat := 1;
  DataSet.FieldByName('TipoCalculo').AsString := 'R';
  FOcorreCalculo := False;
end;

{procedure TDMRemessa.CalculaValorEntradaAgente;
begin
end;
 }
procedure TDMRemessa.C_TabelaVALOR_AGENCIAValidate(Sender: TField);
begin
  inherited;
  if (FOcorreCalculo) then
     exit;
//  CalculaValorEntradaAgente;
end;

procedure TDMRemessa.DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
begin
  inherited;
  if C_Tabela.FieldByName('CONTA_A_PAGAR').AsInteger <> 0 then
     DMFinanceiro.ApagarDuplicata( C_Tabela.FieldByName('CONTA_A_PAGAR').AsInteger );
  if C_Tabela.FieldByName('CONTA_A_RECEBER').AsInteger <> 0 then
     DMFinanceiro.ApagarTitulo( C_Tabela.FieldByName('CONTA_A_RECEBER').AsInteger );

  if C_Tabela.State = dsBrowse then
      C_Tabela.Edit;
  C_Tabela.FieldByName('CONTA_A_RECEBER').AsInteger := DMFinanceiro.Conta_A_Receber(1,C_Tabela.FieldByName('VALOR_EMPRESA').AsInteger,
      DmRemessa.C_Tabela.FieldByName('DATAABERTURA').AsDateTime,
      DmRemessa.C_Tabela.FieldByName('DATAABERTURA').AsDateTime,
      ' ', DmRemessa.C_Tabela.FieldByName('CLIENTE').AsInteger,
      DmRemessa.C_Tabela.FieldByName('Remessa').AsInteger,'');

{  iReceberRapido := DmProjeto.ReceberRapido(C_Tabela.FieldByName('CONTA_A_RECEBER').AsInteger,
      C_Tabela.FieldByName('CLIENTE').AsInteger,DMProjeto.nContaPadrao,0,
      C_Tabela.FieldByName('DATAABERTURA').AsInteger,C_Tabela.FieldByName('DATAABERTURA').AsInteger,
      ' ',C_Tabela.FieldByName('VALOR_EMPRESA').AsInteger,0,0,0,0,0,DMProjeto.nFuncionario);

  C_tabela.FieldByName('Remessa').AsInteger := iReceberRapido;

  DmProjeto.ReceberDoc( 22, iReceberRapido, , C_Tabela.FieldByName('CONTA_A_RECEBER').AsInteger,
      C_Tabela.FieldByName('CLIENTE').AsInteger,DMProjeto.nContaPadrao,0,
      C_Tabela.FieldByName('DATAABERTURA').AsInteger,C_Tabela.FieldByName('DATAABERTURA').AsInteger,
      ' ',C_Tabela.FieldByName('VALOR_EMPRESA').AsInteger,0,0,0,0,0,DMProjeto.nFuncionario);}

  if (DmRemessa.C_Tabela.FieldByName('AGENTE').AsInteger <> 0) then begin
    C_Tabela.FieldByName('CONTA_A_PAGAR').AsInteger := DMFinanceiro.Conta_A_Pagar(1,DmRemessa.C_Tabela.FieldByName('VALOR_AGENCIA').AsCurrency,
        DmRemessa.C_Tabela.FieldByName('DATAABERTURA').AsDateTime,
        DmRemessa.C_Tabela.FieldByName('DATAABERTURA').AsDateTime,
        ' ', 0 , DmRemessa.C_Tabela.FieldByName('AGENTE').AsInteger,
        DmRemessa.C_Tabela.FieldByName('Remessa').AsInteger, ' ');
  end;
end;

procedure TDMRemessa.C_TabelaCLIENTEChange(Sender: TField);
begin
  inherited;
  if Sender.Value <> null then begin
    C_LocalDeposito.Close;
    C_LocalDeposito.Params.ParamByName('favorecido').AsInteger := Sender.Value;
    C_LocalDeposito.Open;
  end;
end;

procedure TDMRemessa.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
var
   bSair : Boolean;
begin
  inherited;
  bSair := True;

  // Código duplicados
  if (C_TabelaCODIGO.Value<>'') then begin
    with DMProjeto.Q_SQL do begin
      Close;
      SQL.Text := 'Select Count(Remessa) From Remessas '+
        'Where codigo='+QuotedStr(C_TabelaCODIGO.Value)+
        'And Remessa<>'+C_TabelaRemessa.AsString;
      Open;
      if (Fields[0].AsInteger>0) then begin
        DlgMsg.ShowMsg(933,[' Código ']);
        bSkip := True;
        Exit;
      end;
    end; // with
  end; // if
  // if for o dolar selecionado
  if C_Tabela.FieldByName('MOEDA_REMETENTE').AsVariant <> null  then begin
    if C_Tabela.FieldByName('MOEDA_REMETENTE').AsInteger = 0 then begin
      bSair := True;
      if C_Tabela.FieldByName('MOEDA_LOCAL').AsVariant <> null  then begin
        if C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger > 0 then
           bSair := False;
      end;
    end
    else
      bSair := False;
  end;
  if bSair then
    exit;

  with Q_VerificarCambio do begin
    Close;
    if C_Tabela.FieldByName('MOEDA_REMETENTE').AsInteger <> 0 then begin
      ParamByName('agencia').AsInteger := C_Tabela.FieldByName('EMPRESA').AsInteger;
      ParamByName('indexador').AsInteger := C_Tabela.FieldByName('MOEDA_REMETENTE').AsInteger;
      ParamByName('DATA').AsDateTime := C_Tabela.FieldByName('DataAbertura').AsDateTime;
      Open;
       if IsEmpty then begin
          DlgMsg.ShowMsg( 4009 );
         //showMessage('O valor do receptor está nulo! Por favor verificar se existe relacionamento moeda sem câmbio.');
         bSkip := True;
         exit;
      end;
    end;
    if C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger <> 0 then begin
      Close;
      ParamByName('agencia').AsInteger := C_Tabela.FieldByName('EMPRESA').AsInteger;
      ParamByName('indexador').AsInteger := C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger;
      ParamByName('DATA').AsDateTime := C_Tabela.FieldByName('DataAbertura').AsDateTime;
      Open;
       if IsEmpty then begin
          DlgMsg.ShowMsg( 4009 );
         //showMessage('O valor do receptor está nulo! Por favor verificar se existe relacionamento moeda sem câmbio.');
         bSkip := True;
         exit;
      end;
      Close;
      ParamByName('agencia').AsInteger := C_Tabela.FieldByName('AGENTE').AsInteger;
      ParamByName('indexador').AsInteger := C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger;
      ParamByName('DATA').AsDateTime := C_Tabela.FieldByName('DataAbertura').AsDateTime;
      Open;
       if IsEmpty then begin
          DlgMsg.ShowMsg( 4010 );
         //showMessage('O valor do receptor está nulo! Por favor verificar se existe relacionamento moeda sem câmbio.');
         bSkip := True;
      end;
    end;  
  end;
end;

procedure TDMRemessa.C_LocalDepCalcFields(DataSet: TDataSet);
begin
  inherited;
	DataSet['DescConta'] := DataSet.FieldByName('NomeBanco').asstring+' '+DataSet.FieldByName('Agencia').asstring+' '+DataSet.FieldByName('Conta').asstring;
end;

procedure TDMRemessa.C_TabelaLOCAL_DEPOSITOChange(Sender: TField);
begin
  inherited;
    C_LocalDeposito.Locate('Favorecido',C_TabelaLocal_Deposito.Value,[]);
  	with C_LocalDep do begin
      close;
      open;
      DisableControls;
    	First;
    	while not EOF do begin
    		if C_LocalDepPadrao.Value = 'S' then begin
      		C_TabelaRECEPTORDEPOSITO.Value := C_LocalDepRECEPTORDEPOSITO.Value;
          break;
        end;
      	Next;
      end;
      EnableControls;
    end;
end;

procedure TDMRemessa.GeraCodigo;
var xID,xCasas: integer;
    sNomeDoCampo: string;
begin
  inherited;
  sNomeDoCampo := 'IDCodigoRemessa';
  if not(C_Tabela.State in [dsEdit,dsInsert]) then
    C_Tabela.Edit;
  C_Tabela.UpdateRecord;
  if Direita(C_TabelaCODIGO.Value,1)='-' then begin
    xCasas := 6;
    xID := DMProjeto.NextID(copy(C_TabelaCODIGO.Value,1,Pos('-',C_TabelaCODIGO.Value)-1),1);
    if Length(IntToStr(xID))>6 then
      xCasas := Length(IntToStr(xID));
    C_TabelaCODIGO.Value := C_TabelaCODIGO.Value+AdicionarStr(IntToStr(xID),'0',xCasas);
  end else if Trim(C_TabelaCODIGO.Value)='' then begin
    xCasas := 6;
    xID := DMProjeto.NextID(sNomeDoCampo,1);
    if Length(IntToStr(xID))>6 then
      xCasas := Length(IntToStr(xID));
    C_TabelaCODIGO.Value := AdicionarStr(IntToStr(xID),'0',xCasas);
  end;
end;


procedure TDMRemessa.Q_LocalDepBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Q_LocalDep.params[0].asinteger := C_TabelaLocal_Deposito.value;
end;

function TDMRemessa.ValorCambioAgencia;
begin
  if Moeda = 0 then begin //Se for o dolar
    Result := 1;
    Exit;
  end;

  with  Q_Cambio do begin
    Close;
    ParamByName('AGENTE').AsInteger := Agente;
    ParamByName('MOEDA').AsInteger := Moeda;
    ParamByName('DATA').AsDateTime := C_Tabela.FieldByName('DataAbertura').AsDateTime;
    Open;
    if IsEmpty and MostrarCadastro then begin
      DlgMsg.ShowMsg(3009);

      DMProjeto.SetParametrosForm([agente,moeda]);
      DMProjeto.CriarForm('FrmAgencias',self,true);
      Close;
      ParamByName('AGENTE').AsInteger := Agente;
      ParamByName('MOEDA').AsInteger := Moeda;
      Open;
      DMProjeto.LimparParametrosForm;
    end;
    if IsEmpty then
      Result := 1
    else
      Result := FieldByName('CAMBIO').AsFloat;
    if result = 0 then
      result := 1;
    Close;
  end;
end;

procedure TDMRemessa.C_TabelaCAMBIO_AGChange(Sender: TField);
begin
  inherited;
  if (FOcorreCalculo) then
     exit;
//  CalculaValorEntrada(True, False, False);
  CalculaValores('');
end;

procedure TDMRemessa.C_TabelaTAXA_AGChange(Sender: TField);
begin
  inherited;
  if (FOcorreCalculo) then
     exit;
//  CalculaValorEntrada(True, False, False);
  CalculaValores('');
end;

procedure TDMRemessa.C_TabelaPERC_AGChange(Sender: TField);
begin
  inherited;
  if (FOcorreCalculo) then
     exit;
//  CalculaValorEntrada(True, False, False);
  CalculaValores('');
end;

function TDMRemessa.MelhorAgente;
var
   nCambio, nLucroAgente, nMenorLucro : Real;
begin
  Result := 0;
  nMenorLucro := 0;
  C_Agencias.First;
  while not C_Agencias.Eof do begin
    nCambio := ValorCambioEmpresa(C_Agencias.FieldByName('favorecido').AsInteger,
                           C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger, False);
    if nCambio <> 0 then begin
      nLucroAgente := (((C_Tabela.FieldByName('VALOR_LOCAL').AsFloat / nCambio)
      * C_Agencias.FieldByName('JUROSFACTORY').AsFloat)/100)
      + C_Agencias.FieldByName('TAXASFACTORY').AsFloat;
      if C_Agencias.Bof then begin
        Result := C_Agencias.FieldByName('favorecido').AsInteger;
        nMenorLucro := nLucroAgente;
      end
      else begin
        if nLucroAgente < nMenorLucro then begin
          Result := C_Agencias.FieldByName('favorecido').AsInteger;
          nMenorLucro := nLucroAgente;
        end;
      end;
    end;
    C_Agencias.Next;
  end;
end;

procedure TDMRemessa.C_TabelaCAMBIO_LOCALChange(Sender: TField);
begin
  inherited;
  if (FOcorreCalculo) then
     exit;
{  if C_TabelaTipoCalculo.value = 'E' then
    CalculaValorEntrada(true)
  else
    CalculaValorSaida;}
  CalculaValores('');
end;

procedure TDMRemessa.AtualizaDadosAgente;
begin
  if (C_Tabela.FieldByName('MOEDA_REMETENTE').AsInteger>=0) then begin
    if (C_Tabela.FieldByName('MOEDA_REMETENTE').AsInteger = 0) then
        C_Tabela.FieldByName('Cambio_Emp').AsFloat := 1
    else begin
        C_Tabela.FieldByName('Cambio_Emp').AsFloat :=
            ValorCambioEmpresa(C_Empresa.FieldByName('AGENCIA').AsInteger,
                        C_Tabela.FieldByName('MOEDA_REMETENTE').AsInteger);
    end;
  end;

  if (C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger = 0) then
     C_Tabela.FieldByName('Cambio_Local').AsFloat := 1
  else
     C_Tabela.FieldByName('Cambio_Local').AsFloat :=
     ValorCambioEmpresa(C_Tabela.FieldByName('EMPRESA').AsInteger,
     C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger);

  C_Tabela.FieldByName('Taxa_AG').AsFloat := C_Agencias.FieldByName('TAXASFACTORY').AsFloat;
  C_Tabela.FieldByName('Perc_AG').AsFloat := C_Agencias.FieldByName('JUROSFACTORY').AsFloat;
  if (C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger = 0) then
     C_Tabela.FieldByName('Cambio_Ag').AsFloat := 1
  else begin
     C_Tabela.FieldByName('Cambio_Ag').AsFloat :=
     ValorCambioAgencia(C_Tabela.FieldByName('AGENTE').AsInteger,
     C_Tabela.FieldByName('MOEDA_LOCAL').AsInteger);
  end;
end;

procedure TDMRemessa.C_TabelaTAXA_EMPChange(Sender: TField);
begin
  inherited;
  if (FOcorreCalculo) then
     exit;
{  if C_TabelaTipoCalculo.value = 'E' then
    CalculaValorEntrada
  else
    CalculaValorSaida;}
  CalculaValores('');
end;

end.


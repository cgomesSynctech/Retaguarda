unit DM_Carteiras;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMCarteiras = class(TDMManutencao)
        Q_Contas: TIBQuery;
        C_Contas: TClientDataSet;
        P_Bancos: TDataSetProvider;
        C_ContasCONTA: TIntegerField;
        C_ContasDESCRICAO: TStringField;
        C_ContasBANCO: TIntegerField;
    C_TabelaCARTEIRA: TIntegerField;
    C_TabelaIDCEDENTE: TIntegerField;
    C_TabelaIDSACADOR: TIntegerField;
    C_TabelaNUMEROCARTEIRA: TStringField;
    C_TabelaLOCALDEPAGAMENTO: TStringField;
    C_TabelaESPECIE: TStringField;
    C_TabelaESPECIEDOC: TStringField;
    C_TabelaACEITE: TStringField;
    C_TabelaAGENCIA: TStringField;
    C_TabelaCODIGO: TStringField;
    C_TabelaNOSSONUMERO: TStringField;
    C_TabelaQUANTIDADE: TStringField;
    C_TabelaINSTRUCOES: TStringField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaBANCO: TIntegerField;
    C_TabelaCONTA: TIntegerField;
    C_TabelaJUROSINSTRUCOES: TFloatField;
    C_TabelaCOBRAREMISSAO: TStringField;
    C_TabelaTARIFAEMISSAO: TBCDField;
    C_TabelaPREIMPRESSO: TStringField;
    C_TabelaDIGITOCODIGO: TStringField;
    C_TabelaTIPOCARTEIRA: TStringField;
    C_TabelaIMGBOLETOIMPRESSO: TStringField;
    C_TabelaDIGITOAGENCIA: TStringField;
    C_TabelaF_NOME: TStringField;
    C_TabelaFS_NOME: TStringField;
    C_TabelaCONVENIO: TStringField;
    C_TabelaDescConta: TStringField;
        procedure DataModuleCreate(Sender: TObject);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure C_TabelaCONTAChange(Sender: TField);
        procedure C_TabelaBeforePost(DataSet: TDataSet);
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DMCarteiras: TDMCarteiras;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDMCarteiras.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMCarteiras := Self;
end;

procedure TDMCarteiras.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_TabelaAceite.Value := 'N';
    C_TabelaDesativado.Value := 'N';
    C_TabelaCOBRAREMISSAO.Value := 'N';
    C_TabelaTARIFAEMISSAO.Value := 0;
    C_TabelaPREIMPRESSO.Value := 'S';
    C_TabelaLOCALDEPAGAMENTO.value := 'Pagável em qualquer banco até a data de vencimento.';
end;

procedure TDMCarteiras.C_TabelaCONTAChange(Sender: TField);
begin
    inherited;
    C_TabelaBanco.Value := C_ContasBanco.Value;
end;

procedure TDMCarteiras.C_TabelaBeforePost(DataSet: TDataSet);
begin
    inherited;
    C_TabelaDescricao.Value := C_TabelaNumeroCarteira.Value;
end;

procedure TDMCarteiras.DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if (C_TabelaCOBRAREMISSAO.Value = 'S') and not (C_TabelaTARIFAEMISSAO.Value > 0) then
        begin
            DlgMsg.ShowMsg(8026);
            bSkip := True;
            Exit;
        end;
end;

end.


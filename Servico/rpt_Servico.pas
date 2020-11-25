unit rpt_Servico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, myChkBox, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppMemo, DB, Provider, DBClient,
  IBCustomDataSet, IBQuery, ppDB, ppDBPipe, ppRegion, ppSubRpt;

type
  TRptServico = class(TForm)
    ppOS: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppLabel10: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel11: TppLabel;
    ppShape2: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText6: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    lbEquipParado: TppLabel;
    lbEquipFuncPend: TppLabel;
    ppShape3: TppShape;
    ppDBMemo1: TppDBMemo;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    dbOS: TppDBPipeline;
    Q_OS: TIBQuery;
    C_OS: TClientDataSet;
    P_OS: TDataSetProvider;
    C_OSDS: TDataSource;
    C_OSORDEMSERVICO: TIntegerField;
    C_OSNOME: TStringField;
    C_OSNUMCONTRATO: TStringField;
    C_OSNUMMAQUINA: TStringField;
    C_OSEDIFICIO: TStringField;
    C_OSENDERECO: TStringField;
    C_OSBAIRRO: TStringField;
    C_OSDTAVISO: TDateField;
    C_OSHORAAVISO: TTimeField;
    C_OSDTCHEGADA: TDateField;
    C_OSHORACHEGADA: TTimeField;
    C_OSDTTERMINO: TDateField;
    C_OSOBS: TStringField;
    C_OSROTA: TStringField;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    myDBCheckBox4: TmyDBCheckBox;
    myDBCheckBox5: TmyDBCheckBox;
    myDBCheckBox6: TmyDBCheckBox;
    myDBCheckBox7: TmyDBCheckBox;
    myDBCheckBox8: TmyDBCheckBox;
    C_OSTIPOSERVICO: TIntegerField;
    C_OSSTATUSATENDIMENTO: TIntegerField;
    C_OSNOMEFUNC: TStringField;
    C_OSCODFUNC: TStringField;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppTitleBand1: TppTitleBand;
    rbrgCabecalho: TppRegion;
    myDBCheckBox9: TmyDBCheckBox;
    ppLabel21: TppLabel;
    C_OSDESCRICAOSERVICO: TStringField;
    ppLabel22: TppLabel;
    ppDBText16: TppDBText;
    C_OSFONE1: TStringField;
    Q_ServicosDet: TIBQuery;
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
    C_ServicosDetORDEMSERVICO: TIntegerField;
    C_ServicosDetORDEMSERVICODET: TIntegerField;
    C_ServicosDetDs: TDataSource;
    Q_MasterDs: TDataSource;
    dbDetalhe: TppDBPipeline;
    C_OSNUMERO: TStringField;
    C_OSQ_ServicosDet: TDataSetField;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppTitleBand2: TppTitleBand;
    ppLabel31: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel32: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLine12: TppLine;
    ppDBText23: TppDBText;
    C_OSCIDADE: TStringField;
    C_OSUF: TStringField;
    C_OSCEP: TStringField;
    C_OSNRO: TStringField;
    ppLabel40: TppLabel;
    ppDBText24: TppDBText;
    ppLabel41: TppLabel;
    ppDBText25: TppDBText;
    ppLabel42: TppLabel;
    ppDBText26: TppDBText;
    ppLabel43: TppLabel;
    ppDBText27: TppDBText;
    ppDBText12: TppDBText;
    C_OSHORATERMINO: TTimeField;
    procedure C_ServicosDetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure ImprimirOS(ID: Integer);
  end;

var
  RptServico: TRptServico;

implementation

uses DM_Projeto;

{$R *.dfm}


procedure TRptServico.ImprimirOS(ID: Integer);
begin
  C_OS.Close;
  Q_OS.Params[0].AsInteger := ID;
  C_OS.Open;
  DMProjeto.ImprimirCabecalho(rbrgCabecalho);
  ppOS.print;
end;

procedure TRptServico.C_ServicosDetCalcFields(DataSet: TDataSet);
begin
  C_ServicosDeticSUBTOTAL.Value := C_ServicosDetQUANTIDADE.Value * C_ServicosDetVALOR.Value;
end;

end.

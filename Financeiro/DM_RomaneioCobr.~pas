unit DM_RomaneioCobr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, ppDB, ppDBPipe, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppVar, ppBands, ppCtrls, ppMemo, ppPrnabl,
  ppStrtch, ppRegion, ppCache;

type
  TDMRomaneioCobr = class(TDMManutencao)
    C_TabelaROMANEIOCOBR: TIntegerField;
    C_TabelaDATA: TDateField;
    C_TabelaFUNCIONARIO: TIntegerField;
    C_TabelaOBS: TStringField;
    Q_RomaneioCobrDet: TIBQuery;
    C_RomaneioCobrDet: TClientDataSet;
    C_RomaneioCobrDetDS: TDataSource;
    C_RomaneioCobrDetROMANEIOCOBRDET: TIntegerField;
    C_RomaneioCobrDetROMANEIOCOBR: TIntegerField;
    C_RomaneioCobrDetTITULO: TIntegerField;
    C_RomaneioCobrDetVENCIMENTO: TDateField;
    C_RomaneioCobrDetFALTARECEBER: TBCDField;
    C_RomaneioCobrDetNOME: TStringField;
    C_RomaneioCobrDetENDERECO: TStringField;
    C_RomaneioCobrDetCIDADE: TStringField;
    C_RomaneioCobrDetUF: TStringField;
    C_RomaneioCobrDetCEP: TStringField;
    C_RomaneioCobrDetFONE1: TStringField;
    C_RomaneioCobrDetFONE2: TStringField;
    C_RomaneioCobrDetCELULAR: TStringField;
    U_RomaneioCobrDet: TIBUpdateSQL;
    C_TabelaCODIGOROMANEIO: TStringField;
    C_TabelaQ_RomaneioCobrDet: TDataSetField;
    Q_Funcionarios: TIBQuery;
    P_Funcionarios: TDataSetProvider;
    C_Funcionarios: TClientDataSet;
    C_FuncionariosFAVORECIDO: TIntegerField;
    C_FuncionariosNOME: TStringField;
    C_TabelalkFuncionario: TStringField;
    C_RomaneioCobrDetPARCELA: TStringField;
    Q_Romaneios: TIBQuery;
    P_Romaneios: TDataSetProvider;
    C_Romaneios: TClientDataSet;
    Q_Parcelas: TIBQuery;
    C_Parcelas: TClientDataSet;
    Q_RomaneiosDS: TDataSource;
    C_RomaneiosROMANEIOCOBR: TIntegerField;
    C_RomaneiosDATA: TDateField;
    C_RomaneiosFUNCIONARIO: TIntegerField;
    C_RomaneiosOBS: TStringField;
    C_RomaneiosCODIGOROMANEIO: TStringField;
    C_RomaneiosCODIGO: TStringField;
    C_RomaneiosNOME: TStringField;
    C_RomaneiosQ_Parcelas: TDataSetField;
    C_ParcelasROMANEIOCOBRDET: TIntegerField;
    C_ParcelasROMANEIOCOBR: TIntegerField;
    C_ParcelasTITULO: TIntegerField;
    C_ParcelasPARCELA: TStringField;
    C_ParcelasVENCIMENTO: TDateField;
    C_ParcelasFALTARECEBER: TBCDField;
    C_ParcelasNOME: TStringField;
    C_ParcelasENDERECO: TStringField;
    C_ParcelasCIDADE: TStringField;
    C_ParcelasUF: TStringField;
    C_ParcelasCEP: TStringField;
    C_ParcelasFONE1: TStringField;
    C_ParcelasFONE2: TStringField;
    C_ParcelasCELULAR: TStringField;
    ppRomaneio: TppReport;
    ppDBParcelas: TppDBPipeline;
    C_ParcelasDS: TDataSource;
    C_RomaneiosDS: TDataSource;
    ppDBRomaneios: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppRegion4: TppRegion;
    ppRegion1: TppRegion;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppLabel11: TppLabel;
    ppDBText13: TppDBText;
    ppLabel12: TppLabel;
    ppDBText14: TppDBText;
    ppLabel13: TppLabel;
    ppDBText15: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    ppLine3: TppLine;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_RomaneioCobrDetNewRecord(DataSet: TDataSet);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentGravar5_Terminar(Sender: TObject);
  private
    { Private declarations }
    nSeq : integer;
    function VerificaExistenciaRomaneio(nItem: integer; sTexto: string): boolean;
  public
    { Public declarations }
    procedure IncluirParcelas( sParcelas : string );
    function GeraCodigoRomaneio(sCodigo: string; nChave: integer): string;
    procedure ImprimirRomaneio( nID : integer );
  end;

var
  DMRomaneioCobr: TDMRomaneioCobr;

implementation

{$R *.dfm}

uses DM_Projeto, funcoes;

procedure TDMRomaneioCobr.IncluirParcelas( sParcelas : string );
var i, nId : integer;
    sPar : string;
begin
  if ( sParcelas <> '' ) then begin
    for i := 1 to ContaStrings( sParcelas, '||' ) do begin
      sPar := SeparaStrings( sParcelas, '||', i );
      nId := StrToIntDef(SeparaStrings( sPar, ';', 1 ),0);
      if (nID > 0) and (not C_RomaneioCobrDet.Locate( 'TITULO', nID, [] )) then begin
        C_RomaneioCobrDet.Append;
        C_RomaneioCobrDetTITULO.AsInteger := nID;
        C_RomaneioCobrDetVENCIMENTO.AsDateTime := StrToDate( SeparaStrings(sPar,';',3) );
        C_RomaneioCobrDetFALTARECEBER.AsCurrency := StrToCurr( SeparaStrings(sPar,';',4) );
        C_RomaneioCobrDetNOME.AsString := SeparaStrings(sPar,';',5);
        C_RomaneioCobrDetENDERECO.AsString := SeparaStrings(sPar,';',6);
        C_RomaneioCobrDetCIDADE.AsString := SeparaStrings(sPar,';',7);
        C_RomaneioCobrDetUF.AsString := SeparaStrings(sPar,';',8);
        C_RomaneioCobrDetCEP.AsString := SeparaStrings(sPar,';',9);
        C_RomaneioCobrDetFONE1.AsString := SeparaStrings(sPar,';',10);
        C_RomaneioCobrDetFONE2.AsString := SeparaStrings(sPar,';',11);
        C_RomaneioCobrDetCELULAR.AsString := SeparaStrings(sPar,';',12);
        C_RomaneioCobrDetPARCELA.AsString := SeparaStrings(sPar,';',2);
        C_RomaneioCobrDet.Post;
      end;
    end;
  end;
end;


procedure TDMRomaneioCobr.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMRomaneioCobr := Self;
  nSeq := -1;
end;

procedure TDMRomaneioCobr.C_RomaneioCobrDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec( nSeq );
  C_RomaneioCobrDetROMANEIOCOBRDET.Value := nSeq;
end;

function TDMRomaneioCobr.GeraCodigoRomaneio;
var xID, xCasas: integer;
    xCodigo: string;
begin
    xCodigo := sCodigo;
    if direita(sCodigo, 1) = '-' then
    begin
        xCasas := 6;
        while (direita(xCodigo, 1) = '-') or VerificaExistenciaRomaneio(nChave, xCodigo) do
        begin
            xID := DMProjeto.NextID(copy(sCodigo, 1, pos('-', sCodigo) - 1), DMProjeto.nIntervaloCodigo);
            if length(IntToStr(xID)) > 6 then
                xCasas := length(IntToStr(xID));
            xCodigo := sCodigo + AdicionarStr(IntToStr(xID), '0', xCasas);
        end;
    end
    else if trim(sCodigo) = '' then
    begin
        xCasas := 6;
        while (trim(xCodigo) = '') or VerificaExistenciaRomaneio(nChave, xCodigo) do
        begin
            xID := DMProjeto.NextID('IDCodigoRomaneio', DMProjeto.nIntervaloCodigo);
            if length(IntToStr(xID)) > 6 then
                xCasas := length(IntToStr(xID));
            xCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
        end;
    end;
    result := xCodigo;
end;

function TDMRomaneioCobr.VerificaExistenciaRomaneio;
begin
    DMProjeto.Q_ComandoSQL.close;
    DMProjeto.Q_ComandoSQL.SQL.text := 'select romaneiocobr from romaneioscobr where romaneiocobr <> :nItem and codigoromaneio = :codigo';
    DMProjeto.Q_ComandoSQL.params[0].asinteger := nItem;
    DMProjeto.Q_ComandoSQL.params[1].asstring := uppercase(sTexto);
    DMProjeto.Q_ComandoSQL.open;
    result := DMProjeto.Q_ComandoSQL.FieldByName('romaneiocobr').asinteger <> 0;
    DMProjeto.Q_COmandoSQL.Close;
end;



procedure TDMRomaneioCobr.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaDATA.AsDateTime := DMProjeto.getDataServidor;
end;

procedure TDMRomaneioCobr.ImprimirRomaneio( nID : integer );
begin
  C_Romaneios.Close;
  Q_Romaneios.ParamByName('rc').AsInteger := nID;
  C_Romaneios.Open;
  DMProjeto.ImprimirCabecalho( ppRegion1 );
  DMProjeto.ImprimirCabecalho( ppRegion4 );
  ppRomaneio.Print;
end;

procedure TDMRomaneioCobr.DMComponentGravar5_Terminar(Sender: TObject);
begin
  inherited;
  if not bAlteracao then ImprimirRomaneio( C_TabelaROMANEIOCOBR.AsInteger );
end;

end.

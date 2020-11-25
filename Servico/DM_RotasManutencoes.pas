unit DM_RotasManutencoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, ppBands, ppCtrls, ppClass,
  myChkBox, ppPrnabl, ppStrtch, ppRegion, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppSubRpt, ppMemo;

type
  TDMRotasManutencoes = class(TDMManutencao)
    C_TabelaROTAMANUTENCAO: TIntegerField;
    C_TabelaROTA: TIntegerField;
    C_TabelaMES: TIntegerField;
    C_TabelaANO: TIntegerField;
    C_TabelaFUNCIONARIO: TIntegerField;
    C_TabelaNOME: TStringField;
    Q_Rotas: TIBQuery;
    P_Rotas: TDataSetProvider;
    C_Rotas: TClientDataSet;
    C_RotasROTA: TIntegerField;
    C_RotasDESCRICAO: TStringField;
    C_TabelalkRota: TStringField;
    C_RotasDS: TDataSource;
    C_RotasManutencoesDet: TClientDataSet;
    Q_RotasManutencoesDet: TIBQuery;
    U_RotasManutencoesDet: TIBUpdateSQL;
    C_RotasManutencoesDetROTAMANUTENCAODET: TIntegerField;
    C_RotasManutencoesDetFAVORECIDO: TIntegerField;
    C_RotasManutencoesDetORDEM: TIntegerField;
    C_RotasManutencoesDetDIA: TIntegerField;
    C_RotasManutencoesDetSTATUS: TStringField;
    C_RotasManutencoesDetURGENTE: TStringField;
    C_RotasManutencoesDetOBS: TStringField;
    C_TabelaQ_RotasManutencoesDet: TDataSetField;
    C_RotasManutencoesDetNOME: TStringField;
    C_RotasManutencoesDetDS: TDataSource;
    Q_Favorecido: TIBQuery;
    P_Favorecido: TDataSetProvider;
    C_Favorecido: TClientDataSet;
    C_FavorecidoFAVORECIDO: TIntegerField;
    C_FavorecidoNOME: TStringField;
    C_RotasManutencoesDetlkFavorecido: TStringField;
    C_RotasManutencoesDeticQtdeEquip: TIntegerField;
    Q_RotasFav: TIBQuery;
    P_RotasFav: TDataSetProvider;
    C_RotasFav: TClientDataSet;
    C_RotasFavCLIENTE: TIntegerField;
    C_RotasFavORDEM: TIntegerField;
    Q_Manutencao: TIBQuery;
    P_Manutencao: TDataSetProvider;
    C_Manutencao: TClientDataSet;
    C_ManutencaoDESCRICAO: TStringField;
    C_ManutencaoFUNCIONARIO: TStringField;
    C_ManutencaoMES: TIntegerField;
    C_ManutencaoANO: TIntegerField;
    C_ManutencaoCLIENTE: TStringField;
    C_ManutencaoDIA: TIntegerField;
    C_ManutencaoORDEM: TIntegerField;
    C_ManutencaoSTATUS: TStringField;
    C_ManutencaoURGENTE: TStringField;
    C_ManutencaoOBS: TStringField;
    C_ManutencaoQTDEEQUIP: TIntegerField;
    C_ManutencaoDS: TDataSource;
    DBManutencao: TppDBPipeline;
    ppManutencao: TppReport;
    ppHeaderBand1: TppHeaderBand;
    rgCab: TppRegion;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppDBText8: TppDBText;
    myDBCheckBox2: TmyDBCheckBox;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText5: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    Q_FolhaRota: TIBQuery;
    P_FolhaRota: TDataSetProvider;
    C_FolhaRota: TClientDataSet;
    C_FolhaRotaROTA: TIntegerField;
    C_FolhaRotaDESCRICAO: TStringField;
    C_FolhaRotaMES: TIntegerField;
    C_FolhaRotaANO: TIntegerField;
    C_FolhaRotaNOME: TStringField;
    C_FolhaRotaicMesAno: TStringField;
    Q_FolhaRotaDS: TDataSource;
    C_FolhaRotaDS: TDataSource;
    Q_FolhaRotaDet: TIBQuery;
    C_FolhaRotaROTAMANUTENCAO: TIntegerField;
    C_FolhaRotaQ_FolhaRotaDet: TDataSetField;
    C_FolhaRotDet: TClientDataSet;
    C_FolhaRotDetROTAMANUTENCAODET: TIntegerField;
    C_FolhaRotDetROTAMANUTENCAO: TIntegerField;
    C_FolhaRotDetORDEM: TIntegerField;
    C_FolhaRotDetDIA: TIntegerField;
    C_FolhaRotDetFAVORECIDO: TIntegerField;
    C_FolhaRotDetSTATUS: TStringField;
    C_FolhaRotDetURGENTE: TStringField;
    C_FolhaRotDetNOME: TStringField;
    C_FolhaRotDetENDERECO: TStringField;
    C_FolhaRotDetBAIRRO: TStringField;
    C_FolhaRotDetCIDADE: TStringField;
    C_FolhaRotDetUF: TStringField;
    C_FolhaRotDeticEndereco: TStringField;
    C_FolhaRotDetDS: TDataSource;
    Q_Equipamentos: TIBQuery;
    Q_FolhaRotaDetDS: TDataSource;
    C_Equipamentos: TClientDataSet;
    C_FolhaRotDetQ_Equipamentos: TDataSetField;
    C_EquipamentosEQUIPAMENTO: TIntegerField;
    C_EquipamentosNUMMAQUINA: TStringField;
    C_EquipamentosDS: TDataSource;
    ppDBFolhaRota: TppDBPipeline;
    ppDBFolhaRotaDet: TppDBPipeline;
    ppDBEquip: TppDBPipeline;
    ppFolhaRota: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppRegion1: TppRegion;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText11: TppDBText;
    ppLine2: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine3: TppLine;
    myDBCheckBox3: TmyDBCheckBox;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    C_FolhaRotDetCODIGO: TStringField;
    ppDBText15: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppSubEquip: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText16: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine4: TppLine;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_RotasManutencoesDetCalcFields(DataSet: TDataSet);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaROTAChange(Sender: TField);
    procedure C_FolhaRotaCalcFields(DataSet: TDataSet);
    procedure C_FolhaRotDetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    pk : integer;
  public
    { Public declarations }
    procedure ImprimirManutencao;
    procedure ImprimirFolhaRota;
  end;

var
  DMRotasManutencoes: TDMRotasManutencoes;

implementation

uses DM_Projeto, DateUtils, funcoes;

{$R *.dfm}

procedure TDMRotasManutencoes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMRotasManutencoes := self;
  pk := -1;
end;

procedure TDMRotasManutencoes.C_RotasManutencoesDetCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if (C_RotasManutencoesDet.State = dsInternalCalc) then begin
    DMProjeto.Q_Sql.Close;
    DMProjeto.Q_Sql.Sql.Text := 'select count(e.equipamento) from equipamentos e where e.favorecido = :favorecido';
    DMProjeto.Q_Sql.ParamByName('FAVORECIDO').AsInteger := C_RotasManutencoesDetFAVORECIDO.AsInteger;
    DMProjeto.Q_Sql.Open;
    C_RotasManutencoesDeticQtdeEquip.AsInteger := DMProjeto.Q_Sql.Fields[0].AsInteger;
  end;
end;

procedure TDMRotasManutencoes.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaANO.AsInteger := YearOf( DMProjeto.GetDataServidor );
  C_TabelaMES.AsInteger := MonthOf( DMProjeto.GetDataServidor );
end;

procedure TDMRotasManutencoes.C_TabelaROTAChange(Sender: TField);
begin
  inherited;
  DMRotasManutencoes.C_RotasManutencoesDet.EmptyDataSet;

  C_RotasFav.Close;
  Q_RotasFav.ParamByName('rota').AsInteger := DMRotasManutencoes.C_TabelaROTA.Value;
  C_RotasFav.Open;
  C_RotasFav.First;

  while (not C_RotasFav.EOF) do begin
      DMRotasManutencoes.C_RotasManutencoesDet.Append;
      dec(pk);
      DMRotasManutencoes.C_RotasManutencoesDetROTAMANUTENCAODET.Value := pk;
      DMRotasManutencoes.C_RotasManutencoesDetFAVORECIDO.Value := C_RotasFavCLIENTE.AsInteger;
      DMRotasManutencoes.C_RotasManutencoesDetORDEM.Value   := C_RotasFavORDEM.AsInteger;
      DMRotasManutencoes.C_RotasManutencoesDetDIA.AsString  := '1';
      DMRotasManutencoes.C_RotasManutencoesDetSTATUS.Value  := 'N';
      DMRotasManutencoes.C_RotasManutencoesDetURGENTE.Value := 'N';

      DMRotasManutencoes.C_RotasManutencoesDet.Post;
      C_RotasFav.Next;
  end;
  C_RotasFav.Close;
end;

procedure TDMRotasManutencoes.ImprimirManutencao;
begin
  C_Manutencao.Close;
  Q_Manutencao.Params[0].AsInteger := C_TabelaROTAMANUTENCAO.Value;
  C_Manutencao.Open;
  //
  DMProjeto.ImprimirCabecalho(rgCab);
  ppManutencao.print;
end;

procedure TDMRotasManutencoes.C_FolhaRotaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('icMesAno').AsString := MesExtenso( 0, DataSet.FieldByName('MES').AsInteger ) + '/' +
  DataSet.FieldByName('ANO').AsString;
end;

procedure TDMRotasManutencoes.C_FolhaRotDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('icEndereco').AsString := Trim( DataSet.FieldByName('Endereco').AsString ) +
  ' ' + Trim( DataSet.FieldByName('Bairro').AsString ) + ' ' + Trim( DataSet.FieldByName('Cidade').AsString ) +
  ' ' + Trim( DataSet.FieldByName('UF').AsString );
end;

procedure TDMRotasManutencoes.ImprimirFolhaRota;
begin
  C_FolhaRota.Close;
  Q_FolhaRota.ParamByName('rm').AsInteger := C_TabelaROTAMANUTENCAO.Value;
  C_FolhaRota.Open;
  //
  DMProjeto.ImprimirCabecalho(ppRegion1);
  ppFolhaRota.Print;
end;


end.

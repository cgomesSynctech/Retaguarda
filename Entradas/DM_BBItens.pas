unit DM_BBItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Provider, IBCustomDataSet, IBUpdateSQL, IBQuery, DBClient, DlgMsg, Variants;

type
  TDMBBItens = class(TDataModule)
    C_TiposItens: TClientDataSet;
    C_TiposItensTIPOITEM: TIntegerField;
    C_TiposItensDESCRICAO: TStringField;
    Q_Unidades: TIBQuery;
    Q_GruposItens: TIBQuery;
    U_GruposItens: TIBUpdateSQL;
    U_Unid: TIBUpdateSQL;
    Q_Unid: TIBQuery;
    P_GruposItens: TDataSetProvider;
    P_Unid: TDataSetProvider;
    U_Inventario: TIBUpdateSQL;
    Q_Inventario: TIBQuery;
    P_Inventario: TDataSetProvider;
    C_Inventario: TClientDataSet;
    C_InventarioCODIGO: TStringField;
    C_InventarioDESCRICAO: TStringField;
    C_InventarioUNIDADE: TStringField;
    C_InventarioAJUSTEITEM: TIntegerField;
    C_InventarioITEM: TIntegerField;
    C_InventarioDATA: TDateField;
    C_InventarioQUANTIDADE: TBCDField;
    C_InventarioCUSTO: TBCDField;
    C_InventarioCONTA: TIntegerField;
    C_InventarioMOTIVO: TStringField;
    C_InventarioQTDEOLD: TBCDField;
    C_InventarioCUSTOMEDIO: TBCDField;
    C_InventarioCONTA_INVENT: TIntegerField;
    C_InventarioPRECO: TBCDField;
    C_InventarioGRUPO: TIntegerField;
    C_InventariolkGrupo: TStringField;
    C_InventariolkUnidade: TStringField;
    C_InventarioTAXAVEL: TStringField;
    C_InventarioDS: TDataSource;
    U_SemInvent: TIBUpdateSQL;
    Q_SemInvent: TIBQuery;
    P_SemInvent: TDataSetProvider;
    P_Grupos: TDataSetProvider;
    C_GruposItens: TClientDataSet;
    C_GruposItensGRUPO: TIntegerField;
    C_GruposItensCODIGO: TStringField;
    C_GruposItensDESCRICAOGRUPO: TStringField;
    C_GruposItensTIPOITEM: TIntegerField;
    C_GruposItenslkTipoItem: TStringField;
    P_TiposItens: TDataSetProvider;
    C_GruposItensDS: TDataSource;
    C_UnidDS: TDataSource;
    C_Unid: TClientDataSet;
    C_UnidUNIDADE: TStringField;
    C_UnidDESCRICAO: TStringField;
    C_UnidINTEIRA: TStringField;
    Q_TiposItem: TIBQuery;
    Q_Grupos: TIBQuery;
    Q_Aux: TIBQuery;
    C_Unidades: TClientDataSet;
    C_UnidadesUNIDADE: TStringField;
    C_UnidadesDESCRICAO: TStringField;
    C_SemInventDS: TDataSource;
    C_SemInvent: TClientDataSet;
    C_SemInventITEM: TIntegerField;
    C_SemInventCODIGO: TStringField;
    C_SemInventGRUPO: TIntegerField;
    C_SemInventDESCRICAO: TStringField;
    C_SemInventlkGrupo: TStringField;
    P_Contas: TDataSetProvider;
    C_Contas: TClientDataSet;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasDESCTIPO: TStringField;
    C_ContasSALDO: TBCDField;
    C_ContasCONTAPAI: TIntegerField;
    C_ContasTIPOCONTA: TIntegerField;
    C_ContasCODIGOREDUZIDO: TStringField;
    Q_Contas: TIBQuery;
    C_ContasDS: TDataSource;
    C_Grupos: TClientDataSet;
    C_GruposGRUPO: TIntegerField;
    C_GruposDESCRICAOGRUPO: TStringField;
    P_Unidades: TDataSetProvider;
    C_Servicos: TClientDataSet;
    C_ServicosDS: TDataSource;
    Q_Servicos: TIBQuery;
    P_Servicos: TDataSetProvider;
    U_Servicos: TIBUpdateSQL;
    C_InventarioTIPOITEM: TIntegerField;
    C_InventarioDESCRICAOCOMPRA: TStringField;
    C_InventarioULTIMOFORNECEDOR: TIntegerField;
    C_InventarioQTDEMINIMO: TBCDField;
    C_InventarioQTDEMAXIMO: TBCDField;
    C_InventarioPONTOPEDIDO: TBCDField;
    C_InventarioPERCENTUAL: TBCDField;
    C_InventarioAPLICARANTESTAX: TStringField;
    C_InventarioLOCALIZACAO: TStringField;
    C_InventarioDESATIVADO: TStringField;
    C_InventarioESTOQUE: TBCDField;
    C_InventarioIMPORTACAO: TIntegerField;
    C_InventarioCOMISSAO: TBCDField;
    C_InventarioDESCONTOMAXIMO: TBCDField;
    C_InventarioTAXINCLUSO: TStringField;
    C_InventarioCONTA_VENDA: TIntegerField;
    C_InventarioCONTA_CUSTO: TIntegerField;
    C_InventarioFABRICANTE: TIntegerField;
    C_InventarioBALANCO: TStringField;
    C_InventarioPRECOCOMPRA: TBCDField;
    C_InventarioCUSTOCONTABIL: TBCDField;
    C_InventarioISITEMCOMPRA: TStringField;
    C_InventarioPTAXINCLUSO: TBCDField;
    C_InventarioCUSTODESPESAS: TBCDField;
    C_InventarioFOTO: TStringField;
    C_InventarioPROMOCAO: TStringField;
    C_InventarioFATORLUCRO: TFloatField;
    C_InventarioHASCHILDREN: TStringField;
    C_InventarioREFERENCIA: TStringField;
    C_InventariolkContaVenda: TStringField;
    C_SemInventTIPOITEM: TIntegerField;
    C_SemInventDESCRICAOCOMPRA: TStringField;
    C_SemInventTAXAVEL: TStringField;
    C_SemInventCUSTOMEDIO: TBCDField;
    C_SemInventULTIMOFORNECEDOR: TIntegerField;
    C_SemInventQTDEMINIMO: TBCDField;
    C_SemInventQTDEMAXIMO: TBCDField;
    C_SemInventPONTOPEDIDO: TBCDField;
    C_SemInventPERCENTUAL: TBCDField;
    C_SemInventAPLICARANTESTAX: TStringField;
    C_SemInventUNIDADE: TStringField;
    C_SemInventLOCALIZACAO: TStringField;
    C_SemInventDESATIVADO: TStringField;
    C_SemInventESTOQUE: TBCDField;
    C_SemInventIMPORTACAO: TIntegerField;
    C_SemInventCOMISSAO: TBCDField;
    C_SemInventDESCONTOMAXIMO: TBCDField;
    C_SemInventTAXINCLUSO: TStringField;
    C_SemInventCONTA_VENDA: TIntegerField;
    C_SemInventCONTA_CUSTO: TIntegerField;
    C_SemInventCONTA_INVENT: TIntegerField;
    C_SemInventFABRICANTE: TIntegerField;
    C_SemInventBALANCO: TStringField;
    C_SemInventCAMPO01: TStringField;
    C_SemInventCAMPO02: TStringField;
    C_SemInventCAMPO03: TStringField;
    C_SemInventCAMPO04: TStringField;
    C_SemInventCAMPO05: TStringField;
    C_SemInventPRECOCOMPRA: TBCDField;
    C_SemInventCAMPO06: TStringField;
    C_SemInventCUSTOCONTABIL: TBCDField;
    C_SemInventISITEMCOMPRA: TStringField;
    C_SemInventCAMPO07: TStringField;
    C_SemInventCAMPO08: TStringField;
    C_SemInventPTAXINCLUSO: TBCDField;
    C_SemInventCAMPO09: TStringField;
    C_SemInventCUSTODESPESAS: TBCDField;
    C_SemInventCAMPO10: TStringField;
    C_SemInventFOTO: TStringField;
    C_SemInventPROMOCAO: TStringField;
    C_SemInventFATORLUCRO: TFloatField;
    C_SemInventHASCHILDREN: TStringField;
    C_SemInventREFERENCIA: TStringField;
    C_SemInventlkUnidade: TStringField;
    C_SemInventlkContaVenda: TStringField;
    C_SemInventlkContaDespesa: TStringField;
    C_InventariolkContaCusto: TStringField;
    C_InventariolkContaInvent: TStringField;
    C_ServicosITEM: TIntegerField;
    C_ServicosTIPOITEM: TIntegerField;
    C_ServicosCODIGO: TStringField;
    C_ServicosDESCRICAOCOMPRA: TStringField;
    C_ServicosGRUPO: TIntegerField;
    C_ServicosDESCRICAO: TStringField;
    C_ServicosTAXAVEL: TStringField;
    C_ServicosCUSTOMEDIO: TBCDField;
    C_ServicosULTIMOFORNECEDOR: TIntegerField;
    C_ServicosQTDEMINIMO: TBCDField;
    C_ServicosQTDEMAXIMO: TBCDField;
    C_ServicosPONTOPEDIDO: TBCDField;
    C_ServicosPERCENTUAL: TBCDField;
    C_ServicosAPLICARANTESTAX: TStringField;
    C_ServicosUNIDADE: TStringField;
    C_ServicosLOCALIZACAO: TStringField;
    C_ServicosDESATIVADO: TStringField;
    C_ServicosESTOQUE: TBCDField;
    C_ServicosIMPORTACAO: TIntegerField;
    C_ServicosCOMISSAO: TBCDField;
    C_ServicosDESCONTOMAXIMO: TBCDField;
    C_ServicosTAXINCLUSO: TStringField;
    C_ServicosCONTA_VENDA: TIntegerField;
    C_ServicosCONTA_CUSTO: TIntegerField;
    C_ServicosCONTA_INVENT: TIntegerField;
    C_ServicosFABRICANTE: TIntegerField;
    C_ServicosBALANCO: TStringField;
    C_ServicosCAMPO01: TStringField;
    C_ServicosCAMPO02: TStringField;
    C_ServicosCAMPO03: TStringField;
    C_ServicosCAMPO04: TStringField;
    C_ServicosCAMPO05: TStringField;
    C_ServicosPRECOCOMPRA: TBCDField;
    C_ServicosCAMPO06: TStringField;
    C_ServicosCUSTOCONTABIL: TBCDField;
    C_ServicosISITEMCOMPRA: TStringField;
    C_ServicosCAMPO07: TStringField;
    C_ServicosCAMPO08: TStringField;
    C_ServicosPTAXINCLUSO: TBCDField;
    C_ServicosCAMPO09: TStringField;
    C_ServicosCUSTODESPESAS: TBCDField;
    C_ServicosCAMPO10: TStringField;
    C_ServicosFOTO: TStringField;
    C_ServicosPROMOCAO: TStringField;
    C_ServicosFATORLUCRO: TFloatField;
    C_ServicosHASCHILDREN: TStringField;
    C_ServicosREFERENCIA: TStringField;
    C_Encargos: TClientDataSet;
    C_EncargosDS: TDataSource;
    Q_Encargos: TIBQuery;
    P_Encargos: TDataSetProvider;
    U_Encargos: TIBUpdateSQL;
    C_Descontos: TClientDataSet;
    C_DescontosDS: TDataSource;
    Q_Descontos: TIBQuery;
    P_Descontos: TDataSetProvider;
    U_Descontos: TIBUpdateSQL;
    C_ServicoslkGrupo: TStringField;
    C_ServicoslkUnidade: TStringField;
    C_ServicoslkContaVenda: TStringField;
    C_ServicoslkContaDespesa: TStringField;
    C_EncargosITEM: TIntegerField;
    C_EncargosTIPOITEM: TIntegerField;
    C_EncargosCODIGO: TStringField;
    C_EncargosDESCRICAOCOMPRA: TStringField;
    C_EncargosGRUPO: TIntegerField;
    C_EncargosDESCRICAO: TStringField;
    C_EncargosTAXAVEL: TStringField;
    C_EncargosCUSTOMEDIO: TBCDField;
    C_EncargosULTIMOFORNECEDOR: TIntegerField;
    C_EncargosQTDEMINIMO: TBCDField;
    C_EncargosQTDEMAXIMO: TBCDField;
    C_EncargosPONTOPEDIDO: TBCDField;
    C_EncargosPERCENTUAL: TBCDField;
    C_EncargosAPLICARANTESTAX: TStringField;
    C_EncargosUNIDADE: TStringField;
    C_EncargosLOCALIZACAO: TStringField;
    C_EncargosDESATIVADO: TStringField;
    C_EncargosESTOQUE: TBCDField;
    C_EncargosIMPORTACAO: TIntegerField;
    C_EncargosCOMISSAO: TBCDField;
    C_EncargosDESCONTOMAXIMO: TBCDField;
    C_EncargosTAXINCLUSO: TStringField;
    C_EncargosCONTA_VENDA: TIntegerField;
    C_EncargosCONTA_CUSTO: TIntegerField;
    C_EncargosCONTA_INVENT: TIntegerField;
    C_EncargosFABRICANTE: TIntegerField;
    C_EncargosBALANCO: TStringField;
    C_EncargosCAMPO01: TStringField;
    C_EncargosCAMPO02: TStringField;
    C_EncargosCAMPO03: TStringField;
    C_EncargosCAMPO04: TStringField;
    C_EncargosCAMPO05: TStringField;
    C_EncargosPRECOCOMPRA: TBCDField;
    C_EncargosCAMPO06: TStringField;
    C_EncargosCUSTOCONTABIL: TBCDField;
    C_EncargosISITEMCOMPRA: TStringField;
    C_EncargosCAMPO07: TStringField;
    C_EncargosCAMPO08: TStringField;
    C_EncargosPTAXINCLUSO: TBCDField;
    C_EncargosCAMPO09: TStringField;
    C_EncargosCUSTODESPESAS: TBCDField;
    C_EncargosCAMPO10: TStringField;
    C_EncargosFOTO: TStringField;
    C_EncargosPROMOCAO: TStringField;
    C_EncargosFATORLUCRO: TFloatField;
    C_EncargosHASCHILDREN: TStringField;
    C_EncargosREFERENCIA: TStringField;
    C_DescontosITEM: TIntegerField;
    C_DescontosTIPOITEM: TIntegerField;
    C_DescontosCODIGO: TStringField;
    C_DescontosDESCRICAOCOMPRA: TStringField;
    C_DescontosGRUPO: TIntegerField;
    C_DescontosDESCRICAO: TStringField;
    C_DescontosTAXAVEL: TStringField;
    C_DescontosCUSTOMEDIO: TBCDField;
    C_DescontosULTIMOFORNECEDOR: TIntegerField;
    C_DescontosQTDEMINIMO: TBCDField;
    C_DescontosQTDEMAXIMO: TBCDField;
    C_DescontosPONTOPEDIDO: TBCDField;
    C_DescontosPERCENTUAL: TBCDField;
    C_DescontosAPLICARANTESTAX: TStringField;
    C_DescontosUNIDADE: TStringField;
    C_DescontosLOCALIZACAO: TStringField;
    C_DescontosDESATIVADO: TStringField;
    C_DescontosESTOQUE: TBCDField;
    C_DescontosIMPORTACAO: TIntegerField;
    C_DescontosCOMISSAO: TBCDField;
    C_DescontosDESCONTOMAXIMO: TBCDField;
    C_DescontosTAXINCLUSO: TStringField;
    C_DescontosCONTA_VENDA: TIntegerField;
    C_DescontosCONTA_CUSTO: TIntegerField;
    C_DescontosCONTA_INVENT: TIntegerField;
    C_DescontosFABRICANTE: TIntegerField;
    C_DescontosBALANCO: TStringField;
    C_DescontosCAMPO01: TStringField;
    C_DescontosCAMPO02: TStringField;
    C_DescontosCAMPO03: TStringField;
    C_DescontosCAMPO04: TStringField;
    C_DescontosCAMPO05: TStringField;
    C_DescontosPRECOCOMPRA: TBCDField;
    C_DescontosCAMPO06: TStringField;
    C_DescontosCUSTOCONTABIL: TBCDField;
    C_DescontosISITEMCOMPRA: TStringField;
    C_DescontosCAMPO07: TStringField;
    C_DescontosCAMPO08: TStringField;
    C_DescontosPTAXINCLUSO: TBCDField;
    C_DescontosCAMPO09: TStringField;
    C_DescontosCUSTODESPESAS: TBCDField;
    C_DescontosCAMPO10: TStringField;
    C_DescontosFOTO: TStringField;
    C_DescontosPROMOCAO: TStringField;
    C_DescontosFATORLUCRO: TFloatField;
    C_DescontosHASCHILDREN: TStringField;
    C_DescontosREFERENCIA: TStringField;
    C_EncargoslkGrupo: TStringField;
    C_EncargoslkUnidade: TStringField;
    C_EncargoslkContaVenda: TStringField;
    C_EncargoslkContaDespesa: TStringField;
    C_DescontoslkGrupo: TStringField;
    C_DescontoslkUnidade: TStringField;
    C_DescontoslkContaDesconto: TStringField;
    C_GruposItensDESCONTOMAXIMO: TBCDField;
    C_GruposItensCOMISSAO: TBCDField;
    C_SemInventPRECO: TBCDField;
    C_ServicosPRECO: TBCDField;
    C_EncargosPRECO: TBCDField;
    C_DescontosPRECO: TBCDField;
    DlgMsg: TDlgMsg;
    Q_MasterDS: TDataSource;
    C_ProdutosPreco: TClientDataSet;
    Q_ProdutosPreco: TIBQuery;
    U_ProdutosPreco: TIBUpdateSQL;
    C_ProdutosPrecoITEM: TIntegerField;
    C_ProdutosPrecoTABELAPRECO: TIntegerField;
    C_ProdutosPrecoPRECO: TBCDField;
    C_ProdutosPrecoPRECOMANUAL: TStringField;
    C_SemInventQ_ProdutosPreco: TDataSetField;
    C_ProdutosPrecoBASEADA: TStringField;
    C_ProdutosPrecoPERCENTUAL: TBCDField;
    C_ProdutosPrecoPRODUTOPRECO: TIntegerField;
    C_InventarioQ_ProdutosPreco: TDataSetField;
    C_ServicosQ_ProdutosPreco: TDataSetField;
    C_EncargosQ_ProdutosPreco: TDataSetField;
    C_DescontosQ_ProdutosPreco: TDataSetField;
    C_Fabricantes: TClientDataSet;
    C_FabricantesDS: TDataSource;
    Q_Fabricantes: TIBQuery;
    P_Fabricantes: TDataSetProvider;
    U_Fabricantes: TIBUpdateSQL;
    C_FabricantesFABRICANTE: TIntegerField;
    C_FabricantesDESCRICAO: TStringField;
    C_FabricantesCODIGO: TStringField;
    C_FabricLk: TClientDataSet;
    Q_FabricLk: TIBQuery;
    P_FabricLk: TDataSetProvider;
    C_FabricLkFABRICANTE: TIntegerField;
    C_FabricLkDESCRICAO: TStringField;
    C_InventariolkFabricante: TStringField;
    C_TabelasPreco: TClientDataSet;
    Q_TabelasPreco: TIBQuery;
    P_TabelasPreco: TDataSetProvider;
    C_TabelasPrecoTABELAPRECO: TIntegerField;
    C_TabelasPrecoDESCRICAO: TStringField;
    C_TabelasPrecoPERCENTUAL: TBCDField;
    C_TabelasPrecoDESATIVADO: TStringField;
    C_TabelasPrecoBASEADA: TStringField;
    C_InventarioIDNovo: TIntegerField;
    C_InventarioCUSTOOLD: TBCDField;
    procedure C_UnidNewRecord(DataSet: TDataSet);
    procedure C_InventarioNewRecord(DataSet: TDataSet);
    procedure C_SemInventCUSTOMEDIOChange(Sender: TField);
    procedure C_InventarioCUSTOChange(Sender: TField);
    procedure C_SemInventNewRecord(DataSet: TDataSet);
    procedure C_ServicosNewRecord(DataSet: TDataSet);
    procedure C_EncargosNewRecord(DataSet: TDataSet);
    procedure C_DescontosNewRecord(DataSet: TDataSet);
    procedure C_GruposItensNewRecord(DataSet: TDataSet);
    procedure C_UnidBeforePost(DataSet: TDataSet);
    procedure C_GruposItensBeforePost(DataSet: TDataSet);
    procedure C_InventarioBeforePost(DataSet: TDataSet);
    procedure C_SemInventBeforePost(DataSet: TDataSet);
    procedure C_ServicosBeforePost(DataSet: TDataSet);
    procedure C_EncargosBeforePost(DataSet: TDataSet);
    procedure C_DescontosBeforePost(DataSet: TDataSet);
    procedure C_SemInventPRECOChange(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_SemInventAfterOpen(DataSet: TDataSet);
    procedure C_ProdutosPrecoNewRecord(DataSet: TDataSet);
    procedure C_ServicosPRECOChange(Sender: TField);
    procedure C_EncargosPRECOChange(Sender: TField);
    procedure C_DescontosPRECOChange(Sender: TField);
    procedure C_ServicosAfterOpen(DataSet: TDataSet);
    procedure C_EncargosAfterOpen(DataSet: TDataSet);
    procedure C_DescontosAfterOpen(DataSet: TDataSet);
    procedure C_FabricantesBeforePost(DataSet: TDataSet);
    procedure C_FabricantesNewRecord(DataSet: TDataSet);
    procedure C_InventarioPRECOChange(Sender: TField);
    procedure C_InventarioAfterOpen(DataSet: TDataSet);
    procedure C_InventarioAfterEdit(DataSet: TDataSet);
    procedure C_GruposBeforeOpen(DataSet: TDataSet);
  private
    nIDGerador: integer;
    nContaBB,nContaInvent,nContaCusto,nContaVenda: integer;
    bEditandoPrecos: boolean;
    procedure BaixaEstoque;
    procedure EstornaEstoque;
    procedure Contabiliza(nID:integer);
    function AjustarItem:integer;
    procedure AtualizarAjuste;
    procedure AtualizaCusto;
    procedure CadastraItem;
    procedure AtualizaCampos(Dataset: TDataset);
  public
    dData: TDateTime;
    bImportando: boolean;
    nTipoItem: integer;
    function AdicionaTabelasPreco(xPreco:currency):boolean;
    procedure AtualizaPrecos(xPreco:currency);
    procedure CloseDatasets;
    function GravaItensInventario:boolean;
    procedure AtualizaInventario(nAjuste:integer);
    function LocalizaGrupo(sCodigo:string):integer;
    function LocalizaFabricante(sCodigo:string):integer;
  end;

var
  DMBBItens: TDMBBItens;

implementation

uses DM_Projeto;

{$R *.DFM}


procedure TDMBBItens.CloseDatasets;
var i: integer;
begin
  for i := 0 to ComponentCount-1 do begin
    if (Components[i] is TClientDataSet) and (TClientDataSet(Components[i]).Active) then begin
      TClientDataSet(Components[i]).close;
      TClientDataSet(Components[i]).enablecontrols;
    end
    else if (Components[i] is TIBQuery) and (TIBQuery(Components[i]).Active) then begin
      TIBQuery(Components[i]).close;
      TIBQuery(Components[i]).enablecontrols;
    end;
  end;
end;

function TDMBBItens.GravaItensInventario;
var nAjuste: integer;
begin
  inherited;
  // Inventário
  try
//    if C_Inventario.ChangeCount <= 0 then
//      exit;
//    C_Inventario.disablecontrols;
    C_Inventario.first;
    while not C_Inventario.eof do begin
      if (C_InventarioIDNovo.value < 0) then begin
        C_Inventario.edit;
        C_InventarioItem.value := DMProjeto.NextIDGlobal;
      end;
      C_Inventario.next;
    end;
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    C_Inventario.ApplyUpdates(0);

    C_Inventario.first;
    while not C_Inventario.eof do begin
      if (C_InventarioIDNovo.value < 0) then begin
//        C_Inventario.edit;
//        C_InventarioItem.value := DMProjeto.NextIDGlobal;
        nAjuste := 0;
        if (C_InventarioQuantidade.value <> 0) then begin
          nAjuste := AjustarItem;
          Contabiliza(nAjuste);
        end;
        AtualizaInventario(nAjuste);
        C_Inventario.next;
      end
      else if (C_InventarioAjusteItem.value < 0) and ((C_InventarioQuantidade.value <> 0) or (C_InventarioCusto.value <> 0)) then begin
        nAjuste := AjustarItem;
        Contabiliza(nAjuste);
        AtualizaInventario(nAjuste);
        C_Inventario.next;
      end
      else if (C_InventarioAjusteItem.value > 0) and ((C_InventarioQuantidade.value <> C_InventarioQtdeOld.value) or (C_InventarioCusto.value <> C_InventarioCustoOld.value)) then begin
        AtualizarAjuste;
        Contabiliza(C_InventarioAjusteItem.value);
        AtualizaInventario(0);
        C_Inventario.next;
      end
      else
        C_Inventario.next;
    end;
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  except
    on e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DlgMsg.ShowMsg(50,[e.message]);
    end;
  end;
//  C_Inventario.enablecontrols;
//  C_Inventario.first;
end;

procedure TDMBBItens.AtualizaCusto;
begin
  Q_Aux.close;
  Q_Aux.SQL.text := 'update itens set codigo = :codigo, descricao = :descricao, grupo = grupo, unidade = :unidade, customedio = :custo where item = :item ';
  Q_Aux.ParamByName('codigo').asstring := C_InventarioCodigo.value;
  Q_Aux.ParamByName('descricao').asstring := C_InventarioDescricao.value;
  Q_Aux.ParamByName('grupo').asinteger := C_InventarioGrupo.value;
  Q_Aux.ParamByName('unidade').asstring := C_InventarioUnidade.value;
  Q_Aux.ParamByName('custo').ascurrency := C_InventarioCusto.value;
  Q_Aux.ParamByName('item').asinteger  := C_InventarioItem.value;
  Q_Aux.execsql;
end;

procedure TDMBBItens.CadastraItem;
var nIDItem: integer;
begin
  nIDItem := DMProjeto.NextIDGlobal;
  C_Inventario.edit;
  C_InventarioItem.value := nIDItem;
  C_Inventario.post;
  Q_Aux.close;
  Q_Aux.SQL.text := 'insert into itens(item,codigo,descricao,unidade,grupo,estoque,customedio,taxavel,'+
  'qtdeminimo,qtdemaximo,pontopedido,percentual,desativado,comissao,descontomaximo,conta_invent,'+
  'conta_custo,conta_venda,balanco,haschildren,taxincluso,aplicarantestax) '+
  'values (:item,:codigo,:descricao,:unidade,:grupo,0,:customedio,:taxavel,'+
  '0,0,0,0,''N'',0,0,:conta_invent,'+
  ':conta_custo,:conta_venda,''N'',''N'',''N'',''N'')';
  Q_Aux.ParamByName('item').asinteger := nIDItem;
  Q_Aux.ParamByName('codigo').asstring := C_InventarioCodigo.value;
  Q_Aux.ParamByName('descricao').asstring := C_InventarioDescricao.value;
  Q_Aux.ParamByName('unidade').asstring := C_InventarioUnidade.value;
  Q_Aux.ParamByName('grupo').asinteger := C_InventarioGrupo.value;
  Q_Aux.ParamByName('customedio').ascurrency := C_InventarioCusto.value;
  Q_Aux.execsql;
  //
  Q_Aux.close;
  Q_Aux.SQL.text := 'insert into produtospreco(item,tabelapreco,preco,precomanual) '+
  '(:item,0,:preco,''N'')';
  Q_Aux.ParamByName('item').asinteger := nIDItem;
  Q_Aux.ParamByName('preco').ascurrency := C_InventarioPreco.value;
  Q_Aux.ExecSQL;
end;

procedure TDMBBItens.C_UnidNewRecord(DataSet: TDataSet);
begin
  C_UnidInteira.value := 'N';
end;

procedure TDMBBItens.Contabiliza;
var nContaDebito,nContaCredito: integer;
begin
  inherited;
  if C_InventarioQuantidade.value > 0 then begin
    nContaDebito  := C_InventarioConta_Invent.value;
    nContaCredito := C_InventarioConta.value;
  end
  else begin
    nContaDebito  := C_InventarioConta.value;
    nContaCredito := C_InventarioConta_Invent.value;
  end;

  DMProjeto.Contabiliza(18,C_InventarioData.value,nID,0,
  nContaDebito,nContaCredito,(C_InventarioQuantidade.value * C_InventarioCusto.value),'','Begin Balance: '+C_InventarioDescricao.value);
end;

procedure TDMBBItens.BaixaEstoque;
begin
//  DMProjeto.BaixaEstoque(C_InventarioItem.value,'+',C_InventarioQuantidade.value);
end;

procedure TDMBBItens.EstornaEstoque;
begin
//  DMProjeto.BaixaEstoque(C_InventarioItem.value,'-',C_InventarioQtdeOld.value);
end;

function TDMBBItens.AjustarItem;
begin
  result := DMProjeto.AjusteItem(C_InventarioData.value,C_InventarioItem.value,C_InventarioUnidade.Value, C_InventarioConta.value,
  C_InventarioQuantidade.value,C_InventarioCusto.value,'Begin Balance: '+C_InventarioDescricao.value,'',DMProjeto.dDataSistema);
end;

procedure TDMBBItens.AtualizarAjuste;
begin
  DMProjeto.AtualizaAjusteItem(C_InventarioAjusteItem.value,C_InventarioData.value,C_InventarioItem.value,C_InventarioConta.value,
  C_InventarioQuantidade.value,C_InventarioCusto.value,'Begin Balance: '+C_InventarioDescricao.value, C_InventarioUnidade.value);
end;

procedure TDMBBItens.C_InventarioNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_InventarioAjusteItem.value := nIDGerador;
  C_InventarioItem.value := nIDGerador;
  C_InventarioIDNovo.value := nIDGerador;
  C_InventarioTipoItem.value := 1;
  C_InventarioData.value := dData;
  C_InventarioMotivo.value := 'Begin Balance';
  C_InventarioConta.value := nContaBB;
  C_InventarioCusto.value := 0;
  Dataset.FieldByName('Quantidade').value := 0;
  Dataset.FieldByName('Conta_Invent').value := nContaInvent;
  Dataset.FieldByName('Conta_Custo').value  := nContaCusto;
  Dataset.FieldByName('Conta_Venda').value  := nContaVenda;
  AtualizaCampos(Dataset);
end;

procedure TDMBBItens.C_SemInventCUSTOMEDIOChange(Sender: TField);
begin
  C_SemInventCustoContabil.value := C_SemInventCustoMedio.value;
  C_SemInventPrecoCompra.value := C_SemInventCustoMedio.value;
end;

procedure TDMBBItens.C_InventarioCUSTOChange(Sender: TField);
begin
  C_InventarioCustoMedio.value := C_InventarioCusto.value;
  C_InventarioCustoContabil.value := C_InventarioCustoMedio.value;
  C_InventarioPrecoCompra.value   := C_InventarioCustoMedio.value;
end;

procedure TDMBBItens.C_SemInventNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_SemInventItem.value := nIDGerador;
  C_SemInventTipoItem.value := 2;
  AtualizaCampos(Dataset);
end;

procedure TDMBBItens.AtualizaCampos;
begin
  Dataset.FieldByName('Taxavel').value := 'N';
  Dataset.FieldByName('Balanco').value := 'N';
  Dataset.FieldByName('CustoMedio').value := 0;
  Dataset.FieldByName('CustoContabil').value := 0;
  Dataset.FieldByName('Comissao').value := 0;
  Dataset.FieldByName('DescontoMaximo').value := 0;
  Dataset.FieldByName('Percentual').value := 0;
  Dataset.FieldByName('Estoque').value := 0;
  Dataset.FieldByName('PontoPedido').value := 0;
  Dataset.FieldByName('QtdeMinimo').value := 0;
  Dataset.FieldByName('QtdeMaximo').value := 0;
  Dataset.FieldByName('Desativado').value := 'N';
  Dataset.FieldByName('Taxavel').value := 'N';
  Dataset.FieldByName('TaxIncluso').value := 'N';
  Dataset.FieldByName('AplicarAntesTax').value := 'N';
  Dataset.FieldByName('HasChildren').value := 'N';
  Dataset.FieldByName('IsItemCompra').value := 'N';
  Dataset.FieldByName('PTAXIncluso').value := 0;
  Dataset.FieldByName('PrecoCompra').value := 0;
//  if not bImportando then
    Dataset.FieldByName('Preco').value := 0;
end;

procedure TDMBBItens.C_ServicosNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_ServicosItem.value := nIDGerador;
  C_ServicosTipoItem.value := 3;
  AtualizaCampos(Dataset);
end;

procedure TDMBBItens.C_EncargosNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_EncargosItem.value := nIDGerador;
  C_EncargosTipoItem.value := 5;
  C_EncargosConta_Venda.value := DMProjeto.ContaPadrao(4);
  C_EncargosConta_Custo.value := DMProjeto.ContaPadrao(15);
  AtualizaCampos(Dataset);
end;

procedure TDMBBItens.C_DescontosNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_DescontosItem.value := nIDGerador;
  C_DescontosTipoItem.value := 6;
  C_DescontosConta_Venda.value := DMProjeto.ContaPadrao(1);
  AtualizaCampos(Dataset);
end;

procedure TDMBBItens.C_GruposItensNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_GruposItensGrupo.value := nIDGerador;
  C_GruposItensTipoItem.value := 1;
end;

procedure TDMBBItens.C_UnidBeforePost(DataSet: TDataSet);
begin
  if (trim(C_UnidUnidade.value) = '') or (trim(C_UnidDescricao.value) = '') then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;
end;

procedure TDMBBItens.C_GruposItensBeforePost(DataSet: TDataSet);
begin
  if (trim(C_GruposItensCodigo.value) = '') or (trim(C_GruposItensDescricaoGrupo.value) = '') or
    (C_GruposItensTipoItem.IsNull) then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;

  end;
end;

procedure TDMBBItens.C_InventarioBeforePost(DataSet: TDataSet);
begin
  if bEditandoPrecos or bImportando then
    exit;
  if (trim(C_InventarioCodigo.value) = '') or (trim(C_InventarioDescricao.value) = '') or
    (C_InventarioConta_Venda.IsNull) or (C_InventarioConta_Custo.IsNull) or (C_InventarioConta_Invent.IsNull) then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;
  if (C_InventarioQuantidade.value <> 0) and (C_InventarioCusto.value = 0) then begin
    DlgMsg.ShowMsg(4019);
    raise exception.create('@@');
//    abort;
  end;
end;

procedure TDMBBItens.C_SemInventBeforePost(DataSet: TDataSet);
begin
  if bEditandoPrecos or bImportando then
    exit;
  if (trim(C_SemInventCodigo.value) = '') or (trim(C_SemInventDescricao.value) = '') or
    (C_SemInventConta_Venda.IsNull) or
    ((C_SemInventIsItemCompra.value='S') and ((trim(C_SemInventDescricaoCompra.value) = '') or (C_SemInventConta_Custo.IsNull))) then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;
end;

procedure TDMBBItens.C_ServicosBeforePost(DataSet: TDataSet);
begin
  if bEditandoPrecos then
    exit;
  if ((trim(C_ServicosCodigo.value) = '') or (trim(C_ServicosDescricao.value) = '') or
    (C_ServicosConta_Venda.IsNull)) or
    ((C_ServicosIsItemCompra.value='S') and ((trim(C_ServicosDescricaoCompra.value) = '') or (C_ServicosConta_Custo.IsNull))) then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;
end;

procedure TDMBBItens.C_EncargosBeforePost(DataSet: TDataSet);
begin
  if bEditandoPrecos then
    exit;
  if (trim(C_EncargosCodigo.value) = '') or (trim(C_EncargosDescricao.value) = '') or
    (C_EncargosConta_Venda.IsNull) or (trim(C_EncargosDescricaoCompra.value) = '') or (C_EncargosConta_Custo.IsNull) then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;
end;

procedure TDMBBItens.C_DescontosBeforePost(DataSet: TDataSet);
begin
  if bEditandoPrecos then
    exit;
  if (trim(C_DescontosCodigo.value) = '') or (trim(C_DescontosDescricao.value) = '') or
    (C_DescontosConta_Venda.IsNull) then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;
end;

procedure TDMBBItens.C_SemInventPRECOChange(Sender: TField);
begin
  if bEditandoPrecos then
    exit;
  AdicionaTabelasPreco(C_SemInventPRECO.value);
  AtualizaPrecos(C_SemInventPRECO.value);


{  AdicionaTabelasPreco(0);
  if C_ProdutosPreco.Locate('tabelapreco',0,[]) then
    C_ProdutosPreco.edit;
  C_ProdutosPrecoPreco.value := C_SemInventPRECO.value;
  C_ProdutosPreco.post;
  AtualizaPrecos(C_ProdutosPrecoPreco.value);

  C_SemInvent.edit;}
end;

procedure TDMBBItens.DataModuleCreate(Sender: TObject);
begin
  nIDGerador := -1000;
  nContaBB     := DMProjeto.ContaPadrao(5);
  nContaInvent := DMProjeto.ContaPadrao(6);
  nContaCusto  := DMProjeto.ContaPadrao(7);
  nContaVenda  := DMProjeto.ContaPadrao(8);
end;

procedure TDMBBItens.C_SemInventAfterOpen(DataSet: TDataSet);
begin
  if not C_TabelasPreco.active then
    C_TabelasPreco.open;
  if not C_ProdutosPreco.active then
    C_ProdutosPreco.open;
end;

function TDMBBItens.AdicionaTabelasPreco;
begin
  result := false;
  if not C_ProdutosPreco.Active then
    exit;
//  C_ProdutosPreco.first;
  bEditandoPrecos := true;
  if (C_ProdutosPrecoItem.IsNull) then with C_TabelasPreco do begin
    first;
    while not eof do begin
      if not C_ProdutosPreco.Locate('tabelapreco',FieldByName('TabelaPreco').AsInteger,[]) then begin
        C_ProdutosPreco.Append;
        C_ProdutosPrecoTabelaPreco.value := FieldByName('TabelaPreco').AsInteger;
        C_ProdutosPrecoBaseada.value := FieldByName('Baseada').AsString;
        C_ProdutosPrecoPercentual.value  := FieldByName('Percentual').AsFloat;
        C_ProdutosPrecoPrecoManual.value := 'N';
{        if FieldByName('TabelaPreco').AsInteger = 0 then
          C_ProdutosPrecoPreco.value := xPreco
        else begin
          if (C_ProdutosPrecoBaseada.value = 'S') and (C_ProdutosPrecoPercentual.value > 0) then
            C_ProdutosPrecoPreco.value := xPreco + ((xPreco * C_ProdutosPrecoPercentual.value)/100)
          else
            C_ProdutosPrecoPreco.value := xPreco - ((xPreco * abs(C_ProdutosPrecoPercentual.value))/100);
        end;}
        C_ProdutosPreco.post;
      end;
      next;
    end;
    result := true;
  end;
  bEditandoPrecos := false;
(*  if (C_ProdutosPrecoItem.IsNull) then with C_TabelasPreco do begin
     first;
//    close;
//    SQL.text := 'select * from tabelaspreco where desativado = ''N''';
//    open;
    while not eof do begin
      C_ProdutosPreco.Append;
      C_ProdutosPrecoTabelaPreco.value := FieldByName('TabelaPreco').AsInteger;
      C_ProdutosPrecoBaseada.value     := FieldByName('Baseada').AsString;
      C_ProdutosPrecoPercentual.value  := FieldByName('Percentual').AsFloat;
      C_ProdutosPrecoPrecoManual.value := 'N';
      C_ProdutosPrecoPreco.value := 0;
      C_ProdutosPreco.Post;
      next;
    end;
//    C_ProdutosPreco.first;
  end; *)
end;

procedure TDMBBItens.AtualizaPrecos(xPreco:currency);
begin
  try
    bEditandoPrecos := true;
    C_ProdutosPreco.first;
    while not C_ProdutosPreco.eof do begin
      if C_ProdutosPrecoTabelaPreco.value = 0 then begin
        C_ProdutosPreco.edit;
        C_ProdutosPrecoPreco.value := xPreco;
      end
      else if (C_ProdutosPrecoTabelaPreco.value > 0) and (C_ProdutosPrecoPrecoManual.value = 'N') and (C_ProdutosPrecoBaseada.value = 'S') then begin
        C_ProdutosPreco.edit;
        if (C_ProdutosPrecoPercentual.value > 0) then
          C_ProdutosPrecoPreco.value := xPreco + ((xPreco * C_ProdutosPrecoPercentual.value)/100)
        else
          C_ProdutosPrecoPreco.value := xPreco - ((xPreco * abs(C_ProdutosPrecoPercentual.value))/100);
      end;
      C_ProdutosPreco.next;
    end;
  finally
    bEditandoPrecos := false;
//    C_ProdutosPreco.first;
  end;
end;

procedure TDMBBItens.C_ProdutosPrecoNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_ProdutosPrecoProdutoPreco.value := nIDGerador;
end;

procedure TDMBBItens.AtualizaInventario(nAjuste:integer);
begin
  C_Inventario.edit;
  if nAjuste > 0 then
    C_InventarioAjusteItem.value := nAjuste;
  C_InventarioIDNovo.value := C_InventarioItem.value;
  C_InventarioQtdeOld.value := C_InventarioQuantidade.value;
//  C_Inventario.post;
end;

procedure TDMBBItens.C_ServicosPRECOChange(Sender: TField);
begin
  if bEditandoPrecos then
    exit;
  AdicionaTabelasPreco(C_ServicosPRECO.value);
  AtualizaPrecos(C_ServicosPRECO.value);

  {  AdicionaTabelasPreco(0);
  if C_ProdutosPreco.Locate('tabelapreco',0,[]) then
    C_ProdutosPreco.edit;
  C_ProdutosPrecoPreco.value := C_ServicosPRECO.value;
  C_ProdutosPreco.post;
  AtualizaPrecos(C_ProdutosPrecoPreco.value);

  C_Servicos.edit;}
end;

procedure TDMBBItens.C_EncargosPRECOChange(Sender: TField);
begin
  if bEditandoPrecos then
    exit;
  AdicionaTabelasPreco(C_EncargosPRECO.value);
  AtualizaPrecos(C_EncargosPRECO.value);
{  AdicionaTabelasPreco(0);
  if C_ProdutosPreco.Locate('tabelapreco',0,[]) then
    C_ProdutosPreco.edit;
  C_ProdutosPrecoPreco.value := C_EncargosPRECO.value;
  C_ProdutosPreco.post;
  AtualizaPrecos(C_ProdutosPrecoPreco.value);

  C_Encargos.edit;}
end;

procedure TDMBBItens.C_DescontosPRECOChange(Sender: TField);
begin
  if bEditandoPrecos then
    exit;
  AdicionaTabelasPreco(C_DescontosPRECO.value);
  AtualizaPrecos(C_DescontosPRECO.value);
{  AdicionaTabelasPreco(0);
  if C_ProdutosPreco.Locate('tabelapreco',0,[]) then
    C_ProdutosPreco.edit;
  C_ProdutosPrecoPreco.value := C_DescontosPRECO.value;
  C_ProdutosPreco.post;
  AtualizaPrecos(C_ProdutosPrecoPreco.value);

  C_Descontos.edit;}
end;

procedure TDMBBItens.C_ServicosAfterOpen(DataSet: TDataSet);
begin
  if not C_TabelasPreco.active then
    C_TabelasPreco.open;
  if not C_ProdutosPreco.active then
    C_ProdutosPreco.open;
end;

procedure TDMBBItens.C_EncargosAfterOpen(DataSet: TDataSet);
begin
  if not C_TabelasPreco.active then
    C_TabelasPreco.open;
  if not C_ProdutosPreco.active then
    C_ProdutosPreco.open;
end;

procedure TDMBBItens.C_DescontosAfterOpen(DataSet: TDataSet);
begin
  if not C_TabelasPreco.active then
    C_TabelasPreco.open;
  if not C_ProdutosPreco.active then
    C_ProdutosPreco.open;
end;

procedure TDMBBItens.C_FabricantesBeforePost(DataSet: TDataSet);
begin
  if (trim(C_FabricantesCodigo.value) = '') or (trim(C_FabricantesDescricao.value) = '') then begin
    DlgMsg.ShowMsg(4000);
    raise exception.create('@@');
//    abort;
  end;
end;

procedure TDMBBItens.C_FabricantesNewRecord(DataSet: TDataSet);
begin
  nIDGerador := nIDGerador - 1;
  C_FabricantesFabricante.value := nIDGerador;
end;

function TDMBBItens.LocalizaGrupo;
begin
  result := 0;
  Q_Aux.close;
  Q_Aux.SQL.text := 'select grupo from grupos where codigo = :codigo';
  Q_Aux.params[0].asstring := sCodigo;
  Q_Aux.open;
  result := Q_Aux.FieldByName('grupo').asinteger;
end;

function TDMBBItens.LocalizaFabricante;
begin
  result := 0;
  Q_Aux.close;
  Q_Aux.SQL.text := 'select fabricante from fabricantes where codigo = :codigo';
  Q_Aux.params[0].asstring := sCodigo;
  Q_Aux.open;
  result := Q_Aux.FieldByName('fabricante').asinteger;
end;

procedure TDMBBItens.C_InventarioPRECOChange(Sender: TField);
begin
  if bEditandoPrecos then
    exit;
//  bImportando := true;

//  C_ProdutosPreco.first;
  AdicionaTabelasPreco(C_InventarioPRECO.value);
  AtualizaPrecos(C_InventarioPRECO.value);
{  if not AdicionaTabelasPreco(C_InventarioPRECO.value) then begin
//    if C_ProdutosPreco.Locate('tabelapreco',0,[]) then
    C_ProdutosPreco.edit;
    C_ProdutosPrecoPreco.value := C_InventarioPRECO.value;
    C_ProdutosPreco.post;
  end
  else
    AtualizaPrecos(C_ProdutosPrecoPreco.value);}
//  bImportando := false;
end;

procedure TDMBBItens.C_InventarioAfterOpen(DataSet: TDataSet);
begin
  if not C_TabelasPreco.active then
    C_TabelasPreco.open;
  if not C_ProdutosPreco.active then
    C_ProdutosPreco.open;
end;

procedure TDMBBItens.C_InventarioAfterEdit(DataSet: TDataSet);
begin
  if C_InventarioAjusteItem.IsNull then
    C_InventarioAjusteItem.value := -1;
end;

procedure TDMBBItens.C_GruposBeforeOpen(DataSet: TDataSet);
begin
  DMBBItens.C_Grupos.FetchParams;
  DMBBItens.C_Grupos.params[0].asinteger := nTipoItem;
end;

end.

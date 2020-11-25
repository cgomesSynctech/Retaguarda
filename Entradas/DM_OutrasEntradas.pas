unit DM_OutrasEntradas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DM_Entradas, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, IBEvents;

type
  TDMOutrasEntradas = class(TDMEntradas)
    Q_DI: TIBQuery;
    P_DI: TDataSetProvider;
    C_DI: TClientDataSet;
    C_DIDs: TDataSource;
    C_DIDETALHEIMPORTACAO: TIntegerField;
    C_DICODIGO: TStringField;
    C_DILOCALDESEMBARACO: TStringField;
    C_DIUF: TStringField;
    C_DIDATA: TDateField;
    C_DICODIGOEXPORT: TStringField;
    C_ItensV_BCII: TFloatField;
    C_ItensV_DESPADUII: TFloatField;
    C_ItensV_II: TFloatField;
    C_ItensV_IOFII: TFloatField;
    C_TabelaCHAVENFE: TStringField;
    C_TabelaDETALHEIMPORTACAO: TIntegerField;
    C_TabelalkpDI: TStringField;
    Q_Transp: TIBQuery;
    C_Transp: TClientDataSet;
    C_TranspFAVORECIDO: TIntegerField;
    C_TranspNOME: TStringField;
    C_TranspCODIGO: TStringField;
    P_Transp: TDataSetProvider;
    C_TabelaTRANSPORTADORA: TIntegerField;
    C_TabelalkTransportadora: TStringField;
    C_TabelaPLACAVEIC: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure DMComponentGravar5_Terminar(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMOutrasEntradas: TDMOutrasEntradas;

implementation
  uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TDMOutrasEntradas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMOutrasEntradas := self;
end;

procedure TDMOutrasEntradas.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
//  Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao = 101 and ');
  Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao in (105,150) and ');
  Where := replace(Uppercase(Where), 'TIPOMOVIMENTO', 'T.TIPOMOVIMENTO');
end;

procedure TDMOutrasEntradas.DMComponentGravar5_Terminar(Sender: TObject);
begin
  inherited;
  if C_Mesclagens.RecordCount > 0 then begin
    if DlgMsg.ShowMsg(6042,['Deseja visualizar o relatório de consistência de pedidos?']) = 100 then begin
        DMProjeto.SetParametrosForm([C_TabelaIDMESTRE.AsInteger]);
        DMProjeto.CriarForm('RptConsistencia', Self, True);
    end;
  end;
end;

end.

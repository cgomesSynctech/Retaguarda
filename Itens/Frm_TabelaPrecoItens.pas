unit Frm_TabelaPrecoItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZReport, ZRCtrls, Provider, DBClient, IBCustomDataSet,
  IBQuery;

type
  TFrmTabelaPrecoItens = class(TForm)
    ZRepItensGrupo: TZReport;
    ZRepItensGrupoDetail: TZRBand;
    ZRepItensGrupoFooter: TZRBand;
    Q_ItensGrupo: TIBQuery;
    C_ItensGrupo: TClientDataSet;
    C_Grupo: TClientDataSet;
    P_Grupo: TDataSetProvider;
    Q_Grupo: TIBQuery;
    C_GrupoGRUPO: TIntegerField;
    C_GrupoDESCRICAOGRUPO: TStringField;
    C_GrupoCODIGO: TStringField;
    zrvCODIGO: TZRField;
    zrvDESCRICAOGRUPO: TZRField;
    ZRLabel1: TZRLabel;
    ZRLabel2: TZRLabel;
    Q_GrupoDS: TDataSource;
    C_GrupoQ_ItensGrupo: TDataSetField;
    ZRLabel8: TZRLabel;
    ZRepItensGrupoSubDetail: TZRSubDetail;
    C_ItensGrupoITEMCODIGO: TStringField;
    C_ItensGrupoITEMDESCRICAO: TStringField;
    C_ItensGrupoREFERENCIA: TStringField;
    C_ItensGrupoUNIDADE: TStringField;
    C_ItensGrupoESTOQUE: TBCDField;
    C_ItensGrupoDESCRICAOGRUPO: TStringField;
    C_ItensGrupoPRECO: TBCDField;
    C_ItensGrupoPRECOPROMOCAO: TBCDField;
    zrvITEMCODIGO: TZRField;
    zrvITEMDESCRICAO: TZRField;
    ZRLabel3: TZRLabel;
    ZRLabel4: TZRLabel;
    ZRLabel5: TZRLabel;
    ZRLabel10: TZRLabel;
    ZRLabel11: TZRLabel;
    ZRLabel12: TZRLabel;
    ZRLabel13: TZRLabel;
    ZRepItensGrupoHeader: TZRBand;
    zrNomeEmpresa2: TZRLabel;
    zrCidade2: TZRLabel;
    zrFone2: TZRLabel;
    zrLinha5: TZRLabel;
    zrLinha7: TZRLabel;
    zrLinha8: TZRLabel;
    zrEndereco2: TZRLabel;
    zrLinha6: TZRLabel;
    ZRLabel9: TZRLabel;
    ZRLabel6: TZRLabel;
    zrvESTOQUE: TZRField;
    zrvPRECO: TZRField;
    ZRLabel7: TZRLabel;
    ZRLabel14: TZRLabel;
    C_ItensGrupoFABRICANTE: TStringField;
    zrvFABRICANTE: TZRField;
    ZRepItensFabricante: TZReport;
    C_Fabricantes: TClientDataSet;
    P_Fabricantes: TDataSetProvider;
    Q_Fabricantes: TIBQuery;
    C_FabricantesFABRICANTE: TIntegerField;
    C_FabricantesCODIGO: TStringField;
    C_FabricantesDESCRICAO: TStringField;
    Q_FabricantesDS: TDataSource;
    Q_ItensFabricante: TIBQuery;
    C_ItensFabricante: TClientDataSet;
    C_FabricantesQ_ItensFabricante: TDataSetField;
    C_ItensFabricanteITEMCODIGO: TStringField;
    C_ItensFabricanteITEMDESCRICAO: TStringField;
    C_ItensFabricanteREFERENCIA: TStringField;
    C_ItensFabricanteFABRICANTE: TStringField;
    C_ItensFabricanteUNIDADE: TStringField;
    C_ItensFabricanteESTOQUE: TBCDField;
    C_ItensFabricanteDESCRICAOGRUPO: TStringField;
    C_ItensFabricantePRECO: TBCDField;
    C_ItensFabricantePRECOMANUAL: TStringField;
    C_ItensFabricantePRECOPROMOCAO: TBCDField;
    ZRepItensFabricanteDetail: TZRBand;
    ZRepItensFabricanteHeader: TZRBand;
    zrNomeEmpresa: TZRLabel;
    zrLinha1: TZRLabel;
    zrEndereco: TZRLabel;
    zrLinha2: TZRLabel;
    zrCidade: TZRLabel;
    zrLinha3: TZRLabel;
    zrFone: TZRLabel;
    zrLinha4: TZRLabel;
    ZRLabel23: TZRLabel;
    ZRepItensFabricanteSubDetail: TZRSubDetail;
    ZRLabel30: TZRLabel;
    ZRLabel31: TZRLabel;
    ZRLabel32: TZRLabel;
    zrvCODIGO0: TZRField;
    zrvDESCRICAO: TZRField;
    zrvITEMCODIGO0: TZRField;
    zrvITEMDESCRICAO0: TZRField;
    zrvUNIDADE: TZRField;
    zrvESTOQUE0: TZRField;
    zrvDESCRICAOGRUPO0: TZRField;
    zrvPRECO0: TZRField;
    ZRLabel33: TZRLabel;
    ZRLabel34: TZRLabel;
    zrvUNIDADE0: TZRField;
    ZRLabel25: TZRLabel;
    ZRLabel26: TZRLabel;
    ZRLabel27: TZRLabel;
    ZRLabel28: TZRLabel;
    ZRLabel29: TZRLabel;
    ZRLabel35: TZRLabel;
    ZRLabel15: TZRLabel;
    ZRLabel17: TZRLabel;
    ZRLabel19: TZRLabel;
    ZRLabel21: TZRLabel;
    ZRLabel24: TZRLabel;
    ZRLabel36: TZRLabel;
  private
    { Private declarations }
  public
    procedure GeraCabecalho(zrNome, zrEnd, zrCid, zrFone, zrLin1, zrLin2, zrLin3, zrLin4 : TZRLabel);
    procedure ImprimirItemGrupo;
    procedure ImprimirItemFabricante;
  end;

var
  FrmTabelaPrecoItens: TFrmTabelaPrecoItens;

implementation

uses DM_Projeto;

{$R *.dfm}


procedure TFrmTabelaPrecoItens.ImprimirItemGrupo;
begin
  GeraCabecalho(zrNomeEmpresa2, zrEndereco2, zrCidade2, zrFone2, zrLinha5, zrLinha6, zrLinha7, zrLinha8 );
  ZRepItensGrupo.Print;
end;

procedure TFrmTabelaPrecoItens.ImprimirItemFabricante;
begin
  GeraCabecalho(zrNomeEmpresa, zrEndereco, zrCidade, zrFone, zrLinha1, zrLinha2, zrLinha3, zrLinha4 );
  ZRepItensFabricante.Print;
end;

procedure TFrmTabelaPrecoItens.GeraCabecalho(zrNome, zrEnd, zrCid, zrFone, zrLin1, zrLin2, zrLin3, zrLin4 : TZRLabel);
var sLinha, sLadoEsquerdo, sLadoDireito: string;
    i: integer;
begin
    with DMProjeto.q_sql do
    begin
        close;
        sql.text := 'select esquerdo, direito from cabecalho';
        open;
        sLadoEsquerdo := fields[0].asString;
        sLadoDireito := fields[1].asString;
    end;

    FormRichEdit := TFormRichEdit.Create(self);
    DMProjeto.Interpreta(sLadoEsquerdo);
    DMProjeto.Interpreta(sLadoDireito);
    sLadoEsquerdo := DMProjeto.FormataCabecalho(FormRichEdit.RichEdit, sLadoEsquerdo);
    sLadoDireito := DMProjeto.FormataCabecalho(FormRichEdit.RichEdit, sLadoDireito);
    FormRichEdit.Free;

    {Lado Esquerdo}
    zrNome.Caption := '';
    zrEnd.Caption := '';
    zrCid.Caption := '';
    zrFone.Caption := '';
    i := 1;
    while i <= ContaStrings(sLadoEsquerdo, ';') do
    begin
        sLinha := SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 2);
        while (sLinha = SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 2)) and
            (i <= ContaStrings(sLadoEsquerdo, ';')) do
        begin
            if sLinha = '0' then
                zrNome.Caption := zrNome.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
            else if sLinha = '1' then
                zrEnd.Caption := zrEnd.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
            else if sLinha = '2' then
                zrCid.Caption := zrCid.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
            else if sLinha = '3' then
                zrFone.Caption := zrFone.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
            else
                i := 1000;
            inc(i);
        end;
    end;
    zrNome.BeforePrint := ZRLabelBeforePrint;
    zrEnd.BeforePrint := ZRLabelBeforePrint;
    zrCid.BeforePrint := ZRLabelBeforePrint;
    zrFone.BeforePrint := ZRLabelBeforePrint;

    {Lado Direito}
    if zrLin1 <> nil then
    begin
        zrLin1.Caption := '';
        zrLin2.Caption := '';
        zrLin3.Caption := '';
        zrLin4.Caption := '';
        i := 1;
        while i <= ContaStrings(sLadoDireito, ';') do
        begin
            sLinha := SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 2);
            while (sLinha = SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 2)) and
                (i <= ContaStrings(sLadoDireito, ';')) do
            begin
                if sLinha = '0' then
                    zrLin1.Caption := zrLin1.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                else if sLinha = '1' then
                    zrLin2.Caption := zrLin2.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                else if sLinha = '2' then
                    zrLin3.Caption := zrLin3.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                else if sLinha = '3' then
                    zrLin4.Caption := zrLin4.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                else
                    i := 1000;
                inc(i);
            end;
        end;
        zrLin1.BeforePrint := ZRLabelBeforePrint;
        zrLin2.BeforePrint := ZRLabelBeforePrint;
        zrLin3.BeforePrint := ZRLabelBeforePrint;
        zrLin4.BeforePrint := ZRLabelBeforePrint;
    end;
end;

end.

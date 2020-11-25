unit Dlg_TabelaPreco;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, dxCntner, dxEditor, dxExEdtr, dxDBEdtr,
    dxDBELib, TS_LookupComboBox, StdCtrls, TS_RadioButton, FormsComponent,
    Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
    dxfLabel, TS_Label, ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, DB, DBClient, Provider,
    IBCustomDataSet, IBQuery, ZReport, ZRCtrls, dxEdLib, TS_PopupEdit,
    TS_PopupFiltrarItens, TS_CheckBox;

type
    TDlgTabelaPreco = class(TFrmModeloCadastros)
        TS_Label1: TTS_Label;
        TS_Label2: TTS_Label;
        rdGrupo: TTS_RadioButton;
        rdFabricante: TTS_RadioButton;
        cbTabelaPreco: TTS_LookupComboBox;
        Q_Fabricantes: TIBQuery;
        P_Fabricantes: TDataSetProvider;
        Q_FabricantesDS: TDataSource;
        Q_ItensFabricante: TIBQuery;
        C_ItensFabricante: TClientDataSet;
        C_Fabricantes: TClientDataSet;
        C_FabricantesFABRICANTE: TIntegerField;
        C_FabricantesCODIGO: TStringField;
        C_FabricantesDESCRICAO: TStringField;
        C_FabricantesQ_ItensFabricante: TDataSetField;
        Q_Grupo: TIBQuery;
        P_Grupo: TDataSetProvider;
        C_Grupo: TClientDataSet;
        C_GrupoGRUPO: TIntegerField;
        C_GrupoCODIGO: TStringField;
        C_GrupoDESCRICAOGRUPO: TStringField;
        Q_GrupoDS: TDataSource;
        Q_ItensGrupo: TIBQuery;
        C_ItensGrupo: TClientDataSet;
        ZRepItensGrupo: TZReport;
        zrvCODIGO: TZRField;
        zrvDESCRICAOGRUPO: TZRField;
        ZRepItensGrupoDetail: TZRBand;
        ZRLabel1: TZRLabel;
        ZRLabel2: TZRLabel;
        ZRLabel8: TZRLabel;
        ZRLabel5: TZRLabel;
        ZRLabel10: TZRLabel;
        ZRLabel11: TZRLabel;
        ZRLabel12: TZRLabel;
        ZRLabel13: TZRLabel;
        ZRLabel33: TZRLabel;
        ZRepItensGrupoSubDetail: TZRSubDetail;
        zrvITEMCODIGO: TZRField;
        zrvITEMDESCRICAO: TZRField;
        zrvESTOQUE: TZRField;
        zrvPRECO: TZRField;
        zrvFABRICANTE: TZRField;
        zrvUNIDADE0: TZRField;
        ZRLabel3: TZRLabel;
        ZRLabel4: TZRLabel;
        ZRLabel6: TZRLabel;
        ZRLabel7: TZRLabel;
        ZRLabel14: TZRLabel;
        ZRLabel34: TZRLabel;
        Q_TabelaPreco: TIBQuery;
        P_TabelaPreco: TDataSetProvider;
        C_TabelaPreco: TClientDataSet;
        C_TabelaPrecoTABELAPRECO: TIntegerField;
        C_TabelaPrecoDESCRICAO: TStringField;
        C_TabelaPrecoDS: TDataSource;
        C_GrupoQ_ItensGrupo: TDataSetField;
        ZRLabel16: TZRLabel;
        ZRLabel18: TZRLabel;
        ZRLabel20: TZRLabel;
        ZRLabel22: TZRLabel;
        zrvFATOR: TZRField;
        ZRepItensGrupoPageHeader: TZRBand;
        zrNomeEmpresa2: TZRLabel;
        zrEndereco2: TZRLabel;
        zrCidade2: TZRLabel;
        zrFone2: TZRLabel;
        ZRLabel9: TZRLabel;
        zrLinha7: TZRLabel;
        zrLinha6: TZRLabel;
        zrLinha5: TZRLabel;
        ZRepItensGrupoPageFooter: TZRBand;
        ZRLabel37: TZRLabel;
        ZRSystemLabel1: TZRSystemLabel;
        ZRLinha8: TZRLabel;
        ZRepItensFabricante: TZReport;
        ZRField1: TZRField;
        ZRField2: TZRField;
        ZRBand1: TZRBand;
        zrLinha4: TZRLabel;
        zrNomeEmpresa: TZRLabel;
        zrEndereco: TZRLabel;
        zrCidade: TZRLabel;
        zrFone: TZRLabel;
        ZRLabel43: TZRLabel;
        zrLinha3: TZRLabel;
        zrLinha2: TZRLabel;
        zrLinha1: TZRLabel;
        ZRLabel47: TZRLabel;
        ZRSystemLabel2: TZRSystemLabel;
        ZRBand2: TZRBand;
        ZRLabel48: TZRLabel;
        ZRLabel49: TZRLabel;
        ZRLabel50: TZRLabel;
        ZRLabel51: TZRLabel;
        ZRLabel52: TZRLabel;
        ZRLabel53: TZRLabel;
        ZRLabel54: TZRLabel;
        ZRLabel55: TZRLabel;
        ZRLabel56: TZRLabel;
        ZRLabel57: TZRLabel;
        ZRLabel58: TZRLabel;
        ZRLabel59: TZRLabel;
        ZRSubDetail1: TZRSubDetail;
        ZRField3: TZRField;
        ZRField4: TZRField;
        ZRField5: TZRField;
        ZRField6: TZRField;
        ZRField7: TZRField;
        ZRField8: TZRField;
        ZRField9: TZRField;
        ZRLabel60: TZRLabel;
        ZRLabel61: TZRLabel;
        ZRLabel62: TZRLabel;
        ZRLabel63: TZRLabel;
        ZRLabel64: TZRLabel;
        ZRLabel65: TZRLabel;
        ZRLabel66: TZRLabel;
        ZRBand3: TZRBand;
        rdDescricao: TTS_RadioButton;
        Q_Items: TIBQuery;
        P_Items: TDataSetProvider;
        C_Items: TClientDataSet;
        C_ItemsITEMCODIGO: TStringField;
        C_ItemsITEMDESCRICAO: TStringField;
        C_ItemsREFERENCIA: TStringField;
        C_ItemsFABRICANTE: TStringField;
        C_ItemsESTOQUE: TBCDField;
        C_ItemsDESCRICAOGRUPO: TStringField;
        C_ItemsPERCENTUAL: TBCDField;
        C_ItemsDESCONTOMAXIMO: TBCDField;
        C_ItemsFATORUNDVENDA: TFloatField;
        C_ItemsPRECO: TBCDField;
        C_ItemsPRECOPROMOCAO: TBCDField;
        C_ItemsPERCUND: TBCDField;
        C_ItemsPRECOMANUND: TBCDField;
        C_ItemsDESCONTOMAXIMOGRUPO: TBCDField;
        C_ItemsUNDVENDA: TStringField;
        C_ItemsPRECONORMAL: TBCDField;
        C_ItemsFATORITEMUND: TFloatField;
        C_ItemsPERCENTUALMINIMO: TBCDField;
        C_ItemsicPreco: TBCDField;
        ZRepItemDescricao: TZReport;
        ZRBand4: TZRBand;
        ZRLinha12: TZRLabel;
        zrNomeEmpresa3: TZRLabel;
        zrEndereco3: TZRLabel;
        zrCidade3: TZRLabel;
        zrFone3: TZRLabel;
        ZRLabel24: TZRLabel;
        zrLinha11: TZRLabel;
        zrLinha10: TZRLabel;
        zrLinha9: TZRLabel;
        ZRLabel28: TZRLabel;
        ZRSystemLabel3: TZRSystemLabel;
        ZRBand5: TZRBand;
        ZRLabel45: TZRLabel;
        ZRLabel46: TZRLabel;
        ZRLabelItensGrupo: TZRLabel;
        ZRLabel70: TZRLabel;
        ZRLabel71: TZRLabel;
        ZRLabel68: TZRLabel;
        ZRLabel67: TZRLabel;
        ZRLabel41: TZRLabel;
        zrvITEMCODIGO0: TZRField;
        zrvITEMDESCRICAO0: TZRField;
        zrvDESCRICAOGRUPO0: TZRField;
        zrvFATORITEMUND: TZRField;
        zrvicPreco: TZRField;
        zrvESTOQUE0: TZRField;
        zrvicPreco0: TZRField;
        C_ItemsUNIDADE: TStringField;
        zrvUNIDADE: TZRField;
        C_ItemsicEstoque: TBCDField;
        zrvicEstoque: TZRField;
        C_ItensGrupoITEMCODIGO: TStringField;
        C_ItensGrupoITEMDESCRICAO: TStringField;
        C_ItensGrupoREFERENCIA: TStringField;
        C_ItensGrupoFABRICANTE: TStringField;
        C_ItensGrupoESTOQUE: TBCDField;
        C_ItensGrupoDESCRICAOGRUPO: TStringField;
        C_ItensGrupoPERCENTUAL: TBCDField;
        C_ItensGrupoDESCONTOMAXIMO: TBCDField;
        C_ItensGrupoFATORUNDVENDA: TFloatField;
        C_ItensGrupoPRECO: TBCDField;
        C_ItensGrupoPRECOPROMOCAO: TBCDField;
        C_ItensGrupoPERCUND: TBCDField;
        C_ItensGrupoPRECOMANUND: TBCDField;
        C_ItensGrupoUNIDADE: TStringField;
        C_ItensGrupoDESCONTOMAXIMOGRUPO: TBCDField;
        C_ItensGrupoUNDVENDA: TStringField;
        C_ItensGrupoPRECONORMAL: TBCDField;
        C_ItensGrupoFATORITEMUND: TFloatField;
        C_ItensGrupoPERCENTUALMINIMO: TBCDField;
        C_ItensFabricanteITEMCODIGO: TStringField;
        C_ItensFabricanteITEMDESCRICAO: TStringField;
        C_ItensFabricanteREFERENCIA: TStringField;
        C_ItensFabricanteFABRICANTE: TStringField;
        C_ItensFabricanteESTOQUE: TBCDField;
        C_ItensFabricanteDESCRICAOGRUPO: TStringField;
        C_ItensFabricantePERCENTUAL: TBCDField;
        C_ItensFabricanteDESCONTOMAXIMO: TBCDField;
        C_ItensFabricanteFATORUNDVENDA: TFloatField;
        C_ItensFabricantePRECO: TBCDField;
        C_ItensFabricantePRECOPROMOCAO: TBCDField;
        C_ItensFabricantePERCUND: TBCDField;
        C_ItensFabricantePRECOMANUND: TBCDField;
        C_ItensFabricanteUNIDADE: TStringField;
        C_ItensFabricanteDESCONTOMAXIMOGRUPO: TBCDField;
        C_ItensFabricanteUNDVENDA: TStringField;
        C_ItensFabricantePRECONORMAL: TBCDField;
        C_ItensFabricanteFATORITEMUND: TFloatField;
        C_ItensFabricantePERCENTUALMINIMO: TBCDField;
        C_ItensFabricanteicPreco: TBCDField;
        C_ItensGrupoicPreco: TBCDField;
        C_ItensFabricanteicEstoque: TBCDField;
        C_ItensGrupoicEstoque: TBCDField;
        PopupFiltroItens: TTS_PopupFiltrarItens;
        C_ItensFabricanteicPercDescMax: TCurrencyField;
        C_ItensGrupoicPercDescMax: TCurrencyField;
        C_ItemsicPercDescMax: TCurrencyField;
        ZRLabel15: TZRLabel;
        ZRLabel30: TZRLabel;
        zrvicPercDescMax: TZRField;
        ZRLabelItensEmbalagem: TZRLabel;
        zrvicPercDescMax0: TZRField;
        ZRLabel35: TZRLabel;
        zrvicPercDescMax1: TZRField;
        ZRLabel36: TZRLabel;
        C_IndexadoresDS: TDataSource;
        Q_Indexadores: TIBQuery;
        P_Indexadores: TDataSetProvider;
        C_Indexadores: TClientDataSet;
        C_IndexadoresINDEXADOR: TIntegerField;
        C_IndexadoresDESCRICAO: TStringField;
        TS_Label3: TTS_Label;
        cmbIndex: TTS_LookupComboBox;
        Q_SQL: TIBQuery;
        C_ItemsINDEXADOR: TIntegerField;
        C_ItensFabricanteINDEXADOR: TIntegerField;
        C_ItensGrupoINDEXADOR: TIntegerField;
        C_ItemsQTDEMBALAGEM: TFloatField;
        C_ItemsDESCGRPCOMISSAO: TStringField;
        ZRLabelItensGrupoComissao: TZRLabel;
        zrvDESCGRPCOMISSAO: TZRField;
        zrvQTDEMBALAGEM: TZRField;
        zrvREFERENCIA: TZRField;
        ZRepItemDescricaoDetailHeader: TZRBand;
        ZRLabel29: TZRLabel;
        ZRLabelEmbalagem: TZRLabel;
        ZRLabel17: TZRLabel;
        ZRLabel19: TZRLabel;
        ZRLabelGrupo: TZRLabel;
        ZRLabel23: TZRLabel;
        ZRLabel25: TZRLabel;
        ZRLabel26: TZRLabel;
        ZRLabel27: TZRLabel;
        ZRLabelGrupoComissao: TZRLabel;
        ZRepItemDescricaoPageFooter: TZRBand;
        TS_Label4: TTS_Label;
        cbComEstoque: TTS_CheckBox;
        chkImprimirPercDesconto: TTS_CheckBox;
        procedure btGravarClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure C_ItemsCalcFields(DataSet: TDataSet);
    private
        { Private declarations }
        nIndex: double;
    public
        procedure ImprimirItemGrupo;
        procedure ImprimirItemFabricante;
        procedure ImprimirItemDescricao;
        procedure GeraCabecalho(zrNome, zrEnd, zrCid, zrFone, zrLin1, zrLin2, zrLin3, zrLin4: TZRLabel);
        procedure zrLabelBeforePrint(Sender: TObject;
            var DoPrint: Boolean);
    end;

var
    DlgTabelaPreco: TDlgTabelaPreco;

implementation

uses DM_Projeto, funcoes, Form_RichEdit, Math;

{$R *.dfm}

procedure TDlgTabelaPreco.ImprimirItemDescricao;
begin
    C_Items.Close;
    Q_Items.SQL.Text := ' select i.codigo as itemcodigo, i.descricao as itemdescricao, i.referencia, ' +
        ' f.descricao as fabricante, i.estoque, g.descricaogrupo,  i.percentual, ' +
        ' i.descontomaximo, i.fatorundvenda, p.preco, p.precopromocao, ' +
        ' iu.percentual as percund, iu.precomanual as precomanund, iu.unidade, ' +
        ' g.descontomaximo as descontomaximogrupo, i.unidade as undvenda, ' +
        ' pp.preco as preconormal, iu.fator as FatorItemUnd, iu.PercentualMinimo, i.indexador, ' +
        ' iu.QTDEMBALAGEM, gc.DESCRICAO as DescGrpComissao ' +
        ' from itens i ' +
        ' left join grupos g on i.grupo = g.grupo ' +
        ' left join fabricantes f on i.fabricante = f.fabricante ' +
        ' inner join itensunidades iu on i.item = iu.item ' +
        ' left join produtospreco p on p.Item = i.Item and p.Unidade = iu.Unidade and p.tabelapreco = :tabelapreco ' +
        ' left join produtospreco pp on pp.item = i.item and pp.unidade = i.unidade and pp.tabelapreco = :tabelapreco ' +
        ' left join GRUPOSCOMISSOES gc on gc.GRUPOCOMISSAO = i.GRUPOCOMISSAO ' +
        iif(PopupFiltroItens.getSQL <> '', 'where ' + PopupFiltroItens.getSQL, '') +
        ' order by  i.descricao ';

    if (cbTabelaPreco.LookupKeyValue <> null) then
        begin
            Q_Items.Params[0].AsInteger := cbTabelaPreco.LookupKeyValue;
            Q_Items.Params[1].AsInteger := cbTabelaPreco.LookupKeyValue;
        end
    else
        begin
            Q_Items.Params[0].AsInteger := 0;
            Q_Items.Params[1].AsInteger := 0;
        end;
    C_Items.Open;

    if (DMProjeto.Parametro('PesquisaMultiUnidade') = 'S') then
        begin
            ZRLabelEmbalagem.Caption := 'Emb.X';
            ZRLabelItensEmbalagem.Variable := zrvQTDEMBALAGEM;
            ZRLabelGrupo.Caption := 'Referencia';
            ZRLabelItensGrupo.Variable := zrvREFERENCIA;
            ZRLabelGrupoComissao.Visible := True;
            ZRLabelItensGrupoComissao.Visible := True;
        end;

    GeraCabecalho(zrNomeEmpresa3, zrEndereco3, zrCidade3, zrFone3, zrLinha9, zrLinha10, zrLinha11, zrLinha12);
    ZRepItemDescricao.Preview;

    C_Items.Close;
end;

procedure TDlgTabelaPreco.ImprimirItemGrupo;
begin
    C_Grupo.Close;
    Q_Grupo.SQL.Text := ' select distinct g.grupo, g.codigo, g.descricaogrupo ' +
        ' from itens i ' +
        ' left join grupos g on g.grupo = i.grupo ' +
        iif(PopupFiltroItens.getSQL <> '', 'where ' + PopupFiltroItens.getSQL, '') +
        ' order by g.descricaogrupo ';

    Q_ItensGrupo.SQL.Text := ' select i.codigo as itemcodigo, i.descricao as itemdescricao, i.referencia, ' +
        ' f.descricao as fabricante, i.estoque, g.descricaogrupo, i.percentual, ' +
        ' i.descontomaximo, i.fatorundvenda, p.preco, p.precopromocao, ' +
        ' iu.percentual as percund, iu.precomanual as precomanund, iu.unidade, ' +
        ' g.descontomaximo as descontomaximogrupo, i.unidade as undvenda, pp.preco as preconormal, ' +
        ' iu.fator as FatorItemUnd, iu.PercentualMinimo, i.indexador ' +
        ' from itens i ' +
        ' left join grupos g on i.grupo = g.grupo ' +
        ' left join fabricantes f on i.fabricante = f.fabricante ' +
        ' inner join itensunidades iu on i.item = iu.item ' +
        ' left join produtospreco p on p.Item = i.Item and p.Unidade = iu.Unidade ' +
        ' left join produtospreco pp on pp.item = i.item and pp.unidade = i.unidade ' +
        ' where i.grupo = :GRUPO and pp.tabelapreco = :TABELAPRECO and p.tabelapreco = :TABELAPRECO ' +
        iif(PopupFiltroItens.getSQL <> '', ' and ' + PopupFiltroItens.getSQL, '') +
        ' order by i.descricao ';

    if (cbTabelaPreco.LookupKeyValue <> null) then
        begin
            Q_ItensGrupo.Params[1].AsInteger := cbTabelaPreco.LookupKeyValue;
            Q_ItensGrupo.Params[2].AsInteger := cbTabelaPreco.LookupKeyValue;
        end
    else
        begin
            Q_ItensGrupo.Params[1].AsInteger := 0;
            Q_ItensGrupo.Params[2].AsInteger := 0;
        end;
    C_Grupo.Open;
    if (not cbComEstoque.Checked) then
        begin
            ZRLabel13.Visible := False;
            ZRLabel6.Visible := False;
        end
    else
        begin
            ZRLabel13.Visible := True;
            ZRLabel6.Visible := True;
        end;
    GeraCabecalho(zrNomeEmpresa2, zrEndereco2, zrCidade2, zrFone2, zrLinha5, zrLinha6, zrLinha7, zrLinha8);
    ZRepItensGrupo.Preview;

    C_Grupo.Close;
end;

procedure TDlgTabelaPreco.ImprimirItemFabricante;
begin
    C_Fabricantes.Close;
    Q_Fabricantes.SQL.Text := ' select distinct f.fabricante, f.codigo, f.descricao ' +
        ' from itens i ' +
        ' Inner join fabricantes f on i.fabricante = f.fabricante ' +
        iif(PopupFiltroItens.getSQL <> '', 'where ' + PopupFiltroItens.getSQL, '') +
        ' order by f.descricao ';
    Q_ItensFabricante.SQL.Text := ' select i.codigo as itemcodigo, i.descricao as itemdescricao, i.referencia, ' +
        ' f.descricao as fabricante, i.estoque, g.descricaogrupo, i.percentual, ' +
        ' i.descontomaximo, i.fatorundvenda, p.preco, p.precopromocao, ' +
        ' iu.percentual as percund, iu.precomanual as precomanund, iu.unidade, ' +
        ' g.descontomaximo as descontomaximogrupo, i.unidade as undvenda, ' +
        ' pp.preco as preconormal, iu.fator as FatorItemUnd, iu.PercentualMinimo, i.indexador ' +
        ' from itens i ' +
        ' left join grupos g on i.grupo = g.grupo ' +
        ' left join fabricantes f on i.fabricante = f.fabricante ' +
        ' inner join itensunidades iu on i.item = iu.item ' +
        ' left join produtospreco p on p.Item = i.Item and p.Unidade = iu.Unidade ' +
        ' left join produtospreco pp on pp.item = i.item and pp.unidade = i.unidade ' +
        ' where i.fabricante = :FABRICANTE and pp.tabelapreco = :TABELAPRECO and p.tabelapreco = :TABELAPRECO ' +
        iif(PopupFiltroItens.getSQL <> '', ' and ' + PopupFiltroItens.getSQL, '') +
        ' order by i.descricao ';

    if (cbTabelaPreco.LookupKeyValue <> null) then
        begin
            Q_ItensFabricante.Params[1].AsInteger := cbTabelaPreco.LookupKeyValue;
            Q_ItensFabricante.Params[2].AsInteger := cbTabelaPreco.LookupKeyValue;
        end
    else
        begin
            Q_ItensFabricante.Params[1].AsInteger := 0;
            Q_ItensFabricante.Params[2].AsInteger := 0;
        end;

    C_Fabricantes.Open;

    GeraCabecalho(zrNomeEmpresa, zrEndereco, zrCidade, zrFone, zrLinha1, zrLinha2, zrLinha3, zrLinha4);
    ZRepItensFabricante.Preview;

    C_Fabricantes.Close;
end;

procedure TDlgTabelaPreco.GeraCabecalho(zrNome, zrEnd, zrCid, zrFone, zrLin1, zrLin2, zrLin3, zrLin4: TZRLabel);
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

procedure TDlgTabelaPreco.btGravarClick(Sender: TObject);
begin
    inherited;
    // Selecionando o valor da cotação escolhida,
    // se não foi escolhida nenhuma o valor é 1 (hum).
    nIndex := 1;

    // Configurando se impressão terá visível a coluna Percentual Desconto (Felipe - 18/03/2016)
    ZRLabel15.Visible := chkImprimirPercDesconto.Checked;
    ZRLabel30.Visible := chkImprimirPercDesconto.Checked;
    ZRLabel36.Visible := chkImprimirPercDesconto.Checked;
    ZRLabel35.Visible := chkImprimirPercDesconto.Checked;
    ZRLabelEmbalagem.Visible := chkImprimirPercDesconto.Checked;
    ZRLabelItensEmbalagem.Visible := chkImprimirPercDesconto.Checked;

    if cmbIndex.LookupKeyValue <> null then
        begin
            with Q_SQL do
                begin
                    Close;
                    SQL.Text := 'select valor from cotacoes ' +
                        'where data = (select max(data) from cotacoes where indexador = :i) ' +
                        'and indexador = :i ';
                    ParamByName('i').AsInteger := cmbIndex.LookupKeyValue;
                    Open;
                    if (RecordCount > 0) and (Fields[0].AsFloat > 0) then
                        nIndex := Fields[0].AsFloat;
                    Close;
                end;
        end;

    if (rdGrupo.Checked = true) then
        imprimirItemGrupo
    else if (rdFabricante.Checked = true) then
        imprimirItemFabricante
    else
        imprimirItemDescricao;
end;

procedure TDlgTabelaPreco.ZRLabelBeforePrint(Sender: TObject;
    var DoPrint: Boolean);
begin
    TZrLabel(Sender).Caption := Replace(TZrLabel(Sender).Caption, '<NumeroPagina>', IntToStr(TZrLabel(Sender).Report.PageCount));
    TZrLabel(Sender).Caption := Replace(TZrLabel(Sender).Caption, '<TotalPaginas>', IntToStr(TZrLabel(Sender).Report.PageCount));
end;

procedure TDlgTabelaPreco.FormsComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
    C_Indexadores.Close;
    C_Indexadores.Open;
    C_TabelaPreco.Close;
    C_TabelaPreco.Open;
end;

procedure TDlgTabelaPreco.C_ItemsCalcFields(DataSet: TDataSet);
var nFatorVenda, Minimo, nDescMax: currency;
begin
    inherited;

    // Valor do Estoque para cada unidade
    if (DataSet.FieldByName('FATORITEMUND').AsCurrency > 0) then
        DataSet.FieldByName('icEstoque').AsCurrency := (DataSet.FieldByName('ESTOQUE').AsCurrency *
            DataSet.FieldByName('FATORUNDVENDA').AsCurrency) / DataSet.FieldByName('FATORITEMUND').AsCurrency
    else
        DataSet.FieldByName('icEstoque').Value := 0;

    {Desc. Max. Produto}
    nDescMax := DataSet.FieldByName('DescontoMaximo').asCurrency;

    {Desc. Max. Grupo}
    if nDescMax < 0 then
        nDescMax := DataSet.FieldByName('DESCONTOMAXIMOGrupo').asCurrency;

    {Desc. Max. Vendedor}
    if nDescMax < 0 then
        nDescMax := DMProjeto.nMaxDescontoFunc;

    nFatorVenda := IIF(DataSet.FieldByName('FatorUndVenda').asFloat > 0, DataSet.FieldByName('FatorUndVenda').asFloat, 1);

    if DataSet.FieldByName('PrecoManUnd').AsCurrency > 0 then
        begin
            // Calculando primeiro o mínimo... **##**
            DataSet.FieldByName('icPreco').ASCurrency := DataSet.FieldByName('Preco').asCurrency;
            if (DataSet.FieldByName('Unidade').AsString <> DataSet.FieldByName('UndVenda').AsString) then
                DataSet.FieldByName('icPreco').ASCurrency := (DataSet.FieldByName('PrecoNormal').AsCurrency / nFatorVenda) * DataSet.FieldByName('FatorItemUnd').AsCurrency;

            if DataSet.FieldByName('PercentualMinimo').AsCurrency > 0 then
                Minimo := DataSet.FieldByName('icPreco').ASCurrency + (DataSet.FieldByName('icPreco').ASCurrency * DataSet.FieldByName('PercentualMinimo').AsCurrency / 100);
            // **##** Para então colocar o preço manual
            DataSet.FieldByName('icPreco').ASCurrency := DataSet.FieldByName('PrecoManUnd').AsCurrency;
        end
    else if DataSet.FieldByName('PrecoPromocao').asCurrency > 0 then
        begin
            DataSet.FieldByName('icPreco').ASCurrency := DataSet.FieldByName('PrecoPromocao').asCurrency;
            Minimo := DataSet.FieldByName('icPreco').ASCurrency;
        end
    else
        begin
            if DataSet.FieldByName('Percentual').asCurrency = 0 then
                begin
                    DataSet.FieldByName('icPreco').ASCurrency := DataSet.FieldByName('Preco').asCurrency;
                    if DataSet.FieldByName('Unidade').AsString <> DataSet.FieldByName('UndVenda').AsString then
                        DataSet.FieldByName('icPreco').ASCurrency := (DataSet.FieldByName('PrecoNormal').AsCurrency / nFatorVenda) * DataSet.FieldByName('FatorItemUnd').AsCurrency;
                end
            else
                DataSet.FieldByName('icPreco').ASCurrency := DataSet.FieldByName('Percentual').asCurrency;

            if (nDescMax > 0) and (DataSet.FieldByName('Percentual').asCurrency = 0) then
                Minimo := DataSet.FieldByName('icPreco').ASCurrency * (1 - (nDescMax / 100))
            else
                Minimo := 0;

            if DataSet.FieldByName('PercentualMinimo').AsCurrency > 0 then
                Minimo := DataSet.FieldByName('icPreco').ASCurrency + (DataSet.FieldByName('icPreco').ASCurrency * DataSet.FieldByName('PercentualMinimo').ASCurrency / 100);

            if (DataSet.FieldByName('PercUnd').ASCurrency > 0) then
                begin
                    DataSet.FieldByName('icPreco').ASCurrency := DataSet.FieldByName('icPreco').ASCurrency + (DataSet.FieldByName('icPreco').ASCurrency * DataSet.FieldByName('PercUnd').ASCurrency / 100);
                end;

        end;
    DataSet.FieldByName('icPreco').ASCurrency := RoundTo(DataSet.FieldByName('icPreco').ASCurrency, -2);
    Minimo := RoundTo(Minimo, -2);

    // Modificando a cotação para o indexador selecionado...
    if DataSet.FieldByName('Indexador').AsVariant <> null then
        begin
            Q_SQL.Close;
            Q_SQL.SQL.Text := 'select valor from cotacoes ' +
                'where data = (select max(data) from cotacoes where indexador = :i) ' +
                'and indexador = :i ';
            Q_SQL.ParamByName('i').AsInteger := DataSet.FieldByName('Indexador').AsInteger;
            Q_SQL.Open;
            if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then
                begin
                    DataSet.FieldByName('icPreco').AsCurrency := RoundTo((DataSet.FieldByName('icPreco').AsCurrency / Q_SQL.Fields[0].AsFloat) * nIndex, -2);
                    Minimo := RoundTo((Minimo / Q_SQL.Fields[0].AsFloat) * nIndex, -2);
                end;
            Q_SQL.Close;
        end;
    //

    if DataSet.FieldByName('icPreco').ASCurrency > 0 then
        DataSet.FieldByName('icPercDescMax').AsCurrency := ((DataSet.FieldByName('icPreco').ASCurrency - Minimo) /
            DataSet.FieldByName('icPreco').ASCurrency) * 100
    else
        DataSet.FieldByName('icPercDescMax').AsCurrency := 0;
end;

end.


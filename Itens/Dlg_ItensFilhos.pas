unit Dlg_ItensFilhos;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
    TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, dxExEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, dxDBTLCl, dxGrClms, IBCustomDataSet;

type
    TDlgItensFilhos = class(TFrmModeloCadastros)
        Grid: TTS_QDBGrid;
        ppmGrid: TTS_PopupMenu;
        GridIDFILHO: TdxDBGridMaskColumn;
        GridITEM: TdxDBGridMaskColumn;
        GridSUBITEM: TdxDBGridMaskColumn;
        GridUNIDADE: TdxDBGridMaskColumn;
        GridFATOR: TdxDBGridMaskColumn;
        GridCUSTOMEDIO: TdxDBGridMaskColumn;
        GridlkUnidade: TdxDBGridLookupColumn;
        GridSubTotal: TdxDBGridMaskColumn;
        TS_Label1: TTS_Label;
        GridCODIGO: TdxDBGridButtonColumn;
        GridDESCRICAO: TdxDBGridButtonColumn;
        GridQUANTIDADE: TdxDBGridMaskColumn;
        GridPreco: TdxDBGridMaskColumn;
        GridSubTotalPreco: TdxDBGridMaskColumn;
        GridCUSTOCONTABIL: TdxDBGridMaskColumn;
        GridPRECOCOMPRA: TdxDBGridMaskColumn;
    GridFabricante: TdxDBGridMaskColumn;
        procedure FormShow(Sender: TObject);
        procedure GridTS_BeforeLocalizar(Sender: TObject; var Campo,
            Conteudo: string);
        procedure GridTS_AfterNewRecord(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure GridCustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            var AText: string; var AColor: TColor; AFont: TFont;
            var AAlignment: TAlignment; var ADone: Boolean);
        procedure btFecharCadastroClick(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure GridTS_AposLocalizar(Sender: TObject);
    private
        { Private declarations }
        LastItemColumn: string;

    public
        { Public declarations }
    end;

var
    DlgItensFilhos: TDlgItensFilhos;

implementation
uses DM_Projeto, DM_Itens, Funcoes, DB, IBQuery;

{$R *.dfm}

procedure TDlgItensFilhos.FormShow(Sender: TObject);
var i, qtdTabelas, coluna: integer;
    sTabelas: string;
begin
    inherited;
    lbEStadoForm.Caption := lbEStadoForm.Caption + UpperCase(DMItens.C_TabelaDescricao.Value);

    if DMItens.bAlteracao and (DMItens.C_TabelaEstoque.Value > 0) and (DMProjeto.Parametro('AlterarComposicaoComEstoque') = 'N') then
        begin
            Grid.OptionsBehavior := Grid.OptionsBehavior - [edgoEditing];
            Grid.OptionsDB := Grid.OptionsDB - [edgoCanDelete];
            btLimpar.Enabled := false;
        end;

    {   Felipe (03/02/2016
        Inicio - Implementações para Montagens de Produto }

    sTabelas := AllTrim(DMProjeto.sTabelasPreco);

    sTabelas := IIF(Length(sTabelas) > 0, '0;' + sTabelas, '0');
    qtdTabelas := ContaStrings(sTabelas, ';');

    coluna := 6;

    if (qtdTabelas > 4) then
        qtdTabelas := 4;

    for i := 0 to qtdTabelas - 1 do
        begin
            with DMProjeto.Q_SQL2 do
                begin
                    // Capturando a descrição da tabela de Preço
                    Close;
                    SQL.Text := 'select t.descricao from tabelaspreco t where t.tabelapreco = :tabela';
                    ParamByName('tabela').AsInteger := StrToInt(SeparaStrings(sTabelas, ';', i + 1));
                    Open;

                    if (i = 0) then
                        begin
                            GridPreco.Caption := FieldByName('descricao').AsString;
                            GridSubTotalPreco.Caption := 'Total ' + FieldByName('descricao').AsString;
                            Continue;
                        end;

                    // Adicionando os respectivos valores de acordo com a Tabela de Preço
                    with Grid.CreateColumn(TdxDBGridMaskColumn) as TdxDBGridMaskColumn do
                        begin
                            Inc(coluna);
                            Caption := FieldByName('descricao').AsString;
                            ColIndex := coluna; // Coluna 7 (Preço - Tabela Padrão 0). Adicionar após essa coluna as Tabelas Adicionais
                            FieldName := 'TABELAPRECO' + InttoStr(i);
                            HeaderAlignment := taCenter;
                            Visible := True;
                            DisableEditor := True;
                            DisableCustomizing := True;
                        end;

                    // Adicionando a coluna para SubTotal de cada uma das Tabelas de Preço
                    with Grid.CreateColumn(TdxDBGridMaskColumn) as TdxDBGridMaskColumn do
                        begin
                            Caption := 'Total ' + FieldByName('descricao').AsString;
                            ColIndex := coluna + 3; // Adicionar as colunas de SubTotais no final
                            FieldName := 'icSubTotalTabela' + IntToStr(i);
                            HeaderAlignment := taCenter;
                            Visible := True;
                            SummaryFooterType := cstSum;
                            Width := 110;
                            DisableEditor := True;
                            DisableCustomizing := True;
                        end;
                end;
        end;
    {Fim - Implementações para Montagens de Produto}

    {Felipe - Adicionado para forçar o cálculo para as colunas totais das tabelas de preço (07/03/2016)}
    with Grid.CreateColumn(TdxDBGridMaskColumn) as TdxDBGridMaskColumn do
        begin
            Caption := 'Custo Manual';
            ColIndex := 6; // Coluna 7 (Preço - Tabela Padrão 0). Adicionar após essa coluna as Tabelas Adicionais
            FieldName := 'CUSTOMANUAL';
            HeaderAlignment := taCenter;
            Visible := True;
            DisableEditor := True;
            DisableCustomizing := False;
        end;

end;

procedure TDlgItensFilhos.GridTS_BeforeLocalizar(Sender: TObject;
    var Campo, Conteudo: string);
begin
    inherited;
    if pos('CODIGO', Campo) > 0 then
        LastItemColumn := 'CODIGO'
    else if pos('REF', Campo) > 0 then
        LastItemColumn := 'Referencia'
    else
        LastItemColumn := 'DESCRICAO';
end;

procedure TDlgItensFilhos.GridTS_AfterNewRecord(Sender: TObject);
begin
    inherited;
    Grid.TS_SelectedColumn := LastItemColumn;
end;

procedure TDlgItensFilhos.btGravarClick(Sender: TObject);
begin
    inherited;


    ModalResult := 100;
end;

procedure TDlgItensFilhos.btLimparClick(Sender: TObject);
begin
    inherited;
    if DlgMsg.ShowMsg(2777) <> 100 then
        exit;

    with DMItens.C_ItensFilhos do
        begin
            DisableControls;
            First;
            while not EOF do
                delete;

            EnableControls;

        end;
end;

procedure TDlgItensFilhos.GridCustomDrawFooter(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; var AText: string; var AColor: TColor;
    AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
    inherited;

    if TdxDBGridColumn(AColumn).FieldName = 'icSubTotal' then
        AFont.Color := clRed;
    if TdxDBGridColumn(AColumn).FieldName = 'icSubTotalPreco' then
        AFont.Color := clBlue;
end;

procedure TDlgItensFilhos.btFecharCadastroClick(Sender: TObject);
begin
    ModalResult := -1;
end;

procedure TDlgItensFilhos.FormClose(Sender: TObject;
    var Action: TCloseAction);
var
    nCustoTotal: double;
begin
    inherited;

    {Atualizando o Custo Médio e o Flag HasChildren}
    {Como normalmente, os itens que são compostos são vendidos em unidade, o custo médio lançado será capturado
     pelo campo icCustoMedio, que já considera os Fatores de cada item da composição }
    if btLimpar.Enabled then
        with DMItens do
            begin

                if (C_ItensFilhos.State in [dsEdit, dsInsert]) then
                    C_ItensFilhos.post;

                C_Tabela.edit;

                if (C_ItensFilhos.RecordCount > 0) and not ((C_ItensFilhos.RecordCount = 1) and (C_ItensFilhosSubItem.Value = 0)) then
                    begin
                        C_TabelaHasChildren.Value := 'S';
                        C_ItensFilhos.DisableControls;
                        C_ItensFilhos.First;
                        nCustoTotal := 0;
                        while not C_ItensFilhos.EOF do
                            begin
                                nCustoTotal := nCustoTotal + (C_ItensFilhosQuantidade.Value * C_ItensFilhosicCustoMedio.Value);
                                C_ItensFilhos.next;
                            end;
                        C_ItensFilhos.EnableControls;
                        C_TabelaCustoMedio.Value := nCustoTotal / IIF(C_TabelaFatorUndVenda.Value > 0, C_TabelaFatorUndVenda.Value, 1);
                        C_TabelaPrecoCompra.Value := C_TabelaCustoMedio.Value;
                    end
                else
                    C_TabelaHasChildren.Value := 'N';

            end;
end;

procedure TDlgItensFilhos.GridTS_AposLocalizar(Sender: TObject);
begin
    if (DMItens.bNaoPermitirItemDuplicado) and (DMItens.VerificaItensFilhosDuplicado(DMItens.C_ItensFilhosSUBITEM.Value)) then
        begin
            DlgMsg.ShowMsg(50, ['O Sistema foi Configurado Para Não Permitir Item Duplicado.']);
            DMItens.C_ItensFilhos.Delete;
        end;
        
    inherited;
    Grid.TS_SelectedColumn := 'QUANTIDADE';
    Grid.ShowEditor;    
end;

end.


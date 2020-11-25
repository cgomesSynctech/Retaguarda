unit Frm_BalancoFichas;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_PADRAO, StdCtrls, TS_Label, FormComponent, ImgList,
    TS_LastDataObject, DlgMsg, Menus, TS_PopupMenu, ComCtrls,
    Buttons, TS_BitBtn, ExtCtrls,
    TS_Bevel, TS_SpeedButton, TS_MaxPanel,
    TS_DBEditDate, DBCtrls, TS_DBLookupComboBox, TS_DBRadioGroup,
    TS_DBComboBox, RxDBComb, TS_DBText, TS_DBCheckBox, Db, IBCustomDataSet,
    IBQuery, ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppComm, ppRelatv,
    ppProd, ppReport, ppPrnabl, ppCtrls, CheckLst, TS_CheckListBox, dxExEdtr,
    dxEdLib, dxDBELib, dxCntner, dxEditor, TS_Image,
    dxfLabel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
    dxDBTLCl, dxGrClms, teCtrls, TS_EffectsPanel, dxTLClms, TS_DBEdit,
    ppStrtch, ppRegion, dxDBEdtr, BTOdeum, Provider, DBClient, Placemnt,
    TS_PopupEdit, TS_PopupFiltrarItens, dxfProgressBar;

type
    TFrmBalancoFichas = class(TFrmPadrao)
        TS_Label1: TTS_Label;
        TS_Label3: TTS_Label;
        TS_DBEditDate1: TTS_DBEditDate;
        TS_DBLookupComboBox1: TTS_DBLookupComboBox;
        ppmItens: TTS_PopupMenu;
        ExcluirItem1: TMenuItem;
        AdicionarItens1: TMenuItem;
        MostrarContagens1: TMenuItem;
        TS_Label4: TTS_Label;
        TS_DBText1: TTS_DBText;
        ppFichaBalanco: TppReport;
        ppHeaderBand1: TppHeaderBand;
        ppDetailBand1: TppDetailBand;
        ppDBFichaBalanco: TppDBPipeline;
        Q_FichaBalanco: TIBQuery;
        Q_FichaBalancoBALANCOFICHA: TIntegerField;
        Q_FichaBalancoDATA: TDateField;
        Q_FichaBalancoUSUARIO: TIntegerField;
        Q_FichaBalancoSTATUS: TIntegerField;
        Q_FichaBalancoOPENBALANCE: TIBStringField;
        Q_FichaBalancoDS: TDataSource;
        ppTitleBand1: TppTitleBand;
        ppLabel1: TppLabel;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppLabel6: TppLabel;
        ppLabel7: TppLabel;
        ppTitulo: TppLabel;
        ppLabel9: TppLabel;
        ppDBText1: TppDBText;
        ppDBText2: TppDBText;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        ppLine3: TppLine;
        Q_FichaBalancoCODIGO: TIBStringField;
        Q_FichaBalancoDESCRICAO: TIBStringField;
        Q_FichaBalancoUNIDADE: TIBStringField;
        dbgItens: TTS_QDBGrid;
        dbgItensCONTAGEM1: TdxDBGridMaskColumn;
        dbgItensCONTAGEM2: TdxDBGridMaskColumn;
        dbgItensCONTAGEM3: TdxDBGridMaskColumn;
        dbgItensColumn6: TdxDBGridColumn;
        GridBALANCOFICHA: TdxDBGridMaskColumn;
        GridDATA: TdxDBGridDateColumn;
        GridUSUARIO: TdxDBGridMaskColumn;
        GridSTATUS: TdxDBGridMaskColumn;
        GridcmbUsuario: TdxDBGridLookupColumn;
        GridQ_BalancoFichasItens: TdxDBGridColumn;
        GridDescStatus: TdxDBGridColumn;
        GridOPENBALANCE: TdxDBGridMaskColumn;
        dbgItensCODIGO: TdxDBGridButtonColumn;
        dbgItensDESCRICAO: TdxDBGridButtonColumn;
        dbgItensGrupo: TdxDBGridColumn;
        dbgItensFabricante: TdxDBGridColumn;
        lblFicha: TTS_Label;
        dfFicha: TTS_DBEdit;
        ppCabecalho: TppRegion;
        Q_FichaBalancoNOME: TIBStringField;
        dbgItensReferencia: TdxDBGridButtonColumn;
        ppLabel8: TppLabel;
        ppDBText3: TppDBText;
        C_FichaBalanco: TClientDataSet;
        P_FichaBalanco: TDataSetProvider;
        C_FichaBalancoBALANCOFICHA: TIntegerField;
        C_FichaBalancoDATA: TDateField;
        C_FichaBalancoUSUARIO: TIntegerField;
        C_FichaBalancoSTATUS: TIntegerField;
        C_FichaBalancoOPENBALANCE: TStringField;
        C_FichaBalancoCODIGO: TStringField;
        C_FichaBalancoDESCRICAO: TStringField;
        C_FichaBalancoUNIDADE: TStringField;
        C_FichaBalancoNOME: TStringField;
        TS_DBEdit1: TTS_DBEdit;
        TS_Label2: TTS_Label;
        Q_FichaBalancoDESCRICAOFICHA: TIBStringField;
        C_FichaBalancoDESCRICAOFICHA: TStringField;
        ppDBText7: TppDBText;
        TS_SpeedButton1: TTS_SpeedButton;
        popupFiltrarItens: TTS_PopupFiltrarItens;
        lblAlmox: TTS_Label;
        cmbAlmox: TTS_DBLookupComboBox;
        Q_FichaBalancoREFERENCIA: TIBStringField;
        C_FichaBalancoREFERENCIA: TStringField;
        Q_FichaBalancoALMOXARIFADO: TIntegerField;
        C_FichaBalancoALMOXARIFADO: TIntegerField;
        btColetor: TTS_SpeedButton;
        sdColetor: TSaveDialog;
        ppmColetor: TTS_PopupMenu;
        MenuItem1: TMenuItem;
        ColetorMetrologic1: TMenuItem;
    ColetorSemDelimitador1: TMenuItem;
        procedure ExcluirItem1Click(Sender: TObject);
        procedure MostrarContagens1Click(Sender: TObject);
        procedure btApagarClick(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure FormComponentGravou(Sender: TObject);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
        procedure FormCreate(Sender: TObject);
        procedure dbgItensCODIGOButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure FormComponentEstado_Navegacao(Sender: TObject;
            var bSkip: Boolean);
        procedure btComando2Click(Sender: TObject);
        procedure TS_SpeedButton1Click(Sender: TObject);
        procedure popupFiltrarItensSelecionou(Sender: TObject);
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure sbColetorClick(Sender: TObject);
        procedure btColetorClick(Sender: TObject);
        procedure ColetorMetrologic1Click(Sender: TObject);
    procedure ColetorSemDelimitador1Click(Sender: TObject);
    private
        bApagando: boolean;
    public
        { Public declarations }
    end;

var
    FrmBalancoFichas: TFrmBalancoFichas;

implementation
uses DM_BalancoFichas, DM_Projeto, funcoes;

{$R *.DFM}

procedure TFrmBalancoFichas.ExcluirItem1Click(Sender: TObject);
begin
    inherited;
    if DMBalancoFichas.C_TabelaOpenBalance.value = 'N' then
        begin
            if DlgMsg.ShowMsg(1006) = 100 then
                DMBalancoFichas.C_BalancoFichasItens.delete;
        end;
end;

procedure TFrmBalancoFichas.MostrarContagens1Click(Sender: TObject);
begin
    inherited;
    MostrarContagens1.checked := not MostrarContagens1.checked;

    if MostrarContagens1.checked then
        begin
            dbgItens.Columns[2].visible := true;
            dbgItens.Columns[3].visible := true;
            dbgItens.Columns[4].visible := true;
            dbgItens.Columns[1].width := 250;
        end
    else
        begin
            dbgItens.Columns[2].visible := false;
            dbgItens.Columns[3].visible := false;
            dbgItens.Columns[4].visible := false;
            dbgItens.Columns[1].width := 309;
        end;
end;

procedure TFrmBalancoFichas.btApagarClick(Sender: TObject);
begin
    //  inherited;
    bApagando := true;
    DMBalancoFichas.C_Tabela.edit;
    DMBalancoFichas.C_TabelaStatus.value := 2;
    DMBalancoFichas.C_Tabela.post;
    btGravarClick(self);
    bApagando := false;
end;

procedure TFrmBalancoFichas.btGravarClick(Sender: TObject);
begin
    if not bApagando and (DMBalancoFichas.C_TabelaStatus.value = 2) then
        begin
            DlgMsg.ShowMsg(1025);
            exit;
        end;
    if (DMBalancoFichas.C_TabelaStatus.value = 0) then
        begin
            DlgMsg.ShowMsg(1026);
            exit;
        end;
    if DMBalancoFichas.C_BalancoFichasItens.State in [dsedit, dsinsert] then
        DMBalancoFichas.C_BalancoFichasItens.post;

    if DMBalancoFichas.C_BalancoFichasItens.recordcount <> ContaStrings(dbgItens.Distinct('item'), ',') then
        begin
            DlgMsg.ShowMsg(6024);
            exit;
        end;
    inherited;
end;

procedure TFrmBalancoFichas.FormComponentGravou(Sender: TObject);
var nOrdenacao: integer;
    sOldCaption: string;
begin
    inherited;
    C_FichaBalanco.close;
    C_FichaBalanco.CommandText := 'Select bf.*, f.nome, i.codigo, i.descricao, i.unidade, i.referencia ' +
        'from BalancoFichas bf ' +
        'inner join balancofichasitens bfi on bf.balancoficha = bfi.balancoficha ' +
        'inner join itens i on bfi.item = i.item ' +
        'left join Favorecidos f on bf.usuario = f.favorecido ' +
        'where bf.balancoficha = :ficha';

    nOrdenacao := DlgMsg.ShowMsg(4027);
    if nOrdenacao = 100 then
        C_FichaBalanco.CommandText := C_FichaBalanco.CommandText + ' order by i.codigo'
    else if nOrdenacao = 200 then
        C_FichaBalanco.CommandText := C_FichaBalanco.CommandText + ' order by i.descricao'
    else if nOrdenacao = 300 then
        C_FichaBalanco.CommandText := C_FichaBalanco.CommandText + ' order by i.referencia';

    //  C_FichaBalanco.FetchParams;
    C_FichaBalanco.params[0].asinteger := DMBalancoFichas.C_TabelaBalancoFicha.value;
    C_FichaBalanco.open;

    sOldCaption := ppTitulo.caption;
    ppTitulo.caption := ppTitulo.caption + ' ' + DMBalancoFichas.C_TabelaBalancoFicha.AsString;
    DMProjeto.ImprimirCabecalho(ppCabecalho);
    ppFichaBalanco.print;
    ppTitulo.caption := sOldCaption;

end;

procedure TFrmBalancoFichas.FormComponentEstado_Inicial(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    btComando2.Visible := false;
    dfFicha.PasswordChar := #32;
end;

procedure TFrmBalancoFichas.FormCreate(Sender: TObject);
begin
    inherited;
    DMProjeto.sItensSelec := '';
    DMProjeto.sGruposSelec := '';
    DMProjeto.sFabricSelec := '';
end;

procedure TFrmBalancoFichas.dbgItensCODIGOButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if AbsoluteIndex = 1 then
        DMProjeto.CriarForm('FrmItens', self, true);
end;

procedure TFrmBalancoFichas.FormComponentEstado_Navegacao(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    btComando2.Visible := true;
    dfFicha.PasswordChar := #0;
end;

procedure TFrmBalancoFichas.btComando2Click(Sender: TObject);
begin
    inherited;
    FormComponentGravou(self);
end;

procedure TFrmBalancoFichas.TS_SpeedButton1Click(Sender: TObject);
begin
    inherited;
    if DMBalancoFichas.C_TabelaBalancoFicha.value > 0 then
        begin
            DMProjeto.SetParametrosForm([DMBalancoFichas.C_TabelaBalancoFicha.value]);
            DMProjeto.CriarForm('DlgContagensItens', self, true);
        end;
end;

procedure TFrmBalancoFichas.popupFiltrarItensSelecionou(Sender: TObject);
var
    bVazio: boolean;
begin
    inherited;
    with DMBalancoFichas do
        begin
            Q_Aux.close;
            Q_Aux.SQL.text := 'select i.* from itens i where i.balanco = ''N'' and ' + popupFiltrarItens.getSQL + ' order by i.descricao';
            Q_Aux.open;
            bAdicionando := true;
            C_BalancoFichasItens.DisableControls;
            bVazio := C_BalancoFichasItens.IsEmpty;
            while not Q_Aux.eof do
                begin
                    if bVazio or not C_BalancoFichasItens.locate('item', Q_Aux.FieldByName('item').asinteger, []) then
                        begin
                            C_BalancoFichasItens.Append;
                            C_BalancoFichasItens.FieldByName('Item').asinteger := Q_Aux.FieldByName('item').asinteger;
                            C_BalancoFichasItens.FieldByName('Codigo').asstring := Q_Aux.FieldByName('codigo').asstring;
                            C_BalancoFichasItens.FieldByName('Referencia').asstring := Q_Aux.FieldByName('Referencia').asstring;
                            C_BalancoFichasItens.FieldByName('Descricao').asstring := Q_Aux.FieldByName('descricao').asstring;
                            C_BalancoFichasItens.FieldByName('Unidade').asstring := Q_Aux.FieldByName('unidade').asstring;
                            C_BalancoFichasItens.FieldByName('CodigoBarras').asstring := Q_Aux.FieldByName('codigobarras').asstring;
                            C_BalancoFichasItens.post;
                        end;
                    Q_Aux.next;
                end;
            bAdicionando := false;
            C_BalancoFichasItens.first;
            C_BalancoFichasItens.EnableControls;
        end;
end;

procedure TFrmBalancoFichas.FormComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    if DMProjeto.Parametro('MultiAlmox') = 'S' then
        begin
            lblAlmox.visible := true;
            cmbAlmox.visible := true;
        end;
end;

procedure TFrmBalancoFichas.sbColetorClick(Sender: TObject);
begin
    inherited;
    if sdColetor.Execute then
        begin
            if DMBalancoFichas.CriarArquivoColetor(sdColetor.FileName) then
                Application.MessageBox(pChar('Arquivo gerado com êxito!'), 'Aviso', mb_OK);
        end;
end;

procedure TFrmBalancoFichas.btColetorClick(Sender: TObject);
begin
    inherited;
    ppmColetor.PopupFromCursorPos;
end;

procedure TFrmBalancoFichas.ColetorMetrologic1Click(Sender: TObject);
var 
    sArquivo: TStringList;
    sCodigo: string;
begin
    inherited;
    try
        sdColetor.FileName := 'LookUp.txt';
        if sdColetor.Execute then
            begin
                sArquivo := TStringList.Create;

                with DMBalancoFichas.C_BalancoFichasItens do
                    begin
                        Open;
                        while not eof do
                            begin
                                sCodigo := FieldByName('codigobarras').AsString;

                                if (sCodigo = '') or (Length(sCodigo) < 4) then
                                    sCodigo := FieldByName('codigo').AsString;

                                sArquivo.Add(sCodigo + '|' + Copy(FieldByName('descricao').AsString, 1, 40));
                                Next;
                            end;

                        sArquivo.SaveToFile(sdColetor.FileName);
                        sArquivo.Clear;
                        sArquivo.Free;

                        DlgMsg.ShowMsg(50, ['Arquivo Gerado com Sucesso!']);

                    end;
            end;

    except
        DlgMsg.ShowMsg(50, ['Erro ao Tentar Gerar Arquivo!']);
    end;
end;

procedure TFrmBalancoFichas.ColetorSemDelimitador1Click(Sender: TObject);
var 
    sArquivo: TStringList;
    sCodigo: string;
begin
    inherited;
    try
        sdColetor.FileName := 'LookUp.txt';
        if sdColetor.Execute then
            begin
                sArquivo := TStringList.Create;

                with DMBalancoFichas.C_BalancoFichasItens do
                    begin
                        Open;
                        while not eof do
                            begin
                                sCodigo := FieldByName('codigobarras').AsString;

                                if (sCodigo = '') or (Length(sCodigo) < 4) then
                                    sCodigo := FieldByName('codigo').AsString;
                                sCodigo := Funcoes.PreencherStr(sCodigo,' ',13) ;
                                sArquivo.Add(sCodigo+Copy(FieldByName('Descricao').AsString,1,40));
                                Next;
                            end;

                        sArquivo.SaveToFile(sdColetor.FileName);
                        sArquivo.Clear;
                        sArquivo.Free;

                        DlgMsg.ShowMsg(50, ['Arquivo Gerado com Sucesso!']);

                    end;
            end;

    except
        DlgMsg.ShowMsg(50, ['Erro ao Tentar Gerar Arquivo!']);
    end;
end;
end.


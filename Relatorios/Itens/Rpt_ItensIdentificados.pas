unit Rpt_ItensIdentificados;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
    dxBkgnd, dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk,
    dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet,
    IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
    DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
    TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl,
    dxGrClms, dxEditor, TS_PopupEdit, TS_PopupFiltrarItens;

type
    TRptItensIdentificados = class(TRptPadrao)
        C_ConsultaCODIGO: TStringField;
        C_ConsultaDESCRICAO: TStringField;
        C_ConsultaSERIAL: TStringField;
        C_ConsultaCODIGOBARRAS: TStringField;
        C_ConsultaSTATUS: TStringField;
        C_ConsultaUNIDADE: TStringField;
        C_ConsultaREFERENCIA: TStringField;
        C_ConsultaDATACADASTRO: TDateField;
        C_ConsultaDESCRICAOGRUPO: TStringField;
        C_ConsultaFABRICANTE: TStringField;
        C_ConsultaITEM: TIntegerField;
        dbgConsultaCODIGO: TdxDBGridMaskColumn;
        dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
        dbgConsultaSERIAL: TdxDBGridMaskColumn;
        dbgConsultaCODIGOBARRAS: TdxDBGridMaskColumn;
        dbgConsultaSTATUS: TdxDBGridMaskColumn;
        dbgConsultaUNIDADE: TdxDBGridMaskColumn;
        dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
        dbgConsultaDATACADASTRO: TdxDBGridDateColumn;
        dbgConsultaGRUPO: TdxDBGridMaskColumn;
        dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
        FiltroItens: TTS_PopupFiltrarItens;
        procedure Atualizar;
        procedure btAtualizarClick(Sender: TObject);
        procedure FiltroItensSelecionou(Sender: TObject);
        procedure dbgConsultaDblClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    RptItensIdentificados: TRptItensIdentificados;

implementation

uses DM_Projeto, Funcoes, Form_Padrao;

{$R *.dfm}

procedure TRptItensIdentificados.Atualizar;
begin
    Q_Consulta.Close;
    C_Consulta.Close;
    Q_Consulta.SQL.Text := ' select i.item, i.codigo, i.descricao, id.serial, i.codigobarras, ' +
        ' case upper(id.status) when ''E'' then ''Produto em Estoque''' +
        ' when ''F'' then ''Produto Faturado'' else 0 end as STATUS, ' +
        ' i.unidade, i.referencia, i.datacadastro, g.descricaogrupo, f.descricao as fabricante ' +
        ' from itens i left join itensidents id on i.item = id.item ' +
        ' left join grupos g on i.grupo = g.grupo ' +
        ' left join fabricantes f on i.fabricante = f.fabricante ';
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' where ' + FiltroItens.getSQL;
    Q_Consulta.SQL.Text := Q_Consulta.SQL.Text + ' and upper(i.identificacao) = ''S'' order by i.descricao asc, i.codigo asc';

    C_Consulta.Open;

    if (C_Consulta.RecordCount = 0) then
        Application.MessageBox('A consulta não trouxe nenhum item. Talvez o produto filtrado não seja um Item Identificado. Verifique.', 'Aviso', MB_ICONEXCLAMATION);

    with dbgConsulta do
        begin
            TS_ReportFilter.Clear;
            TS_ReportFilter.Text := FiltroItens.Hint;
        end;
end;

procedure TRptItensIdentificados.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptItensIdentificados.FiltroItensSelecionou(Sender: TObject);
begin
    inherited;
    //Atualizar;
end;

procedure TRptItensIdentificados.dbgConsultaDblClick(Sender: TObject);
begin
    inherited;
    if dbgConsulta.TS_SelectedColumn = 'CODIGO' then
        begin
            DMProjeto.SetParametrosForm([C_ConsultaITEM.Value]);
            DMProjeto.CriarForm('FrmItens', Self, True);
        end;
end;

end.


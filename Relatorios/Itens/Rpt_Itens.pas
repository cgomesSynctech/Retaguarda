unit Rpt_Itens;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, RPT_PADRAO,
    Db, dxExEdtr, dxEdLib, TS_CheckBox, dxCntner, dxEditor, dxDBEdtr,
    dxDBELib, TS_LookupComboBox, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
    dxDBGrid, FormsComponent, Dialogs, dxPSCore, dxPSdxTLLnk,
    dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet,
    IBQuery, TS_LastDataObject, DlgMsg, teCtrls,
    TS_EffectsPanel, TS_QDBGrid, ExtCtrls, Buttons, TS_SpeedButton, StdCtrls,
    TS_Label, dxfLabel, TS_MaxPanel, Menus, TS_PopupMenu, ComCtrls, Variants,
    dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
    Placemnt, BTOdeum, TS_PopupEdit, TS_PopupFiltrarItens;

type
    TRptItens = class(TRptPadrao)
        C_ConsultaITEM: TIntegerField;
        C_ConsultaCODIGO: TStringField;
        C_ConsultaDESCRICAO: TStringField;
        C_ConsultaUNIDADE: TStringField;
        C_ConsultaTIPOITEM: TStringField;
        C_ConsultaGRUPO: TStringField;
        C_ConsultaFABRICANTE: TStringField;
        dbgConsultaCODIGO: TdxDBGridMaskColumn;
        dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
        dbgConsultaUNIDADE: TdxDBGridMaskColumn;
        dbgConsultaESTOQUE: TdxDBGridMaskColumn;
        dbgConsultaTIPOITEM: TdxDBGridMaskColumn;
        dbgConsultaGRUPO: TdxDBGridMaskColumn;
        dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
        Q_SQL: TIBQuery;
        C_ConsultaCONTA_VEN: TStringField;
        C_ConsultaCONTA_CUS: TStringField;
        C_ConsultaCONTA_INV: TStringField;
        C_ConsultaCOMISSAO: TBCDField;
        C_ConsultaDESCONTOMAXIMO: TBCDField;
        C_ConsultaULTFORNECEDOR: TStringField;
        dbgConsultaCONTA_VEN: TdxDBGridMaskColumn;
        dbgConsultaCONTA_CUS: TdxDBGridMaskColumn;
        dbgConsultaCONTA_INV: TdxDBGridMaskColumn;
        dbgConsultaCOMISSAO: TdxDBGridMaskColumn;
        dbgConsultaDESCONTOMAXIMO: TdxDBGridMaskColumn;
        dbgConsultaULTFORNECEDOR: TdxDBGridMaskColumn;
        C_ConsultaREFERENCIA: TStringField;
        dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
        C_ConsultaTAXINCLUSO: TStringField;
        dbgConsultaTAXINCLUSO: TdxDBGridCheckColumn;
        dbgConsultaITEM: TdxDBGridMaskColumn;
        C_ConsultaTIPOFAVORECIDO: TIntegerField;
        dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
        C_ConsultaIDULTFORNECEDOR: TIntegerField;
        dbgConsultaIDULTFORNECEDOR: TdxDBGridMaskColumn;
        C_ConsultaESTOQUE: TFloatField;
        FiltroItens: TTS_PopupFiltrarItens;
        C_ConsultaULTIMAVENDA: TDateField;
        C_ConsultaDESCRICAOCOMPLEMENTAR: TStringField;
        C_ConsultaDESCRICAOTECNICA: TStringField;
        C_ConsultaCST: TStringField;
        C_ConsultaREDUCAOCST: TBCDField;
        C_ConsultaIPICOMPRA: TBCDField;
        C_ConsultaIPIVENDA: TBCDField;
        C_ConsultaPESOBRUTO: TBCDField;
        C_ConsultaPESOLIQUIDO: TBCDField;
        C_ConsultaALIQICMS: TBCDField;
        C_ConsultaSITUACAOECF: TStringField;
        C_ConsultaTVA: TBCDField;
        C_ConsultaTVAFONTE: TBCDField;
        C_ConsultaCLASFISCAL: TStringField;
        dbgConsultaULTIMAVENDA: TdxDBGridDateColumn;
        dbgConsultaDESCRICAOCOMPLEMENTAR: TdxDBGridMaskColumn;
        dbgConsultaDESCRICAOTECNICA: TdxDBGridMaskColumn;
        dbgConsultaCST: TdxDBGridMaskColumn;
        dbgConsultaREDUCAOCST: TdxDBGridMaskColumn;
        dbgConsultaIPICOMPRA: TdxDBGridMaskColumn;
        dbgConsultaIPIVENDA: TdxDBGridMaskColumn;
        dbgConsultaPESOBRUTO: TdxDBGridMaskColumn;
        dbgConsultaPESOLIQUIDO: TdxDBGridMaskColumn;
        dbgConsultaALIQICMS: TdxDBGridMaskColumn;
        dbgConsultaSITUACAOECF: TdxDBGridMaskColumn;
        dbgConsultaTVA: TdxDBGridMaskColumn;
        dbgConsultaTVAFONTE: TdxDBGridMaskColumn;
        dbgConsultaCLASFISCAL: TdxDBGridMaskColumn;
        C_ConsultaESTOQUECONSIGENTRADA: TBCDField;
        C_ConsultaESTOQUECONSIGSAIDA: TBCDField;
        dbgConsultaColumn34: TdxDBGridMaskColumn;
        dbgConsultaColumn35: TdxDBGridMaskColumn;
        C_ConsultaTRIBUTACAOFEDERAL: TStringField;
        dbgConsultaTRIBUTACAOFEDERAL: TdxDBGridColumn;
        chkNCMDivergente: TTS_CheckBox;
    dbgConsultaNCM: TdxDBGridMaskColumn;
        procedure btAtualizarClick(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormCreate(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure dbgConsultaDblClick(Sender: TObject);
        procedure FiltroItensSelecionou(Sender: TObject);
    private
        { Private declarations }
        SelectInicial: string;
        FAddGroupItem: Boolean;
        sDescItensSelec, sDescGruposSelec, sDescFabrSelec: string;
        procedure AtualizaItens(WhereAdicional: string = '');
        procedure Coluna(coluna: TdxTreeListColumn; Habilita: boolean);
    public
        { Public declarations }
    end;

var
    RptItens: TRptItens;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptItens.AtualizaItens(WhereAdicional: string = '');
begin
    with C_Consulta do
        begin
            DisableControls;
            Close;
            CommandText := 'Select ' + getCampos + ' ' +
                'From ' + getTabelas + ' ';

            if (Length(FiltroItens.getSQL) > 0) then
                CommandText := CommandText + ' Where ' + IIF(chkNCMDivergente.Checked, ' i.clasfiscal not in (select ib.ncm from ibpt ib) and ', '') + FiltroItens.getSQL;

            Open;
            EnableControls;
        end;
    with dbgConsulta do
        begin
            TS_ReportFilter.Clear;
            TS_ReportFilter.Text := FiltroItens.Hint;
        end;
end;

procedure TRptItens.btAtualizarClick(Sender: TObject);
begin
    inherited;
    AtualizaItens;
end;

procedure TRptItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
    Action := caFree;
end;

procedure TRptItens.Coluna(coluna: TdxTreeListColumn; Habilita: boolean);
begin
    coluna.DisableCustomizing := not Habilita;
    coluna.Visible := Habilita;
end;

procedure TRptItens.FormCreate(Sender: TObject);
begin
    inherited;
    SelectInicial := Q_Consulta.SQL.Text;
end;

procedure TRptItens.FormShow(Sender: TObject);
begin
    inherited;
    dbgConsultaTIPOITEM.Visible := False;
    Coluna(dbgConsultaESTOQUE, False);
    AtualizaItens;
end;

procedure TRptItens.dbgConsultaDblClick(Sender: TObject);
var
    nItem: Integer;
    sForm: string;
begin
    inherited;
    if dbgConsulta.FocusedField.FieldName = 'ULTFORNECEDOR' then
        begin
            nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'IDULTFORNECEDOR', 0);
            DMProjeto.SetParametrosForm([nItem]);
            sForm := DmProjeto.FormFav(dbgConsulta.getFieldValue(dbgConsulta.FocusedNode, 'TipoFavorecido', ''));
            DMProjeto.CriarForm(sForm, Self, true);
        end
    else
        begin
            nItem := dbgConsulta.GetFieldValue(dbgConsulta.FocusedNode, 'Item', 0);
            DMProjeto.SetParametrosForm([nItem]);
            DMProjeto.CriarForm('FrmItens', Self, true);
        end;
end;

procedure TRptItens.FiltroItensSelecionou(Sender: TObject);
begin
    inherited;
    AtualizaItens;
end;

end.


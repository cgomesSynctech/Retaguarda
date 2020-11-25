unit Rpt_Fornecedores;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    RPT_PADRAO, Db, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
    dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet, IBQuery,
    TS_LastDataObject, DlgMsg,
    dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls, StdCtrls,
    TS_Label, dxfLabel, TS_MaxPanel, Buttons, dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib,
    TS_CheckBox, TS_EffectsPanel, TS_SpeedButton, Menus,
    TS_PopupMenu, teCtrls, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
    dxBkgnd, dxWrap, dxPrnDev, BTOdeum, Placemnt, dxEditor, TS_PopupEdit,
  CheckLst, TS_CheckListBox;

type
    TRptFornecedores = class(TRptPadrao)
        C_ConsultaFAVORECIDO: TIntegerField;
        C_ConsultaCODIGO: TStringField;
        C_ConsultaNOME: TStringField;
        C_ConsultaRAZAO: TStringField;
        C_ConsultaENDERECO: TStringField;
        C_ConsultaCIDADE: TStringField;
        C_ConsultaUF: TStringField;
        C_ConsultaCEP: TStringField;
        C_ConsultaCAIXAPOSTAL: TStringField;
        C_ConsultaPAIS: TIntegerField;
        C_ConsultaFONE1: TStringField;
        C_ConsultaFONE2: TStringField;
        C_ConsultaFAX: TStringField;
        C_ConsultaCELULAR: TStringField;
        C_ConsultaCONTATO: TStringField;
        C_ConsultaEMAIL: TStringField;
        C_ConsultaTAXAVEL: TStringField;
        C_ConsultaEIN: TStringField;
        C_ConsultaSSN: TStringField;
        dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
        dbgConsultaCODIGO: TdxDBGridMaskColumn;
        dbgConsultaNOME: TdxDBGridMaskColumn;
        dbgConsultaENDERECO: TdxDBGridMaskColumn;
        dbgConsultaCIDADE: TdxDBGridMaskColumn;
        dbgConsultaUF: TdxDBGridMaskColumn;
        dbgConsultaCEP: TdxDBGridMaskColumn;
        dbgConsultaCAIXAPOSTAL: TdxDBGridMaskColumn;
        dbgConsultaFONE1: TdxDBGridMaskColumn;
        dbgConsultaFONE2: TdxDBGridMaskColumn;
        dbgConsultaFAX: TdxDBGridMaskColumn;
        dbgConsultaCELULAR: TdxDBGridMaskColumn;
        dbgConsultaCONTATO: TdxDBGridMaskColumn;
        dbgConsultaEMAIL: TdxDBGridMaskColumn;
    dbgConsultaBAIRRO: TdxDBGridMaskColumn;
    dbgConsultaINSC_EST: TdxDBGridMaskColumn;
    dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn;
        C_ConsultaULTCOMPRA: TDateField;
        dbgConsultaULTCOMPRA: TdxDBGridColumn;
        C_ConsultaDESC_PAIS: TStringField;
    dbgConsultaRAZAO: TdxDBGridMaskColumn;
        C_ConsultaPreviewEnd: TStringField;
        N9: TMenuItem;
        Endereo1: TMenuItem;
        Q_ULTCompra: TIBQuery;
        C_ConsultaCPF_CNPJ: TStringField;
        C_ConsultaINSCRICAO_EST: TStringField;
        C_ConsultaBAIRRO: TStringField;
        C_ConsultaRG: TStringField;
    dbgConsultaTIPOEMPRESA: TdxDBGridMaskColumn;
    C_ConsultaTIPOEMPRESA: TStringField;
    C_ConsultaTIPOFORNECEDOR: TStringField;
        procedure FormShow(Sender: TObject);
        procedure btAtualizarClick(Sender: TObject);
        procedure dbgConsultaDblClick(Sender: TObject);
        procedure Endereo1Click(Sender: TObject);
        procedure FormsComponentRefresh(Sender: TObject);
        procedure C_ConsultaCalcFields(DataSet: TDataSet);

    
    private
        { Private declarations }
        procedure AtualizaConsulta;
    public
        { Public declarations }
    end;

var
    RptFornecedores: TRptFornecedores;

implementation

uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TRptFornecedores.FormShow(Sender: TObject);
begin
    inherited;
    if C_Consulta.FindField('ULTCOMPRA') <> nil then
        C_Consulta.FindField('ULTCOMPRA').EditMask := ShortDateFormat;
    AtualizaConsulta;
end;

procedure TRptFornecedores.AtualizaConsulta;
begin
    with C_Consulta do
        begin
            Close;
            CommandText := 'Select ' + getCampos + ' ' +
                'From ' + getTabelas + ' ' +
                'WHERE TIPOFAVORECIDO = 2 and  f.desativado = ''N''';

            Open;
        end;
end;

procedure TRptFornecedores.btAtualizarClick(Sender: TObject);
begin
    inherited;
    AtualizaConsulta
end;

procedure TRptFornecedores.dbgConsultaDblClick(Sender: TObject);
var
    nIdFav: Integer;
begin
    inherited;
    if (dbgConsulta.FocusedField.FieldName = 'ULTCOMPRA') then
        begin
            if dbgConsulta.getFieldValue(dbgConsulta.FocusedNode, 'ULTCOMPRA', StrToDateTime('1/1/1900')) = StrToDateTime('1/1/1900') then
                exit;
            Q_ULTCompra.Close;
            Q_ULTCompra.ParamByName('Data').AsDateTime := dbgConsulta.getFieldValue(dbgConsulta.FocusedNode, 'ULTCOMPRA', StrToDateTime('1/1/1900'));
            Q_ULTCompra.ParamByName('Fav').AsInteger := dbgConsulta.getFieldValue(dbgConsulta.FocusedNode, 'favorecido', 0);
            Q_ULTCompra.Open;
            nIdFav := Q_ULTCompra.Fields[0].AsInteger;
            DMProjeto.SetParametrosForm([nIdFav]);
            DMProjeto.CriarForm('FrmCompras', Self, true);
            Q_ULTCompra.Close;
        end
    else
        begin
            nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.focusednode, 'favorecido', 0);
            DMProjeto.SetParametrosForm([nIdFav]);
            DMProjeto.CriarForm('FrmFornecedores', Self, true);
        end;
end;

procedure TRptFornecedores.Endereo1Click(Sender: TObject);
begin
    inherited;
    Endereo1.Checked := not Endereo1.Checked;
    if Endereo1.Checked then
        dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
    else
        dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptFornecedores.FormsComponentRefresh(Sender: TObject);
begin
    inherited;
    AtualizaConsulta;
end;

procedure TRptFornecedores.C_ConsultaCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
end;




end.


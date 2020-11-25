unit Rpt_Oficina;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
    dxBkgnd, dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk,
    dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet,
    IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
    DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
    TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor,
    TS_DateTimePicker, dxDBTLCl, dxGrClms;

type
    TRptOficina = class(TRptPadrao)
        C_ConsultaDATA: TDateField;
        C_ConsultaNUMERO: TStringField;
        C_ConsultaFAVORECIDO: TIntegerField;
        C_ConsultaCODIGO: TStringField;
        C_ConsultaNOME: TStringField;
        C_ConsultaRAZAO: TStringField;
        C_ConsultaID: TIntegerField;
        C_ConsultaIDSAIDA: TIntegerField;
        C_ConsultaDESCRICAO: TStringField;
        C_ConsultaESTADOEQUIPAMENTO: TStringField;
        C_ConsultaDATAENTRADA: TDateField;
        C_ConsultaHORAENTRADA: TTimeField;
        C_ConsultaDATAENTREGA: TDateField;
        C_ConsultaHORAENTREGA: TTimeField;
        C_ConsultaEMOFICINA: TStringField;
        C_ConsultaSERVICOPRONTO: TStringField;
        C_ConsultaTIPOMOVIMENTO: TIntegerField;
        C_ConsultaDESCTIPOMOVIMENTO: TStringField;
        TS_Label1: TTS_Label;
        DataI: TTS_DateTimePicker;
        TS_Label2: TTS_Label;
        DataF: TTS_DateTimePicker;
        btClientes: TTS_SpeedButton;
        dbgConsultaDATA: TdxDBGridDateColumn;
        dbgConsultaNUMERO: TdxDBGridMaskColumn;
        dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
        dbgConsultaCODIGO: TdxDBGridMaskColumn;
        dbgConsultaNOME: TdxDBGridMaskColumn;
        dbgConsultaRAZAO: TdxDBGridMaskColumn;
        dbgConsultaID: TdxDBGridMaskColumn;
        dbgConsultaIDSAIDA: TdxDBGridMaskColumn;
        dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
        dbgConsultaESTADOEQUIPAMENTO: TdxDBGridMaskColumn;
        dbgConsultaDATAENTRADA: TdxDBGridDateColumn;
        dbgConsultaHORAENTRADA: TdxDBGridTimeColumn;
        dbgConsultaDATAENTREGA: TdxDBGridDateColumn;
        dbgConsultaHORAENTREGA: TdxDBGridTimeColumn;
        dbgConsultaEMOFICINA: TdxDBGridMaskColumn;
        dbgConsultaSERVICOPRONTO: TdxDBGridMaskColumn;
        dbgConsultaTIPOMOVIMENTO: TdxDBGridMaskColumn;
        dbgConsultaDESCTIPOMOVIMENTO: TdxDBGridMaskColumn;
    C_ConsultaFINALIZADO: TStringField;
    dbgConsultaFINALIZADO: TdxDBGridMaskColumn;
        procedure btClientesClick(Sender: TObject);
        procedure Atualizar;
        procedure btAtualizarClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
    private
        { Private declarations }
        sFavorecidos, sNomesFavorecidos: string;
    public
        { Public declarations }
    end;

var
    RptOficina: TRptOficina;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TRptOficina.btClientesClick(Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            SetParametrosForm(['', sFavorecidos, 1]);
            CriarForm('DlgEscolheFavorecidos', Self, True);
            if ExisteParametrosForm then
                begin
                    sFavorecidos := GetParametrosForm(0);
                    sNomesFavorecidos := GetParametrosForm(1);
                    LimparParametrosForm;
                end;
        end;

end;

procedure TRptOficina.Atualizar;
begin
    with C_Consulta do
        begin
            Close;
            CommandText := 'select s.data, s.numero, f.favorecido, f.codigo, f.nome, f.razao, tm.tipomovimento, tm.descricao as desctipomovimento, ' +
                            'o.id, o.idsaida, o.descricao, o.estadoequipamento, o.dataentrada, o.horaentrada, o.dataentrega, o.horaentrega, ' +
                            'case when o.emoficina = ''S'' then ''SIM'' else ''NÃO'' end as emoficina, ' +
                            'case when o.servicopronto = ''S'' then ''SIM'' else ''NÃO'' end as servicopronto, ' +
                            'case when o.finalizado = ''S'' then ''SIM'' else ''NÃO'' end as finalizado ' + 
                            'from oficina o inner join saidas s on o.idsaida = s.saida ' +
                            'inner join favorecidos f on s.favorecido = f.favorecido ' +
                            'inner join tiposmovimento tm on s.tipomovimento = tm.tipomovimento ' +
                            'where s.data >= :datai and s.data <= :dataf ';

            if (sFavorecidos <> '') then
                CommandText := CommandText + ' and s.favorecido in (' + sFavorecidos + ')';

            CommandText := CommandText + ' order by s.data desc, o.dataentrada desc';
            Params.ParamByName('datai').AsDateTime := DataI.Date;
            Params.ParamByName('dataf').AsDateTime := DataF.Date;

            Open;
        end;

    FormsComponent.Caption := 'Oficina no Período de: ' + DateToStr(DataI.Date) + ' a ' + DateToStr(DataF.Date);

end;

procedure TRptOficina.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptOficina.FormsComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
    DataI.OnDateChange := nil;
    DataF.OnDateChange := nil;
    if DataI.GetEditingText = '' then
        DataI.Date := (DMProjeto.getDataServidor);
    if DataF.GetEditingText = '' then
        DataF.Date := (DMProjeto.getDataServidor);
end;

end.

 
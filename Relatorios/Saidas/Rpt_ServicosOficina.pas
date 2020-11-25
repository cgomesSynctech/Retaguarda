unit Rpt_ServicosOficina;

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
    TRptServicosOficina = class(TRptPadrao)
        DataI: TTS_DateTimePicker;
        TS_Label1: TTS_Label;
        DataF: TTS_DateTimePicker;
        TS_Label2: TTS_Label;
        C_ConsultaSAIDA: TIntegerField;
        C_ConsultaDATA: TDateField;
        C_ConsultaNUMERO: TStringField;
        C_ConsultaITEM: TIntegerField;
        C_ConsultaCODIGO: TStringField;
        C_ConsultaDESCRICAO: TStringField;
        C_ConsultaPRECO: TFloatField;
        C_ConsultaQUANTIDADE: TFloatField;
        C_ConsultaSUBTOTALITEM: TFloatField;
        C_ConsultaMECANICO: TStringField;
        C_ConsultaIDOFICINA: TIntegerField;
        C_ConsultaEMOFICINA: TStringField;
        C_ConsultaSERVICOPRONTO: TStringField;
        C_ConsultaFINALIZADO: TStringField;
        dbgConsultaSAIDA: TdxDBGridMaskColumn;
        dbgConsultaDATA: TdxDBGridDateColumn;
        dbgConsultaNUMERO: TdxDBGridMaskColumn;
        dbgConsultaITEM: TdxDBGridMaskColumn;
        dbgConsultaCODIGO: TdxDBGridMaskColumn;
        dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
        dbgConsultaPRECO: TdxDBGridMaskColumn;
        dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
        dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn;
        dbgConsultaMECANICO: TdxDBGridMaskColumn;
        dbgConsultaIDOFICINA: TdxDBGridMaskColumn;
        dbgConsultaEMOFICINA: TdxDBGridMaskColumn;
        dbgConsultaSERVICOPRONTO: TdxDBGridMaskColumn;
        dbgConsultaFINALIZADO: TdxDBGridMaskColumn;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure Atualizar;
    procedure btAtualizarClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    RptServicosOficina: TRptServicosOficina;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TRptServicosOficina.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    DataI.OnDateChange := nil;
    DataF.OnDateChange := nil;
    if DataI.GetEditingText = '' then
        DataI.Date := (DMProjeto.getDataServidor);
    if DataF.GetEditingText = '' then
        DataF.Date := (DMProjeto.getDataServidor);
end;

procedure TRptServicosOficina.Atualizar;
begin
    with C_Consulta do
        begin
            Close;
            CommandText := 'select s.saida, s.data, s.numero, ii.item, ii.codigo, si.descricao, si.preco, si.quantidade, si.subtotalitem, ' +
                            'f.nome as mecanico, o.id as idoficina, case when o.emoficina = ''S'' then ''SIM'' else ''NÃO'' end as emoficina, ' +
                            'case when o.servicopronto = ''S'' then ''SIM'' else ''NÃO'' end as servicopronto, ' +
                            'case when o.finalizado = ''S'' then ''SIM'' else ''NÃO'' end as finalizado ' +
                            'from oficina o inner join saidas s on o.idsaida = s.saida ' +
                            'inner join saidasitens si on (si.empresa = s.empresa and si.saida = s.saida and si.pdv = s.pdv) ' +
                            'inner join itens ii on si.item = ii.item ' +
                            'left join favorecidos f on o.mecanico = f.favorecido ' +
                            'where s.data >= :datai and s.data <= :dataf and ii.tipoitem = 3 ' +
                            'and s.situacao = ''N'' and si.situacao = ''N'' ' +
                            ' order by s.data asc, s.numero asc';

            Params.ParamByName('datai').AsDateTime := DataI.Date;
            Params.ParamByName('dataf').AsDateTime := DataF.Date;

            Open;
        end;

    FormsComponent.Caption := 'Itens de Serviço em Oficina no Período de: ' + DateToStr(DataI.Date) + ' a ' + DateToStr(DataF.Date);
    
end;

procedure TRptServicosOficina.btAtualizarClick(Sender: TObject);
begin
  inherited;
    Atualizar;
end;

end.

 
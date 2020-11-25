unit Rpt_ProducoesServico;

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
  dxGrClms, dxEditor, TS_DateTimePicker;

type
  TRptProducoesServico = class(TRptPadrao)
    C_ConsultaPRODUCAOSERVICO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaSERVICO: TStringField;
    C_ConsultaITEM: TStringField;
    C_ConsultaQUANTIDADE: TIntegerField;
    C_ConsultaPRECO: TBCDField;
    C_ConsultaSUBTOTAL: TBCDField;
    dbgConsultaPRODUCAOSERVICO: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaSERVICO: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaNOMEFUNCIONARIO: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaPRECO: TdxDBGridCurrencyColumn;
    dbgConsultaSUBTOTAL: TdxDBGridCurrencyColumn;
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    C_ConsultaNOMEFUNCIONARIO: TStringField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptProducoesServico: TRptProducoesServico;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TRptProducoesServico.Atualizar;
Begin
   FormsComponent.Caption := 'Produção dos Serviços: '+DateTostr(DataI.Date) +' ' +
     'a '+  DateTostr(DataF.Date);
   with Q_Consulta do begin
  	Close;
        Sql.Text := 'Select ps.producaoservico, ps.codigo, ps.data, ' +
          's.descricao as Servico, i.descricao as item, '+
                       '  f.nome as NomeFuncionario, '+
                       '  psd.quantidade, psd.preco, (psd.quantidade * ' +
                       'psd.preco) as SubTotal '+
                       '  from producoesservico ps '+
                       '  inner join producoesservicosdet psd on ' +
                       'psd.producaoservico = ps.producaoservico '+
                       '  inner join favorecidos f on f.favorecido = ' +
                       'ps.funcionario '+
                       '  inner join itens s on s.item = ps.servico '+
                       '  inner join itens i on i.item = psd.item '+
                       ' Where ps.data >= :dataI and ps.Data <= :DataF ';

    	ParamByName('DataI').AsDateTime := DataI.Date;
        ParamByName('DataF').AsDateTime := DataF.Date;
        C_Consulta.Close;
        C_Consulta.FetchParams;
	C_Consulta.Open;
        FormsComponent.Caption := 'Produção dos Serviços: '+DateTostr(DataI.Date) +' a '+  DateTostr(DataF.Date);
   End;
End;

procedure TRptProducoesServico.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.Date := Now;
  DataF.Date := Now;
end;

procedure TRptProducoesServico.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.

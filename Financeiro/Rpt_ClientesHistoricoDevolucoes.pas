unit Rpt_ClientesHistoricoDevolucoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, dxBar, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxBarExtItems, DBClient, Provider, Db,
  IBCustomDataSet, IBQuery, TS_Panel, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, ExtCtrls, StdCtrls, TS_Label, dxfLabel, TS_MaxPanel,
  dxExEdtr, dxEdLib, TS_ButtonEdit, TS_EditFavorecido, dxEditor, dxDBEdtr,
  dxDBELib, TS_DBLookupTipoFav, dxDBTLCl, dxGrClms;

type
  TRptClientesHistoricoDevolucoes = class(TRptPadrao)
    C_ConsultaOPERACAO: TIntegerField;
    C_ConsultaOPDOC: TIntegerField;
    C_ConsultaDATA: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaNOME: TStringField;
    C_ConsultaNUMCHEQUE: TIntegerField;
    C_ConsultaVENCIMENTO: TDateField;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    dbgConsultaOPERACAO: TdxDBGridMaskColumn;
    dbgConsultaOPDOC: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaVALOR: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaNOMEBANCO: TStringField;
    dbgConsultaDescConta: TdxDBGridMaskColumn;
    dbgConsultaNomeBanco: TdxDBGridMaskColumn;
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptClientesHistoricoDevolucoes: TRptClientesHistoricoDevolucoes;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TRptClientesHistoricoDevolucoes.Atualizar;
begin
	with C_Consulta do begin
  	Close;
    CommandText := 'Select o.Operacao, od.OpDoc, o.Data, od.Valor, f.Nome, '+
                   'od.NumCheque, od.Vencimento, c.Descricao as DescConta, '+
                   'b.Nome as NomeBanco '+
                   'From OperacoesFinanceiras o '+
                   'inner join OperacoesFinanceirasDet od on o.operacao = od.operacao '+
                   'inner join DepositosDoc dd on dd.IDDoc = od.IDDoc '+
                   'left join Favorecidos f on od.favorecido = f.favorecido '+
                   'left join Favorecidos b on dd.banco = b.favorecido '+
         					 'left join Contas c on o.ContaOrigem = c.Conta '+
                   'Where o.TipoOperacao = 9 ';
    if edFavorecido.ID <> 0 then
    	CommandText := CommandText + 'and o.Favorecido = '+IntToStr(edFavorecido.ID);
		CommandText := CommandText + ' order by o.TipoOperacao, o.Data';
    Open;
  end;
end;

procedure TRptClientesHistoricoDevolucoes.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptClientesHistoricoDevolucoes.edFavorecidoChange(Sender: TObject);
begin
  inherited;
  if edFavorecido.Text = '' then
  	Atualizar;
end;

procedure TRptClientesHistoricoDevolucoes.FormCreate(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

end.

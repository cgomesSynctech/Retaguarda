unit Dlg_Recebido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms, Db,
  IBCustomDataSet, IBQuery, StdCtrls, TS_Label, ExtCtrls, teCtrls,
  TS_EffectsPanel, Variants, dxExEdtr;

type
  TDlgRecebido = class(TForm)
    DBRecebido: TTS_QDBGrid;
    Q_Recebido: TIBQuery;
    Q_RecebidoDS: TDataSource;
    Q_RecebidoIDDOC: TIntegerField;
    Q_RecebidoVALOR: TIBBCDField;
    Q_RecebidoVENCIMENTO: TDateField;
    Q_RecebidoNOMECONTA: TIBStringField;
    Q_RecebidoDATA: TDateField;
    Q_RecebidoDESCFORMAPAG: TIBStringField;
    Q_RecebidoDESCSTATUS: TIBStringField;
    Q_RecebidoSTATUS: TIntegerField;
    DBRecebidoIDDOC: TdxDBGridMaskColumn;
    DBRecebidoVALOR: TdxDBGridMaskColumn;
    DBRecebidoVENCIMENTO: TdxDBGridDateColumn;
    DBRecebidoNOMECONTA: TdxDBGridMaskColumn;
    DBRecebidoDATA: TdxDBGridDateColumn;
    DBRecebidoDESCFORMAPAG: TdxDBGridMaskColumn;
    DBRecebidoDESCSTATUS: TdxDBGridMaskColumn;
    DBRecebidoSTATUS: TdxDBGridMaskColumn;
    Q_RecebidoDEPOSITO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure DBRecebidoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBRecebidoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
		Descontos, Juros, CreditoUtilizado, CreditoGerado : Currency;
  end;

var
  DlgRecebido: TDlgRecebido;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDlgRecebido.FormCreate(Sender: TObject);
begin
  if DMProjeto.ExisteParametrosForm then begin
  	with Q_Recebido do begin
    	close;
      if DMProjeto.getParametrosForm(0) <> 0 then begin
      	sql.text:='Select dd.Deposito, dd.IDDoc, dd.Valor, dd.Vencimento, '+
      						'c.Descricao as NomeConta, d.Data, f.descricao as descFormaPag, '+
                  'st.descricao as DescStatus, dd.Status '+
									'from DepositosTitulos dt '+
                  'inner join Depositos d on d.deposito = dt.deposito '+
                  'inner join DepositosDoc dd on dd.deposito = d.deposito '+
                  'inner join Contas c on c.conta = d.conta '+
                  'inner join FormasPagamento f on f.formapagamento = dd.formapagamento '+
                  'inner join StatusDoc st on st.status = dd.status '+
									'where dt.titulo = :ID and dt.status < 70';
      	parambyname('ID').AsInteger := DMProjeto.getParametrosForm(0);
      end else begin
      	sql.text:='Select distinct dd.Deposito, dd.IDDoc, dd.Valor, dd.Vencimento, '+
      						'c.Descricao as NomeConta, d.Data, f.descricao as descFormaPag, '+
                  'st.descricao as DescStatus, dd.Status '+
									'from TitulosAReceber t '+
                  'inner join DepositosTitulos dt on dt.titulo = t.id and dt.status < 70 '+
                  'inner join Depositos d on d.deposito = dt.deposito '+
                  'inner join DepositosDoc dd on dd.deposito = d.deposito '+
                  'inner join Contas c on c.conta = d.conta '+
                  'inner join FormasPagamento f on f.formapagamento = dd.formapagamento '+
                  'inner join StatusDoc st on st.status = dd.status '+
                  'where t.Venda = :ID and t.status > 0';
      	parambyname('ID').AsInteger := DMProjeto.getParametrosForm(1);
      end;
      caption := 'Recebido de '+ DMProjeto.getParametrosForm(2);
      open;
    end;
    DMProjeto.LimparParametrosForm;
  end;
end;

procedure TDlgRecebido.DBRecebidoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  AFont.Color := DMProjeto.CorPadrao( DBRecebido.GetFieldValue( ANode, 'Status', 0) );
  if DBRecebido.GetFieldValue( ANode, 'Status', 0) = 70 then
    AFont.Style := [fsStrikeout];
end;

procedure TDlgRecebido.DBRecebidoDblClick(Sender: TObject);
begin
	with DMProjeto do begin
		SetParametrosForm([Q_RecebidoDeposito.Value]);
    self.Close;
  end;
end;

end.

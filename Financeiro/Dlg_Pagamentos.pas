unit Dlg_Pagamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms, Db,
  IBCustomDataSet, IBQuery, StdCtrls, TS_Label, ExtCtrls, teCtrls,
  TS_EffectsPanel, Variants, dxExEdtr;

type
  TDlgPagamentos = class(TForm)
    DBRecebido: TTS_QDBGrid;
    Q_Pago: TIBQuery;
    Q_RecebidoDS: TDataSource;
    Q_PagoIDDOC: TIntegerField;
    Q_PagoVALOR: TIBBCDField;
    Q_PagoVENCIMENTO: TDateField;
    Q_PagoNOMECONTA: TIBStringField;
    Q_PagoDATA: TDateField;
    Q_PagoDESCFORMAPAG: TIBStringField;
    Q_PagoDESCSTATUS: TIBStringField;
    Q_PagoSTATUS: TIntegerField;
    DBRecebidoIDDOC: TdxDBGridMaskColumn;
    DBRecebidoVALOR: TdxDBGridMaskColumn;
    DBRecebidoVENCIMENTO: TdxDBGridDateColumn;
    DBRecebidoNOMECONTA: TdxDBGridMaskColumn;
    DBRecebidoDATA: TdxDBGridDateColumn;
    DBRecebidoDESCFORMAPAG: TdxDBGridMaskColumn;
    DBRecebidoDESCSTATUS: TdxDBGridMaskColumn;
    DBRecebidoSTATUS: TdxDBGridMaskColumn;
    Q_PagoRETIRADA: TIntegerField;
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
  DlgPagamentos: TDlgPagamentos;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDlgPagamentos.FormCreate(Sender: TObject);
begin
  if DMProjeto.ExisteParametrosForm then begin
  	with Q_Pago do begin
    	close;
      if DMProjeto.getParametrosForm(0) <> 0 then begin
      	sql.text:='Select rd.Retirada, rd.IDDoc, rd.Valor, rd.Vencimento, '+
      						'c.Descricao as NomeConta, r.Data, f.descricao as descFormaPag, '+
                  'st.descricao as DescStatus, rd.Status '+
									'from RetiradasDuplicatas rdd, Retiradas r, RetiradasDoc rd, Contas c, FormasPagamento f, StatusDoc st '+
									'where rdd.duplicata = :ID and '+
           				'rdd.retirada = r.retirada and '+
                  'rdd.retirada = rd.retirada and '+
                  'rd.formapagamento = f.formapagamento and '+
                  'rd.status = st.status and '+
                  'rd.Conta = c.Conta ';
      	parambyname('ID').AsInteger := DMProjeto.getParametrosForm(0);
      end else begin
      	sql.text:='Select rd.Retirada, rd.IDDoc, rd.Valor, rd.Vencimento, '+
      						'c.Descricao as NomeConta, r.Data, f.descricao as descFormaPag, '+
                  'st.descricao as DescStatus, rd.Status '+
									'from DuplicatasAPagar d, RetiradasDuplicatas rdd, Retiradas r, RetiradasDoc rd, Contas c, FormasPagamento f, StatusDoc st '+
									'where d.Compra = :ID and d.id = rdd.duplicata and '+
           				'rdd.retirada = r.retirada and '+
                  'rdd.retirada = rd.retirada and '+
                  'rd.formapagamento = f.formapagamento and '+
                  'rd.status = st.status and '+
                  'rd.Conta = c.Conta ';
      	parambyname('ID').AsInteger := DMProjeto.getParametrosForm(1);
      end;
      caption := 'Pago a '+ DMProjeto.getParametrosForm(2);
      open;
    end;
    DMProjeto.LimparParametrosForm;
  end;
end;

procedure TDlgPagamentos.DBRecebidoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  AFont.Color := DMProjeto.CorPadrao( DBRecebido.GetFieldValue( ANode, 'Status', 0) );
  if DBRecebido.GetFieldValue( ANode, 'Status', 0) = 70 then
    AFont.Style := [fsStrikeout];
end;

procedure TDlgPagamentos.DBRecebidoDblClick(Sender: TObject);
begin
	with DMProjeto do begin
		SetParametrosForm([Q_PagoRetirada.Value]);
    self.Close;
  end;
end;

end.

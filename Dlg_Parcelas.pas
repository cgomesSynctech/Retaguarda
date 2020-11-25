unit Dlg_Parcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxExEdtr, DB, Provider, DBClient, IBCustomDataSet, IBQuery,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms,
  Buttons, TS_SpeedButton;

type
  TDlgParcelas = class(TForm)
    dbgParcelas: TTS_QDBGrid;
    Q_Parcelas: TIBQuery;
    C_Parcelas: TClientDataSet;
    P_Parcelas: TDataSetProvider;
    C_ParcelasDS: TDataSource;
    C_ParcelasID: TIntegerField;
    C_ParcelasPARCELA: TIntegerField;
    C_ParcelasVENCIMENTO: TDateField;
    C_ParcelasSALDO: TBCDField;
    C_ParcelasTITULO: TStringField;
    C_ParcelasTIPOCOBRANCA: TStringField;
    dbgParcelasPARCELA: TdxDBGridMaskColumn;
    dbgParcelasVENCIMENTO: TdxDBGridDateColumn;
    dbgParcelasSALDO: TdxDBGridCurrencyColumn;
    dbgParcelasTITULO: TdxDBGridMaskColumn;
    dbgParcelasTIPOCOBRANCA: TdxDBGridMaskColumn;
    C_Parcelas_icSelecionado: TIntegerField;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_SpeedButton2: TTS_SpeedButton;
    procedure FormShow(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Total : Currency;
    Saida : Integer;
  end;

var
  DlgParcelas: TDlgParcelas;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDlgParcelas.FormShow(Sender: TObject);
begin
  Total := 0;
  with C_Parcelas do begin
  	close;
    FetchParams;
    Params.ParamByName('Saida').AsInteger := Saida;
    Open;
    DisableControls;
    First;
    while not EOF do begin
      if C_ParcelasVencimento.Value <= DMProjeto.dDataSistemaAtual then
         dbgParcelas.SelecionarLinha;
      Next;
    end;
    First;
    EnableControls;
  end;
end;

procedure TDlgParcelas.TS_SpeedButton1Click(Sender: TObject);
begin
  Total := dbgParcelas.TotalSelecionado('Saldo');
  ModalResult := mrOk;
end;

procedure TDlgParcelas.TS_SpeedButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.

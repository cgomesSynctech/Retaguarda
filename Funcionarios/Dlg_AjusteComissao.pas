unit Dlg_AjusteComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, DB, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, IBCustomDataSet, IBUpdateSQL, DBClient, Provider,
  IBQuery, dxCntner, TS_QDBGrid, dxDBEdtr, dxDBELib, TS_LookupComboBox,
  dxEditor, dxEdLib, TS_DateTimePicker;

type
  TDlgAjusteComissao = class(TFrmModeloCadastros)
    pnTop: TTS_Panel;
    Q_AjusteComissao: TIBQuery;
    P_AjusteComissao: TDataSetProvider;
    C_AjusteComissao: TClientDataSet;
    C_AjusteComissaoDS: TDataSource;
    U_AjusteComissao: TIBUpdateSQL;
    C_AjusteComissaoSAIDAITEM: TIntegerField;
    C_AjusteComissaoUNIDADE: TStringField;
    C_AjusteComissaoCODIGO: TStringField;
    C_AjusteComissaoDESCRICAO: TStringField;
    C_AjusteComissao_icSelecionado: TIntegerField;
    C_AjusteComissaoicValorComissao: TCurrencyField;
    TS_Panel1: TTS_Panel;
    TS_Panel2: TTS_Panel;
    C_SaidasDs: TDataSource;
    C_Saidas: TClientDataSet;
    IntegerField1: TIntegerField;
    P_Saidas: TDataSetProvider;
    Q_Saidas: TIBQuery;
    C_SaidasSAIDA: TIntegerField;
    C_SaidasNUMERO: TStringField;
    C_SaidasDATA: TDateField;
    C_SaidasCLIENTE: TStringField;
    dtInicio: TTS_DateTimePicker;
    dtFim: TTS_DateTimePicker;
    lkVendedor: TTS_LookupComboBox;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    Q_Vendedor: TIBQuery;
    Q_VendedorFAVORECIDO: TIntegerField;
    Q_VendedorNOME: TIBStringField;
    Q_VendedorDs: TDataSource;
    dgSaidas: TTS_QDBGrid;
    dgSaidasSAIDA: TdxDBGridMaskColumn;
    dgSaidasNUMERO: TdxDBGridMaskColumn;
    dgSaidasDATA: TdxDBGridDateColumn;
    dgSaidasCLIENTE: TdxDBGridMaskColumn;
    dgSaidasDESCONTO: TdxDBGridCurrencyColumn;
    dgSaidasTOTAL: TdxDBGridCurrencyColumn;
    dgItens: TTS_QDBGrid;
    dgItensSAIDAITEM: TdxDBGridMaskColumn;
    dgItensPRECO: TdxDBGridMaskColumn;
    dgItensUNIDADE: TdxDBGridMaskColumn;
    dgItensCODIGO: TdxDBGridMaskColumn;
    dgItensDESCRICAO: TdxDBGridMaskColumn;
    dgItens_icSelecionado: TdxDBGridColumn;
    Q_MasterDS: TDataSource;
    C_SaidasQ_AjusteComissao: TDataSetField;
    dgItensQUANTIDADE: TdxDBGridMaskColumn;
    dgItensPCOMISSAO: TdxDBGridMaskColumn;
    dgItensSUBTOTALITEM: TdxDBGridMaskColumn;
    dgItensicValorComissao: TdxDBGridMaskColumn;
    C_SaidasDESCONTO: TFloatField;
    C_SaidasTOTAL: TFloatField;
    C_AjusteComissaoPCOMISSAO: TFloatField;
    C_AjusteComissaoQUANTIDADE: TFloatField;
    C_AjusteComissaoPRECO: TFloatField;
    C_AjusteComissaoSUBTOTALITEM: TFloatField;
    procedure C_AjusteComissaoCalcFields(DataSet: TDataSet);
    procedure btLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgAjusteComissao: TDlgAjusteComissao;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TDlgAjusteComissao.C_AjusteComissaoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('icValorComissao').Value := (DataSet.FieldByName('pcomissao').Value / 100.00) * DataSet.FieldByName('SUBTOTALITEM').Value;
end;

procedure TDlgAjusteComissao.btLimparClick(Sender: TObject);
begin
  inherited;
  With Q_Saidas do Begin
    Close;
    Params[0].Value := lkVendedor.LookUpKeyValue;
    Params[1].AsDateTime := dtInicio.Date;
    Params[2].AsDateTime := dtFim.Date;
    C_Saidas.Close;
    C_Saidas.FetchParams;
    C_Saidas.Open;
  End;
end;

procedure TDlgAjusteComissao.FormCreate(Sender: TObject);
begin
  inherited;
  Q_Vendedor.Open;
  dtInicio.Date := Funcoes.FirstMonthDay( Now );
  dtFim.Date := Now;
end;

procedure TDlgAjusteComissao.btGravarClick(Sender: TObject);
begin
  inherited;
  C_AjusteComissao.ApplyUpdates(0);
end;

end.

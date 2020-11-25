unit Dlg_TransferirParaCobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, DB, Provider, DBClient, IBCustomDataSet,
  IBQuery, dxEditor, dxEdLib, TS_SpinEdit, dxDBTLCl, dxGrClms;

type
  TDlgTransferirParaCobranca = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    DBTitulos: TTS_QDBGrid;
    TS_Label1: TTS_Label;
    edDias: TTS_SpinEdit;
    Q_Titulos: TIBQuery;
    C_Titulos: TClientDataSet;
    P_Titulos: TDataSetProvider;
    C_TitulosDS: TDataSource;
    C_TitulosID: TIntegerField;
    C_TitulosNOME: TStringField;
    C_TitulosVENCIMENTO: TDateField;
    C_TitulosFALTARECEBER: TBCDField;
    C_TitulosDiasAtraso: TIntegerField;
    DBTitulosID: TdxDBGridMaskColumn;
    DBTitulosNOME: TdxDBGridMaskColumn;
    DBTitulosVENCIMENTO: TdxDBGridDateColumn;
    DBTitulosDiasAtraso: TdxDBGridColumn;
    C_TitulosCPF_CNPJ: TStringField;
    DBTitulosCPF_CNPJ: TdxDBGridColumn;
    DBTitulosFALTARECEBER: TdxDBGridMaskColumn;
    C_TitulosCLIENTE: TIntegerField;
    procedure C_TitulosCalcFields(DataSet: TDataSet);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgTransferirParaCobranca: TDlgTransferirParaCobranca;

implementation

uses DM_Projeto;

{$R *.dfm}

{rocedure TDlgTransferirParaCobranca.Atualizar;
begin
	with C_Titulos do begin
  	Close;
    FetchParams;
    Params.ParamByName('Data').AsDateTime := DMFinanceiro.dDataSistemaAtual - edDias.IntValue;
    Open;
  end;
end;  }

procedure TDlgTransferirParaCobranca.C_TitulosCalcFields(DataSet: TDataSet);
begin
  inherited;
//	C_TitulosDiasAtraso.Value := DMFinanceiro.dDataSistemaAtual - C_TitulosVencimento.Value;
end;

procedure TDlgTransferirParaCobranca.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
//	Atualizar;
end;

procedure TDlgTransferirParaCobranca.btGravarClick(Sender: TObject);
begin
  inherited;
(*  if DlgMsg.ShowMsg() then begin
  end;
	with DMProjeto do begin
  	if not DB_Projeto.DefaultTransaction.InTransaction then
			DB_Projeto.DefaultTransaction.StartTransaction;

		DMFinanceiro.TransferirTitulosParaCobranca( edDias.IntValue, DBTitulos.Selecionados );

  	if DB_Projeto.DefaultTransaction.InTransaction then
			DB_Projeto.DefaultTransaction.CommitTransaction;
  end; *)
end;

end.

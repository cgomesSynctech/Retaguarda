unit Dlg_GruposComissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, DB, DBClient, Provider,
  IBCustomDataSet, IBQuery, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, TS_QDBGrid;

type
  TDlgGruposComissoes = class(TFrmModeloCadastros)
    lbFaixa: TTS_Label;
    dbgGrupos: TTS_QDBGrid;
    dbgGruposGRUPOCOMISSAODET: TdxDBGridMaskColumn;
    dbgGruposGRUPOCOMISSAO: TdxDBGridMaskColumn;
    dbgGruposVALORINI: TdxDBGridCalcColumn;
    dbgGruposVALORFIM: TdxDBGridCalcColumn;
    dbgGruposCOMISSAO: TdxDBGridCalcColumn;
    Q_GruposCom: TIBQuery;
    P_GruposCom: TDataSetProvider;
    C_GruposCom: TClientDataSet;
    C_GruposComDS: TDataSource;
    C_GruposComGRUPOCOMISSAODET: TIntegerField;
    C_GruposComGRUPOCOMISSAO: TIntegerField;
    C_GruposComVALORINI: TBCDField;
    C_GruposComVALORFIM: TBCDField;
    C_GruposComCOMISSAO: TBCDField;
    C_GruposComicComissao: TCurrencyField;
    dbgGruposicComissao: TdxDBGridColumn;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_GruposComCalcFields(DataSet: TDataSet);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
    nGrupo : Integer;
    nSubTotal : Currency;
  public
    { Public declarations }
  end;

var
  DlgGruposComissoes: TDlgGruposComissoes;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDlgGruposComissoes.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  nGrupo := DMProjeto.GetParametrosForm(1);
  nSubTotal := DMProjeto.GetParametrosForm(2);
  lbEstadoForm.Caption := 'Item: ' + DMProjeto.GetParametrosForm(3);
  lbFaixa.Caption := 'Faixas de Descontos => DESCONTO ATUAL: ' + FormatFloat('0.00 %',DMProjeto.GetParametrosForm(4));
  C_GruposCom.Close;
  Q_GruposCom.ParamByName('GRUPOCOMISSAO').AsInteger := nGrupo;
  C_GruposCom.Open;

end;

procedure TDlgGruposComissoes.C_GruposComCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('icComissao').AsCurrency := (DataSet.FieldByName('Comissao').AsCurrency / 100)
                             * nSubTotal;
end;

procedure TDlgGruposComissoes.btGravarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.

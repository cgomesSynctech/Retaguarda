unit Dlg_PesquisaLocalizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, DB, IBCustomDataSet, IBQuery, Provider,
  DBClient, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  TS_LookupComboBox, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel;

type
  TDlgPesquisaLocalizacao = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    cmbLocalizacao: TTS_LookupComboBox;
    C_LocalizacaoDS: TDataSource;
    C_Localizacao: TClientDataSet;
    P_Localizacao: TDataSetProvider;
    Q_Localizacao: TIBQuery;
    C_LocalizacaoSTATUSSERVICO: TIntegerField;
    C_LocalizacaoDESCRICAO: TStringField;
    C_LocalizacaoORDEM: TIntegerField;
    TS_Label2: TTS_Label;
    cmbMarcas: TTS_LookupComboBox;
    Q_Marcas: TIBQuery;
    P_Marcas: TDataSetProvider;
    C_Marcas: TClientDataSet;
    C_MarcasMARCA: TIntegerField;
    C_MarcasDESCRICAO: TStringField;
    C_MarcasDS: TDataSource;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure cmbLocalizacaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgPesquisaLocalizacao: TDlgPesquisaLocalizacao;

implementation

uses Rpt_Tecnica;

{$R *.dfm}

procedure TDlgPesquisaLocalizacao.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_Localizacao.Open;
end;

procedure TDlgPesquisaLocalizacao.btGravarClick(Sender: TObject);
begin
  inherited;
        RptTecnica := TRptTecnica.Create(Self);
        RptTecnica.ImprimirRelatorioPorLocalizacao(cmbLocalizacao.LookupKeyValue,cmbMarcas.LookupKeyValue);
        RptTecnica.Release;
        RptTecnica := nil;
end;

procedure TDlgPesquisaLocalizacao.cmbLocalizacaoChange(Sender: TObject);
begin
  inherited;
  C_Marcas.Open;
  cmbMarcas.Enabled := true;
end;

end.

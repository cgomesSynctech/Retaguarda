unit Dlg_EscolherParcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, TS_DateTimePicker, dxDBTLCl,
  dxGrClms, DB, DBClient, Provider, IBCustomDataSet, IBQuery,
  TS_ButtonEdit, TS_EditFavorecido;

type
  TDlgEscolherParcelas = class(TFrmModeloCadastros)
    dbgParcelas: TTS_QDBGrid;
    Q_Parcelas: TIBQuery;
    P_Parcelas: TDataSetProvider;
    C_Parcelas: TClientDataSet;
    C_ParcelasDS: TDataSource;
    C_ParcelasID: TIntegerField;
    C_ParcelasTITULO: TStringField;
    C_ParcelasVENCIMENTO: TDateField;
    C_ParcelasFALTARECEBER: TBCDField;
    C_ParcelasNOME: TStringField;
    C_ParcelasENDERECO: TStringField;
    C_ParcelasCIDADE: TStringField;
    C_ParcelasUF: TStringField;
    C_ParcelasCEP: TStringField;
    C_ParcelasFONE1: TStringField;
    C_ParcelasFONE2: TStringField;
    C_ParcelasCELULAR: TStringField;
    C_Parcelas_icSelecionado: TIntegerField;
    dbgParcelasID: TdxDBGridMaskColumn;
    dbgParcelasTITULO: TdxDBGridMaskColumn;
    dbgParcelasVENCIMENTO: TdxDBGridDateColumn;
    dbgParcelasFALTARECEBER: TdxDBGridCurrencyColumn;
    dbgParcelasNOME: TdxDBGridMaskColumn;
    dbgParcelasENDERECO: TdxDBGridMaskColumn;
    dbgParcelasCIDADE: TdxDBGridMaskColumn;
    dbgParcelasUF: TdxDBGridMaskColumn;
    dbgParcelasCEP: TdxDBGridMaskColumn;
    dbgParcelasFONE1: TdxDBGridMaskColumn;
    dbgParcelasFONE2: TdxDBGridMaskColumn;
    dbgParcelasCELULAR: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    edData: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    edFavorecido: TTS_EditFavorecido;
    TS_Label3: TTS_Label;
    edDataF: TTS_DateTimePicker;
    procedure btFecharCadastroClick(Sender: TObject);
    procedure edDataDateChange(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure edFavorecidoChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    bAtualizarDataInicio: boolean;
    procedure Atualizar;
  public
    { Public declarations }
    sParcelas : string;
  end;

var
  DlgEscolherParcelas: TDlgEscolherParcelas;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDlgEscolherParcelas.Atualizar;
begin
  if (bAtualizarDataInicio = false) then begin
    C_Parcelas.Close;
    Q_Parcelas.ParamByName('dtini').AsDateTime := edData.Date;
    Q_Parcelas.ParamByName('dtfim').AsDateTime := edDataF.Date;
    Q_Parcelas.ParamByName('cli').AsInteger := edFavorecido.ID;
    C_Parcelas.Open;
  end;  
end;

procedure TDlgEscolherParcelas.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  ModalResult := -1;
end;

procedure TDlgEscolherParcelas.edDataDateChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TDlgEscolherParcelas.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TDlgEscolherParcelas.edFavorecidoChange(Sender: TObject);
begin
  inherited;
  if edFavorecido.Text = '' then edFavorecido.ID := 0;
end;

procedure TDlgEscolherParcelas.btGravarClick(Sender: TObject);
begin
  inherited;
  try
    sParcelas := '';
    C_Parcelas.DisableControls;
    C_Parcelas.First;
    while not C_Parcelas.EOF do begin
      if C_Parcelas_icSelecionado.AsInteger = 1 then begin
         sParcelas := sParcelas + C_ParcelasID.AsString + ';' +
                      C_ParcelasTITULO.AsString + ';' +
                      DateToStr(C_ParcelasVENCIMENTO.AsDateTime) + ';' +
                      CurrToStr(C_ParcelasFALTARECEBER.AsCurrency) + ';' +
                      C_ParcelasNOME.AsString + ';' +
                      C_ParcelasENDERECO.AsString + ';' +
                      C_ParcelasCIDADE.AsString + ';' +
                      C_ParcelasUF.AsString + ';' +
                      C_ParcelasCEP.AsString + ';' +
                      C_ParcelasFONE1.AsString + ';' +
                      C_ParcelasFONE2.AsString + ';' +
                      C_ParcelasCELULAR.AsString + '||';

      end;
      C_Parcelas.Next;
    end;
    if Copy(sParcelas,Length(sParcelas)-2,2) = '||' then Delete(sParcelas,Length(sParcelas)-2,2);
  finally
    C_Parcelas.EnableControls;
  end;
  ModalResult := mrOK;
end;

procedure TDlgEscolherParcelas.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  bAtualizarDataInicio := true;
  sParcelas := '';
  edData.Date  := DMProjeto.getDataServidor;
  edDataF.Date := DMProjeto.getDataServidor;
  bAtualizarDataInicio := false;
end;

end.

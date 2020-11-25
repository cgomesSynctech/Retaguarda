unit Dlg_EscolherSaida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, Db, IBCustomDataSet, IBQuery, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, dxEditor, dxEdLib, dxDBELib, TS_DBEdit, TS_Edit,
  DBClient, Provider, dxDBTLCl, dxGrClms, Variants;

type
  TDlgEscolherSaida = class(TFrmModeloCadastros)
    Q_Saidas: TIBQuery;
    Grid: TTS_QDBGrid;
    dfNumero: TTS_Edit;
    ppmGrid: TTS_PopupMenu;
    P_Saidas: TDataSetProvider;
    C_Saidas: TClientDataSet;
    C_SaidasDS: TDataSource;
    C_SaidasSAIDA: TIntegerField;
    C_SaidasNUMERO: TStringField;
    C_SaidasDATA: TDateField;
    C_SaidasFAVORECIDO: TIntegerField;
    C_SaidasOBS: TStringField;
    C_SaidasDESCONTO: TBCDField;
    C_SaidasFRETE: TBCDField;
    C_SaidasTOTAL: TBCDField;
    C_SaidasTIPOMOVIMENTO: TIntegerField;
    C_SaidasPEDIDO_CLIENTE: TStringField;
    C_SaidasOUTRASDESPESAS: TBCDField;
    C_SaidasJUROS: TBCDField;
    C_SaidasIMPOSTO: TBCDField;
    C_SaidasNOME: TStringField;
    C_SaidasDESCRICAO: TStringField;
    GridSAIDA: TdxDBGridMaskColumn;
    GridNUMERO: TdxDBGridMaskColumn;
    GridDATA: TdxDBGridDateColumn;
    GridFAVORECIDO: TdxDBGridMaskColumn;
    GridOBS: TdxDBGridMaskColumn;
    GridDESCONTO: TdxDBGridMaskColumn;
    GridFRETE: TdxDBGridMaskColumn;
    GridTOTAL: TdxDBGridMaskColumn;
    GridTIPOMOVIMENTO: TdxDBGridMaskColumn;
    GridPEDIDO_CLIENTE: TdxDBGridMaskColumn;
    GridOUTRASDESPESAS: TdxDBGridMaskColumn;
    GridJUROS: TdxDBGridMaskColumn;
    GridIMPOSTO: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    procedure C_SaidasAfterScroll(DataSet: TDataSet);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure Q_SaidasBeforeOpen(DataSet: TDataSet);
    procedure btComando1Click(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
  private
    { Private declarations }
    sComando, sCliente, sTipo : String;

  public
    { Public declarations }
  end;

var
  DlgEscolherSaida: TDlgEscolherSaida;

implementation
  uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgEscolherSaida.C_SaidasAfterScroll(DataSet: TDataSet);
begin
  inherited;
  dfNumero.Text := C_SaidasNumero.Value;
end;

procedure TDlgEscolherSaida.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  sComando := Q_Saidas.SQL.Text;

  if DMProjeto.ExisteParametrosForm then begin
    if DMProjeto.GetParametrosForm(0) <> null then begin
      sCliente := VarToStr(DMProjeto.GetParametrosForm(0));
      Q_Saidas.SQL.Text := Q_Saidas.SQL.Text + ' and s.Favorecido = ' + sCliente;
      if DMProjeto.QtdParametrosForm > 2 then
      	Q_Saidas.SQL.Text := Q_Saidas.SQL.Text + ' and s.saida <> ' + VarToStr(DMProjeto.GetParametrosForm(2));
      btComando1.Visible := true;
    end;

    if DMProjeto.GetParametrosForm(1) <> null then begin
      sTipo := VarToStr(DMProjeto.GetParametrosForm(1));
      Q_Saidas.SQL.Text := Q_Saidas.SQL.Text + ' and s.TipoPadrao = ' + sTipo;
      btComando2.Visible := true;
    end;

  end;

  C_Saidas.Open;
  Grid.FullExpand;

end;

procedure TDlgEscolherSaida.Q_SaidasBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  try
    if Q_Saidas.Params.FindParam('DI') <> nil then
      Q_Saidas.ParamByName('DI').asDateTime := DateAdd('MM', -6, DMProjeto.dDataSistema );
  except
  end;
end;

procedure TDlgEscolherSaida.btComando1Click(Sender: TObject);
begin
  inherited;
  Q_Saidas.SQL.Text := sComando;

  if not btComando1.Down then
    Q_Saidas.SQL.Text := Q_Saidas.SQL.Text + ' and s.Favorecido = ' + sCliente;

  if btComando2.Visible and not btComando2.Down then
    Q_Saidas.SQL.Text := Q_Saidas.SQL.Text + ' and s.TipoPadrao = ' + sTipo;


  C_Saidas.Close;
  C_Saidas.Open;

end;

procedure TDlgEscolherSaida.btComando2Click(Sender: TObject);
begin
  inherited;
  Q_Saidas.SQL.Text := sComando;

  if not btComando2.Down then
    Q_Saidas.SQL.Text := Q_Saidas.SQL.Text + ' and s.TipoPadrao = ' + sTipo;

  if btComando1.Visible and not btComando1.Down then
    Q_Saidas.SQL.Text := Q_Saidas.SQL.Text + ' and s.Favorecido = ' + sCliente;

  C_Saidas.Close;
  C_Saidas.Open;

end;

procedure TDlgEscolherSaida.btGravarClick(Sender: TObject);
begin
  inherited;
  with Q_Saidas do begin
    Close;
    SQL.Text := 'Select Saida from Saidas where Numero = :Num and Situacao = ''N'' ';
    Params[0].asString := dfNumero.Text;
    Open;

    if FieldByName('Saida').asInteger = 0 then begin
      Close;
      SQL.Text := sComando;

      if btComando2.Visible and not btComando2.Down then
        SQL.Text := SQL.Text + ' and s.TipoPadrao = ' + sTipo;

      if btComando1.Visible and not btComando1.Down then
        SQL.Text := SQL.Text + ' and s.Favorecido = ' + sCliente;


      DlgMsg.ShowMsg(1992); //Número de Invoice não foi encontrado!'

      end
    else begin
      SendLastDataObject(Self.Name, 'SAIDA-ESCOLHIDA', 'Saida', FieldByName('Saida').asInteger );
      Close;
      Self.Close;
    end;

  end;
end;

procedure TDlgEscolherSaida.btFecharCadastroClick(Sender: TObject);
begin
  SendLastDataObject(Self.Name, '', '', null );
  inherited;
end;

end.

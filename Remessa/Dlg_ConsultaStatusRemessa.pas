unit Dlg_ConsultaStatusRemessa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, dxEdLib, TS_Edit, dxExEdtr, TS_ButtonEdit,
  TS_EditFavorecido, dxCntner, dxEditor, dxDBEdtr, dxDBELib,
  TS_DBLookupTipoFav, FormsComponent, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, TS_Panel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  Provider, DBClient, Db, IBCustomDataSet, IBQuery, dxDBTLCl, dxGrClms,
  TS_RadioGroup, IBUpdateSQL, Placemnt, BTOdeum;

type
  TDlgConsultaStatusRemessa = class(TFrmModeloCadastros)
    pnEdits: TTS_Panel;
    TS_Label1: TTS_Label;
    dfTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    edCodigo: TTS_Edit;
    pnGrid: TTS_Panel;
    dbgRemessas: TTS_QDBGrid;
    pnTotais: TTS_Panel;
    Q_ConsultaRemessa: TIBQuery;
    dsConsultaRemessa: TDataSource;
    C_ConsultaRemessa: TClientDataSet;
    PConsultaRemessa: TDataSetProvider;
    C_ConsultaRemessaREMESSA: TIntegerField;
    C_ConsultaRemessaCODIGO: TStringField;
    C_ConsultaRemessaFAVORECIDO: TIntegerField;
    C_ConsultaRemessaCLIENTE: TIntegerField;
    C_ConsultaRemessaNOME: TStringField;
    C_ConsultaRemessaLUCRO_EMPRESA: TBCDField;
    C_ConsultaRemessaDATA_PREVISAO: TDateField;
    C_ConsultaRemessaDATA_ENVIO: TDateField;
    C_ConsultaRemessaCIFRAOENVIADO: TStringField;
    C_ConsultaRemessaVALOR_LOCAL: TBCDField;
    C_ConsultaRemessaSTATUS: TIntegerField;
    C_ConsultaRemessaAGENCIA: TIntegerField;
    C_ConsultaRemessaDESC_AGENCIA: TStringField;
    C_ConsultaRemessaSTATUS_DESCRICAO: TStringField;
    dbgRemessasREMESSA: TdxDBGridMaskColumn;
    dbgRemessasCODIGO: TdxDBGridMaskColumn;
    dbgRemessasFAVORECIDO: TdxDBGridMaskColumn;
    dbgRemessasCLIENTE: TdxDBGridMaskColumn;
    dbgRemessasNOME: TdxDBGridMaskColumn;
    dbgRemessasLUCRO_EMPRESA: TdxDBGridMaskColumn;
    dbgRemessasDATA_PREVISAO: TdxDBGridDateColumn;
    dbgRemessasDATA_ENVIO: TdxDBGridDateColumn;
    dbgRemessasCIFRAOENVIADO: TdxDBGridMaskColumn;
    dbgRemessasVALOR_LOCAL: TdxDBGridMaskColumn;
    dbgRemessasSTATUS: TdxDBGridMaskColumn;
    dbgRemessasAGENCIA: TdxDBGridMaskColumn;
    dbgRemessasDESC_AGENCIA: TdxDBGridMaskColumn;
    dbgRemessasSTATUS_DESCRICAO: TdxDBGridMaskColumn;
    C_ConsultaRemessa_icSelecionados: TIntegerField;
    rgStatus: TTS_RadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edCodigoExit(Sender: TObject);
    procedure rgStatusClick(Sender: TObject);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure edFavorecidoExit(Sender: TObject);
    procedure dbgRemessasDblClick(Sender: TObject);
  private
    { Private declarations }
    sSQL : String;
    dData : TDateTime;
    procedure AtualizaConsulta;
  public
    { Public declarations }
  end;

var
  DlgConsultaStatusRemessa: TDlgConsultaStatusRemessa;

implementation

uses DM_Projeto, Dlg_Data;

{$R *.DFM}

procedure TDlgConsultaStatusRemessa.AtualizaConsulta;
begin
  btGravar.Enabled := (rgStatus.ItemIndex <> 2);
  with C_ConsultaRemessa do begin
    CommandText := sSQL;
    Close;
    CommandText := CommandText + ' AND REM.STATUS = ' + InTToStr(rgStatus.ItemIndex + 1);
    if edCodigo.Text <> '' then begin
      CommandText := CommandText + ' AND REM.CODIGO = ' + edCodigo.Text;
    end;
    if edFavorecido.ID <> 0 then begin
      CommandText := CommandText + ' AND REM.CLIENTE = ' + IntToStr(edFavorecido.ID);
    end;
    Open;
  end;
end;

procedure TDlgConsultaStatusRemessa.FormShow(Sender: TObject);
begin
  inherited;
  sSQL := Q_ConsultaRemessa.SQL.Text;
  AtualizaConsulta;
end;

procedure TDlgConsultaStatusRemessa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  C_ConsultaRemessa.Close;
end;

procedure TDlgConsultaStatusRemessa.edCodigoExit(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TDlgConsultaStatusRemessa.rgStatusClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TDlgConsultaStatusRemessa.edFavorecidoSelecionou(
  Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TDlgConsultaStatusRemessa.btGravarClick(Sender: TObject);
begin
  inherited;
  with TDlgData.Create(Self) do begin
    try
      if ShowModal = mrOK then begin
        if not DmProjeto.IBT_Projeto.InTransaction then begin
           DmProjeto.IBT_Projeto.StartTransaction;
        end;
        if dbgRemessas.Selecionados = '' then
          dbgRemessas.Selecionar;
        if dbgRemessas.Selecionados <> '' then begin
          DmProjeto.Q_SQL2.SQL.Clear;
          DmProjeto.Q_SQL2.SQL.Add('update remessas set status = 3, DATA_ENVIO = :dData '
                          + ' where remessa in (' + dbgRemessas.Selecionados+')');
          DmProjeto.Q_SQL2.params[0].asdatetime := Data;
          DmProjeto.Q_SQL2.ExecSQL;
          DmProjeto.IBT_Projeto.CommitRetaining;
          C_ConsultaRemessa.Close;
          C_ConsultaRemessa.Open;
        end;
      end;
    finally
      Release;
    end;
  end;
end;

procedure TDlgConsultaStatusRemessa.edFavorecidoExit(Sender: TObject);
begin
  inherited;
  if edFavorecido.Text = '' then
    AtualizaConsulta;
end;

procedure TDlgConsultaStatusRemessa.dbgRemessasDblClick(Sender: TObject);
var
  nID : Integer;
begin
  inherited;
  nID := dbgRemessas.GetFieldValue(dbgRemessas.FocusedNode, 'Remessa',0); 
  DMProjeto.SetParametrosForm([nID]);
  DMProjeto.CriarForm('FrmRemessa',Self, True);
end;

end.

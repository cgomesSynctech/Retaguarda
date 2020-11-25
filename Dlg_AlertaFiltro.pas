unit Dlg_AlertaFiltro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Provider, Db, IBCustomDataSet, IBQuery, DBClient,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, FormsComponent, 
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons,
  TS_SpeedButton, TS_BitBtn, TS_Panel, teCtrls, TS_EffectsPanel, Menus,
  TS_PopupMenu, dxExEdtr, BTOdeum;

type
  TDlgAlertaFiltro = class(TFrmModeloCadastros)
    GridAlertaFiltro: TTS_QDBGrid;
    C_Alerta: TClientDataSet;
    Q_Alerta: TIBQuery;
    C_AlertaDS: TDataSource;
    Q_AlertaProvider: TDataSetProvider;
    C_AlertaNOME: TStringField;
    GridAlertaFiltroFAVORECIDO: TdxDBGridMaskColumn;
    GridAlertaFiltroNOME: TdxDBGridMaskColumn;
    GridAlertaFiltroTIPOFAVORECIDO: TdxDBGridMaskColumn;
    C_Alerta_icSelecionado: TIntegerField;
    C_AlertaCODIGO: TStringField;
    GridAlertaFiltroCodigo: TdxDBGridColumn;
    C_AlertaCHAVE: TIntegerField;
    ppmGridAFiltro: TTS_PopupMenu;
    Selecionar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure FormShow(Sender: TObject);
    procedure Selecionar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgAlertaFiltro: TDlgAlertaFiltro;

implementation

uses DM_Projeto, funcoes, Frm_Alerta, Dm_Alerta;

{$R *.DFM}

procedure TDlgAlertaFiltro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  C_Alerta.Close;
end;

procedure TDlgAlertaFiltro.btGravarClick(Sender: TObject);
begin
  inherited;
  DmAlerta.sRegFiltro := GridAlertaFiltro.Selecionados;
  Close;
end;

procedure TDlgAlertaFiltro.FormsComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
var
  nTipo: Integer;
begin
  inherited;
  nTipo := 1;
  with DMProjeto do begin
    if ExisteParametrosForm then begin
      if GetParametrosForm(0) = 'C' then begin
        nTipo := 1;
        GridAlertaFiltroNOME.Caption := 'Cliente';
        Q_Alerta.Params[0].Value := nTipo;
      end
      else if GetParametrosForm(0) = 'F' then begin
        nTipo := 2;
        GridAlertaFiltroNOME.Caption := 'Fornecedor';
        Q_Alerta.Params[0].Value := nTipo;
      end
      else if GetParametrosForm(0) = 'I' then begin
        nTipo := 3;
        GridAlertaFiltroNOME.Caption := 'Descrição do Item';
        Q_Alerta.SQL.Text := 'select item as CHAVE, CODIGO, descricao as NOME '+
        'from Itens where desativado = ''N''';
      end
      else if GetParametrosForm(0) = 'S' then begin
        nTipo := 3;
        GridAlertaFiltroNOME.Caption := 'Descrição do Item';
        Q_Alerta.SQL.Text := 'select conta as CHAVE, codigoreduzido as CODIGO, descricao as NOME '+
        'from contas where desativado = ''N''';
      end;
    end; //if ExisteParam
  end; //with
end;

procedure TDlgAlertaFiltro.FormShow(Sender: TObject);
begin
  inherited;
  C_Alerta.Open;
  GridAlertaFiltro.LimparSelecionados;  
  GridAlertaFiltro.SetSelecionados(DmAlerta.sRegFiltro);
end;

procedure TDlgAlertaFiltro.Selecionar1Click(Sender: TObject);
begin
  inherited;
  if GridAlertaFiltro.Selecionado then
    GridAlertaFiltro.RemoverLinha
  else
    GridAlertaFiltro.SelecionarLinha;
end;

end.

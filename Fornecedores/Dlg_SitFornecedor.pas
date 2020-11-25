unit Dlg_SitFornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, Provider, Db, IBCustomDataSet, IBQuery, 
  ExtCtrls, ppViewr, DLG_MODAL, DlgMsg, Menus,
  StdCtrls, Buttons, TS_LastDataObject,
  DBCtrls,
  TS_MaxPanel, Mask, 
  TS_DBEditFavorecido, TS_DBLookupTipoFav,
  TS_DBTextEffect, 
  TS_EditFavorecido, 
  dxMasterView, dxTL, dxDBCtrl, dxDBGrid, IBDatabase, ComCtrls, dxCntner, TS_SpeedButton,
  FRM_MODELOCADASTROS, dxDBEdtr, dxDBELib, dxEditor, dxExEdtr,
  dxEdLib, TS_ButtonEdit, FormsComponent, TS_Image, dxfLabel,
  teCtrls, TS_EffectsPanel, TS_PopupMenu, TS_Label, TS_Bevel, ImgList,
  TS_PageControl, Placemnt, BTOdeum;

type
  TDlgSitFornecedor = class(TFrmModeloCadastros)
    C_InforGeraisDS: TDataSource;
    C_InforGerais: TClientDataSet;
    Q_InforGeraisProvider: TDataSetProvider;
    Q_InforGerais: TIBQuery;
    Img_Panels: TImageList;
    C_InforGeraisFAVORECIDO: TIntegerField;
    C_InforGeraisNOME: TStringField;
    C_InforGeraisENDERECO: TStringField;
    C_InforGeraisCIDADE: TStringField;
    C_InforGeraisUF: TStringField;
    C_InforGeraisFONE1: TStringField;
    C_InforGeraisFONE2: TStringField;
    C_InforGeraisFAX: TStringField;
    C_InforGeraisCELULAR: TStringField;
    C_InforGeraisEMAIL: TStringField;
    C_InforGeraisTIPOATIVIDADE: TStringField;
    C_ItensDS: TDataSource;
    C_Itens: TClientDataSet;
    Q_ItensProvider: TDataSetProvider;
    Q_Itens: TIBQuery;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensUNIDADE: TStringField;
    C_ItensQUANTIDADE: TBCDField;
    C_ItensTOTAL: TFloatField;
    C_ItensULTIMACOMPRA: TDateField;
    C_InforGeraisTIPOFAVORECIDO: TIntegerField;
    Q_SQL: TIBQuery;
    Q_SQLTransaction: TIBTransaction;
    C_HistRecDS: TDataSource;
    C_HistRec: TClientDataSet;
    C_HistRecMES: TStringField;
    C_HistRecPAGOU: TFloatField;
    C_HistRecCOMPROU: TFloatField;
    C_HistRecNUM_MES: TIntegerField;
    C_HistRecNUM_ANO: TIntegerField;
    C_HistRecNOMEDOMES: TStringField;
    C_HistRecAux: TClientDataSet;
    C_HistRecAuxMES: TStringField;
    C_HistRecAuxPAGOU: TBCDField;
    C_HistRecAuxNUM_MES: TIntegerField;
    C_HistRecAuxNUM_ANO: TIntegerField;
    Q_HistRecAuxProvider: TDataSetProvider;
    Q_HistRecAux: TIBQuery;
    Q_Pagamentos: TIBQuery;
    Q_PagamentosProvider: TDataSetProvider;
    C_Pagamentos: TClientDataSet;
    C_PagamentosIDDOC: TIntegerField;
    C_PagamentosDATA: TDateField;
    C_PagamentosTIPODOC: TStringField;
    C_PagamentosVALOR: TBCDField;
    C_PagamentosNUMCHEQUE: TIntegerField;
    C_PagamentosFAVORECIDO: TIntegerField;
    C_PagamentosMES: TStringField;
    C_PagamentosDS: TDataSource;
    C_RecebimentosDS: TDataSource;
    C_Recebimentos: TClientDataSet;
    C_RecebimentosNUMERO: TStringField;
    C_RecebimentosDATA: TDateField;
    C_RecebimentosVENDEDOR: TStringField;
    C_RecebimentosNUM_MES: TIntegerField;
    C_RecebimentosNUM_ANO: TIntegerField;
    C_RecebimentosFAVORECIDO: TIntegerField;
    C_RecebimentosMES: TStringField;
    Q_RecebimentosProvider: TDataSetProvider;
    Q_Recebimentos: TIBQuery;
    C_MovimentosDS: TDataSource;
    C_Movimentos: TClientDataSet;
    Q_MovimentosProvider: TDataSetProvider;
    Q_Movimentos: TIBQuery;
    Q_ItensMov: TIBQuery;
    Q_ItensMovProvider: TDataSetProvider;
    C_ItensMov: TClientDataSet;
    C_ItensMovDS: TDataSource;
    C_MovimentosPEDIDO: TIntegerField;
    C_MovimentosNUMERO: TStringField;
    C_MovimentosDATA: TDateField;
    C_MovimentosTOTAL: TBCDField;
    C_MovimentosTIPOENTREGA: TStringField;
    C_MovimentosPREVISAOENTREGA: TDateField;
    C_ItensMovPEDIDO: TIntegerField;
    C_ItensMovITEMDESC: TStringField;
    C_ItensMovSEQ: TIntegerField;
    C_ItensMovQUANTIDADE: TBCDField;
    C_ItensMovPRECO: TBCDField;
    C_ItensMovTOTAL: TFloatField;
    pnPesquisaFavorecido: TTS_Panel;
    dfTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    TS_PageControl1: TTS_PageControl;
    tsPagina1: TTS_TabSheet;
    tsPagina2: TTS_TabSheet;
    mvRelatorios: TdxMasterView;
    stCabCinzaAndre: TdxMasterViewStyle;
    stGroupPanel: TdxMasterViewStyle;
    stItens1: TdxMasterViewStyle;
    stItens2: TdxMasterViewStyle;
    stItens3: TdxMasterViewStyle;
    stPagamentos: TdxMasterViewStyle;
    stCompras: TdxMasterViewStyle;
    mvItens: TdxMasterViewLevel;
    mvItensCODIGO: TdxMasterViewColumn;
    mvItensDESCRICAO: TdxMasterViewColumn;
    mvItensUNIDADE: TdxMasterViewColumn;
    mvItensQUANTIDADE: TdxMasterViewColumn;
    mvItensTOTAL: TdxMasterViewColumn;
    mvItensULTIMACOMPRA: TdxMasterViewColumn;
    mvPedAberto: TdxMasterViewLevel;
    mvPedAbertoNUMERO: TdxMasterViewColumn;
    mvPedAbertoDATA: TdxMasterViewColumn;
    mvPedAbertoTOTAL: TdxMasterViewColumn;
    mvPedAbertoTIPOENTREGA: TdxMasterViewColumn;
    mvPedAbertoPREVISAOENTREGA: TdxMasterViewColumn;
    mvItensPedAberto: TdxMasterViewLevel;
    mvItensPedAbertoSEQ: TdxMasterViewColumn;
    mvItensPedAbertoITEMDESC: TdxMasterViewColumn;
    mvItensPedAbertoQUANTIDADE: TdxMasterViewColumn;
    mvItensPedAbertoPRECO: TdxMasterViewColumn;
    mvItensPedAbertoTOTAL: TdxMasterViewColumn;
    mvHistPag: TdxMasterViewLevel;
    mvHistPagNOMEDOMES: TdxMasterViewColumn;
    mvHistPagPAGOU: TdxMasterViewColumn;
    mvHistPagCOMPROU: TdxMasterViewColumn;
    mvPagamentos: TdxMasterViewLevel;
    mvPagamentosDATA: TdxMasterViewColumn;
    mvPagamentosTIPODOC: TdxMasterViewColumn;
    mvPagamentosVALOR: TdxMasterViewColumn;
    mvPagamentosNUMCHEQUE: TdxMasterViewColumn;
    mvPagamentosIDDOC: TdxMasterViewColumn;
    mvCompras: TdxMasterViewLevel;
    mvComprasDATA: TdxMasterViewColumn;
    mvComprasNUMERO: TdxMasterViewColumn;
    mvComprasTOTAL: TdxMasterViewColumn;
    C_HistRecAuxCOMPROU: TBCDField;
    C_RecebimentosTOTAL: TBCDField;
    procedure edFavorecidoKeyPress(Sender: TObject; var Key: Char);
    procedure btColunasClick(Sender: TObject);
    procedure TS_Label1Click(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
  private
    { Private declarations }
    FavorecidoAtual: integer;
    function GetColor(BColor, EColor: TColor; N, H: Integer): TColor;
    procedure MudaTipoFavorecido(TipoFavorecido: integer);
    procedure AbreInformacoesGerais(Favorecido: integer);
    procedure AbreHistoricoDeRecebimentos(Favorecido: integer);
    procedure AbreDataSources;
    procedure Processando(Flag: boolean; controle: TControl);
    //
    function Substitui(Str, ValorVelho, ValorNovo: string): string;
  public
    { Public declarations }
  end;

var
  DlgSitFornecedor: TDlgSitFornecedor;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgSitFornecedor.MudaTipoFavorecido(TipoFavorecido: integer);
begin
  if TipoFavorecido = 1 then begin // cliente

  end;
  if TipoFavorecido = 2 then begin // fornecedor

  end;
  if TipoFavorecido = 3 then begin // funcionário

  end;
end;

procedure TDlgSitFornecedor.Processando(Flag: boolean; controle: TControl);
begin
  controle.Visible := not Flag;
  if Flag then begin
    controle.SendToBack;
  end else begin
    controle.BringToFront;
  end;
end;

procedure TDlgSitFornecedor.AbreDataSources;
begin
  mvItens.DataSource := nil;
  mvItens.DataSource := C_ItensDS;
  mvPedAberto.DataSource := nil;
  mvPedAberto.DataSource := C_MovimentosDS;
  mvItensPedAberto.DataSource := nil;
  mvItensPedAberto.DataSource := C_ItensMovDS;
  mvHistPag.DataSource := nil;
  mvHistPag.DataSource := C_HistRecDS;
  mvCompras.DataSource := nil;
  mvCompras.DataSource := C_RecebimentosDS;
  mvPagamentos.DataSource := nil;
  mvPagamentos.DataSource := C_PagamentosDS;
  mvRelatorios.FullCollapse;
end;

procedure TDlgSitFornecedor.AbreInformacoesGerais(Favorecido: integer);
begin
  C_InforGerais.DisableControls;
  C_Itens.DisableControls;
  C_InforGerais.Close;
  C_Itens.Close;
  C_InforGerais.Params.ParamByName('Favorecido').AsInteger := Favorecido;
  C_Itens.Params.ParamByName('Favorecido').AsInteger := Favorecido;
  C_InforGerais.Open;
  C_Itens.Open;
  edFavorecido.Text := C_InforGeraisNOME.Value;
  C_InforGerais.EnableControls;
  C_Itens.EnableControls;
end;

procedure TDlgSitFornecedor.AbreHistoricoDeRecebimentos(Favorecido: integer);
{##}function PegaMes(data: TDateTime):integer; var mes,dia,ano:word;
{##}begin DecodeDate(data,ano,mes,dia); result := mes; end;
{##}function PegaAno(data: TDateTime):integer; var mes,dia,ano:word;
{##}begin DecodeDate(data,ano,mes,dia); result := ano; end;
{##}function IsNum( Num: string ): boolean;
{##}var i: integer;
{##}begin
{##}  result := false;
{##}  if Length(Num)=0 then begin
{##}    result := False;
{##}    exit;
{##}  end;
{##}  for i:=1 to Length(Num) do
{##}    if (Num[i]='0')or(Num[i]='1')or(Num[i]='2')or(Num[i]='3')or(Num[i]='4')or(Num[i]='5')or(Num[i]='6')or(Num[i]='7')or(Num[i]='8')or(Num[i]='9') then
{##}      result := True
{##}    else begin
{##}      result := False;
{##}      exit;
{##}    end;
{##}end;
{##}procedure AtualizaTanelaAnos(anoatual: integer);
{##}begin
{##}  with Q_SQL do begin
{##}    Close;
{##}    SQL.Text := 'delete from anos';
{##}    ExecSQL;
{##}    if not(Q_SQLTransaction.Active) then Q_SQLTransaction.Active := True;
{##}    Q_SQLTransaction.CommitRetaining;
{##}    SQL.Text := 'delete from anos';
{##}    ExecSQL;
{##}    SQL.Text := 'insert into anos values('+IntToStr(anoatual)+')';
{##}    ExecSQL;
{##}    SQL.Text := 'insert into anos values('+IntToStr(anoatual-1)+')';
{##}    ExecSQL;
{##}    if not(Q_SQLTransaction.Active) then Q_SQLTransaction.Active := True;
{##}    Q_SQLTransaction.CommitRetaining;
{##}    if (Q_SQLTransaction.Active) then Q_SQLTransaction.Active := False
{##}  end;
{##}end;
var mes_atual, ano_atual, quant_meses: integer;
begin
  C_HistRec.DisableControls;
  if C_HistRec.Active then C_HistRec.EmptyDataSet
  else C_HistRec.CreateDataSet;
  mes_atual := PegaMes(DMProjeto.dDataSistema);
  ano_atual := PegaAno(DMProjeto.dDataSistema);
  quant_meses := 0;
  AtualizaTanelaAnos(ano_atual);
  C_HistRecAux.Params.ParamByName('Favorecido').AsInteger := Favorecido;
  C_HistRecAux.Params.ParamByName('Ano').AsInteger := ano_atual;
  C_HistRecAux.Open;
  while (quant_meses<=12)and not(C_HistRecAux.eof) do begin
    if (C_HistRecAuxNUM_ANO.Value<=ano_atual)and(C_HistRecAuxNUM_MES.Value<=mes_atual) then begin
      C_HistRec.Insert;
      mes_atual := C_HistRecAuxNUM_MES.Value;
      ano_atual := C_HistRecAuxNUM_ANO.Value;
      C_HistRecNUM_MES.Value := mes_atual;
      C_HistRecNUM_ANO.Value := ano_atual;
      C_HistRecMES.Value := Format('%d/%d', [mes_atual,ano_atual]);
      C_HistRecNOMEDOMES.Value := UpperCase(LongMonthNames[mes_atual])+' de '+IntToStr(ano_atual);
      C_HistRecPAGOU.Value := C_HistRecAuxPAGOU.Value;
      C_HistRecCOMPROU.Value := C_HistRecAuxCOMPROU.Value;
      C_HistRec.Post;
      Inc(quant_meses);
      if mes_atual<=1 then begin
        mes_atual := 12;
        Dec(ano_atual);
      end;
    end;
    C_HistRecAux.Next;
  end;
  C_HistRecAux.Close;
  C_HistRec.EnableControls;
  C_HistRec.First;

  C_Pagamentos.Close;
  C_Recebimentos.Close;
  C_Pagamentos.Params.ParamByName('Favorecido').AsInteger := Favorecido;
  C_Recebimentos.Params.ParamByName('Favorecido').AsInteger := Favorecido;
  C_Pagamentos.Open;
  C_Recebimentos.Open;
end;

function TDlgSitFornecedor.Substitui(Str, ValorVelho, ValorNovo: string): string;
begin
  result := '';
  if Length(ValorNovo) > 0 then result := Replace(Str, ValorVelho, ValorNovo);
end;

procedure TDlgSitFornecedor.edFavorecidoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key=#13 then begin
    try
      Processando(true, mvRelatorios);
      FavorecidoAtual := edFavorecido.getID;
      if C_InforGerais.Active then begin
        if C_InforGeraisFAVORECIDO.Value <> FavorecidoAtual then begin
          AbreInformacoesGerais(FavorecidoAtual);
          AbreHistoricoDeRecebimentos(FavorecidoAtual);
          AbreDataSources;
        end;
      end else begin
        AbreInformacoesGerais(FavorecidoAtual);
        AbreHistoricoDeRecebimentos(FavorecidoAtual);
        AbreDataSources;
      end;
    finally
      Processando(false, mvRelatorios);
    end;
  end;
end;

function TDlgSitFornecedor.GetColor(BColor, EColor: TColor; N, H: Integer): TColor;
begin
  Result := RGB(Trunc(GetRValue(BColor) + (GetRValue(EColor)-GetRValue(BColor)) * N / H),
    Trunc(GetGValue(BColor) + (GetGValue(EColor)-GetGValue(BColor)) * N / H),
    Trunc(GetBValue(BColor) + (GetBValue(EColor)-GetBValue(BColor)) * N / H));
end;

procedure TDlgSitFornecedor.btColunasClick(Sender: TObject);
begin
  inherited;
  mvRelatorios.Customizing := not mvRelatorios.Customizing;
end;

procedure TDlgSitFornecedor.TS_Label1Click(Sender: TObject);
var i: integer;
begin
  inherited;
  i:=0;
  while i<componentcount do begin
    if Components[i] is TClientDataSet then
      TClientDataSet(Components[i]).SaveToFile('d:\tabs\'+TClientDataSet(Components[i]).Name+'.cds');
    Inc(i)
  end;
end;

procedure TDlgSitFornecedor.FormsComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
  try
    Processando(true, mvRelatorios);
    FavorecidoAtual := DMProjeto.GetParametrosForm(0);
    dfTipoFav.LookupKeyValue := DMProjeto.GetParametrosForm(1);
    AbreInformacoesGerais(FavorecidoAtual);
    AbreHistoricoDeRecebimentos(FavorecidoAtual);
    AbreDataSources;
  finally
    Processando(false, mvRelatorios);
  end;
end;

end.

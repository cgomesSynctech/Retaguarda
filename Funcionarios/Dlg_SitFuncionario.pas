unit Dlg_SitFuncionario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, Provider, Db, IBCustomDataSet, IBQuery, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache, ppCtrls, ppPrnabl,
  ExtCtrls, ppViewr, DLG_MODAL, DlgMsg, Menus,
  StdCtrls, Buttons, TS_BitBtn, ppModule, daDataModule, TS_LastDataObject,
  TS_Label, TS_Shape, DBCtrls,
  TS_DBText, TS_MaxPanel, ImgList, TS_ScrollBox, Mask, TS_DBEdit,
  TS_DBEditFavorecido, TS_DBLookupComboBox, TS_DBLookupTipoFav,
  TS_DBTextEffect, TS_Edit, TS_CheckBox,
  TS_EditFavorecido, ppStrtch, ppSubRpt, raCodMod,
  TS_RadioGroup, ppMemo, ppRegion, dxMasterView,
  dxTL, dxDBCtrl, dxDBGrid, IBDatabase, ComCtrls, dxCntner, TS_SpeedButton,
  dxDBTLCl, dxGrClms, FRM_MODELOCADASTROS, TS_Bevel, dxDBEdtr, dxDBELib,
  dxEditor, dxExEdtr, dxEdLib, TS_ButtonEdit, FormsComponent,
  TS_Image, dxfLabel, teCtrls, TS_EffectsPanel, TS_PopupMenu,
  TS_PageControl;

type
  TDlgSitFuncionario = class(TFrmModeloCadastros)
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
    C_InforGeraisTIPOFAVORECIDO: TIntegerField;
    C_HistPagDS: TDataSource;
    C_HistPag: TClientDataSet;
    Q_HistPag: TIBQuery;
    Q_SQLTransaction: TIBTransaction;
    Q_SQL: TIBQuery;
    Q_HistPagProvider: TDataSetProvider;
    C_HistPagCabDS: TDataSource;
    C_HistPagCab: TClientDataSet;
    Q_HistPagCabProvider: TDataSetProvider;
    Q_HistPagCab: TIBQuery;
    C_HistPagCabCAB: TStringField;
    C_HistPagCabTOTVALOR: TBCDField;
    C_HistPagCabID: TStringField;
    C_HistPagANOMES: TStringField;
    C_HistPagDATA: TDateField;
    C_HistPagVALOR: TBCDField;
    C_HistPagNUMCHEQUE: TIntegerField;
    C_HistPagVENCIMENTO: TDateField;
    C_HistPagIDDOC: TIntegerField;
    C_HistPagCONTA: TStringField;
    C_HistPagID: TStringField;
    pnPesquisaFavorecido: TTS_Panel;
    dfTipoFav: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    TS_PageControl1: TTS_PageControl;
    tsPagina1: TTS_TabSheet;
    tsPagina2: TTS_TabSheet;
    mvSitFuncionario: TdxMasterView;
    stVerdeEscuro: TdxMasterViewStyle;
    stVerde: TdxMasterViewStyle;
    stCinzaAndre: TdxMasterViewStyle;
    stVerdeClaro: TdxMasterViewStyle;
    stVerdeRodape: TdxMasterViewStyle;
    stCabecalho: TdxMasterViewStyle;
    stTotal: TdxMasterViewStyle;
    mvHistPagCab: TdxMasterViewLevel;
    mvHistPagCabCAB: TdxMasterViewColumn;
    mvHistPagCabTOTVALOR: TdxMasterViewColumn;
    mvHistPag: TdxMasterViewLevel;
    mvHistPagANOMES: TdxMasterViewColumn;
    mvHistPagDATA: TdxMasterViewColumn;
    mvHistPagVALOR: TdxMasterViewColumn;
    mvHistPagNUMCHEQUE: TdxMasterViewColumn;
    mvHistPagVENCIMENTO: TdxMasterViewColumn;
    mvHistPagCONTA: TdxMasterViewColumn;
    procedure edFavorecidoKeyPress(Sender: TObject; var Key: Char);
    procedure TS_Label1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
  private
    { Private declarations }
    FavorecidoAtual: integer;
    SelectHistPag, SelectHistPagCab: string;
    function GetColor(BColor, EColor: TColor; N, H: Integer): TColor;
    procedure MudaTipoFavorecido(TipoFavorecido: integer);
    procedure AbreInformacoesGerais(Favorecido: integer);
    procedure AbreHistPagamentos(Favorecido: integer);
    procedure AbreDataSources;
    procedure Processando(Flag: boolean; controle: TControl);
    //
    function Substitui(Str, ValorVelho, ValorNovo: string): string;
  public
    { Public declarations }
  end;

var
  DlgSitFuncionario: TDlgSitFuncionario;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgSitFuncionario.MudaTipoFavorecido(TipoFavorecido: integer);
begin
  if TipoFavorecido = 1 then begin // cliente

  end;
  if TipoFavorecido = 2 then begin // fornecedor

  end;
  if TipoFavorecido = 3 then begin // funcionário

  end;
end;

procedure TDlgSitFuncionario.Processando(Flag: boolean; controle: TControl);
begin
  controle.Visible := not Flag;
  if Flag then begin
    controle.SendToBack;
  end else begin
    controle.BringToFront;
  end;
end;

procedure TDlgSitFuncionario.AbreDataSources;
begin
  mvHistPagCab.DataSource := nil;
  mvHistPagCab.DataSource := C_HistPagCabDS;
  mvHistPag.DataSource := nil;
  mvHistPag.DataSource := C_HistPagDS;
  mvSitFuncionario.FullCollapse;
end;

procedure TDlgSitFuncionario.AbreInformacoesGerais(Favorecido: integer);
begin
  C_InforGerais.DisableControls;
  C_InforGerais.Close;
  C_InforGerais.Params.ParamByName('Favorecido').AsInteger := Favorecido;
  C_InforGerais.Open;
  edFavorecido.Text := C_InforGeraisNOME.Value;
  C_InforGerais.EnableControls;
end;

procedure TDlgSitFuncionario.AbreHistPagamentos(Favorecido: integer);
{##}function PegaDia(data: TDateTime):integer; var mes,dia,ano:word;
{##}begin DecodeDate(data,ano,mes,dia); result := dia; end;
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
var sql: string;
begin
  C_HistPag.DisableControls;
  C_HistPagCab.DisableControls;
  if C_HistPagCab.Active then C_HistPagCab.Close;
  if C_HistPag.Active then C_HistPag.Close;
  AtualizaTanelaAnos(PegaAno(DMProjeto.dDataSistema));

  // Tabela Mestre (meses com totais)
  sql := SelectHistPagCab;
  sql := Replace(sql, ':Favorecido', IntToStr(Favorecido) );
  sql := Replace(sql, ':AnoAtual',
    QuotedStr(FormatDateTime('yyyy/mm',EncodeDate( PegaAno(DMProjeto.dDataSistema),
                                                   PegaMes(DMProjeto.dDataSistema),
                                                   PegaDia(DMProjeto.dDataSistema) ))) );
  sql := Replace(sql, ':AnoAnterior',
    QuotedStr(FormatDateTime('yyyy/mm',EncodeDate( PegaAno(DMProjeto.dDataSistema)-1,
                                                   PegaMes(DMProjeto.dDataSistema),
                                                   PegaDia(DMProjeto.dDataSistema) ))) );

  C_HistPagCab.CommandText := sql;

  // Tabela Detalhe (dados)
  sql := SelectHistPag;
  sql := Replace(sql, ':Favorecido', IntToStr(Favorecido) );
  sql := Replace(sql, ':AnoAtual',
    QuotedStr(FormatDateTime('yyyy/mm',EncodeDate( PegaAno(DMProjeto.dDataSistema),
                                                   PegaMes(DMProjeto.dDataSistema),
                                                   PegaDia(DMProjeto.dDataSistema) ))) );
  sql := Replace(sql, ':AnoAnterior',
    QuotedStr(FormatDateTime('yyyy/mm',EncodeDate( PegaAno(DMProjeto.dDataSistema)-1,
                                                   PegaMes(DMProjeto.dDataSistema),
                                                   PegaDia(DMProjeto.dDataSistema) ))) );

  C_HistPag.CommandText := sql;

  // Abre as querys
  C_HistPagCab.Open;
  C_HistPagCab.EnableControls;
  C_HistPag.Open;
  C_HistPag.EnableControls;
end;

function TDlgSitFuncionario.Substitui(Str, ValorVelho, ValorNovo: string): string;
begin
  result := '';
  if Length(ValorNovo) > 0 then result := Replace(Str, ValorVelho, ValorNovo);
end;

procedure TDlgSitFuncionario.edFavorecidoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key=#13 then begin
    try
      Processando(true, mvSitFuncionario);
      FavorecidoAtual := edFavorecido.getID;
      if C_InforGerais.Active then begin
        if C_InforGeraisFAVORECIDO.Value <> FavorecidoAtual then begin
          AbreInformacoesGerais(FavorecidoAtual);
          AbreHistPagamentos(FavorecidoAtual);
          AbreDataSources;
        end;
      end else begin
        AbreInformacoesGerais(FavorecidoAtual);
        AbreHistPagamentos(FavorecidoAtual);
        AbreDataSources;
      end;
    finally
      Processando(false, mvSitFuncionario);
    end;
  end;
end;

function TDlgSitFuncionario.GetColor(BColor, EColor: TColor; N, H: Integer): TColor;
begin
  Result := RGB(Trunc(GetRValue(BColor) + (GetRValue(EColor)-GetRValue(BColor)) * N / H),
    Trunc(GetGValue(BColor) + (GetGValue(EColor)-GetGValue(BColor)) * N / H),
    Trunc(GetBValue(BColor) + (GetBValue(EColor)-GetBValue(BColor)) * N / H));
end;

procedure TDlgSitFuncionario.TS_Label1Click(Sender: TObject);
begin
  inherited;
  C_HistPagCab.Savetofile('c:\func_histcab.cds');
  C_HistPag.Savetofile('c:\func_hist.cds');
end;

procedure TDlgSitFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  SelectHistPagCab := Q_HistPagCab.SQL.Text;
  SelectHistPag := Q_HistPag.SQL.Text;
end;

procedure TDlgSitFuncionario.FormsComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
  try
    Processando(true, mvSitFuncionario);
    FavorecidoAtual := DMProjeto.GetParametrosForm(0);
    dfTipoFav.LookupKeyValue := DMProjeto.GetParametrosForm(1);
    AbreInformacoesGerais(FavorecidoAtual);
    AbreHistPagamentos(FavorecidoAtual);
    AbreDataSources;
  finally
    Processando(false, mvSitFuncionario);
  end;
end;


{
(Select sum(drd.Valor) from Retiradasdoc drd
 inner join retiradas dr on drd.retirada = dr.retirada
 where  drd.Status < 70 and dr.Data  <=  r.Data and
 f_year(dr.Data) = f_year(r.Data) ) as Acumulado_Ano,

(Select sum(drd.Valor) from Retiradasdoc drd
 inner join retiradas dr on drd.retirada = dr.retirada
 where drd.Status < 70 and dr.Data <= r.Data ) as Acumulado_Total,

}
end.

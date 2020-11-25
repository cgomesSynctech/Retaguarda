unit Frm_OrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, TS_Shape, dxEditor, dxEdLib,
  dxDBELib, TS_DBButtonEdit, TS_DBEditFavorecido, dxDBEdtr,
  TS_DBLookupComboBox, TS_DBMemo, TS_DBEditDate, TS_DBTimeEdit, ComCtrls,
  TS_PageControl, dxDBTLCl, dxGrClms, DB, TransEff, teTimed, teDrip, Mask,
  DBCtrls, DateUtils, TS_DBEdit, TS_DBRadioGroup, TS_DBText;

type
  TFrmOrdemServico = class(TFrmPadrao)
    dfCliente: TTS_DBEditFavorecido;
    dfFuncionario: TTS_DBEditFavorecido;
    dfNumMaquina: TTS_DBLookupComboBox;
    DF_Codigo: TTS_DBButtonEdit;
    TS_Label19: TTS_Label;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Label7: TTS_Label;
    dfHoraAviso: TTS_DBTimeEdit;
    df_DataAviso: TTS_DBEditDate;
    df_DataChegada: TTS_DBEditDate;
    dfHoraChegada: TTS_DBTimeEdit;
    df_DataTermino: TTS_DBEditDate;
    dfHoraTermino: TTS_DBTimeEdit;
    TS_Label11: TTS_Label;
    df_DescricaoServico: TTS_DBMemo;
    dfRota2: TTS_DBLookupComboBox;
    GridNUMERO: TdxDBGridMaskColumn;
    GridOBS: TdxDBGridMaskColumn;
    GridDTAVISO: TdxDBGridDateColumn;
    GridHORAAVISO: TdxDBGridTimeColumn;
    GridDTCHEGADA: TdxDBGridDateColumn;
    GridHORACHEGADA: TdxDBGridTimeColumn;
    GridDTTERMINO: TdxDBGridDateColumn;
    GridDESCRICAOSERVICO: TdxDBGridMaskColumn;
    GridlkTipoServico: TdxDBGridLookupColumn;
    GridlkStatusAtendimento: TdxDBGridLookupColumn;
    GridDESCCLIENTE: TdxDBGridMaskColumn;
    GridDESCFUNCIONARIO: TdxDBGridMaskColumn;
    GridlkRotas: TdxDBGridLookupColumn;
    GridlkEquip: TdxDBGridLookupColumn;
    GridHORATERMINO: TdxDBGridTimeColumn;
    dbgPecas: TTS_QDBGrid;
    dbgPecasCODIGO: TdxDBGridButtonColumn;
    dbgPecasDESCRICAOITEM: TdxDBGridButtonColumn;
    dbgPecasITEM: TdxDBGridMaskColumn;
    dbgPecaslkUnidade: TdxDBGridLookupColumn;
    dbgPecasQUANTIDADE: TdxDBGridCurrencyColumn;
    dbgPecasVALOR: TdxDBGridCurrencyColumn;
    dbgPecasicSubTotal: TdxDBGridColumn;
    dbgPecasUNIDADE: TdxDBGridMaskColumn;
    TS_Label12: TTS_Label;
    lbFaturado: TdxfLabel;
    edFaturado: TDBEdit;
    Transition: TTransitionList;
    T_Status: TDripTransition;
    lbTempoResolucao: TTS_Label;
    dfNumContrato: TTS_DBEdit;
    TS_Label13: TTS_Label;
    rgServicosPrestados: TTS_DBRadioGroup;
    rgDiscriminacaoServico: TTS_DBRadioGroup;
    edChaveCliente: TDBEdit;
    btLimparAviso: TTS_SpeedButton;
    btHoraAviso: TTS_SpeedButton;
    btLimparChegada: TTS_SpeedButton;
    btHoraChegada: TTS_SpeedButton;
    btLimparTermino: TTS_SpeedButton;
    btHoraTermino: TTS_SpeedButton;
    dfTempAtendimento: TTS_DBText;
    dfTempoFinalizacao: TTS_DBText;
    procedure btComando1Click(Sender: TObject);
    procedure DF_CodigoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgPecasDESCRICAOITEMButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btComando2Click(Sender: TObject);
    procedure edFaturadoChange(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure dfClienteSelecionou(Sender: TObject);
    procedure edChaveClienteChange(Sender: TObject);
    procedure btLimparDataHoraClick(Sender: TObject);
    procedure btSetarDataHoraClick(Sender: TObject);
  private
    function GerarCodigo: Integer;
    function FaturarServico( nID : integer ): Integer;
    procedure MudaMaquinas;
  public
    { Public declarations }
  end;

var
  FrmOrdemServico: TFrmOrdemServico;

implementation

uses DM_Projeto, DM_OrdemServico, rpt_Servico, DM_Financeiro, funcoes;

{$R *.dfm}

procedure TFrmOrdemServico.btComando1Click(Sender: TObject);
begin
  inherited;
  if DMOrdemServico.C_TabelaORDEMSERVICO.value <= 0 then
    DlgMsg.ShowMsg( 50, ['Selecione a Ordem de Serviço'] )
  else begin
    RptServico := TRptServico.Create(Self);
    RptServico.ImprimirOS(DMOrdemServico.C_TabelaORDEMSERVICO.AsInteger);
    RptServico.Release;
    RptServico := nil;
  end;
end;

procedure TFrmOrdemServico.DF_CodigoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  DMOrdemServico.C_TabelaNUMERO.Value := IntToStr(GerarCodigo);
  ActiveControl := DFCliente;
end;

function TFrmOrdemServico.GerarCodigo: Integer;
begin
  with DMProjeto.Q_Sql do begin
    Sql.Text := 'select gen_id(GENSIST_OS ,1) from rdb$database';
    Open;
    result := fields[0].AsInteger;
    Close;
  end;
end;

procedure TFrmOrdemServico.dbgPecasDESCRICAOITEMButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
    if AbsoluteIndex = 1 then
    begin
        DMProjeto.SetParametrosForm([DMOrdemServico.C_ServicosDetITEM.asVariant]);
        DMProjeto.CriarForm('FrmItens', self, true);
        if (DMOrdemServico.C_ServicosDet.State in [dsInsert, dsEdit]) then
            dbgPecas.TS_ID := LastDataObject.ObjectKey;
    end;
end;

procedure TFrmOrdemServico.btComando2Click(Sender: TObject);
begin
  inherited;
  if DMOrdemServico.C_TabelaORDEMSERVICO.value <= 0 then begin
    DlgMsg.ShowMsg( 50, ['Selecione a Ordem de Serviço'] );
    exit;
  end;

  if ( DlgMsg.ShowMsg(8024) = 100) then
    FaturarServico( DMOrdemServico.C_TabelaORDEMSERVICO.AsInteger );
end;


function TFrmOrdemServico.FaturarServico( nID : integer ): Integer;
var nTotal : currency;
    itens, sChaves, s, Num : string;
    i, nQtd, IdMestre : integer;
begin
  try
    // Falta perguntar se deseja faturar...
    with DMProjeto.Q_SQL do begin
      Close;
      SQL.Text := 'select sum(quantidade * valor) as total from ordensservicosdet ' +
                  'where ordemservico = ' + IntToStr( nID );
      Open;
      nTotal := Fields[0].AsCurrency;
      Close;
    end;
    if (nTotal <= 0) then begin
      DlgMsg.ShowMsg( 8025 );
      Exit;
    end;
    sChaves := '';
    with DMProjeto.Q_SQL do begin
      Close;
      SQL.Text := 'select item, descricaoitem, quantidade, valor, unidade ' +
                  'from ordensservicosdet ' +
                  'where ordemservico = ' + IntToStr( nID );
      Open;
      First;
      while not EOF do begin
        sChaves := sChaves + Fields[0].AsString + '|' + Fields[1].AsString + '|' +
                   Fields[2].AsString + '|' + Fields[3].AsString + '|' + Fields[4].AsString + '€';
        Next;
      end;
      Close;
    end;
    Delete( sChaves, Length(sChaves) , 1);
    itens := '';
    nQtd := ContaStrings( sChaves, '€' );
    for i := 1 to nQtd do begin
      s := SeparaStrings( sChaves, '€' , i );
      DMProjeto.Q_SQL.Close;
      DMProjeto.Q_SQL.SQL.Text := 'select tipoitem, situacaoecf, reducaocst, aliqicms, ' +
                        'ipivenda, customedio, custocontabil, cst, tva, conta_venda, fatorundvenda, coalesce( idtribfederal,0) ' +
                        'from itens ' +
                        'where item = ' + SeparaStrings( s, '|', 1 );
      DMProjeto.Q_SQL.Open;
      itens := itens + SeparaStrings( s, '|', 1 );
      itens := itens + ';' + SeparaStrings( s, '|', 2 );
      itens := itens + ';' + SeparaStrings( s, '|', 3 );
      itens := itens + ';' + SeparaStrings( s, '|', 4 );
      itens := itens + ';' + SeparaStrings( s, '|', 5 );
      itens := itens + ';' + DMProjeto.Q_SQL.Fields[0].AsString;
      itens := itens + ';' + '0';
      itens := itens + ';' + DMProjeto.Q_SQL.Fields[1].AsString;
      itens := itens + ';' + DMProjeto.Q_SQL.Fields[2].AsString;
      itens := itens + ';' + DMProjeto.Q_SQL.Fields[3].AsString;
      itens := itens + ';' + DMProjeto.Q_SQL.Fields[4].AsString;
      itens := itens + ';' + DMProjeto.Q_SQL.Fields[5].AsString;
      itens := itens + ';' + DMProjeto.Q_SQL.Fields[6].AsString;
      itens := itens + ';' + DMProjeto.Q_SQL.Fields[7].AsString;
      itens := itens + ';' + DMProjeto.Q_SQL.Fields[8].AsString;
      itens := itens + ';' + DMProjeto.Q_SQL.Fields[9].AsString;
      itens := itens + ';' + DMProjeto.Q_SQL.Fields[10].AsString;
      itens := itens + ';' + DMProjeto.Q_SQL.Fields[11].AsString + '||';
      DMProjeto.Q_SQL.Close;
    end;
    if Copy(itens,Length(itens)-2,2) = '||' then Delete(itens,Length(itens)-2,2);
    Num := '';
    IdMestre := DMProjeto.GerarSaida( True,Num, DMOrdemServico.C_TabelaCLIENTE.AsInteger, '',
                                      DMProjeto.dDataSistema,
                                      0, 23,itens, DMFinanceiro.nContaPadrao,0,
                                      'Faturamento da Ordem de Serviço Nº ' + DMOrdemServico.C_TabelaNUMERO.AsString, 0,False,1);

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    result := IDMestre;
    if IdMestre > 0 then begin
      if not (DMOrdemServico.C_Tabela.State in [dsEdit,dsInsert]) then
        DMOrdemServico.C_Tabela.Edit;
      DMOrdemServico.C_TabelaFATURADO.Value := 'S';
      DMOrdemServico.C_Tabela.Post;
      DMOrdemServico.Gravar;
    end;
  except
    on e:exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DlgMsg.ShowMsg(50, [e.message]);
    end;
  end;
end;

procedure TFrmOrdemServico.edFaturadoChange(Sender: TObject);
begin
  inherited;
  if DMOrdemServico.C_TabelaFATURADO.Value = 'S' then begin
    btComando2.Visible := False;
    T_Status.Prepare(lbFaturado.Parent, lbFaturado.BoundsRect);
    try
        lbFaturado.Visible := true;
        if T_Status.Prepared then
            T_Status.Execute;
    finally
        T_Status.unPrepare;
    end;
  end
  else begin
    lbFaturado.Visible := False;
    btComando2.Visible := true;
  end;
end;

procedure TFrmOrdemServico.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  edFaturadoChange(Self);
end;

procedure TFrmOrdemServico.MudaMaquinas;
begin
  with DMOrdemServico do begin
    C_Equip.Close;
    Q_Equip.ParamByName('CLIENTE').AsInteger := C_TabelaCLIENTE.AsInteger;
    C_Equip.Open;
  end;
end;

procedure TFrmOrdemServico.dfClienteSelecionou(Sender: TObject);
begin
  inherited;
  MudaMaquinas;
end;

procedure TFrmOrdemServico.edChaveClienteChange(Sender: TObject);
begin
  inherited;
  MudaMaquinas;
end;

procedure TFrmOrdemServico.btLimparDataHoraClick(Sender: TObject);
begin
  inherited;
  // Método único para limpar as datas e horas
  DMOrdemServico.C_Tabela.Edit;
  DMOrdemServico.C_Tabela.FieldByName('DT' + TTS_SpeedButton(Sender).TagStr ).AsVariant := null;
  DMOrdemServico.C_Tabela.FieldByName('HORA' + TTS_SpeedButton(Sender).TagStr ).AsVariant := null;
end;

procedure TFrmOrdemServico.btSetarDataHoraClick(Sender: TObject);
begin
  inherited;
  // Método único para setar as datas e horas
  DMOrdemServico.C_Tabela.Edit;
  DMOrdemServico.C_Tabela.FieldByName('DT' + TTS_SpeedButton(Sender).TagStr ).AsDateTime := DMProjeto.GetDataServidor;
  DMOrdemServico.C_Tabela.FieldByName('HORA' + TTS_SpeedButton(Sender).TagStr ).AsDateTime := DMProjeto.GetTimeServidor;
end;



end.

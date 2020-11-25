unit Rpt_AnaliseCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  FormsComponent, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, ComCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel, ExtCtrls, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, TS_Label,
  dxEditor, dxExEdtr, dxEdLib, TS_ImageEdit, 
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum,
  Placemnt, TS_PopupEdit, TS_CalcEdit, TS_CheckBox, TS_PopupFiltrarItens,
  IBUpdateSQL, Variants;

type
  TRptAnaliseCompra = class(TRptPadrao)
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaPRECOCOMPRA: TdxDBGridMaskColumn;
    dbgConsultaCUSTOCONTABIL: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOCOMPRA: TdxDBGridMaskColumn;
    dbgConsultaQTDEMINIMO: TdxDBGridMaskColumn;
    dbgConsultaPONTOPEDIDO: TdxDBGridMaskColumn;
    dbgConsultaQTDEMAXIMO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaESTOQUE: TdxDBGridMaskColumn;
    dbgConsultaSEMLUCRO: TdxDBGridMaskColumn;
    dbgConsultaFATORLUCRO: TdxDBGridMaskColumn;
    dbgConsultaDESCULTFORNEC: TdxDBGridMaskColumn;
    dbgConsultaDESCPREFFORNEC: TdxDBGridMaskColumn;
    dbgConsultaSAIDASEsteMes: TdxDBGridMaskColumn;
    dbgConsultaSAIDASMP1: TdxDBGridMaskColumn;
    dbgConsultaSAIDASMP2: TdxDBGridMaskColumn;
    dbgConsultaSAIDASMP3: TdxDBGridMaskColumn;
    dbgConsultaData: TdxDBGridDateColumn;
    dfEstoqueItens: TTS_ImageEdit;
    TS_Label1: TTS_Label;
    dfRevenda: TTS_ImageEdit;
    dfDesativado: TTS_ImageEdit;
    Label1: TLabel;
    dbgConsultaMes1AP: TdxDBGridMaskColumn;
    dbgConsultaMes2AP: TdxDBGridMaskColumn;
    dbgConsultaMes3AP: TdxDBGridMaskColumn;
    dbgConsultaMes4AP: TdxDBGridMaskColumn;
    C_ConsultaicAP_MesCorrente: TCurrencyField;
    C_ConsultaicAP_Mes2: TCurrencyField;
    C_ConsultaicAP_Mes3: TCurrencyField;
    C_ConsultaicAP_Mes4: TCurrencyField;
    C_ConsultaicSAIDASEsteMes: TCurrencyField;
    C_ConsultaicSaidasMP1: TCurrencyField;
    C_ConsultaicSAIDASMP2: TCurrencyField;
    C_ConsultaicSAIDASMP3: TCurrencyField;
    dbgConsultaDESCRICAOGRUPO: TdxDBGridColumn;
    dbgConsultaDESCFABRICANTE: TdxDBGridColumn;
    dbgConsultaUltQtdeCompra: TdxDBGridColumn;
    C_ConsultaicMaiorVenda: TFloatField;
    dbgConsultaicSugestao: TdxDBGridColumn;
    C_ConsultaicSugestao: TFloatField;
    EstoqueSeguranca: TTS_CalcEdit;
    TS_Label2: TTS_Label;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaPRECOCOMPRA: TFloatField;
    C_ConsultaCUSTOCONTABIL: TFloatField;
    C_ConsultaULTIMOFORNECEDOR: TIntegerField;
    C_ConsultaGRUPO: TIntegerField;
    C_ConsultaFABRICANTE: TIntegerField;
    C_ConsultaDESCRICAOCOMPRA: TStringField;
    C_ConsultaQTDEMINIMO: TBCDField;
    C_ConsultaPONTOPEDIDO: TBCDField;
    C_ConsultaQTDEMAXIMO: TBCDField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaESTOQUE: TBCDField;
    C_ConsultaSEMLUCRO: TFloatField;
    C_ConsultaFATORLUCRO: TFloatField;
    C_ConsultaDESCULTFORNEC: TStringField;
    C_ConsultaDESCPREFFORNEC: TStringField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaDESCFABRICANTE: TStringField;
    C_ConsultaULTIMACOMPRA: TDateField;
    C_ConsultaULTQTDECOMPRA: TBCDField;
    C_ConsultaSAIDASESTEMES: TBCDField;
    C_ConsultaSAIDASMP1: TBCDField;
    C_ConsultaSAIDASMP2: TBCDField;
    C_ConsultaSAIDASMP3: TBCDField;
    C_ConsultaAP_MESCORRENTE: TBCDField;
    C_ConsultaAP_MES2: TBCDField;
    C_ConsultaAP_MES3: TBCDField;
    C_ConsultaAP_MES4: TBCDField;
    C_ConsultaPED_COMPRA_EM_ABERTO: TBCDField;
    dbgConsultaPED_COMPRA_EM_ABERTO: TdxDBGridColumn;
    C_ConsultaicQtdPedido: TFloatField;
    dbgConsultaQtdPedido: TdxDBGridColumn;
    N2: TMenuItem;
    GerarPedido1: TMenuItem;
    C_Consulta_icSelecionado: TIntegerField;
    U_Consulta: TIBUpdateSQL;
    dfDias: TTS_CalcEdit;
    TS_Label3: TTS_Label;
    C_ConsultaMEDIA3MESES: TBCDField;
    procedure dfEstoqueItensChange(Sender: TObject);
    procedure dfGruposChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure btAtualizarClick(Sender: TObject);
    procedure PopupFiltroItensSelecionou(Sender: TObject);
    procedure GerarPedido1Click(Sender: TObject);
    procedure dbgConsultaTS_OnSelection(Sender: TObject;
      bSelected: Boolean; var bCanSelect: Boolean);
  private
    { Private declarations }
    procedure AtualizarQuery;
    procedure GerarPedido;
  public
    { Public declarations }
  end;

var
  RptAnaliseCompra: TRptAnaliseCompra;

implementation
  uses DM_Projeto, funcoes;

{$R *.DFM}


procedure TRptAnaliseCompra.GerarPedido;
Var
   sPedido: TStringList;
Begin
 sPedido := TStringList.Create;
 With C_Consulta do Begin
   DisableControls;
   First;
   While Not Eof do Begin
      If (FieldByName('_icSelecionado').Value = 1 ) Then Begin //
         sPedido.Add(FieldByName('Item').AsString +'|'+ FloatToStr(FieldByName('icQtdPedido').Value * 100) + '|' + FloatToStr(FieldByName('PrecoCompra').Value * 100));
      End;
      Next;
   End;
   sPedido.SaveToFile(ExtractFilePath(Application.ExeName) + '\PedidosCompra.TxT');
   EnableControls;
   sPedido.Free;
   WindowState := wsMinimized;
   DMProjeto.SetParametrosForm([null, 102]);
   DMProjeto.CriarForm('FrmPedidosCompra', Self, false);
 End;
End;

procedure TRptAnaliseCompra.AtualizarQuery;
  function ParamDate( Data : TDateTime ) : String;  //  Mes/Dia/Ano
  begin
    result := FormatDateTime('mm/dd/yyyy', data);
  end;
var
  sFiltro : String;
  sWhere  : String;
  sComando: String;
  Hoje : TDateTime;
begin
  Screen.Cursor := crHourGlass;

  Hoje := DMProjeto.dDataSistema;
  sFiltro := dfEstoqueItens.EditText + #13 +
             dfRevenda.EditText + #13 +
             dfDesativado.EditText + #13;

//  sFiltro := sFiltro + 'Agrupado por: ' + dfGrupos.Text;

  {Itens}
  sWhere := '';
  Case dfEstoqueItens.Text[1] of
    'M' : sWhere := CExp(sWhere, ' and ') +  ' i.Estoque < i.QtdeMinimo ';
    'P' : sWhere := CExp(sWhere, ' and ') +  ' i.Estoque <= i.PontoPedido ';
    'E' : sWhere := CExp(sWhere, ' and ') +  ' i.Estoque > 0 ';
    'Z' : sWhere := CExp(sWhere, ' and ') +  ' i.Estoque <= 0 ';
    'N' : sWhere := CExp(sWhere, ' and ') +  ' i.Estoque < 0 ';
  end;

  Case dfRevenda.Text[1] of
    'R' : sWhere := CExp(sWhere, ' and ') +  ' i.Revenda = ''S'' ';
    'C' : sWhere := CExp(sWhere, ' and ') +  ' i.Revenda = ''N'' ';
  end;

  Case dfDesativado.Text[1] of
    'N' : sWhere := CExp(sWhere, ' and ') +  ' i.Desativado = ''N'' ';
    'S' : sWhere := CExp(sWhere, ' and ') +  ' i.Desativado = ''S'' ';
  end;

  {Substituindo parâmetros das Datas}
//  sComando := sConsulta;
  If popupFiltroItens.getSQL = '' Then
     sFiltro := ''
  Else
     sFiltro := ' and '+popupFiltroItens.getSQL;
//  sComando := 'Select ' + getCampos + ' ' +
//              'From ' + getTabelas + ' ' +
//              'Where i.TipoItem = 1 and '+sFiltro;
  sComando :=  ' Select   i.PED_COMPRA_EM_ABERTO, i.Item, i.Codigo, i.Descricao, i.Referencia, i.CustoMedio, i.PrecoCompra,  i.CustoContabil, i.UltimoFornecedor, i.Grupo, i.Fabricante,    i.DescricaoCompra, i.QtdeMinimo, i.PontoPedido, i.QtdeMaximo, '+
               ' i.Unidade, i.Estoque, i.SemLucro, i.FatorLucro,  ult.Nome as DescUltFornec, pref.Nome as DescPrefFornec,    g.DescricaoGrupo, f.Descricao as DescFabricante, i.UltimaCompra, i.UltQtdeCompra, '+
               ' (Select sum(Quantidade * -1)  from TransacoesEstoque  t  where ' +
               'Item = i.Item and  (t.TipoOrigem not in (18,38,40,41,45,47,55)) and  Quantidade < 0 and t.Data >= :Ulimos3Meses) as Media3Meses, '+
               ' (Select Sum(Quantidade)  from TransacoesEstoque  t  where Item = i.Item and  (t.TipoOrigem not in (18,38,40,41,45,47,55)) and t.Data < :Hoje and t.Data >= :FMDC ) as SaidasEsteMes, '+
               ' (Select Sum(Quantidade)  from TransacoesEstoque  t  where Item = i.Item and  (t.TipoOrigem not in (18,38,40,41,45,47,55)) and t.Data < :FMDC and t.Data >= :FMD30 ) as SaidasMP1, '+
               ' (Select Sum(Quantidade)  from TransacoesEstoque  t  where Item = i.Item and  (t.TipoOrigem not in (18,38,40,41,45,47,55)) and t.Data < :FMD30 and t.Data >= :FMD60 ) as SaidasMP2, '+
               ' (Select Sum(Quantidade)  from TransacoesEstoque  t  where Item = i.Item and  (t.TipoOrigem not in (18,38,40,41,45,47,55)) and t.Data < :FMD60 and t.Data >= :FMD90 ) as SaidasMP3, '+
               ' (Select Sum(Quantidade)  from TransacoesEstoque  t  where Item = i.Item and  (t.TipoOrigem not in (18,38,40,41,45,47,55)) and t.Data >= :M1I_AP and t.Data <= :M1F_AP ) as AP_MesCorrente, '+
               ' (Select Sum(Quantidade)  from TransacoesEstoque  t  where Item = i.Item and  (t.TipoOrigem not in (18,38,40,41,45,47,55)) and t.Data > :M1F_AP and t.Data <= :M2F_AP ) as AP_Mes2, '+
               ' (Select Sum(Quantidade)  from TransacoesEstoque  t  where Item = i.Item and  (t.TipoOrigem not in (18,38,40,41,45,47,55)) and t.Data > :M2F_AP and t.Data <= :M3F_AP ) as AP_Mes3, '+
               ' (Select Sum(Quantidade)  from TransacoesEstoque  t  where Item = i.Item and  (t.TipoOrigem not in (18,38,40,41,45,47,55)) and t.Data > :M3F_AP and t.Data <= :M4F_AP ) as AP_Mes4 '+
               ' From Itens i LEFT JOIN Grupos g ON g.Grupo = i.Grupo '+
               ' LEFT JOIN Fabricantes f ON f.Fabricante = i.Fabricante LEFT JOIN Favorecidos ult ON ult.Favorecido = i.UltimoFornecedor LEFT JOIN Favorecidos pref ON pref.Favorecido = i.FornecPreferencia ';


  sComando := sComando + 'Where i.TipoItem = 1 ' +sFiltro;


  {Hoje}
  sComando := replace(sComando, ':Hoje', QuotedStr(ParamDate( Hoje )) );
  Hoje := FirstMonthDay(Hoje); //***************

  {Ulimos3Meses}
  sComando := replace(sComando, ':Ulimos3Meses', QuotedStr(ParamDate( DateAdd('MM', -3, Hoje) )) );
//  dbgConsultaSAIDASMP1.Caption := UpperCase(Esquerda( MesExtenso(DateAdd('MM', -1, Hoje)), 3));


  {Este Ano}
  {FMD - First Month Day}
  sComando := replace(sComando, ':FMDC', QuotedStr(ParamDate( Hoje )) );

  {FMD30}
  sComando := replace(sComando, ':FMD30', QuotedStr(ParamDate( DateAdd('MM', -1, Hoje) )) );
  dbgConsultaSAIDASMP1.Caption := UpperCase(Esquerda( MesExtenso(DateAdd('MM', -1, Hoje)), 3));

  {FMD60}
  sComando := replace(sComando, ':FMD60', QuotedStr(ParamDate( DateAdd('MM', -2, Hoje) )) );
  dbgConsultaSAIDASMP2.Caption := UpperCase(Esquerda( MesExtenso(DateAdd('MM', -2, Hoje)), 3));

  {FMD90}
  sComando := replace(sComando, ':FMD90', QuotedStr(ParamDate( DateAdd('MM', -3, Hoje) )) );
  dbgConsultaSAIDASMP3.Caption := UpperCase(Esquerda( MesExtenso(DateAdd('MM', -3, Hoje)), 3));

  {Ano Passado}
  Hoje := DateAdd('YY',-1, Hoje); //*********Primeiro dia deste mes no ano passado
  dbgConsultaMes1AP.Caption := UpperCase(Esquerda( MesExtenso(Hoje), 3)) + '/' + Direita(IntToStr(Ano(Hoje)),2);
  sComando := replace(sComando, ':M1I_AP', QuotedStr(ParamDate( Hoje )) );

  Hoje := LastMonthDay( Hoje );
  sComando := replace(sComando, ':M1F_AP', QuotedStr(ParamDate( Hoje )) );

  {M2F_AP}
  Hoje := LastMonthDay( Hoje + 7 );
  dbgConsultaMes2AP.Caption := UpperCase(Esquerda( MesExtenso(Hoje), 3)) + '/' + Direita(IntToStr(Ano(Hoje)),2);
  sComando := replace(sComando, ':M2F_AP', QuotedStr(ParamDate( Hoje )) );

  {M3F_AP}
  Hoje := LastMonthDay( Hoje + 7 );
  dbgConsultaMes3AP.Caption := UpperCase(Esquerda( MesExtenso(Hoje), 3)) + '/' + Direita(IntToStr(Ano(Hoje)),2);
  sComando := replace(sComando, ':M3F_AP', QuotedStr(ParamDate( Hoje )) );

  {M4F_AP}
  Hoje := LastMonthDay( Hoje + 7 );
  dbgConsultaMes4AP.Caption := UpperCase(Esquerda( MesExtenso(Hoje), 3)) + '/' + Direita(IntToStr(Ano(Hoje)),2);
  sComando := replace(sComando, ':M4F_AP', QuotedStr(ParamDate( Hoje )) );

  Q_Consulta.Close;
  Q_Consulta.SQL.Text := sComando ;

  try
    C_Consulta.Close;
    C_Consulta.Open;
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TRptAnaliseCompra.dfEstoqueItensChange(Sender: TObject);
begin
  inherited;
  AtualizarQuery;
end;

procedure TRptAnaliseCompra.dfGruposChange(Sender: TObject);
begin
  inherited;
  AtualizarQuery;
end;

procedure TRptAnaliseCompra.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
    If DlgMsg.ShowMsg(8056 ) = 100 then begin
    try
      Screen.Cursor := crHourGlass;
      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
      Q_SQLReport.Close;
      Q_SQLReport.SQL.Text := 'execute procedure pp_atualiza_ped_compra_itens ';
      Q_SQLReport.ExecSQL;

      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
      Screen.Cursor := crDefault;
      DlgMsg.ShowMsg( 8046 );
    except
      on e:exception do begin
        Screen.Cursor := crDefault;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DlgMsg.ShowMsg( 50, ['ERRO' + #13#10 + e.message ] );
      end;
    end;
  end;


//  AtualizarQuery;

end;

procedure TRptAnaliseCompra.C_ConsultaCalcFields(DataSet: TDataSet);
Var nSugestao,nMaior: Currency;
begin
  inherited;
  C_Consulta.FieldByName('icAP_MesCorrente').asCurrency := -C_Consulta.FieldByName('AP_MesCorrente').asCurrency;
  C_Consulta.FieldByName('icAP_Mes2').asCurrency := -C_Consulta.FieldByName('AP_Mes2').asCurrency;
  C_Consulta.FieldByName('icAP_Mes3').asCurrency := -C_Consulta.FieldByName('AP_Mes3').asCurrency;
  C_Consulta.FieldByName('icAP_Mes4').asCurrency := -C_Consulta.FieldByName('AP_Mes4').asCurrency;

  C_Consulta.FieldByName('icSAIDASESTEMES').asCurrency := -C_Consulta.FieldByName('SAIDASESTEMES').asCurrency;
  C_Consulta.FieldByName('icSAIDASMP1').asCurrency := -C_Consulta.FieldByName('SAIDASMP1').asCurrency;
  C_Consulta.FieldByName('icSAIDASMP2').asCurrency := -C_Consulta.FieldByName('SAIDASMP2').asCurrency;
  C_Consulta.FieldByName('icSAIDASMP3').asCurrency := -C_Consulta.FieldByName('SAIDASMP3').asCurrency;

      //Original
//  nMaior := C_Consulta.FieldByName('icSAIDASMP1').asCurrency;
//  If nMaior < C_Consulta.FieldByName('icSAIDASMP2').asCurrency Then
//    nMaior := C_Consulta.FieldByName('icSAIDASMP2').asCurrency;
//  If nMaior < C_Consulta.FieldByName('icSAIDASMP3').asCurrency Then
//    nMaior := C_Consulta.FieldByName('icSAIDASMP3').asCurrency;

//  nMaior := ( C_Consulta.FieldByName('icSAIDASMP3').asCurrency +
//                C_Consulta.FieldByName('icSAIDASMP2').asCurrency +
//                C_Consulta.FieldByName('icSAIDASMP1').asCurrency ) / 3 ;


//  nSugestao := (nMaior + (C_Consulta.FieldByName('QTDEMINIMO').asCurrency *
//         (EstoqueSeguranca.Value/100)) - C_Consulta.FieldByName('ESTOQUE').asCurrency);


//nSugestao := (((C_Consulta.FieldByName('Media3Meses').asCurrency + (C_Consulta.FieldByName('QTDEMINIMO').asCurrency * (EstoqueSeguranca.Value/100))
//        - C_Consulta.FieldByName('ESTOQUE').asCurrency))- C_Consulta.FieldByName('PED_COMPRA_EM_ABERTO').Value )* (dfDias.Value / 30) ;

//Sugestao = ( (media + (( mínimo*margemSeguranca) – estoque ) – pedidos em aberto ) ) * quantidade de dias para estoque/ 30

nSugestao :=   ((C_Consulta.FieldByName('Media3Meses').asCurrency / 3)
             + (C_Consulta.FieldByName('QTDEMINIMO').asCurrency + (C_Consulta.FieldByName('QTDEMINIMO').asCurrency * EstoqueSeguranca.Value / 100))
             - (C_Consulta.FieldByName('ESTOQUE').asCurrency + C_Consulta.FieldByName('PED_COMPRA_EM_ABERTO').asCurrency))
             * (dfDias.Value / 30)  ;
  nSugestao := Round(nSugestao);
  If nSugestao < 0 Then
      nSugestao := 0;
  C_Consulta.FieldByName('icSugestao').asCurrency := nSugestao;
end;

procedure TRptAnaliseCompra.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizarQuery;
end;

procedure TRptAnaliseCompra.PopupFiltroItensSelecionou(Sender: TObject);
begin
  inherited;
  AtualizarQuery;
end;

procedure TRptAnaliseCompra.GerarPedido1Click(Sender: TObject);
begin
  inherited;
  GerarPedido;
end;

procedure TRptAnaliseCompra.dbgConsultaTS_OnSelection(Sender: TObject;
  bSelected: Boolean; var bCanSelect: Boolean);
begin
  inherited;
  if bSelected Then Begin
    C_Consulta.Edit;
    C_Consulta.FieldByName('icQtdPedido').asCurrency  :=  C_Consulta.FieldByName('icSugestao').asCurrency ;
  End;
end;

end.

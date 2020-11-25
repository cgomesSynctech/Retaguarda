unit Dlg_SitCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  ExtCtrls, ppViewr, DLG_MODAL, DlgMsg, Menus,
  StdCtrls, Buttons, TS_LastDataObject,
  TS_Label, TS_Shape, DBCtrls, TS_DBText, TS_MaxPanel, ImgList, TS_ScrollBox, Mask, TS_DBEdit,
  TS_DBLookupTipoFav,
  TS_DBTextEffect,
  TS_EditFavorecido,
  dxMasterView,
  dxTL, dxDBCtrl, dxDBGrid, IBDatabase, ComCtrls, dxCntner, TS_SpeedButton,
  FRM_MODELOCADASTROS, TS_Bevel, dxExEdtr, dxEdLib, TS_ButtonEdit,
  dxEditor, dxDBEdtr, dxDBELib, FormsComponent, TS_Image, dxfLabel,
  teCtrls, TS_EffectsPanel, TS_PageControl, TS_DBButtonEdit, TS_PopupMenu,
  TS_SpinEdit, TS_QDBGrid,
  dxDBTLCl, dxGrClms, teBlend, teSlide, TransEff, teTimed, teMasked, teForm,
  teDiagon, teWipe, Variants, Placemnt, BTOdeum, TS_BitBtn;

type
  TDlgSitCliente = class(TFrmModeloCadastros)
    Img_Panels: TImageList;
    C_ItensDS: TDataSource;
    C_Itens: TClientDataSet;
    Q_ItensProvider: TDataSetProvider;
    Q_Itens: TIBQuery;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensUNIDADE: TStringField;
    C_ItensTOTAL: TFloatField;
    C_ItensULTIMACOMPRA: TDateField;
    Q_SQL: TIBQuery;
    Q_SQLTransaction: TIBTransaction;
    pnPesquisaFavorecido: TTS_Panel;
    dfTipoFav: TTS_DBLookupTipoFav;
    pcQuadroGeral: TTS_PageControl;
    tsSitFinanceira: TTS_TabSheet;
    tsItens: TTS_TabSheet;
    TS_Image1: TTS_Image;
    edFavorecido: TTS_EditFavorecido;
    gridItens: TTS_QDBGrid;
    gridItensCODIGO: TdxDBGridMaskColumn;
    gridItensDESCRICAO: TdxDBGridMaskColumn;
    gridItensUNIDADE: TdxDBGridMaskColumn;
    gridItensQUANTIDADE: TdxDBGridMaskColumn;
    gridItensTOTAL: TdxDBGridMaskColumn;
    gridItensULTIMACOMPRA: TdxDBGridDateColumn;
    ppmGrid: TTS_PopupMenu;
    C_ItensITEM: TIntegerField;
    pnParcelas: TTS_Panel;
    pnSitFinAtual: TTS_Panel;
    TS_Shape12: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Shape1: TTS_Shape;
    TS_Label7: TTS_Label;
    TS_Label11: TTS_Label;
    TS_Label12: TTS_Label;
    TS_Label16: TTS_Label;
    TS_Label20: TTS_Label;
    TS_Label29: TTS_Label;
    TS_Label30: TTS_Label;
    TS_Label31: TTS_Label;
    TS_Label32: TTS_Label;
    TS_Label33: TTS_Label;
    lbParcTotalQtde: TTS_Label;
    lbParcTotalValor: TTS_Label;
    lbParcTotalQtdePerc: TTS_Label;
    lbParcTotalValorPerc: TTS_Label;
    lbParcEmDiaQtde: TTS_Label;
    lbParcEmDiaValor: TTS_Label;
    lbParcEmDiaQtdePerc: TTS_Label;
    lbParcEmDiaValorPerc: TTS_Label;
    lbParcEmAtrasoQtde: TTS_Label;
    lbParcEmAtrasoValor: TTS_Label;
    lbParcEmAtrasoQtdePerc: TTS_Label;
    lbParcEmAtrasoValorPerc: TTS_Label;
    lbParcAtrasadasQtde: TTS_Label;
    lbParcAtrasadasValor: TTS_Label;
    lbParcAtrasadasQtdePerc: TTS_Label;
    lbParcAtrasadasValorPerc: TTS_Label;
    lbParcAVencerQtde: TTS_Label;
    lbParcAVencerValor: TTS_Label;
    lbParcAVencerQtdePerc: TTS_Label;
    lbParcAVencerValorPerc: TTS_Label;
    TS_Label37: TTS_Label;
    lbParcVencidasQtde: TTS_Label;
    lbParcVencidasValor: TTS_Label;
    lbParcVencidasQtdePerc: TTS_Label;
    lbParcVencidasValorPerc: TTS_Label;
    seAnoPacelas: TTS_SpinEdit;
    TS_Shape5: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Label24: TTS_Label;
    TS_Shape16: TTS_Shape;
    pnVendasCliente: TTS_Panel;
    pnVendas: TTS_Panel;
    lbDataUltVenda: TTS_Label;
    lbValorUltVenda: TTS_Label;
    lbValorVendas: TTS_Label;
    lbQuantVendas: TTS_Label;
    lbDataMaiorVenda: TTS_Label;
    lbValorMaiorVenda: TTS_Label;
    lbValorMedioParcelas: TTS_Label;
    lbQuantParcelas: TTS_Label;
    lbValorMedioVendas: TTS_Label;
    TS_Label15: TTS_Label;
    TS_Label17: TTS_Label;
    TS_Label18: TTS_Label;
    TS_Label19: TTS_Label;
    TS_Label21: TTS_Label;
    TS_Label22: TTS_Label;
    TS_Label23: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    lbDataMenorVenda: TTS_Label;
    lbValorMenorVenda: TTS_Label;
    TS_Label14: TTS_Label;
    lbValorMaiorParc: TTS_Label;
    TS_Label25: TTS_Label;
    lbValorMenorParc: TTS_Label;
    TS_Label28: TTS_Label;
    lbMediaAtraso: TTS_Label;
    TS_Shape7: TTS_Shape;
    TS_Shape15: TTS_Shape;
    TS_Label34: TTS_Label;
    TS_Shape6: TTS_Shape;
    pnChequesDev: TTS_Panel;
    TS_Shape11: TTS_Shape;
    TS_Shape14: TTS_Shape;
    TS_Label36: TTS_Label;
    TS_Shape10: TTS_Shape;
    pnSitFinHistorica: TTS_Panel;
    lbValorCheqDevAc: TTS_Label;
    TS_Label27: TTS_Label;
    TS_Label26: TTS_Label;
    lbValorCheqDev: TTS_Label;
    pnInfGerais: TTS_Panel;
    pnDadosGerais: TTS_Panel;
    lbClienteDesde: TTS_Label;
    lbTempoDeCadastro: TTS_Label;
    lbCreditoEmAberto: TTS_Label;
    lbLimiteCredito: TTS_Label;
    lbCheqPendentes: TTS_Label;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label13: TTS_Label;
    lbCredito: TTS_Label;
    TS_Label35: TTS_Label;
    TS_Shape8: TTS_Shape;
    TS_Shape9: TTS_Shape;
    TS_Shape13: TTS_Shape;
    FormTransitions1: TFormTransitions;
    TransitionList1: TTransitionList;
    TranParcelas: TSlideTransition;
    TranInfGerais: TSlideTransition;
    TranVendasCliente: TSlideTransition;
    TranChequesDev: TSlideTransition;
    TranLogotipo: TSlideTransition;
    TranAbertura: TWipeTransition;
    lbSaldoParaCompra: TTS_Label;
    TS_Label38: TTS_Label;
    TS_Label39: TTS_Label;
    lbBoletos: TTS_Label;
    lbChequesFactory: TTS_Label;
    sbOcorrencias: TTS_SpeedButton;
    C_ItensQUANTIDADE: TFloatField;
    procedure TS_Label1Click(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure edFavorecidoSelecionou(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbCreditoClick(Sender: TObject);
    procedure lbCheqPendentesClick(Sender: TObject);
    procedure lbCreditoEmAbertoClick(Sender: TObject);
    procedure lbParcAtrasoTotalClick(Sender: TObject);
    procedure lbValorUltVendaClick(Sender: TObject);
    procedure TS_Label31Click(Sender: TObject);
    procedure TS_Label37Click(Sender: TObject);
    procedure TS_Label27Click(Sender: TObject);
    procedure lbValorMaiorParcClick(Sender: TObject);
    procedure TS_Label26Click(Sender: TObject);
    procedure gridItensDblClick(Sender: TObject);
    procedure TranAberturaAfterTransition(Sender: TObject);
    procedure seAnoPacelasChange(Sender: TObject);
    procedure TS_Label32Click(Sender: TObject);
    procedure sbOcorrenciasClick(Sender: TObject);
  private
    { Private declarations }
    FavorecidoAtual: integer;
    function GetColor(BColor, EColor: TColor; N, H: Integer): TColor;
    procedure AbreInformacoesGerais(Favorecido: integer);
    procedure AbreInformacoesDeCreditoCliente(Favorecido: integer);
    procedure Processando(Flag: boolean; controle: TControl);
    procedure Pesquisa;
    //
    function Substitui(Str, ValorVelho, ValorNovo: string): string;
    procedure SubstituiValores(lLabel: TTS_Label; vValor: Variant;
      sConst: string='%VALOR');
  public
    { Public declarations }
  end;

const FORMATO_VALORES = '###,###,##0.00';
      CONST_VALOR     = '%VALOR';

var
  DlgSitCliente: TDlgSitCliente;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgSitCliente.Processando(Flag: boolean; controle: TControl);
begin
  controle.Visible := not Flag;
  if Flag then begin
    controle.SendToBack;
  end else begin
    controle.BringToFront;
  end;
end;

procedure TDlgSitCliente.AbreInformacoesGerais(Favorecido: integer);
begin
  try
    Screen.Cursor := crHourGlass;
    Application.ProcessMessages;
    C_Itens.DisableControls;
    C_Itens.Close;
    C_Itens.Params.ParamByName('Favorecido').AsInteger := Favorecido;
    C_Itens.Open;
    with Q_SQL do begin
      Close;
      SQL.Text := 'select nome,tipofavorecido from favorecidos where favorecido='+IntToStr(Favorecido);
      Open;
      edFavorecido.Text := FieldByName('nome').AsString;
      if FieldByName('tipofavorecido').AsVariant <> null then
      	dfTipoFav.LookupKeyValue := FieldByName('tipofavorecido').AsVariant
      else
      	dfTipoFav.LookupKeyValue := 1;
    end;
    C_Itens.EnableControls;
  finally
   Screen.Cursor := crDefault;
  end;
end;

procedure TDlgSitCliente.AbreInformacoesDeCreditoCliente(Favorecido: integer);
{##}function DiferencaDeDataEmMeseseAnos(DataFinal, DataInicial: TDateTime): string;
{##}var meses, anos: integer;
{##}begin
{##}  if (DataInicial=0) or (DataFinal=0) then result := ''
{##}  else begin
{##}    meses := trunc(DataFinal-DataInicial);
{##}    if meses >= 30 then begin
{##}      meses := trunc(meses/30);
{##}      if meses>=12 then begin
{##}        anos := meses div 12;
{##}        meses := meses mod 12;
{##}        result := Format('(%d ano(s) e %d mes(es))', [anos, meses]);
{##}      end else result := Format('(%d mes(es))', [meses]);
{##}    end else begin
{##}      result := 'menos de 1 mês';
{##}    end;
{##}  end;
{##}end;
{##}function Porcentagem(v1, v2: Currency):Currency;
{##}begin
{##}  if (v1=0) or (v2=0) then result := 0
{##}  else result := ((v2-v1)*100)/v1;
{##}end;
var nFav,nCheqPend,nCodUltVenda,nCodMaiorVenda,nCodMenorVenda,nQuantVendas,
    nParcelas,nQuantParc,nQuantParcEmDia,
    nQuantParcEmAtraso,nCheqDevQuant,nQuantParcAtrasadas,
    nParcVencQuant,nQuantParcAVencer,nQuantParcVencidas,
    nMedAtra,nCheqDevAc,nParcAtraQuant,nDiasAtra,i,
    nCodMenorParc, nCodMaiorParc, nVendaMaior, nVendaMenor :integer;

    fCredito,fCheqPend,fCredAberto,fSaldoComp,fValUltVenda,fValMaiorVenda,
    fValMenorVenda,fValTotVendas,fValMedVendas,fValMedParc,fCheqDevAcVal,fCheqDevVal,
    fParcVencVal,fParcAtraVal,fLimiteCred,
    fValorParc,fValorParcEmAtraso,fValorParcAtrasadas,fValorParcAVencer,fValorParcVencidas,fValorParcEmDia,
    fParcEmDiaQuantPC,fParcEmAtrasoQuantPC,fParcAtrasadasQuantPC,fParcAVencerQuantPC,fParcVencidasQuantPC,
    fParcEmDiaValPC,fParcEmAtrasoValPC,fParcAtrasadasValPC,fParcAVencerValPC, fParcVencidasValPC,
    fValMenorParc, fValMaiorParc, fFactory, fBoleto             :Currency;

    dDataCad,dDataUltVenda,dDataMaiorVenda,dDataMenorVenda      :TDateTime;

    sTempCad,sNome                                              :string;

    vVarAux                                                     :Variant;
begin
  try
    Screen.Cursor := crHourGlass;
    Application.ProcessMessages;

    with Q_SQL do begin
      // ######### INFORMAÇÕES GERAIS - LIMITE DE CRÉDITO - CRÉDITO
{      Close;
      SQL.Text := 'Select Favorecido, Nome, DataCadastro, LimiteCredito, Credito '+
        'From Favorecidos Where Favorecido = '+IntToStr(Favorecido);
      Open;
      dDataCad := FieldByName('DataCadastro').AsDateTime;
      fLimiteCred := FieldByName('LimiteCredito').AsFloat;
      fCredito := FieldByName('Credito').AsFloat;}


      nFav := Favorecido;
      Close;
      SQL.Text := 'Select Nome '+
        'From Favorecidos Where Favorecido = '+IntToStr(Favorecido);
      Open;
      sNome := FieldByName('Nome').AsString;

      DMProjeto.GetInformacoesCredito(nFav,dDataCad,fLimiteCred,fCredito);
      sTempCad := DiferencaDeDataEmMeseseAnos(DMProjeto.dDataSistema, dDataCad);

      // ######### CHEQUES PENDENTES
{      Close;
      SQL.Text := 'Select Count(dd.IDDoc) As QuantCheques, '+
        'Sum(dd.Valor) As TotalCheques '+
        'From DepositosDoc dd '+
        'Join Depositos d On d.Deposito=dd.Deposito '+
        'Where d.Favorecido ='+IntToStr(Favorecido)+' '+
        'And ((dd.Status=3 And dd.vencimento>current_date) Or dd.status In(4,5,6,7))';
      Open;
      nCheqPend := FieldByName('QuantCheques').AsInteger;
      fCheqPend := FieldByName('TotalCheques').AsFloat;}

      DMProjeto.GetInformacoesCheques(nFav,nCheqPend,fCheqPend);
      // ######### CRÉDITO EM ABERTO
{      Close;
      SQL.Text := 'Select SUM(faltareceber) As CredAberto '+
        'From TitulosaReceber Where Cliente = '+IntToStr(Favorecido)+' '+
        'And Status >= 1 And Status < 50 Having SUM(faltareceber)>=0';
      Open;
      fCredAberto := FieldByName('CredAberto').AsFloat;}

      DMProjeto.GetInformacoesCreditoAberto(nFav,fCredAberto);

      if fCredAberto < 0 then fCredAberto := 0;
      fSaldoComp := fLimiteCred-fCredAberto-fCheqPend;
      // ######### ÚLTIMA VENDA
{      Close;
      SQL.Text := 'Select Saida, Data, Total From Saidas '+
        'Where Saida = (Select Max(Saida) From Saidas '+
        'Where Favorecido='+IntToStr(Favorecido)+' '+
        'And Situacao = '+QuotedStr('N')+' And TipoPadrao = 1)';
      Open;
      nCodUltVenda := FieldByName('Saida').AsInteger;
      dDataUltVenda := FieldByName('Data').AsDateTime;
      fValUltVenda := FieldByName('Total').AsFloat;}

      DMProjeto.GetInformacoesUltVenda(nFav,nCodUltVenda,dDataUltVenda,fValUltVenda);

      // ######### MAIOR VENDA
{      Close;
      SQL.Text := 'Select Saida, Data, Total From Saidas '+
        'Where Favorecido = '+IntToStr(Favorecido)+' '+
        'And Total = (Select Max(Total) From Saidas '+
        'Where Favorecido = '+IntToStr(Favorecido)+' '+
        'And Situacao = '+QuotedStr('N')+' And TipoPadrao = 1) '+
        'Order By Saida Desc';
      Open;
      nCodMaiorVenda := FieldByName('Saida').AsInteger;
      dDataMaiorVenda := FieldByName('Data').AsDateTime;
      fValMaiorVenda := FieldByName('Total').AsFloat;}

      DMProjeto.GetInformacoesMaiorVenda(nFav,nCodMaiorVenda,dDataMaiorVenda,fValMaiorVenda);

      // ######### MENOR VENDA
{      Close;
      SQL.Text := 'Select Saida, Data, Total From Saidas '+
        'Where Favorecido = '+IntToStr(Favorecido)+' '+
        'And Total = (Select Min(Total) From Saidas '+
        'Where Favorecido = '+IntToStr(Favorecido)+' '+
        'And Situacao = '+QuotedStr('N')+' And TipoPadrao = 1) '+
        'Order By Saida Desc';
      Open;
      nCodMenorVenda := FieldByName('Saida').AsInteger;
      dDataMenorVenda := FieldByName('Data').AsDateTime;
      fValMenorVenda := FieldByName('Total').AsFloat;}

      DMProjeto.GetInformacoesMenorVenda(nFav,nCodMenorVenda,dDataMenorVenda,fValMenorVenda);

      // ######### VENDAS
{      Close;
      SQL.Text := 'Select Count(Saida) As QuantVendas, '+
        'Sum(Total) As TotalVendas, Avg(Total) As MediaVendas '+
        'From Saidas Where Favorecido = '+IntToStr(Favorecido)+' '+
        'And Situacao = '+QuotedStr('N')+' And TipoPadrao = 1';
      Open;
      fValTotVendas := FieldByName('TotalVendas').AsFloat;
      nQuantVendas := FieldByName('QuantVendas').AsInteger;
      fValMedVendas := FieldByName('MediaVendas').AsFloat;}

      DMProjeto.GetInformacoesTotalVendas(nFav,nQuantVendas,fValTotVendas,fValMedVendas);

      // ######### PARCELAS
{      Close;
      SQL.Text := 'Select Count(tr.ID) as parcelas, '+
        'Sum(tr.valor) As totparcelas, Avg(Valor) As mediaparcelas '+
        'From titulosareceber tr '+
        'Where cliente = '+IntToStr(Favorecido)+' '+
        'And tr.status>0';
      Open;
      nParcelas := FieldByName('Parcelas').AsInteger;
      fValMedParc := FieldByName('MediaParcelas').AsFloat;}

      DMProjeto.GetInformacoesMediaParcelas(nFav,nParcelas,fValMedParc);
      // Maior parcela
{      Close;
      SQL.Text := 'Select ID as codigo, Valor As maiorparcela, venda From TitulosaReceber '+
        'Where valor = (Select Max(Valor) From TitulosaReceber '+
        'Where Cliente = '+IntToStr(Favorecido)+' '+
        'And Status>0) '+
        'Order By id desc';
      Open;
      nCodMaiorParc  := FieldByName('codigo').AsInteger;
      fValMaiorParc := FieldByName('maiorparcela').AsFloat;}

      DMProjeto.GetInformacoesMaiorParcelas(nFav,nVendaMaior,nCodMaiorParc,fValMaiorParc);

      if nVendaMaior > 0 then
        lbValorMaiorParc.TagStr := IntToStr(nVendaMaior)
      else lbValorMaiorParc.TagStr := '';

      // Menor parcela
{      Close;
      SQL.Text := 'Select ID as codigo, Valor As menorparcela, venda From TitulosaReceber '+
        'Where valor = (Select Min(Valor) From TitulosaReceber '+
        'Where Cliente = '+IntToStr(Favorecido)+' '+
        'And Status>0) '+
        'Order By id desc';
      Open;
      nCodMenorParc  := FieldByName('codigo').AsInteger;
      fValMenorParc := FieldByName('menorparcela').AsFloat;}

      DMProjeto.GetInformacoesMenorParcelas(nFav,nVendaMenor,nCodMenorParc,fValMenorParc);

      if nVendaMenor > 0 then
        lbValorMenorParc.TagStr := IntToStr(nVendaMenor)
      else lbValorMenorParc.TagStr := '';


      // ######### QUADRO DE PARCELAS
      // Total Geral
{      Close;
      SQL.Text := 'Select Count(id) As quantparcelas, Sum(tr.valor) As totparcelas '+
        'From titulosareceber tr '+
        'Where cliente = '+IntToStr(Favorecido)+' '+
        'And f_year(tr.vencimento) = '+IntToStr(Trunc(seAnoPacelas.Value))+' '+
        'And tr.status>0';
      Open;
      nQuantParc := FieldByName('quantparcelas').AsInteger;
      fValorParc := FieldByName('totparcelas').AsFloat;}

      DMProjeto.GetInformacoesTotalParcelas(nFav,Trunc(seAnoPacelas.Value),nQuantParc,fValorParc);

      // Pago em dia
{      Close;
      SQL.Text := 'Select Count(id) As quantparcelas, Sum(tr.valor) As totparcelas '+
        'From titulosareceber tr '+
        'Where cliente = '+IntToStr(Favorecido)+' '+
        'And f_year(tr.vencimento) = '+IntToStr(Trunc(seAnoPacelas.Value))+' '+
        'And tr.status>=50 And tr.datapago<=tr.vencimento';
      Open;
      nQuantParcEmDia := FieldByName('quantparcelas').AsInteger;
      fValorParcEmDia := FieldByName('totparcelas').AsFloat;}

      DMProjeto.GetInformacoesTotalParcelasEmDia(nFav,Trunc(seAnoPacelas.Value),nQuantParcEmDia,fValorParcEmDia);

      if nQuantParc > 0 then
      	fParcEmDiaQuantPC := (100*nQuantParcEmDia)/nQuantParc
      else begin
      	fParcEmDiaQuantPC := 0;
        nQuantParc := 1;
      end;

      if fValorParc > 0 then
      	fParcEmDiaValPC := (100*fValorParcEmDia)/fValorParc
      else begin
      	fParcEmDiaValPC := 0;
        fValorParc := 1;
      end;

      // Pago em atraso
{      Close;
      SQL.Text := 'Select Count(id) As quantparcelas, Sum(tr.valor) As totparcelas '+
        'From titulosareceber tr '+
        'Where cliente = '+IntToStr(Favorecido)+' '+
        'And f_year(tr.vencimento) = '+IntToStr(Trunc(seAnoPacelas.Value))+' '+
        'And tr.status>=50 And tr.datapago>tr.vencimento';
      Open;
      nQuantParcEmAtraso := FieldByName('quantparcelas').AsInteger;
      fValorParcEmAtraso := FieldByName('totparcelas').AsFloat;}

      DMProjeto.GetInformacoesTotalParcelasEmAtraso(nFav,Trunc(seAnoPacelas.Value),nQuantParcEmAtraso,fValorParcEmAtraso);

      fParcEmAtrasoQuantPC := (100*nQuantParcEmAtraso)/nQuantParc;
      fParcEmAtrasoValPC := (100*fValorParcEmAtraso)/fValorParc;


      // Atrasadas
{      Close;
      SQL.Text := 'Select Count(id) As quantparcelas, Sum(tr.valor) As totparcelas '+
        'From titulosareceber tr '+
        'Where cliente = '+IntToStr(Favorecido)+' '+
        'And f_year(tr.vencimento) = '+IntToStr(Trunc(seAnoPacelas.Value))+' '+
        'And tr.status=3';
      Open;
      nQuantParcAtrasadas := FieldByName('quantparcelas').AsInteger;
      fValorParcAtrasadas := FieldByName('totparcelas').AsFloat;}

      DMProjeto.GetInformacoesTotalParcelasAtrasadas(nFav,Trunc(seAnoPacelas.Value),nQuantParcAtrasadas,fValorParcAtrasadas);

      fParcAtrasadasQuantPC := (100*nQuantParcAtrasadas)/nQuantParc;
      fParcAtrasadasValPC := (100*fValorParcAtrasadas)/fValorParc;

      // Vencidas
{      Close;
      SQL.Text := 'Select Count(id) As quantparcelas, Sum(tr.valor) As totparcelas '+
        'From titulosareceber tr '+
        'Where cliente = '+IntToStr(Favorecido)+' '+
        'And f_year(tr.vencimento) = '+IntToStr(Trunc(seAnoPacelas.Value))+' '+
        'And tr.status = 2';
      Open;
      nQuantParcVencidas := FieldByName('quantparcelas').AsInteger;
      fValorParcVencidas := FieldByName('totparcelas').AsFloat;}

      DMProjeto.GetInformacoesTotalParcelasVencidas(nFav,Trunc(seAnoPacelas.Value),nQuantParcVencidas,fValorParcVencidas);

      fParcVencidasQuantPC := (100*nQuantParcVencidas)/nQuantParc;
      fParcVencidasValPC := (100*fValorParcVencidas)/fValorParc;

      Close;
      // A Vencer
{      SQL.Text := 'Select Count(id) As quantparcelas, Sum(tr.valor) As totparcelas '+
        'From titulosareceber tr '+
        'Where cliente = '+IntToStr(Favorecido)+' '+
        'And f_year(tr.vencimento) = '+IntToStr(Trunc(seAnoPacelas.Value))+' '+
        'And tr.status = 1 And vencimento>CURRENT_DATE';
      Open;
      nQuantParcAVencer := FieldByName('quantparcelas').AsInteger;
      fValorParcAVencer := FieldByName('totparcelas').AsFloat;}

      DMProjeto.GetInformacoesTotalParcelasAVencer(nFav,Trunc(seAnoPacelas.Value),nQuantParcAVencer,fValorParcAVencer);

      fParcAVencerQuantPC := (100*nQuantParcAVencer)/nQuantParc;
      fParcAVencerValPC := (100*fValorParcAVencer)/fValorParc;


      // ########## MÉDIA DE ATRASO
{      Close;
      SQL.Text := 'Select avg(DataPago-Vencimento) as DiasAtraso '+
        'From TitulosaReceber '+
        'Where (DataPago-Vencimento)>0 '+
        'And Cliente = '+IntToStr(Favorecido)+' '+
        'And Status >= 50';
      Open;
      nMedAtra := FieldByName('DiasAtraso').AsInteger;}

      DMProjeto.GetInformacoesParcelasDiasAtraso(nFav,nMedAtra);

      // ############### CHEQUES DEVOLVIDOS
{      Close;
      SQL.Text := 'Select Count(dd.IDDOC) As QuantCheques, Sum(dd.Valor) As TotalCheques '+
        'From DepositosDoc dd Join FormasPagamento fp On dd.FormaPagamento=fp.FormaPagamento '+
        'Join Depositos d On d.Deposito=dd.Deposito Where fp.Especie=1 '+
        'And d.Favorecido = '+IntToStr(Favorecido)+' And dd.Status = 4';
      Open;
      nCheqDevQuant := FieldByName('QuantCheques').AsInteger;
      fCheqDevVal := FieldByName('TotalCheques').AsFloat;}

      DMProjeto.GetInformacoesChequesDev(nFav,nCheqDevQuant,fCheqDevVal);
      // Acertados
{      Close;
      SQL.Text := 'Select Count(dd.IDDOC) As QuantCheques, Sum(dd.Valor) As TotalCheques '+
        'From DepositosDoc dd Join Depositos d On d.Deposito=dd.Deposito '+
        'Where d.Favorecido = '+IntToStr(Favorecido)+' And dd.Status = 71';
      Open;
      nCheqDevAc := FieldByName('QuantCheques').AsInteger;
      fCheqDevAcVal := FieldByName('TotalCheques').AsFloat;}
      DMProjeto.GetInformacoesChequesAcer(nFav,nCheqDevAc,fCheqDevAcVal);

      // Cheques do Cliente que foram realizados Factory
      Close;
      SQL.Text := 'select sum(dd.valor) from depositosdoc dd ' +
                  'inner join depositos d on d.deposito = dd.deposito ' +
                  'where d.favorecido = ' + IntToStr(nFav) + ' ' +
                  'and dd.status = 55 and dd.vencimento >= current_date ';
      Open;
      fFactory := Fields[0].AsCurrency;

      // Total de Boletos Bancários emitidos
      // cujas parcelas não foram quitadas
      Close;
      SQL.Text := 'select sum(t.valor) ' +
                  'from titulosareceber t ' +
                  'inner join favorecidos f on f.favorecido = t.cliente ' +
                  'inner join tiposcobranca tc on t.tipocobranca = tc.tipocobranca ' +
                  'inner join carteiras cart on t.carteira = cart.carteira ' +
                  'where t.status > 0 and t.status < 50 and t.tipocobranca = 3 ' +
                  'and t.cliente = ' + IntToStr(nFav);
      Open;
      fBoleto := Fields[0].AsCurrency;
      Close;

    end;


    //############ ALTERA OS VALORES DOS LABELS
    SubstituiValores(lbClienteDesde, dDataCad);
    SubstituiValores(lbTempoDeCadastro, sTempCad);
    SubstituiValores(lbCreditoEmAberto, fCredAberto);
    SubstituiValores(lbLimiteCredito, fLimiteCred);
    SubstituiValores(lbCheqPendentes, fCheqPend);
    SubstituiValores(lbSaldoParaCompra, fSaldoComp);
    SubstituiValores(lbCredito, fCredito);

    SubstituiValores(lbDataUltVenda, dDataUltVenda);
    SubstituiValores(lbValorUltVenda, fValUltVenda);
    lbValorUltVenda.Tag := nCodUltVenda; //código

    SubstituiValores(lbDataMaiorVenda, dDataMaiorVenda);
    SubstituiValores(lbValorMaiorVenda, fValMaiorVenda);
    lbValorMaiorVenda.Tag := nCodMaiorVenda; //código

    SubstituiValores(lbDataMenorVenda, dDataMenorVenda);
    SubstituiValores(lbValorMenorVenda, fValMenorVenda);
    lbValorMenorVenda.Tag := nCodMenorVenda; //código

    SubstituiValores(lbValorVendas, fValTotVendas);
    SubstituiValores(lbQuantVendas, nQuantVendas);

    SubstituiValores(lbValorMedioParcelas, fValMedParc);
    SubstituiValores(lbQuantParcelas, nParcelas);
    SubstituiValores(lbValorMedioVendas, fValMedVendas);

    SubstituiValores(lbValorMaiorParc, fValMaiorParc);
    lbValorMaiorParc.Tag := nCodMaiorParc; //código

    SubstituiValores(lbValorMenorParc, fValMenorParc);
    lbValorMenorParc.Tag := nCodMenorParc; //código

    SubstituiValores(lbParcTotalQtde, iif(fParcEmDiaQuantPC=0,0,nQuantParc));
    SubstituiValores(lbParcTotalValor, iif(fParcEmDiaValPC=0,0,fValorParc));

    SubstituiValores(lbParcEmDiaQtde, nQuantParcEmDia);
    SubstituiValores(lbParcEmDiaValor, fValorParcEmDia);
    SubstituiValores(lbParcEmDiaQtdePerc, fParcEmDiaQuantPC);
    SubstituiValores(lbParcEmDiaValorPerc, fParcEmDiaValPC);

    SubstituiValores(lbParcEmAtrasoQtde, nQuantParcEmAtraso);
    SubstituiValores(lbParcEmAtrasoValor, fValorParcEmAtraso);
    SubstituiValores(lbParcEmAtrasoQtdePerc, fParcEmAtrasoQuantPC);
    SubstituiValores(lbParcEmAtrasoValorPerc, fParcEmAtrasoValPC);

    SubstituiValores(lbParcAtrasadasQtde, nQuantParcAtrasadas);
    SubstituiValores(lbParcAtrasadasValor, fValorParcAtrasadas);
    SubstituiValores(lbParcAtrasadasQtdePerc, fParcAtrasadasQuantPC);
    SubstituiValores(lbParcAtrasadasValorPerc, fParcAtrasadasValPC);

    SubstituiValores(lbParcVencidasQtde, nQuantParcVencidas);
    SubstituiValores(lbParcVencidasValor, fValorParcVencidas);
    SubstituiValores(lbParcVencidasQtdePerc, fParcVencidasQuantPC);
    SubstituiValores(lbParcVencidasValorPerc, fParcVencidasValPC);

    SubstituiValores(lbParcAVencerQtde, nQuantParcAVencer);
    SubstituiValores(lbParcAVencerValor, fValorParcAVencer);
    SubstituiValores(lbParcAVencerQtdePerc, fParcAVencerQuantPC);
    SubstituiValores(lbParcAVencerValorPerc, fParcAVencerValPC);

    SubstituiValores(lbValorCheqDev, fCheqDevVal);
    SubstituiValores(lbValorCheqDevAc, fCheqDevAcVal);
    SubstituiValores(lbMediaAtraso, nMedAtra);

    SubstituiValores(lbBoletos, fBoleto);
    SubstituiValores(lbChequesFactory, fFactory);

  finally
    Screen.Cursor := crDefault;
  end;
end;

function TDlgSitCliente.Substitui(Str, ValorVelho, ValorNovo: string): string;
begin
  result := '';
  if Length(ValorNovo) > 0 then result := Replace(Str, ValorVelho, ValorNovo);
end;


function TDlgSitCliente.GetColor(BColor, EColor: TColor; N, H: Integer): TColor;
begin
  Result := RGB(Trunc(GetRValue(BColor) + (GetRValue(EColor)-GetRValue(BColor)) * N / H),
    Trunc(GetGValue(BColor) + (GetGValue(EColor)-GetGValue(BColor)) * N / H),
    Trunc(GetBValue(BColor) + (GetBValue(EColor)-GetBValue(BColor)) * N / H));
end;

procedure TDlgSitCliente.TS_Label1Click(Sender: TObject);
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

procedure TDlgSitCliente.Pesquisa;
begin
    dfTipoFav.LookupKeyValue := DMProjeto.GetParametrosForm(1);
    AbreInformacoesGerais(FavorecidoAtual);
    AbreInformacoesDeCreditoCliente(FavorecidoAtual);
end;

procedure TDlgSitCliente.FormsComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
  FavorecidoAtual := DMProjeto.GetParametrosForm(0);
  Pesquisa;
end;

procedure TDlgSitCliente.edFavorecidoSelecionou(Sender: TObject);
begin
  inherited;
    FavorecidoAtual := edFavorecido.getID;
    AbreInformacoesGerais(FavorecidoAtual);
    AbreInformacoesDeCreditoCliente(FavorecidoAtual);
end;

procedure TDlgSitCliente.FormCreate(Sender: TObject);
var i: integer;
    nAno,nMes,nDia: word;
begin
  inherited;
  DlgSitCliente := Self;
  decodedate(DMProjeto.dDataSistema,nAno,nMes,nDia);
  seAnoPacelas.value := nAno;
  pcQuadroGeral.ActivePage := tsSitFinanceira;
  for i:=0 to DlgSitCliente.ComponentCount-1 do begin
    if (DlgSitCliente.Components[i] is TTS_Label) then begin
      if (UpperCase(copy(TTS_Label(DlgSitCliente.Components[i]).Name,1,2))='LB')
      and (TTS_Label(DlgSitCliente.Components[i]).Name<>'lbEstadoForm')
      and (TTS_Label(DlgSitCliente.Components[i]).Name<>'lbUpperHint') then begin
        TTS_Label(DlgSitCliente.Components[i]).Caption := DMProjeto.SetZero; //CONST_VALOR;
      end;
    end;
  end;
end;

procedure TDlgSitCliente.lbCreditoClick(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirRelatorioFavorecido(self,'CREDITO',FavorecidoAtual);
end;

procedure TDlgSitCliente.lbCheqPendentesClick(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirRelatorioFavorecido(self,'CHEQUESPENDENTES',FavorecidoAtual);
end;

procedure TDlgSitCliente.lbCreditoEmAbertoClick(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirRelatorioFavorecido(self,'SALDOEMABERTO',FavorecidoAtual);
end;

procedure TDlgSitCliente.lbParcAtrasoTotalClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([null,IntToStr(FavorecidoAtual)]);
  DMProjeto.CriarForm('DlgStatements', Self, true);
end;

procedure TDlgSitCliente.SubstituiValores(lLabel:TTS_Label;vValor:Variant;sConst:string='%VALOR');
{##}function FValor(fValor: Currency): string;
{##}begin
{##}  result := FormatFloat(FORMATO_VALORES,fValor);
{##}end;
var sAux: string;
begin
  if VarType(vValor)=varCurrency then
    sAux := FValor(vValor)
  else if VarType(vValor)=varDate then begin
    if VarToDateTime(vValor) = 0 then
    	sAux := ''
    else
    	sAux := DateToStr(vValor);
  end else sAux := VarToStr(vValor);
  if (lLabel.Name<>'lbEstadoForm')and(lLabel.Name<>'lbUpperHint') then
    lLabel.Caption := Trim(sAux);
//lLabel.Caption := Replace(lLabel.TagStr,Trim(sConst),Trim(sAux));
end;

procedure TDlgSitCliente.lbValorUltVendaClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([TLabel(Sender).Tag]);
  DMProjeto.CriarForm('FrmInvoices',Self,True);
end;

procedure TDlgSitCliente.TS_Label31Click(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
    SetParametrosForm( [EncodeDate(Trunc(seAnoPacelas.Value),1,1),dDataSistema,FavorecidoAtual] );
    CriarForm('RptInvoicesEmAtraso', self, True);
  end;
end;

procedure TDlgSitCliente.TS_Label37Click(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
    SetParametrosForm( [FavorecidoAtual] );
	  CriarForm('RptInvoicesVencendoHoje', self, True);
  end;
end;

procedure TDlgSitCliente.TS_Label27Click(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm( [FavorecidoAtual, 9{Index de cheques devolvidos mas acertados}] );
    CriarForm('DlgLocalizarCheques',self,True);
  end;
end;

procedure TDlgSitCliente.lbValorMaiorParcClick(Sender: TObject);
var nIDInvoice: integer;
begin
  inherited;
  // Invoice
  if TTS_Label(Sender).TagStr<>'' then begin
    nIDInvoice := StrToInt(TTS_Label(Sender).TagStr);
    DMProjeto.SetParametrosForm([nIDInvoice]);
    DMProjeto.CriarForm('FrmInvoices',Self,True);
  // Parcela
  end else begin
    nIDInvoice := TTS_Label(Sender).Tag;
    DMProjeto.SetParametrosForm([nIDInvoice]);
    DMProjeto.CriarForm('FrmA_Receber',Self,True);
  end;
end;

procedure TDlgSitCliente.TS_Label26Click(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm( [FavorecidoAtual,8] );
    CriarForm('DlgLocalizarCheques',self,True);
  end;
end;

procedure TDlgSitCliente.gridItensDblClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
		SetParametrosForm([C_ItensITEM.Value]);
  	CriarForm('FrmItens',self,true);
 	end;
end;

procedure TDlgSitCliente.TranAberturaAfterTransition(Sender: TObject);
begin
  inherited;
  	TranParcelas.Prepare(pnParcelas.Parent, pnParcelas.BoundsRect);
  	try
       pnParcelas.Visible := true;
    	if TranParcelas.Prepared then
      	TranParcelas.Execute;
  	finally
    	TranParcelas.UnPrepare;
  	end;
    {Cabeçalho}
  	TranVendasCliente.Prepare(pnVendasCliente.Parent, pnVendasCliente.BoundsRect);
  	try
       pnVendasCliente.Visible := true;
    	if TranVendasCliente.Prepared then
      	TranVendasCliente.Execute;
  	finally
    	TranVendasCliente.UnPrepare;
  	end;
  	TranInfGerais.Prepare(pnInfGerais.Parent, pnInfGerais.BoundsRect);
  	try
       pnInfGerais.Visible := true;
    	if TranInfGerais.Prepared then
      	TranInfGerais.Execute;
  	finally
    	TranInfGerais.UnPrepare;
  	end;
  	TranChequesDev.Prepare(pnChequesDev.Parent, pnChequesDev.BoundsRect);
  	try
       pnChequesDev.Visible := true;
    	if TranChequesDev.Prepared then
      	TranChequesDev.Execute;
  	finally
    	TranChequesDev.UnPrepare;
  	end;
    {Logotipo}
  	TranLogotipo.Prepare(TS_Image1.Parent, TS_Image1.BoundsRect);
  	try
       TS_Image1.Visible := true;
    	if TranLogotipo.Prepared then
      	TranLogotipo.Execute;
  	finally
    	TranLogotipo.UnPrepare;
  	end;
end;

procedure TDlgSitCliente.seAnoPacelasChange(Sender: TObject);
begin
  inherited;
	Pesquisa;
end;

procedure TDlgSitCliente.TS_Label32Click(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
    SetParametrosForm( [null,FavorecidoAtual] );
	  CriarForm('RptInvoicesAReceber', self, True);
  end;
end;

procedure TDlgSitCliente.sbOcorrenciasClick(Sender: TObject);
begin
  inherited;
  DMProjeto.Ocorrencia(self,FavorecidoAtual, 1, edFavorecido.Text);
end;

end.

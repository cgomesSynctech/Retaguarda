unit Dlg_PayrollFunc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, TS_Shape, ComCtrls, TS_PageControl, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, dxExEdtr, dxEdLib, TS_DateTimePicker,
  dxEditor, TS_ButtonEdit, TS_EditFavorecido, Db, Provider, DBClient,
  IBCustomDataSet, IBQuery, dxDBTLCl, dxGrClms, DBText, TS_DBTextEffect,
  dxfProgressBar, TS_CheckBox, Variants,
  RXSplit, IBUpdateSQL, Tabs, dxDBELib, TS_DBEditNumber, TS_DBImageEdit,
  BTOdeum, Placemnt;

type
  TDlgPayrollFunc = class(TFrmModeloCadastros)
    C_Mais: TClientDataSet;
    C_MaisDS: TDataSource;
    C_MaisPAYROLLFUNC: TIntegerField;
    C_MaisPAYROLLITEM: TIntegerField;
    C_MaisVALOR: TBCDField;
    C_MaisDESCRICAO: TStringField;
    C_MaisTIPOPAYROLL: TIntegerField;
    C_Menos: TClientDataSet;
    C_MenosPAYROLLFUNC: TIntegerField;
    C_MenosPAYROLLITEM: TIntegerField;
    C_MenosQTDHORAS: TBCDField;
    C_MenosVALOR: TBCDField;
    C_MenosDESCRICAO: TStringField;
    C_MenosTIPOPAYROLL: TIntegerField;
    C_MenosDS: TDataSource;
    TS_Panel1: TTS_Panel;
    Q_PayrollItensMais: TIBQuery;
    P_PayrollItensMais: TDataSetProvider;
    C_PayrollItensMais: TClientDataSet;
    C_PayrollItensMaisPAYROLLITEM: TIntegerField;
    C_PayrollItensMaisDESCRICAO: TStringField;
    C_PayrollItensMaisTIPOPAYROLL: TIntegerField;
    C_PayrollItensMaisCONTA: TIntegerField;
    C_PayrollItensMaisVALOR: TBCDField;
    C_PayrollItensMaisPERCENTUAL: TBCDField;
    C_PayrollItensMaisLIMITE: TBCDField;
    C_PayrollItensMaisTIPOWAGE: TStringField;
    Q_Itens: TIBQuery;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensHASCHILDREN: TStringField;
    C_Resumo: TClientDataSet;
    C_ResumoItemPayRoll: TIntegerField;
    C_ResumoDescricaoItemPayRoll: TStringField;
    C_ResumoValor: TCurrencyField;
    C_ResumoPagoEsteAno: TCurrencyField;
    C_ResumoDS: TDataSource;
    C_MenosPAYROLLPAYITEM: TIntegerField;
    C_MaisPAYROLLPAYITEM: TIntegerField;
    DBResumo: TTS_QDBGrid;
    DBResumoItemPayRoll: TdxDBGridMaskColumn;
    DBResumoDescricaoItemPayRoll: TdxDBGridMaskColumn;
    DBResumoValor: TdxDBGridCurrencyColumn;
    DBResumoPagoEsteAno: TdxDBGridCurrencyColumn;
    C_Funcionario: TClientDataSet;
    C_FuncionarioDS: TDataSource;
    C_FuncionarioFavorecido: TIntegerField;
    C_FuncionarioNome: TStringField;
    C_FuncionarioEndereco: TStringField;
    C_FuncionarioCidade: TStringField;
    C_FuncionarioEstado: TStringField;
    C_FuncionarioZip: TStringField;
    C_FuncionarioAdmissao: TDateField;
    C_FuncionarioCargo: TStringField;
    edFuncionario: TTS_EditFavorecido;
    C_FuncionarioValor: TCurrencyField;
    C_ResumoID: TIntegerField;
    ppmMais: TTS_PopupMenu;
    ppmMenos: TTS_PopupMenu;
    C_MaisMETODOADIC: TIntegerField;
    C_MenosMETODOADIC: TIntegerField;
    C_MaisPRODUTIVIDADE: TStringField;
    C_MaisCONTA: TIntegerField;
    C_MaisTIPO: TStringField;
    C_MaisITEM: TIntegerField;
    C_MenosCONTA: TIntegerField;
    C_MenosPRODUTIVIDADE: TStringField;
    C_MenosTIPO: TStringField;
    C_MenosITEM: TIntegerField;
    C_MaisTotal: TCurrencyField;
    C_MenosValorBase: TCurrencyField;
    C_MaisFUNCPAYITEM: TIntegerField;
    C_MenosFUNCPAYITEM: TIntegerField;
    TS_Panel2: TTS_Panel;
    TS_DBTextEffect1: TTS_DBTextEffect;
    dfEndereco: TTS_DBTextEffect;
    dfCidade: TTS_DBTextEffect;
    dfEstado: TTS_DBTextEffect;
    dfCargo: TTS_DBTextEffect;
    dfAdmissao: TTS_DBTextEffect;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    Barra: TdxfProgressBar;
    DF_Foto: TdxGraphicEdit;
    pnEsquerdo: TTS_Panel;
    dbgMenos: TTS_QDBGrid;
    dbgMenosDESCRICAO: TdxDBGridLookupColumn;
    dbgMenosVALOR: TdxDBGridMaskColumn;
    dbgMenosTIPOPAYROLL: TdxDBGridColumn;
    dbgMenosOBS: TdxDBGridColumn;
    dbgMais: TTS_QDBGrid;
    dbgMaislkPayItem: TdxDBGridLookupColumn;
    dbgMaisQTDHORAS: TdxDBGridMaskColumn;
    dbgMaisVALOR: TdxDBGridMaskColumn;
    dbgMaisicTipoPayItem: TdxDBGridColumn;
    dbgMaisOBS: TdxDBGridColumn;
    RxSplitter1: TRxSplitter;
    RxSplitter2: TRxSplitter;
    dbgMaisDescTipoPayroll: TdxDBGridColumn;
    C_MaisDescTipoPayRoll: TStringField;
    C_MenosDescTipoPayroll: TStringField;
    dbgMenosDescTipoPayroll: TdxDBGridColumn;
    C_MaisAgencia: TIntegerField;
    C_MaisIdentificacao: TStringField;
    C_MenosAgencia: TIntegerField;
    C_MenosIdentificacao: TStringField;
    C_MaisQTDHORAS_USER: TStringField;
    C_MaisQTDHORAS: TFloatField;
    dbgMaisQTDHORAS_USER: TdxDBGridMaskColumn;
    C_MaislkPayrollItem: TStringField;
    C_PayrollItensMaisDESCTIPOPAYROLL: TStringField;
    C_MenoslkPayrollItem: TStringField;
    lbIndicador: TTS_Label;
    C_PayrollItensMenos: TClientDataSet;
    P_PayrollItensMenos: TDataSetProvider;
    Q_PayrollItensMenos: TIBQuery;
    C_PayrollItensMenosPAYROLLITEM: TIntegerField;
    C_PayrollItensMenosDESCRICAO: TStringField;
    C_PayrollItensMenosTIPOPAYROLL: TIntegerField;
    C_PayrollItensMenosCONTA: TIntegerField;
    C_PayrollItensMenosVALOR: TBCDField;
    C_PayrollItensMenosPERCENTUAL: TBCDField;
    C_PayrollItensMenosLIMITE: TBCDField;
    C_PayrollItensMenosAGENCIA: TIntegerField;
    C_PayrollItensMenosIDENTIFICACAO: TStringField;
    C_PayrollItensMenosCONTALIABILITY: TIntegerField;
    C_PayrollItensMenosTIPOWAGE: TStringField;
    C_PayrollItensMenosDESATIVADO: TStringField;
    C_PayrollItensMenosMETODOADIC: TIntegerField;
    C_PayrollItensMenosPADRAOFUNCS: TStringField;
    C_PayrollItensMenosCB_PAYROLLITEM: TStringField;
    C_PayrollItensMenosCB_VALOR: TStringField;
    C_PayrollItensMenosCB_LIMITE: TStringField;
    C_PayrollItensMenosCB_HORAS: TStringField;
    C_PayrollItensMenosTIPO: TStringField;
    C_PayrollItensMenosTEMPORARIO: TStringField;
    C_PayrollItensMenosVALIDADE: TDateField;
    C_PayrollItensMenosITEM: TIntegerField;
    C_PayrollItensMenosQTDHORAS: TBCDField;
    C_PayrollItensMenosDESCTIPOPAYROLL: TStringField;
    TS_Bevel2: TTS_Bevel;
    TS_SpeedButton1: TTS_SpeedButton;
    procedure dbgMaisCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure edFuncionarioSelecionou(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure C_MaisNewRecord(DataSet: TDataSet);
    procedure C_MenosNewRecord(DataSet: TDataSet);
    procedure C_MaisVALORChange(Sender: TField);
    procedure C_MaisPAYROLLITEMChange(Sender: TField);
    procedure DBResumoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure TS_DBTextEffect1Click(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure C_ResumoNewRecord(DataSet: TDataSet);
    procedure dbgMaisDblClick(Sender: TObject);
    procedure C_MaisQTDHORASChange(Sender: TField);
    procedure C_MaisQTDHORAS_USERChange(Sender: TField);
    procedure dbgMaisColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure dbgMaisColumnClick(Sender: TObject;
      Column: TdxDBTreeListColumn);
    procedure C_MenosPAYROLLITEMChange(Sender: TField);
    procedure dbgMenosColumnClick(Sender: TObject;
      Column: TdxDBTreeListColumn);
    procedure C_MaisAfterPost(DataSet: TDataSet);
    procedure C_MenosVALORChange(Sender: TField);
    procedure C_MenosAfterPost(DataSet: TDataSet);
    procedure dbgMaisExit(Sender: TObject);
    procedure dbgMenosExit(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    nSeq : Integer;
    function 	getCargo(Cargo: integer): string;
    procedure getFuncionario(Funcionario, nPayRollFunc: integer; bGravar : boolean = true );
    procedure Recalculo;
    procedure Grava( nPayRollFunc: integer; bBarra : boolean = true);
  public
    Funcionario, PayRollFunc : integer;
    sSelecionados, sSelecFunc : string;
    DataI, DataF : TDateTime;
    { Public declarations }
  end;

var
  DlgPayrollFunc: TDlgPayrollFunc;

implementation
  uses DM_Projeto, funcoes, DM_Payrolls;

{$R *.DFM}

procedure TDlgPayrollFunc.dbgMaisCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  nTipo : Integer;
begin
  inherited;

  nTipo := dbgMais.GetFieldValue(ANode, 'TipoPayroll', 0);
  if not AFocused and not ANewItemrow then begin
    Case nTipo of
      0 : AColor := clWhite;
      1 : AColor := $00F5EBDE;
      2 : AColor := $00EFEFE7;
      3 : AColor := $00CAF4FF;
      4 : AColor := $00E7E1F0;
    end;
  end;

end;

procedure TDlgPayrollFunc.getFuncionario( Funcionario, nPayRollFunc : integer; bGravar : boolean = true );
var nID, nReg, nTotal : integer;
begin

  lbIndicador.Caption := IntToStr(IndiceString(sSelecionados,',',IntToStr(Funcionario)))+ ' / ' + IntToStr(ContaStrings(sSelecionados,','));
  Barra.Visible := bGravar;

  C_Mais.DisableControls;
  C_Menos.DisableControls;
  C_Resumo.DisableControls;
	edFuncionario.ID 	:= Funcionario;
  Barra.Position 		:= 60;
  with DMPayRolls.C_PayRollsPayItens do begin
    if not DMPayRolls.C_Funcionarios.Locate('PayRollFunc',nPayRollFunc,[]) then
    	ShowMessage('Não encontrou!');
    First;
    with C_Mais do begin
      AfterDelete := nil;
    	EmptyDataSet;
      AfterDelete := C_MaisAfterPost;
    end;
    with C_Menos do begin
      AfterDelete := nil;
    	EmptyDataSet;
      AfterDelete := C_MenosAfterPost;
    end;
    C_Resumo.EmptyDataSet;
    Barra.Position 		:= 70;
    nID := 1;
    nReg:= 0;
    nTotal := RecordCount;
    C_MenosValor.OnChange 	:= nil;
    C_MaisValor.OnChange 		:= nil;
    C_MaisQtdHoras.OnChange := nil;
    C_MaisQtdHoras_User.OnChange := nil;
    while not EOF do begin
      if FieldByName('TipoPayRoll').AsInteger <= 3 then begin
				C_Mais.Append;
        C_MaisPayRollPayItem.Value:= FieldByName('PayRollPayItem').AsInteger;
        C_MaisPayRollFunc.Value 	:= FieldByName('PayRollFunc').AsInteger;
        C_MaisPayRollItem.Value 	:= FieldByName('PayRollItem').AsInteger;
        C_MaisDescricao.Value			:= FieldByName('Descricao').AsString;
        C_MaisFuncPayItem.Value 	:= FieldByName('FuncPayItem').AsInteger;
        C_MaisQtdHoras.AsVariant	:= FieldByName('QtdHoras').Value;
        C_MaisQtdHoras_User.AsVariant	:= FieldByName('QtdHoras_User').Value;
        C_MaisValor.AsVariant			:= iif(FieldByName('TipoPayRoll').AsInteger=1,FieldByName('ValorBase').AsCurrency,FieldByName('Valor').AsCurrency);
        C_MaisTotal.AsVariant			:= iif(FieldByName('TipoPayRoll').AsInteger=1,Truncar(FieldByName('ValorBase').AsCurrency*FieldByName('QtdHoras').AsFloat,2),FieldByName('Valor').AsCurrency);
        C_MaisTipoPayRoll.Value 	:= FieldByName('TipoPayRoll').AsInteger;
        C_MaisMetodoAdic.Value 		:= FieldByName('MetodoAdic').AsInteger;
        C_MaisConta.Value 				:= FieldByName('Conta').AsInteger;
        C_MaisProdutividade.Value := FieldByName('Produtividade').AsString;
        C_MaisTipo.Value 					:= FieldByName('Tipo').AsString;
        C_MaisDescTipoPayroll.Value := FieldByName('DescTipoPayroll').AsString;
        C_MaisAgencia.Value 			:= FieldByName('Agencia').AsInteger;
        C_MaisIdentificacao.Value := FieldByName('Identificacao').AsString;
        C_Mais.AfterPost := nil;
        C_Mais.Post;
        C_Mais.AfterPost := C_MaisAfterPost;
      end else begin
				C_Menos.Append;
        C_MenosPayRollPayItem.Value	:= FieldByName('PayRollPayItem').AsInteger;
        C_MenosPayRollFunc.Value 		:= FieldByName('PayRollFunc').AsInteger;
        C_MenosPayRollItem.Value 		:= FieldByName('PayRollItem').AsInteger;
        C_MenosDescricao.Value			:= FieldByName('Descricao').AsString;
        C_MenosFuncPayItem.Value 		:= FieldByName('FuncPayItem').AsInteger;
        C_MenosQtdHoras.AsVariant		:= FieldByName('QtdHoras').Value;
        C_MenosValor.AsVariant			:= FieldByName('Valor').AsCurrency;
        C_MenosValorBase.AsVariant	:= FieldByName('ValorBase').AsCurrency;
        C_MenosTipoPayRoll.Value 		:= FieldByName('TipoPayRoll').AsInteger;
        C_MenosMetodoAdic.Value 		:= FieldByName('MetodoAdic').AsInteger;
        C_MenosConta.Value 					:= FieldByName('Conta').AsInteger;
        C_MenosProdutividade.Value 	:= FieldByName('Produtividade').AsString;
        C_MenosTipo.Value 					:= FieldByName('Tipo').AsString;
        C_MenosDescTipoPayroll.Value:= FieldByName('DescTipoPayroll').AsString;
        C_MenosAgencia.Value 				:= FieldByName('Agencia').AsInteger;
        C_MenosIdentificacao.Value 	:= FieldByName('Identificacao').AsString;
        C_Menos.AfterPost := nil;
        C_Menos.Post;
        C_Menos.AfterPost := C_MenosAfterPost;
      end;
      {Resumo}
      if C_Resumo.Locate('ItemPayRoll',FieldByName('PayRollItem').AsInteger,[]) then
      	C_Resumo.Edit
      else
      	C_Resumo.Append;
      C_ResumoID.Value := FieldByName('PayRollPayItem').AsInteger;
      C_ResumoItemPayRoll.Value					 := FieldByName('PayRollItem').AsInteger;
      C_ResumoDescricaoItemPayRoll.Value := FieldByName('Descricao').AsString;
      if (FieldByName('TipoPayRoll').AsInteger = 1) then
      	C_ResumoValor.AsCurrency := C_ResumoValor.AsCurrency + Truncar(FieldByName('ValorBase').AsCurrency*FieldByName('QtdHoras').AsFloat,2)
      else
      	C_ResumoValor.AsCurrency := C_ResumoValor.AsCurrency + FieldByName('Valor').AsCurrency;
      if C_ResumoPagoEsteAno.Value = 0 then
      	C_ResumoPagoEsteAno.Value	:= DMProjeto.getPagoEsteAno(Funcionario,FieldByName('PayRollItem').AsInteger);
      inc(nID);
      Next;
      inc(nReg);
			Barra.Position 		:= 70 + trunc((nReg/nTotal)*30);
  	end;
    C_MenosValor.OnChange 	:= C_MenosValorChange;
    C_MaisValor.OnChange 		:= C_MaisValorChange;
    C_MaisQtdHoras.OnChange := C_MaisQtdHorasChange;
    C_MaisQtdHoras_User.OnChange := C_MaisQtdHoras_UserChange;
	end;
  C_Resumo.First;

  C_Mais.EnableControls;
  C_Menos.EnableControls;
  C_Resumo.EnableControls;

  PayRollFunc := nPayRollFunc;

  Barra.Position:= 0;
  Barra.Visible := true;
end;

function TDlgPayrollFunc.getCargo( Cargo : integer ) : string;
begin
	with DMProjeto.Q_SQL do begin
  	close;
    sql.text := 'select descricao from cargos where cargo = '+IntToStr(Cargo);
    open;
    result := fields[0].asString;
    close;
  end;
end;

procedure TDlgPayrollFunc.edFuncionarioSelecionou(Sender: TObject);
begin
  inherited;
	with C_Funcionario do begin
  	Edit;
    fieldbyname('favorecido').asinteger := edFuncionario.ID;
    fieldbyname('nome').asstring				:= DMProjeto.C_LocalizarFavNome.AsString;
    fieldbyname('endereco').asVariant		:= DMProjeto.C_LocalizarFavEndereco.Value;
    fieldbyname('cidade').asVariant			:= DMProjeto.C_LocalizarFavCidade.Value;
    fieldbyname('estado').AsVariant			:= DMProjeto.C_LocalizarFavUF.Value;
    fieldbyname('admissao').asstring		:= DMProjeto.C_LocalizarFavDataAdimissao.AsString;
    fieldbyname('cargo').asstring				:= getCargo(DMProjeto.C_LocalizarFavCargo.AsInteger);
    Post;
    if fileexists(DMProjeto.ImgPath+DMProjeto.C_LocalizarFavLOGOTIPO.AsString) then
    	DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath+DMProjeto.C_LocalizarFavLOGOTIPO.AsString);
  end;
end;

procedure TDlgPayrollFunc.Grava( nPayRollFunc: integer; bBarra : boolean = true);
var nReg, nTotal : integer;
    nReceita, nDespesas : Currency;
    nQtdeHoras : double;
begin
  Barra.Visible	 := bBarra;
  Barra.Position := 0;
  with DMPayrolls do begin
    C_PayRollsPayItens.DisableControls;
    C_PayRollsPayItens.First;
    nReg		:= 0;
    nTotal 	:= C_PayRollsPayItens.RecordCount;
  	while not C_PayRollsPayItens.EOF do begin
    	if C_PayRollsPayItensPayRollFunc.Value = nPayRollFunc then
        C_PayRollsPayItens.Delete
      else
      	C_PayRollsPayItens.Next;
      inc(nReg);
      Barra.Position := trunc((nReg/nTotal)*10);
    end;
    C_PayRollsPayItens.EnableControls;

    nReg 	:= 0;
    nReceita := 0;
    nDespesas := 0;
    nQtdeHoras:= 0;
    nTotal:= C_Mais.RecordCount;
    C_Mais.DisableControls;
    C_Mais.First;
    while not C_Mais.EOF do begin
    	C_PayRollsPayItens.Append;
      C_PayRollsPayItensPayRollPayItem.Value		:= C_MaisPayRollPayItem.Value;
    	C_PayRollsPayItensPayRollItem.AsVariant 	:= C_MaisPayRollItem.Value;
      C_PayRollsPayItensFuncPayItem.AsVariant 	:= C_MaisFuncPayItem.Value;
      C_PayRollsPayItensItem.AsVariant        	:= C_MaisItem.Value;
    	C_PayRollsPayItensTipoPayRoll.AsVariant 	:= C_MaisTipoPayRoll.Value;
    	C_PayRollsPayItensValor.AsCurrency       	:= Truncar(C_MaisTotal.AsFloat,2);
    	C_PayRollsPayItensValorBase.AsCurrency    := C_MaisValor.AsCurrency;
    	C_PayRollsPayItensQtdHoras.AsVariant    	:= C_MaisQtdHoras.Value;
    	C_PayRollsPayItensConta.AsVariant       	:= C_MaisConta.Value;
    	C_PayRollsPayItensProdutividade.AsVariant := C_MaisProdutividade.Value;
      C_PayRollsPayItensTipo.AsVariant 					:= C_MaisTipo.Value;
    	C_PayRollsPayItensMetodoAdic.AsVariant    := C_MaisMetodoAdic.Value;
      C_PayRollsPayItensDescricao.AsVariant			:= C_MaisDescricao.Value;
      C_PayRollsPayItensDescTipoPayroll.AsVariant:=C_MaisDescTipoPayroll.Value;
      C_PayRollsPayItensAgencia.AsVariant				:= C_MaisAgencia.Value;
      C_PayRollsPayItensIdentificacao.AsVariant	:= C_MaisIdentificacao.Value;
      C_PayRollsPayItens.Post;
      nReceita 	:= nReceita + Truncar(C_MaisTotal.Value,2);
      nQtdeHoras:= nQtdeHoras + C_MaisQtdHoras.Value;
      C_Mais.Next;
      inc(nReg);
      Barra.Position := 10 + trunc((nReg/nTotal)*20);
    end;
    C_Mais.EnableControls;

    nReg := 0;
    nTotal:= C_Menos.RecordCount;

    C_Menos.DisableControls;
    C_Menos.First;
    while not C_Menos.EOF do begin
    	C_PayRollsPayItens.Append;
      C_PayRollsPayItensPayRollPayItem.Value		:= C_MenosPayRollPayItem.Value;
    	C_PayRollsPayItensPayRollItem.AsVariant 	:= C_MenosPayRollItem.Value;
      C_PayRollsPayItensFuncPayItem.AsVariant 	:= C_MenosFuncPayItem.Value;
      C_PayRollsPayItensItem.AsVariant        	:= C_MenosItem.Value;
    	C_PayRollsPayItensTipoPayRoll.AsVariant 	:= C_MenosTipoPayRoll.Value;
    	C_PayRollsPayItensValor.AsCurrency     		:= C_MenosValor.AsCurrency;
      C_PayRollsPayItensValorBase.AsCurrency    := C_MenosValorBase.AsCurrency;
    	C_PayRollsPayItensQtdHoras.AsVariant    	:= C_MenosQtdHoras.Value;
    	C_PayRollsPayItensConta.AsVariant       	:= C_MenosConta.Value;
    	C_PayRollsPayItensTipo.AsVariant 					:= C_MenosTipo.Value;
    	C_PayRollsPayItensProdutividade.AsVariant := C_MenosProdutividade.Value;
    	C_PayRollsPayItensMetodoAdic.AsVariant    := C_MenosMetodoAdic.Value;
      C_PayRollsPayItensDescricao.AsVariant			:= C_MenosDescricao.Value;
      C_PayRollsPayItensDescTipoPayroll.AsVariant:=C_MenosDescTipoPayroll.Value;
      C_PayRollsPayItensAgencia.AsVariant				:= C_MenosAgencia.Value;
      C_PayRollsPayItensIdentificacao.AsVariant	:= C_MenosIdentificacao.Value;
      C_PayRollsPayItens.Post;
      nDespesas := nDespesas + C_MenosValor.Value;
      nQtdeHoras:= nQtdeHoras + C_MenosQtdHoras.Value;
      C_Menos.Next;
      inc(nReg);
      Barra.Position := 30 + trunc((nReg/nTotal)*20);
    end;
    C_Menos.EnableControls;

    {Atualizando o total líquido/bruto do funcionário}
  	C_Funcionarios.Edit;
    C_FuncionariosQtdHoras.Value         := nQtdeHoras;
  	C_FuncionariosValorLiquido.AsCurrency	:= nReceita + nDespesas;
  	C_FuncionariosValorBruto.AsCurrency		:= nReceita;
  	C_Funcionarios.Post;

  end;

  Barra.Position := 0;
  Barra.Visible	 := true;
end;

procedure TDlgPayrollFunc.btGravarClick(Sender: TObject);
begin
  inherited;
  Grava( PayRollFunc, false );
  close;
end;

procedure TDlgPayrollFunc.btComando1Click(Sender: TObject);
var nIndice : integer;
begin
  inherited;
  nIndice := IndiceString(sSelecionados,',',IntToStr(edFuncionario.ID))+1;
  if nIndice <= ContaStrings(sSelecionados,',') then begin
  	Grava( PayRollFunc );
	  getFuncionario( StrToInt(SeparaStrings( sSelecionados,',', nIndice)),StrToInt(SeparaStrings( sSelecFunc,',', nIndice)));
  end;
end;

procedure TDlgPayrollFunc.btComando2Click(Sender: TObject);
var nIndice : integer;
begin
  inherited;
  nIndice := IndiceString(sSelecionados,',',IntToStr(edFuncionario.ID))-1;
	if nIndice >= 1 then begin
		Grava( PayRollFunc );
  	getFuncionario( StrToInt(SeparaStrings( sSelecionados,',', nIndice)),StrToInt(SeparaStrings( sSelecFunc,',', nIndice)));
  end;
end;

procedure TDlgPayrollFunc.FormShow(Sender: TObject);
begin
  inherited;
  if DMProjeto.Parametro('FormatoHorasProd') = 'H' then
  	dbgMaisQtdHoras_User.Visible := false
  else
    dbgMaisQtdHoras.Visible := false;

	C_Funcionario.CreateDataSet;
  C_Mais.CreateDataSet;
  C_Menos.CreateDataSet;
  C_Resumo.CreateDataSet;
  getFuncionario( Funcionario, PayRollFunc, false );
  nSeq := -20000;
end;

procedure TDlgPayrollFunc.C_MaisNewRecord(DataSet: TDataSet);
begin
  inherited;
	DataSet['PayRollPayItem'] := nSeq;
  dec(nSeq);
end;

procedure TDlgPayrollFunc.C_MenosNewRecord(DataSet: TDataSet);
begin
  inherited;
	DataSet['PayRollPayItem'] := nSeq;
  dec(nSeq);
end;

procedure TDlgPayrollFunc.Recalculo;
//var MarcaMais, MarcaMenos : TBookMarkStr;
begin
    if C_Mais.State in [dsEdit,dsInsert] then begin
      C_Mais.AfterPost := nil;
    	C_Mais.Post;
      C_Mais.AfterPost := C_MaisAfterPost;
    end;
    if C_Menos.State in [dsEdit,dsInsert] then begin
      C_Menos.AfterPost := nil;
    	C_Menos.Post;
      C_Menos.AfterPost := C_MenosAfterPost;
    end;
    //MarcaMais := C_Mais.BookMark;
    //MarcaMenos:= C_Menos.BookMark;
    with C_Resumo do begin
    	disablecontrols;
      first;
      while not eof do begin
      	Edit;
        C_ResumoValor.Value := 0;
        Post;
        Next;
      end;
      first;
      enablecontrols;
    end;
    with C_Mais do begin
    	DisableControls;
      First;
      while not EOF do begin
        if not C_Resumo.Locate('ItemPayroll',C_MaisPayRollItem.Value,[]) then begin
        	C_Resumo.Append;
        	C_ResumoID.Value 					:= C_MaisPayRollPayItem.Value;
        	C_ResumoItemPayRoll.Value := C_MaisPayRollItem.Value;
        	C_ResumoDescricaoItemPayroll.Value := C_MaisDescricao.Value;
        	C_ResumoValor.Value				:= iif(C_MaisTipoPayRoll.Value=1,C_MaisValor.AsCurrency*C_MaisQtdHoras.AsFloat,C_MaisValor.AsCurrency);
          C_ResumoPagoEsteAno.Value	:= DMProjeto.getPagoEsteAno(Funcionario, C_MaisPayRollItem.AsInteger);
          C_Resumo.Post;
        end else begin
        	C_Resumo.Edit;
          C_ResumoValor.Value := C_ResumoValor.Value + iif(C_MaisTipoPayRoll.Value=1,C_MaisValor.AsCurrency*C_MaisQtdHoras.AsFloat,C_MaisValor.Value);
          C_Resumo.Post;
        end;
      	Next;
      end;
      EnableControls;
    end;
    {Deduction}
    with C_Menos do begin
    	DisableControls;
      First;
      while not EOF do begin
        if not C_Resumo.Locate('ID',C_MenosPayRollPayItem.Value,[]) then begin
        	C_Resumo.Append;
        	C_ResumoID.Value 					:= C_MenosPayRollPayItem.Value;
        	C_ResumoItemPayRoll.Value := C_MenosPayRollItem.Value;
        	C_ResumoDescricaoItemPayroll.Value := C_MenosDescricao.Value;
        	C_ResumoValor.Value				:= C_MenosValor.Value;
          C_ResumoPagoEsteAno.Value	:= DMProjeto.getPagoEsteAno(Funcionario,C_MenosPayRollItem.AsInteger);
          C_Resumo.Post;
        end else begin
        	C_Resumo.Edit;
          C_ResumoValor.Value := C_MenosValor.Value;
          C_Resumo.Post;
        end;
      	Next;
      end;
      EnableControls;
    end;
    //C_Mais.BookMark  := MarcaMais;
    //C_Menos.BookMark := MarcaMenos;
end;

procedure TDlgPayrollFunc.C_MaisVALORChange(Sender: TField);
begin
  inherited;
  if C_MaisValor.Value < 0 then
  	C_MaisValor.Value := C_MaisValor.Value*-1;

  if C_MaisQtdHoras.Value < 0 then
  	C_MaisQtdHoras.Value := C_MaisQtdHoras.Value*-1;

  if C_MaisTipoPayRoll.Value = 1 then
  	C_MaisTotal.Value := C_MaisValor.Value*C_MaisQtdHoras.Value
  else
		C_MaisTotal.Value := C_MaisValor.Value;
end;

procedure TDlgPayrollFunc.C_MaisPAYROLLITEMChange(Sender: TField);
begin
  inherited;
  C_PayrollItensMais.Locate('PayrollItem',C_MaisPayRollItem.Value,[]);
  C_MaisDescricao.Value				:= C_PayrollItensMaisDescricao.Value;
	C_MaisDescTipoPayRoll.Value := C_PayrollItensMaisDescTipoPayRoll.Value;
  C_MaisTipoPayRoll.Value 		:= C_PayrollItensMaisTipoPayRoll.Value;
end;

procedure TDlgPayrollFunc.DBResumoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
	if not ANode.HasChildren then begin
  	if DBResumo.getFieldValue( Anode, 'Valor', 0) > 0 then
    	AFont.Color := clBlue
    else if DBResumo.getFieldValue( Anode, 'Valor', 0) < 0 then
    	AFont.Color := clRed
    else
    	AFont.Color := clBlack;
  end;
end;

procedure TDlgPayrollFunc.TS_DBTextEffect1Click(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([C_FuncionarioFavorecido.AsInteger]);
    CriarForm('FrmFuncionarios',self,true);
  end;
end;

procedure TDlgPayrollFunc.FormsComponentRefresh(Sender: TObject);
var ValorLiquido, ValorBruto : Currency;
begin
  inherited;
  if UpperCase(LastDataObject.TableName) = 'FAVORECIDOS' then begin
    if LastDataObject.ObjectKey = C_FuncionarioFavorecido.AsInteger then begin
      with DMPayrolls do begin
        C_Funcionarios.Locate('Funcionario',C_FuncionarioFavorecido.AsInteger,[]);
        with C_PayRollsPayItens do begin
        	DisableControls;
          while not EOF do begin
          	Delete;
          end;
          EnableControls;
        end;
      	CalculoFuncionario( C_FuncionarioFavorecido.AsInteger,
      	  									 DMPayrolls.C_TabelaDataInicio.Value,
                             DMPayrolls.C_TabelaDataFim.Value,
                             ValorLiquido,
                             ValorBruto,
                             DMPayrolls.C_TabelaFavorecido.Value);

        C_Funcionarios.Edit;
        C_FuncionariosValorLiquido.Value 	:= ValorLiquido;
        C_FuncionariosValorBruto.Value 		:= ValorBruto;
        C_Funcionarios.Post;
        getFuncionario( edFuncionario.ID, PayRollFunc );
      end;
    end;
  end;
  if UpperCase(LastDataObject.TableName) = 'PAYROLLITENS' then begin
    C_PayrollItensMais.Close;
    C_PayrollItensMais.Open;
    C_PayrollItensMenos.Close;
    C_PayrollItensMenos.Open;
  	if ActiveControl = dbgMais then begin
    	if not (C_Mais.State in [dsInsert]) then
      	C_Mais.Append;
      C_MaisPayrollItem.Value := LastDataObject.ObjectKey;
      C_MaisValor.Value       := C_PayrollItensMaisValor.Value;
    end;
  	if ActiveControl = dbgMenos then begin
    	if not (C_Menos.State in [dsInsert]) then
      	C_Menos.Append;
      C_MenosPayrollItem.Value := LastDataObject.ObjectKey;
      C_MenosValor.Value       := C_PayrollItensMenosValor.Value;
    end;
  end;
end;

procedure TDlgPayrollFunc.C_ResumoNewRecord(DataSet: TDataSet);
begin
  inherited;
	C_ResumoValor.Value := 0;
  c_ResumoPagoEsteAno.Value := 0;
end;

procedure TDlgPayrollFunc.dbgMaisDblClick(Sender: TObject);
begin
  inherited;
	if C_MaisTipoPayroll.Value = 1 then begin
    DMProjeto.SetParametrosForm([null,Funcionario,DataI,DataF]);
  	DMProjeto.CriarForm('RptConferProducoes',self,true);
	end else if C_MaisTipoPayroll.Value = 2 then begin
    DMProjeto.SetParametrosForm([null,Funcionario,DataI,DataF]);
  	DMProjeto.CriarForm('RptComissoes',self,true);
  end else begin
		with DMProjeto do begin
  		SetParametrosForm([C_FuncionarioFavorecido.AsInteger]);
    	CriarForm('FrmFuncionarios',self,true);
  	end;
  end;
end;

procedure TDlgPayrollFunc.C_MaisQTDHORASChange(Sender: TField);
begin
  inherited;
  C_MaisQtdHoras_User.OnChange 	:= nil;
	C_MaisQtdHoras_User.Value 		:= HoraToStr(Sender.value);
  C_MaisQtdHoras_User.OnChange 	:= C_MaisQtdHoras_UserChange;

  C_MaisVALORChange( sender );
end;

procedure TDlgPayrollFunc.C_MaisQTDHORAS_USERChange(Sender: TField);
var
  nHora : currency;
begin
  inherited;
  if (Sender.asString <> '') and (pos(':', Sender.asString) = 0) then begin
  	Sender.AsString := FormataHora(Sender.asString);
  	Exit;
	end;

  nHora := StrToHora(Sender.AsString);

  if ABS(C_MaisQtdHoras.Value - nHora) > 0.01 then begin
    C_MaisQtdHoras.OnChange := nil;
    C_MaisQtdHoras.Value 		:= nHora;
    C_MaisQtdHoras.OnChange := C_MaisQtdHorasChange;
  end;
  C_MaisValorChange(sender);
end;

procedure TDlgPayrollFunc.dbgMaisColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
	if Column.FieldName = 'lkPayrollItem' then
  	Allow := false;
end;

procedure TDlgPayrollFunc.dbgMaisColumnClick(Sender: TObject;
  Column: TdxDBTreeListColumn);
begin
  inherited;
	if Column.FieldName = 'lkPayrollItem' then begin
  	DMProjeto.SetParametrosForm([C_MaisPayrollItem.AsVariant]);
    DMProjeto.CriarForm('FrmPayrollItems',self,true);
  end;
end;

procedure TDlgPayrollFunc.C_MenosPAYROLLITEMChange(Sender: TField);
begin
  inherited;
  C_PayrollItensMenos.Locate('PayrollItem',C_MenosPayRollItem.Value,[]);
  C_MenosDescricao.Value				:= C_PayrollItensMenosDescricao.Value;
	C_MenosDescTipoPayRoll.Value := C_PayrollItensMenosDescTipoPayRoll.Value;
  C_MenosTipoPayRoll.Value 		:= C_PayrollItensMenosTipoPayRoll.Value;
end;

procedure TDlgPayrollFunc.dbgMenosColumnClick(Sender: TObject;
  Column: TdxDBTreeListColumn);
begin
  inherited;
	if Column.FieldName = 'lkPayrollItem' then begin
  	DMProjeto.SetParametrosForm([C_MaisPayrollItem.AsVariant]);
    DMProjeto.CriarForm('FrmPayrollItems',self,true);
  end;
end;

procedure TDlgPayrollFunc.C_MaisAfterPost(DataSet: TDataSet);
begin
  inherited;
	Recalculo;
end;

procedure TDlgPayrollFunc.C_MenosVALORChange(Sender: TField);
begin
  inherited;
  if C_MenosValor.Value > 0 then
  	C_MenosValor.Value := C_MenosValor.Value*-1;
end;

procedure TDlgPayrollFunc.C_MenosAfterPost(DataSet: TDataSet);
begin
  inherited;
	Recalculo;
end;

procedure TDlgPayrollFunc.dbgMaisExit(Sender: TObject);
begin
  inherited;
  if C_Mais.State in [dsEdit,dsInsert] then
  	C_Mais.Post;
end;

procedure TDlgPayrollFunc.dbgMenosExit(Sender: TObject);
begin
  inherited;
  if C_Menos.State in [dsEdit,dsInsert] then
  	C_Menos.Post;
end;

procedure TDlgPayrollFunc.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
	Recalculo;
end;

end.

unit Rpt_Encerrantes;
                                                                                            
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TS_DateTimePicker, DB, DBClient, Provider, IBCustomDataSet, IBQuery,
  dxDBEdtr, dxDBELib, TS_LookupComboBox, DBTables, ppDB, ppDBPipe, ppDBBDE,
  ppBands, ppClass, ppCtrls, ppReport, ppSubRpt, ppVar, ppMemo, ppPrnabl,
  ppStrtch, ppRegion, ppCache, ppComm, ppRelatv, ppProd, ppModule, raCodMod;

type
  TRptEncerrantes = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    dtDataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    dtDataF: TTS_DateTimePicker;
    TS_Label3: TTS_Label;
    Q_Usuarios: TIBQuery;
    P_Usuarios: TDataSetProvider;
    C_Usuarios: TClientDataSet;
    C_UsuariosUSUARIO: TIntegerField;
    C_UsuariosLOGINNAME: TStringField;
    cmbFunc: TTS_LookupComboBox;
    C_UsuariosDS: TDataSource;
    ppRelatorio: TppReport;
    ppTituloRel: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppTitulo: TppMemo;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLine2: TppLine;
    ppPeriodo: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppLabel32: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText9: TppDBText;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppQuantLitros: TppVariable;
    ppDBText3: TppDBText;
    ppValorTotal: TppVariable;
    ppDBText24: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel9: TppLabel;
    ppTotLitros: TppVariable;
    ppTotTotal: TppVariable;
    ppLine1: TppLine;
    ppGrupoBombas: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppMemo1: TppMemo;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    ppLabel34: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText26: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel16: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine5: TppLine;
    ppDBCalc9: TppDBCalc;
    ppProdutos: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppMemo2: TppMemo;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine6: TppLine;
    ppLabel33: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText25: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel25: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine9: TppLine;
    ppDBCalc8: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel26: TppLabel;
    ppDBText20: TppDBText;
    ppLine7: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc4: TppDBCalc;
    ppLabel27: TppLabel;
    ppLine8: TppLine;
    ppDBCalc7: TppDBCalc;
    ppClientes: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppMemo3: TppMemo;
    ppLabel29: TppLabel;
    ppLine10: TppLine;
    ppLabel30: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc5: TppDBCalc;
    ppLabel31: TppLabel;
    ppDBCalc6: TppDBCalc;
    Q_EncerGrupoDS: TDataSource;
    Q_EncerrantesDS: TDataSource;
    Q_ClientesDS: TDataSource;
    Q_ProdutosDS: TDataSource;
    ppDBEncerrantes: TppDBPipeline;
    ppDBEncerGrupo: TppDBPipeline;
    ppDBClientes: TppDBPipeline;
    ppDBProdutos: TppDBPipeline;
    Q_Encerrante: TIBQuery;
    Q_EncerGrupos: TIBQuery;
    Q_Cliente: TIBQuery;
    Q_Produto: TIBQuery;
    Q_EncerranteENCERRANTE: TIntegerField;
    Q_EncerranteFUNCIONARIO: TIntegerField;
    Q_EncerranteDATA: TDateField;
    Q_EncerranteBOMBA: TIntegerField;
    Q_EncerrantePRECO: TIBBCDField;
    Q_EncerranteAFERICAO: TIBBCDField;
    Q_EncerranteLEITURAINICIAL: TIBBCDField;
    Q_EncerranteLEITURAFINAL: TIBBCDField;
    Q_EncerranteLEITURAMAXIMA: TIBBCDField;
    Q_EncerranteDESCRICAO: TIBStringField;
    Q_EncerranteNOMEFUNC: TIBStringField;
    Q_EncerranteLUCRO: TFloatField;
    ppCabecalho: TppRegion;
    ppRelatorio1: TppReport;
    ppTitleBand4: TppTitleBand;
    ppCabecalho1: TppRegion;
    ppHeaderBand1: TppHeaderBand;
    ppMemo4: TppMemo;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine11: TppLine;
    ppLabel28: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine12: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText21: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppVariable1: TppVariable;
    ppDBText30: TppDBText;
    ppVariable2: TppVariable;
    ppDBText31: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLabel44: TppLabel;
    ppTotalQuantLitros: TppVariable;
    ppTotalVT: TppVariable;
    ppLine13: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppMemo5: TppMemo;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine14: TppLine;
    ppLabel51: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppDBCalc10: TppDBCalc;
    ppLabel52: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppLine15: TppLine;
    ppDBCalc12: TppDBCalc;
    ppSubReport2: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppMemo6: TppMemo;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLine16: TppLine;
    ppLabel61: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLabel62: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppLine17: TppLine;
    ppDBCalc14: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel63: TppLabel;
    ppDBText48: TppDBText;
    ppLine18: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc15: TppDBCalc;
    ppLabel64: TppLabel;
    ppLine19: TppLine;
    ppDBCalc16: TppDBCalc;
    ppSubReport3: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppMemo7: TppMemo;
    ppLabel65: TppLabel;
    ppLine20: TppLine;
    ppLabel66: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppSummaryBand8: TppSummaryBand;
    ppDBCalc17: TppDBCalc;
    ppLabel67: TppLabel;
    ppDBCalc18: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine21: TppLine;
    ppLabel68: TppLabel;
    ppSubTotLitros: TppVariable;
    ppSubValorTotal: TppVariable;
    ppDBCalc19: TppDBCalc;
    procedure FormCreate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure ppQuantLitrosCalc(Sender: TObject; var Value: Variant);
    procedure ppValorTotalCalc(Sender: TObject; var Value: Variant);
    procedure ppTotLitrosCalc(Sender: TObject; var Value: Variant);
    procedure ppTotTotalCalc(Sender: TObject; var Value: Variant);
    procedure ppTotalQuantLitrosCalc(Sender: TObject; var Value: Variant);
    procedure ppTotalVTCalc(Sender: TObject; var Value: Variant);
    procedure ppSubTotLitrosCalc(Sender: TObject; var Value: Variant);
    procedure ppSubValorTotalCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
  private
    sSQL1,sSQL2,sSQL3,sSQL4: string;
    sTextoGrupo1, sTextoGrupo2: String;
    function GetFuncCaixa(nFunc:integer): integer;
  public
    { Public declarations }
  end;

var
  RptEncerrantes: TRptEncerrantes;

implementation
uses DM_Projeto;

{$R *.dfm}

function TRptEncerrantes.GetFuncCaixa;
begin
  DMProjeto.Q_SQL.close;
  DMProjeto.Q_SQL.SQL.text := 'select conta from contas where usuariocaixa = :usuario';
  DMProjeto.Q_SQL.params[0].asinteger := nFunc;
  DMProjeto.Q_SQL.open;
  result := DMProjeto.Q_SQL.fieldbyname('conta').asinteger;
end;

procedure TRptEncerrantes.FormCreate(Sender: TObject);
begin
  inherited;
  sSQL1 := Q_Encerrante.SQL.Text;
  sSQL2 := Q_EncerGrupos.SQL.Text;
  sSQL3 := Q_Produto.SQL.Text;
  sSQL4 := Q_Cliente.SQL.Text;
  dtDataI.date := DMProjeto.dDataSistema;
  dtDataF.date := DMProjeto.dDataSistema;
  C_Usuarios.open;
end;

procedure TRptEncerrantes.btGravarClick(Sender: TObject);
var sTitulo: string;
begin
  sTitulo := '';
  Q_Encerrante.SQL.Clear;
  Q_Encerrante.SQL.Add(sSQL1);
  if cmbFunc.LookupKeyValue <> null then begin
    sTitulo := 'Funcionário:' + cmbFunc.text;
    Q_Encerrante.SQL.Add(' and e.funcionario = '+IntToStr(cmbFunc.LookupKeyValue));
  end;
  Q_Encerrante.SQL.Add(' order by p.descricao');
  Q_Encerrante.params[0].AsDateTime := trunc(dtDataI.Date);
  Q_Encerrante.params[1].AsDateTime := trunc(dtDataF.Date);
  Q_Encerrante.Open;

  Q_EncerGrupos.SQL.Clear;
  Q_EncerGrupos.SQL.Add(sSQL2);
  if cmbFunc.LookupKeyValue <> null then
    Q_EncerGrupos.SQL.Add(' and e.funcionario = '+IntToStr(cmbFunc.LookupKeyValue));
  Q_EncerGrupos.SQL.Add(' group by g.descricaogrupo');
  Q_EncerGrupos.params[0].AsDateTime := trunc(dtDataI.Date);
  Q_EncerGrupos.params[1].AsDateTime := trunc(dtDataF.Date);
  Q_EncerGrupos.Open;

  Q_Produto.SQL.Clear;
  Q_Produto.SQL.Add(sSQL3);
//  Q_Produto.SQL.Add(' and p.grupo not in ('+DMProjeto.Parametro('BombasGrupos')+')');
  if cmbFunc.LookupKeyValue <> null then
    Q_Produto.SQL.Add(' and s.caixa = '+IntToStr(GetFuncCaixa(cmbFunc.LookupKeyValue)));
  Q_Produto.SQL.Add(' order by 2,5');
  Q_Produto.params[0].AsDateTime := trunc(dtDataI.Date);
  Q_Produto.params[1].AsDateTime := trunc(dtDataF.Date);
  Q_Produto.Open;

  Q_Cliente.SQL.Clear;
  Q_Cliente.SQL.Add(sSQL4);
  if cmbFunc.LookupKeyValue <> null then
    Q_Cliente.SQL.Add(' and s.caixa = '+IntToStr(GetFuncCaixa(cmbFunc.LookupKeyValue)));
  Q_Cliente.SQL.Add(' group by f.nome ');
  Q_Cliente.params[0].AsDateTime := trunc(dtDataI.Date);
  Q_Cliente.params[1].AsDateTime := trunc(dtDataF.Date);
  Q_Cliente.Open;

  ppPeriodo.Caption := sTitulo + DateToStr(dtDataI.Date)+ '  à '+DateToStr(dtDataF.date);

  // Fabricio
  if (DMProjeto.Parametro('RelEncerrantesSumarizado') = 'S') then begin
    if DMProjeto.ParametroMaq('ImpRelatorios') <> '' then
      ppRelatorio1.PrinterSetup.PrinterName := DMProjeto.ParametroMaq('ImpRelatorios');
    DMProjeto.ImprimirCabecalho(ppCabecalho1);
    ppRelatorio1.Print;
  end
  else begin
    if DMProjeto.ParametroMaq('ImpRelatorios') <> '' then
      ppRelatorio.PrinterSetup.PrinterName := DMProjeto.ParametroMaq('ImpRelatorios');
    DMProjeto.ImprimirCabecalho(ppCabecalho);
    ppRelatorio.Print;
  end;
end;

procedure TRptEncerrantes.ppQuantLitrosCalc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := Q_EncerranteLeituraFinal.value - Q_EncerranteLeituraInicial.value - Q_EncerranteAfericao.value;
end;

procedure TRptEncerrantes.ppValorTotalCalc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := ppQuantLitros.Value * Q_EncerrantePreco.value;
end;

procedure TRptEncerrantes.ppTotLitrosCalc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := Value + ppQuantLitros.value;
end;

procedure TRptEncerrantes.ppTotTotalCalc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := Value + ppValorTotal.value;
end;

procedure TRptEncerrantes.ppTotalQuantLitrosCalc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := Value + ppVariable1.value;
end;

procedure TRptEncerrantes.ppTotalVTCalc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := Value + ppVariable2.value;
end;

procedure TRptEncerrantes.ppSubTotLitrosCalc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  if (Q_EncerranteDESCRICAO.Value <> sTextoGrupo1) then begin
    Value := ppVariable1.value;
    sTextoGrupo1 := Q_EncerranteDESCRICAO.Value;
  end
  else begin
    Value := Value + ppVariable1.value;
  end;
end;

procedure TRptEncerrantes.ppSubValorTotalCalc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  if (Q_EncerranteDESCRICAO.Value <> sTextoGrupo2) then begin
    Value := ppVariable2.value;
    sTextoGrupo2 := Q_EncerranteDESCRICAO.Value;
  end
  else begin
    Value := Value + ppVariable2.value;
  end;
end;

procedure TRptEncerrantes.ppVariable2Calc(Sender: TObject;
  var Value: Variant);
begin
  inherited;
  Value := ppVariable1.Value * Q_EncerrantePreco.value;
end;

end.

unit Frm_Funcionarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, StdCtrls, DBCtrls, TS_DBCheckBox, TS_DBLookupComboBox,
  TS_GroupBox, Mask, TS_DBEdit, TS_Label, FormComponent, ImgList, DlgMsg,
  Menus, TS_ScrollBox, ComCtrls,
  Buttons, TS_SpeedButton, ExtCtrls, TS_PageControl,
  TS_DBText, TS_DBMemo, TS_DBRadioGroup,
  TS_LastDataObject, TS_Bevel, TS_MaxPanel, TS_DBEditDate,
  Db, IBCustomDataSet, IBQuery,
  TS_CheckListBox, TS_Image, dxCntner, dxExEdtr, dxEdLib,
  dxfLabel, dxEditor, dxDBEdtr, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  TS_DBComboBox, TS_DBEditNumber, ExtDlgs, dxDBTLCl,
  dxGrClms, teCtrls, TS_EffectsPanel, TS_DBMaskEdit, TS_DBHyperLinkEdit,
  TS_DBButtonEdit, Dlg_PopupContas, TS_DBPopupEdit, dxTLClms,
  TS_DBImageEdit, TS_Shape, TS_CheckBox, TS_PopupMenu,
  dxDBELib, Variants, BTOdeum, Placemnt, DBText, TS_DBTextEffect,
  dxfProgressBar;

type
  TFrmFuncionarios = class(TFrmPadrao)
    PC_Abas: TTS_PageControl;
    tsEndereco: TTS_TabSheet;
    tsPayroll: TTS_TabSheet;
    tsAdicionais: TTS_TabSheet;
    TS_Label1: TTS_Label;
    TS_Label10: TTS_Label;
    TS_Label19: TTS_Label;
    DF_DataCad: TTS_DBText;
    DF_Nome: TTS_DBEdit;
    tsCustomizados: TTS_TabSheet;
    lblCampo1: TTS_Label;
    lblCampo2: TTS_Label;
    lblCampo3: TTS_Label;
    lblCampo4: TTS_Label;
    lblCampo5: TTS_Label;
    lblCampo6: TTS_Label;
    lblCampo7: TTS_Label;
    lblCampo8: TTS_Label;
    lblCampo9: TTS_Label;
    lblCampo10: TTS_Label;
    dfCampo1: TTS_DBEdit;
    dfCampo2: TTS_DBEdit;
    dfCampo3: TTS_DBEdit;
    dfCampo4: TTS_DBEdit;
    dfCampo5: TTS_DBEdit;
    dfCampo6: TTS_DBEdit;
    dfCampo7: TTS_DBEdit;
    dfCampo8: TTS_DBEdit;
    dfCampo9: TTS_DBEdit;
    dfCampo10: TTS_DBEdit;
    cbCampo1: TTS_DBCheckBox;
    cbCampo2: TTS_DBCheckBox;
    cbCampo3: TTS_DBCheckBox;
    cbCampo4: TTS_DBCheckBox;
    cbCampo5: TTS_DBCheckBox;
    cbCampo6: TTS_DBCheckBox;
    cbCampo7: TTS_DBCheckBox;
    cbCampo8: TTS_DBCheckBox;
    cbCampo9: TTS_DBCheckBox;
    cbCampo10: TTS_DBCheckBox;
    cmbCampo1: TTS_DBComboBox;
    cmbCampo2: TTS_DBComboBox;
    cmbCampo3: TTS_DBComboBox;
    cmbCampo4: TTS_DBComboBox;
    cmbCampo5: TTS_DBComboBox;
    cmbCampo6: TTS_DBComboBox;
    cmbCampo7: TTS_DBComboBox;
    cmbCampo8: TTS_DBComboBox;
    cmbCampo9: TTS_DBComboBox;
    cmbCampo10: TTS_DBComboBox;
    TS_BitBtn1: TTS_SpeedButton;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label13: TTS_Label;
    TS_Label11: TTS_Label;
    DF_Endereco: TTS_DBEdit;
    DF_Cidade: TTS_DBEdit;
    DF_Fone1: TTS_DBEdit;
    DF_UF: TTS_DBLookupComboBox;
    DF_CEP: TTS_DBMaskEdit;
    DF_Fone2: TTS_DBEdit;
    DF_Celular: TTS_DBEdit;
    TS_Label22: TTS_Label;
    TS_Label18: TTS_Label;
    DF_LimiteCredito: TTS_DBEditNumber;
    DF_Obs: TTS_DBMemo;
    pdFoto: TOpenPictureDialog;
    DF_Foto: TdxGraphicEdit;
    GridCODIGO: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridENDERECO: TdxDBGridMaskColumn;
    GridCIDADE: TdxDBGridMaskColumn;
    GridUF: TdxDBGridMaskColumn;
    GridCEP: TdxDBGridMaskColumn;
    GridFONE1: TdxDBGridMaskColumn;
    GridCELULAR: TdxDBGridMaskColumn;
    GridEMAIL: TdxDBGridMaskColumn;
    GridSSN: TdxDBGridMaskColumn;
    GridCOMISSAO: TdxDBGridMaskColumn;
    GridlkCargo: TdxDBGridLookupColumn;
    GridlkPais: TdxDBGridLookupColumn;
    GridlkContaPagto: TdxDBGridLookupColumn;
    btOutros: TTS_SpeedButton;
    TS_Label9: TTS_Label;
    DF_Email: TTS_DBButtonEdit;
    TS_Label29: TTS_Label;
    DF_ContaPgto: TTS_DBPopupEdit;
    DF_TipoFunc: TTS_DBImageEdit;
    TS_Label24: TTS_Label;
    DF_Codigo: TTS_DBButtonEdit;
    TS_Label17: TTS_Label;
    dfPeriodoPgto: TTS_DBImageEdit;
    dbgFuncPay: TTS_QDBGrid;
    TS_Label23: TTS_Label;
    dbgFuncPaylkPayrollItem: TdxDBGridLookupColumn;
    dbgFuncPayTipo: TdxDBGridColumn;
    cbUsuario: TTS_CheckBox;
    ppmOutros: TTS_PopupMenu;
    ppmFoto: TTS_PopupMenu;
    CarregarFoto1: TMenuItem;
    N4: TMenuItem;
    LimparFoto1: TMenuItem;
    Lembretes1: TMenuItem;
    Ocorrncias1: TMenuItem;
    Memorizar1: TMenuItem;
    Alertas1: TMenuItem;
    Compromissos1: TMenuItem;
    ppmPayitems: TTS_PopupMenu;
    pcPayItens: TTS_PageControl;
    tsWageHorasTrabalhadas: TTS_TabSheet;
    tsComissao: TTS_TabSheet;
    tsAdicao: TTS_TabSheet;
    tsDeducao: TTS_TabSheet;
    lbValorWage: TTS_Label;
    dfValorWage: TTS_DBEditNumber;
    TS_DBCheckBox1: TTS_DBCheckBox;
    TS_Label32: TTS_Label;
    cmbItem: TTS_DBLookupComboBox;
    DBEdit1: TDBEdit;
    btComissaoGerente: TTS_SpeedButton;
    TS_Label34: TTS_Label;
    dfPercentualComiss: TTS_DBEditNumber;
    dbgDiasComissao: TTS_QDBGrid;
    dbgDiasComissaoDIA_SEMANA: TdxDBGridImageColumn;
    dbgDiasComissaoADD_COMISSAO: TdxDBGridCalcColumn;
    Label2: TLabel;
    lbVAdicao: TTS_Label;
    dfValorAdic: TTS_DBEditNumber;
    lbPAdicao: TTS_Label;
    dfPercentAdic: TTS_DBEditNumber;
    TS_Label38: TTS_Label;
    dfMetodoAdicao: TTS_DBImageEdit;
    TS_Label39: TTS_Label;
    dfLimiteAddition: TTS_DBEditNumber;
    dbgMetas: TTS_QDBGrid;
    dbgMetasVENDAMINIMA: TdxDBGridMaskColumn;
    dbgMetasVENDAMAXIMA: TdxDBGridMaskColumn;
    dbgMetasVALOR: TdxDBGridMaskColumn;
    dbgMetasTIPOPERCENTUAL: TdxDBGridMaskColumn;
    lbVDeducao: TTS_Label;
    lbPDeducao: TTS_Label;
    TS_Label42: TTS_Label;
    dfValorDeducao: TTS_DBEditNumber;
    dfPercentualdeducao: TTS_DBEditNumber;
    dfLimiteDeducao: TTS_DBEditNumber;
    dbgFuncPayColumn5: TdxDBGridColumn;
    AdicionarItem1: TMenuItem;
    cmbCargo: TTS_DBLookupComboBox;
    TS_Label37: TTS_Label;
    TS_Label28: TTS_Label;
    TS_Label30: TTS_Label;
    TS_Label43: TTS_Label;
    dfComissao: TTS_DBEditNumber;
    cmbUsuario: TTS_DBLookupComboBox;
    DF_IsVendedor: TTS_DBCheckBox;
    tsWageValorFixo: TTS_TabSheet;
    TS_Label15: TTS_Label;
    TS_Label45: TTS_Label;
    dfValorPagamento: TTS_DBEditNumber;
    dfItem: TTS_DBLookupComboBox;
    shpBarraTitulo: TTS_Shape;
    lbItemPayRoll: TdxfLabel;
    shpLinha: TTS_Shape;
    dbgDiasComissaoColumn4: TdxDBGridColumn;
    TS_Bevel2: TTS_Bevel;
    TS_DBText1: TTS_DBText;
    cmbPercentual: TTS_DBImageEdit;
    lbPercentual: TTS_Label;
    lbPayrollItem: TTS_Label;
    dbtPayrollItem: TTS_DBText;
    dbgFuncPayDescTipoPayroll: TdxDBGridColumn;
    TS_Label20: TTS_Label;
    dfAdimissao: TTS_DBEditDate;
    TS_Label21: TTS_Label;
    dfDemissao: TTS_DBEditDate;
    ContratosdeClientes1: TMenuItem;
    N5: TMenuItem;
    TS_Label12: TTS_Label;
    TS_Shape2: TTS_Shape;
    TS_DBTextEffect2: TTS_DBTextEffect;
    TS_Label27: TTS_Label;
    DF_DataNasc: TTS_DBEditDate;
    TS_Label26: TTS_Label;
    dfAumento: TTS_DBEditDate;
    TS_Label25: TTS_Label;
    dfCNPJ: TTS_DBMaskEdit;
    TS_Label14: TTS_Label;
    dfRG: TTS_DBMaskEdit;
    TS_Label6: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    procedure FormCreate(Sender: TObject);
    procedure TS_SpeedButton6Click(Sender: TObject);
    procedure ppDBText12GetText(Sender: TObject;
  var Text: String);
    procedure TS_BitBtn1Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btOcorrClick(Sender: TObject);
    procedure btMemClick(Sender: TObject);
    procedure btAlertClick(Sender: TObject);
    procedure btOutrosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btCompClick(Sender: TObject);
    procedure DF_EmailButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
    procedure DF_EmailButtonClick2(Sender: TObject;
  AbsoluteIndex: Integer);
    procedure rbSaldoAbertoPreviewFormCreate(Sender: TObject);
    procedure DF_ContaPgtoInitPopup(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DF_CodigoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btComando1Click(Sender: TObject);
    procedure btComissaoGerenteClick(Sender: TObject);
    procedure dbgFuncPayCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgFuncPayEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure dbgFuncPayColumnClick(Sender: TObject;
      Column: TdxDBTreeListColumn);
    procedure FormComponentGravou(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btComando2Click(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure dbgFuncPayTS_AfterNewRecord(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure dbgMetasCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgMetasEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure dbgMetasKeyPress(Sender: TObject; var Key: Char);
    procedure dfMetodoAdicaoChange(Sender: TObject);
    procedure AdicionarItem1Click(Sender: TObject);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure TS_Label16SetParametrosForm(Sender: TObject);
    procedure TS_Label28Click(Sender: TObject);
    procedure TS_Label45SetParametrosForm(Sender: TObject);
    procedure TS_Label32SetParametrosForm(Sender: TObject);
    procedure cmbCargoChange(Sender: TObject);
    procedure tsPayrollShow(Sender: TObject);
    procedure dbgFuncPaylkPayrollItemChange(Sender: TObject);
    procedure ContratosdeClientes1Click(Sender: TObject);
    procedure UltimoGravado1Click(Sender: TObject);
    procedure TS_DBTextEffect2Click(Sender: TObject);
    procedure FormComponentBeforeSave(Sender: TObject; var bSkip: Boolean);
    procedure dfCNPJEnter(Sender: TObject);
    procedure dfCNPJExit(Sender: TObject);
  protected
    DlgPopup :TDlgPopupContas;
  private
    nCodForm: Integer;
    sCamposDef,sCamposTit,sCamposTipo: string;
    procedure LerCamposDefinidos;
    procedure PopulaCampo(obj:TTS_DBComboBox;nCampo:integer);
    function PegaStatusTitDesc(status: integer): string;
  public
    { Public declarations }
    CodigoDaConsulta: integer;
    SelectFuncionarios, CondicaoDaConsulta: string;

  end;

var FrmFuncionarios: TFrmFuncionarios;

implementation

uses DM_Funcionarios, DM_Projeto, funcoes, Dlg_DefinirCamposFav, ShellApi,
  Dlg_ContratosFunc;

{$R *.DFM}

procedure TFrmFuncionarios.FormCreate(Sender: TObject);
begin
  inherited;
  FrmFuncionarios := Self;
  nCodForm := 25; //Codigo do Formulario
  DMFuncionarios.C_Consultas.Close;
  SelectFuncionarios := DMFuncionarios.Q_Tabela.SQL.Text;
  CondicaoDaConsulta := '';
  CodigoDaConsulta := -1; // Todos os Funcionarios (sem consulta)
  PC_Abas.ActivePage := tsEndereco;
  LerCamposDefinidos;
  DlgPopup := TDlgPopupContas.Create(Self,DMFuncionarios.C_ContasDS, nil,False);
end;

procedure TFrmFuncionarios.TS_SpeedButton6Click(Sender: TObject);
var IDs: string;
begin
  inherited;
  if DMFuncionarios.C_TabelaFavorecido.value <= 0 then
    DlgMsg.ShowMsg( 2099 )
  else begin
    with DMProjeto do begin
      if Grid.QuantidadeSelecionada>0 then begin
        IDS := '1,2'; // Grid
      end else begin
        with DMFuncionarios.C_Tabela do begin
          DisableControls;
          while not(eof) do begin
            AppendStr(IDs, FieldByName('Favorecido').AsString+',');
            Next;
          end;
          if length(IDs)<=0 then IDs := '-1'
          else IDs := copy(IDs, 1, length(IDs)-1);
          EnableControls;
        end;
      end;
      SetParametrosForm( [3{CATEGORIA - Funcionarios}, CodigoDaConsulta, IDs{IDs dos favorecidos}, CondicaoDaConsulta] );
      CriarForm('FrmTextos', Self, false);
    end;
  end;  
end;

function TFrmFuncionarios.PegaStatusTitDesc(status: integer): string;
begin
  try
    with DMProjeto do begin
      Q_SQL.Close;
      Q_SQL.SQL.Text := 'Select descricao From StatusTitulos Where Status='+IntToStr(status);
      Q_SQL.Open;
      result := Q_SQL.Fields[0].AsString;
    end;
  except
    result := '';
  end;
end;
  
procedure TFrmFuncionarios.ppDBText12GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  if Text='' then Text := '0,00';
end;

procedure TFrmFuncionarios.LerCamposDefinidos;
var i:integer;
    sCampo,sTitulo,sTipo: string;
begin
  sCamposDef  := DMProjeto.Parametro('FuncCamposDefinidos');
  sCamposTit  := DMProjeto.Parametro('FuncCamposTitulos');
  sCamposTipo := DMProjeto.Parametro('FuncCamposTipos');
  lblCampo1.visible := false;
  dfCampo1.visible := false;
  cbCampo1.visible := false;
  cmbCampo1.visible := false;
  lblCampo2.visible := false;
  dfCampo2.visible := false;
  cbCampo2.visible := false;
  cmbCampo2.visible := false;
  lblCampo3.visible := false;
  dfCampo3.visible := false;
  cbCampo3.visible := false;
  cmbCampo3.visible := false;
  lblCampo4.visible := false;
  dfCampo4.visible := false;
  cbCampo4.visible := false;
  cmbCampo4.visible := false;
  lblCampo5.visible := false;
  dfCampo5.visible := false;
  cbCampo5.visible := false;
  cmbCampo5.visible := false;
  lblCampo6.visible := false;
  dfCampo6.visible := false;
  cbCampo6.visible := false;
  cmbCampo6.visible := false;
  lblCampo7.visible := false;
  dfCampo7.visible := false;
  cbCampo7.visible := false;
  cmbCampo7.visible := false;
  lblCampo8.visible := false;
  dfCampo8.visible := false;
  cbCampo8.visible := false;
  cmbCampo8.visible := false;
  lblCampo9.visible := false;
  dfCampo9.visible := false;
  cbCampo9.visible := false;
  cmbCampo9.visible := false;
  lblCampo10.visible := false;
  dfCampo10.visible := false;
  cbCampo10.visible := false;
  cmbCampo10.visible := false;
  for i := 1 to ContaStrings(sCamposDef,';') do begin
    sCampo  := SeparaStrings(sCamposDef,';',i);
    sTitulo := SeparaStrings(sCamposTit,';',i);
    sTipo   := SeparaStrings(sCamposTipo,';',i);
    if sCampo = '1' then begin
      if sTipo = '0' then begin
        lblCampo1.visible := true;
        lblCampo1.caption := sTitulo;
        dfCampo1.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo1.visible := true;
        lblCampo1.visible := true;
        lblCampo1.caption := sTitulo;
        PopulaCampo(cmbCampo1,1);
      end
      else if sTipo = '2' then begin
        cbCampo1.visible := true;
        cbCampo1.caption := sTitulo;
        if DMFuncionarios.C_TabelaCampo01.IsNull or (DMFuncionarios.C_TabelaCampo01.value <> 'S') then begin
          DMFuncionarios.C_Tabela.edit;
          DMFuncionarios.C_TabelaCampo01.value := 'N';
          DMFuncionarios.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '2' then begin
      if sTipo = '0' then begin
        lblCampo2.visible := true;
        lblCampo2.caption := sTitulo;
        dfCampo2.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo2.visible := true;
        lblCampo2.visible := true;
        lblCampo2.caption := sTitulo;
        PopulaCampo(cmbCampo2,2);
      end
      else if sTipo = '2' then begin
        cbCampo2.visible := true;
        cbCampo2.caption := sTitulo;
        if DMFuncionarios.C_TabelaCampo02.IsNull or (DMFuncionarios.C_TabelaCampo02.value <> 'S') then begin
          DMFuncionarios.C_Tabela.edit;
          DMFuncionarios.C_TabelaCampo02.value := 'N';
          DMFuncionarios.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '3' then begin
      if sTipo = '0' then begin
        lblCampo3.visible := true;
        lblCampo3.caption := sTitulo;
        dfCampo3.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo3.visible := true;
        lblCampo3.visible := true;
        lblCampo3.caption := sTitulo;
        PopulaCampo(cmbCampo3,3);
      end
      else if sTipo = '2' then begin
        cbCampo3.visible := true;
        cbCampo3.caption := sTitulo;
        if DMFuncionarios.C_TabelaCampo03.IsNull or (DMFuncionarios.C_TabelaCampo03.value <> 'S') then begin
          DMFuncionarios.C_Tabela.edit;
          DMFuncionarios.C_TabelaCampo03.value := 'N';
          DMFuncionarios.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '4' then begin
      if sTipo = '0' then begin
        lblCampo4.visible := true;
        lblCampo4.caption := sTitulo;
        dfCampo4.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo4.visible := true;
        lblCampo4.visible := true;
        lblCampo4.caption := sTitulo;
        PopulaCampo(cmbCampo4,4);
      end
      else if sTipo = '2' then begin
        cbCampo4.visible := true;
        cbCampo4.caption := sTitulo;
        if DMFuncionarios.C_TabelaCampo04.IsNull or (DMFuncionarios.C_TabelaCampo04.value <> 'S') then begin
          DMFuncionarios.C_Tabela.edit;
          DMFuncionarios.C_TabelaCampo04.value := 'N';
          DMFuncionarios.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '5' then begin
      if sTipo = '0' then begin
        lblCampo5.visible := true;
        lblCampo5.caption := sTitulo;
        dfCampo5.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo5.visible := true;
        lblCampo5.visible := true;
        lblCampo5.caption := sTitulo;
        PopulaCampo(cmbCampo5,5);
      end
      else if sTipo = '2' then begin
        cbCampo5.visible := true;
        cbCampo5.caption := sTitulo;
        if DMFuncionarios.C_TabelaCampo05.IsNull or (DMFuncionarios.C_TabelaCampo05.value <> 'S') then begin
          DMFuncionarios.C_Tabela.edit;
          DMFuncionarios.C_TabelaCampo05.value := 'N';
          DMFuncionarios.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '6' then begin
      if sTipo = '0' then begin
        lblCampo6.visible := true;
        lblCampo6.caption := sTitulo;
        dfCampo6.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo6.visible := true;
        lblCampo6.visible := true;
        lblCampo6.caption := sTitulo;
        PopulaCampo(cmbCampo6,6);
      end
      else if sTipo = '2' then begin
        cbCampo6.visible := true;
        cbCampo6.caption := sTitulo;
        if DMFuncionarios.C_TabelaCampo06.IsNull or (DMFuncionarios.C_TabelaCampo06.value <> 'S') then begin
          DMFuncionarios.C_Tabela.edit;
          DMFuncionarios.C_TabelaCampo06.value := 'N';
          DMFuncionarios.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '7' then begin
      if sTipo = '0' then begin
        lblCampo7.visible := true;
        lblCampo7.caption := sTitulo;
        dfCampo7.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo7.visible := true;
        lblCampo7.visible := true;
        lblCampo7.caption := sTitulo;
        PopulaCampo(cmbCampo7,7);
      end
      else if sTipo = '2' then begin
        cbCampo7.visible := true;
        cbCampo7.caption := sTitulo;
        if DMFuncionarios.C_TabelaCampo07.IsNull or (DMFuncionarios.C_TabelaCampo07.value <> 'S') then begin
          DMFuncionarios.C_Tabela.edit;
          DMFuncionarios.C_TabelaCampo07.value := 'N';
          DMFuncionarios.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '8' then begin
      if sTipo = '0' then begin
        lblCampo8.visible := true;
        lblCampo8.caption := sTitulo;
        dfCampo8.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo8.visible := true;
        lblCampo8.visible := true;
        lblCampo8.caption := sTitulo;
        PopulaCampo(cmbCampo8,8);
      end
      else if sTipo = '2' then begin
        cbCampo8.visible := true;
        cbCampo8.caption := sTitulo;
        if DMFuncionarios.C_TabelaCampo08.IsNull or (DMFuncionarios.C_TabelaCampo08.value <> 'S') then begin
          DMFuncionarios.C_Tabela.edit;
          DMFuncionarios.C_TabelaCampo08.value := 'N';
          DMFuncionarios.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '9' then begin
      if sTipo = '0' then begin
        lblCampo9.visible := true;
        lblCampo9.caption := sTitulo;
        dfCampo9.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo9.visible := true;
        lblCampo9.visible := true;
        lblCampo9.caption := sTitulo;
        PopulaCampo(cmbCampo9,9);
      end
      else if sTipo = '2' then begin
        cbCampo9.visible := true;
        cbCampo9.caption := sTitulo;
        if DMFuncionarios.C_TabelaCampo09.IsNull or (DMFuncionarios.C_TabelaCampo09.value <> 'S') then begin
          DMFuncionarios.C_Tabela.edit;
          DMFuncionarios.C_TabelaCampo09.value := 'N';
          DMFuncionarios.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '10' then begin
      if sTipo = '0' then begin
        lblCampo10.visible := true;
        lblCampo10.caption := sTitulo;
        dfCampo10.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo10.visible := true;
        lblCampo10.visible := true;
        lblCampo10.caption := sTitulo;
        PopulaCampo(cmbCampo10,10);
      end
      else if sTipo = '2' then begin
        cbCampo10.visible := true;
        cbCampo10.caption := sTitulo;
        if DMFuncionarios.C_TabelaCampo10.IsNull or (DMFuncionarios.C_TabelaCampo10.value <> 'S') then begin
          DMFuncionarios.C_Tabela.edit;
          DMFuncionarios.C_TabelaCampo10.value := 'N';
          DMFuncionarios.C_Tabela.UpdateRecord;
        end;
      end;
    end;
  end;
end;

procedure TFrmFuncionarios.PopulaCampo;
var xCampo: string;
begin
  xCampo := 'campo'+AdicionarStr(IntToStr(nCampo),'0',2);
  TTS_DBComboBox(obj).Items.Clear;
  DMProjeto.Q_SQL.close;
  DMProjeto.Q_SQL.SQL.Text := 'select distinct '+xCampo+' from favorecidos where '+xCampo+' is not null order by 1';
  DMProjeto.Q_SQL.open;

  while not DMProjeto.Q_SQL.eof do begin
    TTS_DBComboBox(obj).Items.add(DMProjeto.Q_SQL.fieldbyname(xCampo).asstring);
    DMProjeto.Q_SQL.next;
  end;
end;

procedure TFrmFuncionarios.TS_BitBtn1Click(Sender: TObject);
begin
  inherited;
  DlgDefinirCamposFav := TDlgDefinirCamposFav.create(self);
  DlgDefinirCamposFav.free;

  LerCamposDefinidos;
end;

procedure TFrmFuncionarios.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  if pdFoto.Execute then with DMFuncionarios do begin

    if not(C_Tabela.State in [dsEdit,dsInsert]) then
      C_Tabela.Edit;

    C_TabelaLogotipo.Value := DMProjeto.AddFotoServidor( pdFoto.FileName );
    if FileExists(DMProjeto.ImgPath + C_TabelaLogotipo.Value) then
      DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaLogotipo.Value);

  end;
end;

procedure TFrmFuncionarios.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  with DMFuncionarios do begin
    if not(C_Tabela.State in [dsEdit,dsInsert]) then C_Tabela.Edit;
    C_TabelaLogotipo.Value := '';
    DF_Foto.ClearPicture;
  end;
end;

procedure TFrmFuncionarios.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  with DMFuncionarios do begin
    if C_TabelaFavorecido.value > 0 then begin
      if FileExists(DMProjeto.ImgPath + C_TabelaLogotipo.Value) then
        DF_Foto.Picture.LoadFromFile(DMProjeto.ImgPath + C_TabelaLogotipo.Value)
      else DF_Foto.ClearPicture;
    end else begin
      DF_Foto.ClearPicture;
    end;
  end;
end;

procedure TFrmFuncionarios.dxBarButton3Click(Sender: TObject);
begin
  inherited;
  DMProjeto.Lembrete(self,DMJanela.C_Tabela.FieldByName('Favorecido').AsInteger, 3, 2099);
end;

procedure TFrmFuncionarios.btOcorrClick(Sender: TObject);
begin
  inherited;
  DMProjeto.Ocorrencia(self,DMJanela.C_Tabela.FieldByName('Favorecido').AsInteger, 3, DMJanela.C_Tabela.FieldByName('Nome').AsString);
end;

procedure TFrmFuncionarios.btMemClick(Sender: TObject);
begin
  inherited;
  DMProjeto.Memorize(self,nCodForm, DMFuncionarios.C_TabelaFavorecido.Value,
                     DMFuncionarios.C_TabelaCODIGO.Value, DMFuncionarios.C_TabelaNOME.Value, 3);
end;

procedure TFrmFuncionarios.btAlertClick(Sender: TObject);
begin
  inherited;
  if DMFuncionarios.C_TabelaFavorecido.value <= 0 then
    DlgMsg.ShowMsg( 2099 )
  else begin
    DMProjeto.SetParametrosForm([DMFuncionarios.C_TabelaFavorecido.value, 3]);
    DMProjeto.CriarForm('FrmAlerta', Self, true);
  end;
end;

procedure TFrmFuncionarios.btOutrosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmOutros.PopupFromCursorPos;
end;

procedure TFrmFuncionarios.btCompClick(Sender: TObject);
begin
  inherited;
  if DMFuncionarios.C_TabelaFavorecido.value <= 0 then
    DlgMsg.ShowMsg( 2099 )
  else begin
    DMProjeto.SetParametrosForm( ['Favorecidos', DMFuncionarios.C_TabelaFAVORECIDO.Value, 'Compromissos com Favorecido ['+DMFuncionarios.C_TabelaNOME.Value+']'] );
    DMProjeto.CriarForm('DlgDescricaoCompromissos', Self, true);
  end;
end;

procedure TFrmFuncionarios.DF_EmailButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if DF_Email.Text<>'' then SendMail('','','','','',DF_Nome.Text,DF_Email.Text);
end;

procedure TFrmFuncionarios.DF_EmailButtonClick2(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if DF_Email.Text<>'' then
  	SendMail('','','','','',DF_Nome.Text,DF_Email.Text);
end;

procedure TFrmFuncionarios.rbSaldoAbertoPreviewFormCreate(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crDefault
end;

procedure TFrmFuncionarios.DF_ContaPgtoInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDS(DMFuncionarios.C_ContasDS);
  DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TFrmFuncionarios.FormActivate(Sender: TObject);
begin
  inherited;
  DF_ContaPgto.PopupControl := DlgPopup.pnPopup;
end;

procedure TFrmFuncionarios.DF_CodigoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  DMFuncionarios.GeraCodigo;
  ActiveControl := DF_Nome;
end;

procedure TFrmFuncionarios.btComando1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX(Self.Name,'QDROGERAL') then
    exit;
(*
  if DMFuncionarios.C_TabelaFavorecido.value <= 0 then
    DlgMsg.ShowMsg( 2099 )
  else begin
    DMProjeto.SetParametrosForm( [DMFuncionarios.C_TabelaFAVORECIDO.Value, 3{TipoFav}] );
    DMProjeto.CriarForm('DlgSitFuncionario', Self, true);
  end;
*)
end;

procedure TFrmFuncionarios.btComissaoGerenteClick(Sender: TObject);
begin
  inherited;

	if DMFuncionarios.C_TabelaCargo.Value <> 1 then begin
  	DlgMsg.ShowMsg(1999);
    Exit;
  end;
  if not DMProjeto.DlgAutorizacao.ExecuteX(Self.Name,'COMISSGRT') then
    exit;

  DMFuncionarios.Q_LookFuncionario.Filter := ' Favorecido <> '+DMFuncionarios.C_TabelaFavorecido.asString;
  DMFuncionarios.Q_LookFuncionario.Filtered := true;
  DMFuncionarios.Q_LookFuncionario.First;
  DMProjeto.CriarForm('FrmComissoesGerente', Self, true);
end;

procedure TFrmFuncionarios.dbgFuncPayCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  nTipo : Integer;
begin
  inherited;
  nTipo := dbgFuncPay.GetFieldValue(ANode, 'TipoPayroll', 0);
  if not AFocused then begin
    Case nTipo of
      0 : AColor := $00EBD7BC;
      1 : AColor := $00F5EBDE;
      2 : AColor := $00D6D3BD;
      3 : AColor := $00CAF4FF;
      4 : AColor := $00E7E1F0;
    end;
  end;

  {%}
  if TdxDBGridColumn(aColumn).FieldName = 'icValorGrid' then begin
    if dbgFuncPay.GetFieldValue(ANode, 'Percentual', 0) > 0 then
      Atext := AText + ' %'
  end;

end;

procedure TFrmFuncionarios.dbgFuncPayEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  inherited;
  if (dbgFuncPay.TS_SelectedColumn = 'QTDHORAS') then
    Allow := (dbgFuncPay.GetFieldValue(Node, 'TipoPayroll', 0) = 1)
  else if (dbgFuncPay.TS_SelectedColumn = 'lkItem') then
    Allow := (dbgFuncPay.GetFieldValue(Node, 'TipoPayroll', 0) = 1)
  else if (dbgFuncPay.TS_SelectedColumn = 'LIMITE') then
    Allow := (dbgFuncPay.GetFieldValue(Node, 'TipoPayroll', 0) > 2)
  else if (dbgFuncPay.TS_SelectedColumn = 'PERCENTUAL') then
    Allow := (dbgFuncPay.GetFieldValue(Node, 'TipoPayroll', 0) > 1)
  else
    Allow := true;
end;

procedure TFrmFuncionarios.dbgFuncPayColumnClick(Sender: TObject;
  Column: TdxDBTreeListColumn);
begin
  inherited;
  if TdxDBGridColumn(Column).FieldName = 'lkPayrollItem' then begin
    DMProjeto.SetParametrosForm([DMFuncionarios.C_FuncsPayItensPayrollItem.asVariant]);
    DMProjeto.CriarForm('FrmPayrollItems', Self, true);
    end
  else if TdxDBGridColumn(Column).FieldName = 'lkItem' then begin
    DMProjeto.SetParametrosForm([DMFuncionarios.C_FuncsPayItensItem.asVariant]);
    DMProjeto.CriarForm('FrmItens', Self, true);
  end;
end;

procedure TFrmFuncionarios.FormComponentGravou(Sender: TObject);
begin
  inherited;
  if (cbUsuario.Checked)and(Estado=fsInclusao) then begin
    DMProjeto.SetParametrosForm([null, PrimeiraPalavra( DMFuncionarios.C_TabelaNome.Value), DMFuncionarios.C_TabelaEmail.Value, DMFuncionarios.C_TabelaFavorecido.Value ] );
    DMProjeto.CriarForm('FrmUsuarios', self, true);
  end;
end;

procedure TFrmFuncionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DlgPopup.Free;
end;

procedure TFrmFuncionarios.btComando2Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([DMFuncionarios.C_TabelaFavorecido.Value]); 
  DMProjeto.CriarForm('DlgRecalcularComissao', self, true);
end;

procedure TFrmFuncionarios.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  CodigoDaConsulta := -1;
  DMFuncionarios.C_Consultas.Close;
  pc_Abas.ActivePageIndex := 0;
end;

procedure TFrmFuncionarios.dbgFuncPayTS_AfterNewRecord(Sender: TObject);
begin
  inherited;
  dbgFuncPay.TS_SelectedColumn := 'lkPayrollItem';
end;

procedure TFrmFuncionarios.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  dfComissao.ReadOnly := not DMProjeto.LerPermissao(self.name,'ALTCOMISS');
  dfPercentualComiss.Readonly := dfComissao.Readonly;
  df_LimiteCredito.ReadOnly   := not DMProjeto.LerPermissao(self.name,'ALTLIMCRE');

  tsEndereco.TabVisible 		:= DMProjeto.LerPermissao(self.name,'ENDERECO');
  tsPayroll.TabVisible 			:= DMProjeto.LerPermissao(self.name,'FUNCPAYROL');
  tsAdicionais.TabVisible 	:= DMProjeto.LerPermissao(self.name,'INFADICION');
  tsCustomizados.TabVisible := DMProjeto.LerPermissao(self.name,'CCUSTOM');
  if DMProjeto.GetParametrosForm(1) <> null then begin
    if DMFuncionarios.C_Tabela.State = dsBrowse then
      DMFuncionarios.C_Tabela.Edit;

    DMFuncionarios.C_TabelaIsVendedor.Value := 'S';
  end;
end;

procedure TFrmFuncionarios.DBEdit1Change(Sender: TObject);
var AColor : TColor;
begin
  inherited;
	lbItemPayRoll.Caption := DMFuncionarios.C_FuncsPayItenslkPayRollItem.Value;
  Case DMFuncionarios.C_FuncsPayItensTipoPayRoll.Value of
     0 : AColor := $00EBD7BC; //$00E8D9E8
     1 : AColor := $00EDDBC2;
     2 : AColor := $00EFEFE7;
     3 : AColor := $00CAF4FF;
     4 : AColor := $00E7E1F0;
  else
  	AColor := $00EAEDC9;
  end;
  shpBarraTitulo.Brush.Color := AColor;
  pcPayItens.Visible := true;
  if DMFuncionarios.C_FuncsPayItensTipoPayroll.Value = 0 then
    pcPayItens.ActivePage := tsWageValorFixo
	else if DMFuncionarios.C_FuncsPayItensTipoPayroll.Value = 1 then
   	pcPayItens.ActivePage := tsWageHorasTrabalhadas
	else if DMFuncionarios.C_FuncsPayItensTipoPayroll.Value = 2 then
   	pcPayItens.ActivePage := tsComissao
	else if DMFuncionarios.C_FuncsPayItensTipoPayroll.Value = 3 then
   	pcPayItens.ActivePage := tsAdicao
	else if DMFuncionarios.C_FuncsPayItensTipoPayroll.Value = 4 then
   	pcPayItens.ActivePage := tsDeducao
	else if DMFuncionarios.C_FuncsPayItensTipoPayroll.Value = 5 then
   	pcPayItens.Visible := false
  else
   	pcPayItens.ActivePageIndex := DMFuncionarios.C_FuncsPayItensTipoPayroll.Value - 1;

  {Adição}
  if pcPayItens.ActivePage = tsAdicao then begin

    if DMFuncionarios.C_FuncsPayItensMETODOADIC.Value in [3,4] then begin
      dbgMetas.Visible := true;
      if DMFuncionarios.C_FuncsPayItensMETODOADIC.Value = 3 then
        dbgMetas.Bands[0].Caption := 'Faturamento Entre'
      else
        dbgMetas.Bands[0].Caption := 'Horas Produzidas Entre'
    end else
      dbgMetas.Visible := false;

    lbVAdicao.Visible 		:= (DMFuncionarios.C_FuncsPayItensTipo.Value = 'V') and (not (DMFuncionarios.C_FuncsPayItensMetodoAdic.Value in [3,4]));
    dfValorAdic.Visible 	:= (DMFuncionarios.C_FuncsPayItensTipo.Value = 'V') and (not (DMFuncionarios.C_FuncsPayItensMetodoAdic.Value in [3,4]));
    lbPAdicao.Visible 		:= (DMFuncionarios.C_FuncsPayItensTipo.Value = 'P') and (not (DMFuncionarios.C_FuncsPayItensMetodoAdic.Value in [3,4]));
    dfPercentAdic.Visible := (DMFuncionarios.C_FuncsPayItensTipo.Value = 'P') and (not (DMFuncionarios.C_FuncsPayItensMetodoAdic.Value in [3,4]));

	end else if pcPayItens.ActivePage = tsDeducao then begin

    lbPDeducao.Visible 		:= DMFuncionarios.C_FuncsPayItensTipo.Value = 'P';
    dfPercentualDeducao.Visible := DMFuncionarios.C_FuncsPayItensTipo.Value = 'P';
    lbVDeducao.Visible 		:= DMFuncionarios.C_FuncsPayItensTipo.Value = 'V';
    dfValorDeducao.Visible:= DMFuncionarios.C_FuncsPayItensTipo.Value = 'V';
    lbPercentual.Visible 	:= DMFuncionarios.C_FuncsPayItensTipo.Value = 'P';
    cmbPercentual.Visible := DMFuncionarios.C_FuncsPayItensTipo.Value = 'P';
    lbPayrollItem.Visible := (DMFuncionarios.C_FuncsPayItensTipo.Value = 'P') and (DMFuncionarios.C_FuncsPayItensMetodoAdic.Value = 3);
    dbtPayrollItem.Visible:= (DMFuncionarios.C_FuncsPayItensTipo.Value = 'P') and (DMFuncionarios.C_FuncsPayItensMetodoAdic.Value = 3);

	end;

end;

procedure TFrmFuncionarios.dbgMetasCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if (TdxDBGridColumn(AColumn).FieldName = 'VALOR') and (dbgMetas.GetFieldValue(ANode, 'TipoPercentual', 'N') = 'S') then
    AText := AText + ' %';
end;

procedure TFrmFuncionarios.dbgMetasEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  inherited;
  if (dbgMetas.TS_SelectedColumn = 'VALOR') and (DMFuncionarios.C_MetasTipoPercentual.Value = 'S') then begin
    DMFuncionarios.C_Metas.Edit;
    DMFuncionarios.C_MetasTipoPercentual.Value := 'N';
  end;
end;

procedure TFrmFuncionarios.dbgMetasKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = '%' then begin
    dbgMetas.CloseEditor;
    if DMFuncionarios.C_Metas.State = dsBrowse then
      DMFuncionarios.C_Metas.Edit;
    DMFuncionarios.C_MetasTipoPercentual.Value := 'S';
  end;
end;

procedure TFrmFuncionarios.dfMetodoAdicaoChange(Sender: TObject);
begin
  inherited;
  if dfMetodoAdicao.Text[1] in ['3', '4'] then begin
    dbgMetas.Visible := true;
    if dfMetodoAdicao.Text = '3' then
      dbgMetas.Bands[0].Caption := 'Faturamento Entre'
    else
      dbgMetas.Bands[0].Caption := 'Horas Produzidas Entre'
  end else
    dbgMetas.Visible := false;
end;

procedure TFrmFuncionarios.AdicionarItem1Click(Sender: TObject);
begin
  inherited;
  DMFuncionarios.C_FuncsPayItens.Append;
end;

procedure TFrmFuncionarios.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
var nFunc : integer;
begin
  inherited;
  if (UpperCase(LastDataObject.TableName) = 'PAYROLLITENS') and (DMFuncionarios.C_FuncsPayItens.State in [dsInsert]) then begin
    DMFuncionarios.C_PayrollItens.Close;
    DMFuncionarios.C_PayrollItens.Open;
    DMFuncionarios.C_PayrollItens.Locate('PayrollItem', LastDataObject.ObjectKey, []);
    DMFuncionarios.C_FuncsPayItensPayrollItem.asVariant := LastDataObject.ObjectKey;
    DMFuncionarios.C_FuncsPayItensDescTipoPayroll.asVariant := DMFuncionarios.C_PayrollItensDescTipoPayRoll.Value;
    DMFuncionarios.C_FuncsPayItens.UpdateRecord;
  end else if (UpperCase(LastDataObject.TableName) = 'PAYROLLITENS') then begin
    DMFuncionarios.C_PayrollItens.Close;
    DMFuncionarios.C_PayrollItens.Open;
    DMFuncionarios.C_FuncsPayItens.Append;
    DMFuncionarios.C_FuncsPayItensPayRollItem.Value := LastDataObject.ObjectKey;
  end;
end;

procedure TFrmFuncionarios.TS_Label16SetParametrosForm(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([null,3]); // tipofavorecido
end;

procedure TFrmFuncionarios.TS_Label28Click(Sender: TObject);
begin
  inherited;
  if DMFuncionarios.C_TabelaFavorecido.value <= 0 then
    DlgMsg.ShowMsg( 2099 )
  else begin
    DMProjeto.ImprimirRelatorioFavorecido(self,'CREDITO',DMFuncionarios.C_TabelaFavorecido.value);
  end;
end;

procedure TFrmFuncionarios.TS_Label45SetParametrosForm(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([null,3]);
end;

procedure TFrmFuncionarios.TS_Label32SetParametrosForm(Sender: TObject);
begin
  inherited;
	DMProjeto.SetParametrosForm([null,3]);
end;

procedure TFrmFuncionarios.cmbCargoChange(Sender: TObject);
begin
  inherited;
  with DMFuncionarios do begin
		if C_TabelaCargo.Value = 2 then begin
      C_TabelaIsVendedor.Value:= 'S';
      DF_IsVendedor.Checked 	:= true;
    end;
	end;
end;

procedure TFrmFuncionarios.tsPayrollShow(Sender: TObject);
begin
  inherited;
	DBEdit1Change(sender);
end;

procedure TFrmFuncionarios.dbgFuncPaylkPayrollItemChange(Sender: TObject);
begin
  inherited;
  DBEdit1Change(sender);
end;

procedure TFrmFuncionarios.ContratosdeClientes1Click(Sender: TObject);
begin
  inherited;
  DlgContratosFunc := TDlgContratosFunc.Create(self);
  DlgContratosFunc.Funcionario := DMFuncionarios.C_TabelaFavorecido.Value;
  DlgContratosFunc.NomeFuncionario := DMFuncionarios.C_TabelaNome.Value;

  DlgContratosFunc.ShowModal;
  DlgContratosFunc.Release;

end;

procedure TFrmFuncionarios.UltimoGravado1Click(Sender: TObject);
begin
  with DMProjeto.Q_SQL do begin
  	close;
    sql.text := 'select max(favorecido) from favorecidos where tipofavorecido = 3 ';
    open;
  	Localizar('',' where favorecido = '+fields[0].AsString );
    close;
  end;
end;

procedure TFrmFuncionarios.TS_DBTextEffect2Click(Sender: TObject);
begin
  inherited;
  if DMFuncionarios.C_TabelaFavorecido.value <= 0 then
    DlgMsg.ShowMsg( 543 )
  else begin
    DMProjeto.ImprimirRelatorioFavorecido(self,'CREDITO',DMFuncionarios.C_TabelaFavorecido.Value);
  end;
end;

procedure TFrmFuncionarios.FormComponentBeforeSave(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if DMFuncionarios.C_TabelaCodigo.Value = '' then
    DMFuncionarios.GeraCodigo;
end;

procedure TFrmFuncionarios.dfCNPJEnter(Sender: TObject);
begin
  inherited;
  DMFuncionarios.C_TabelaCPF_CNPJ.EditMask := '';
end;

procedure TFrmFuncionarios.dfCNPJExit(Sender: TObject);
begin
  inherited;
  DMFuncionarios.C_TabelaCPF_CNPJ.EditMask := '999.999.999-99;0; ';
end;

end.

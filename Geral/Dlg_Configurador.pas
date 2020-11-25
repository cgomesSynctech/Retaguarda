unit Dlg_Configurador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, ComCtrls,
  TS_PageControl, dxCntner, dxEditor, dxExEdtr, dxEdLib, TS_ImageEdit,
  DBCtrls, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  IBCustomDataSet, IBUpdateSQL, Provider, Db, DBClient, IBQuery,
  TS_ButtonEdit, dxDBELib, TS_DBMemo, printers, TS_Shape, TS_DBEditNumber,
  teWipe, TransEff, teTimed, Variants, BTOdeum, Placemnt, dxGrClEx,
  TS_QDBGrid;

type
  TDlgConfigurador = class(TFrmModeloCadastros)
    pcPrincipal: TTS_PageControl;
    tsIntroducao: TTS_TabSheet;
    tsItens: TTS_TabSheet;
    tsFinanceiro: TTS_TabSheet;
    tsVendas: TTS_TabSheet;
    tsCompras: TTS_TabSheet;
    tsClientes: TTS_TabSheet;
    tsFornecedores: TTS_TabSheet;
    tsFuncionarios: TTS_TabSheet;
    tsGeral: TTS_TabSheet;
    tsRelatorios: TTS_TabSheet;
    TS_Image1: TTS_Image;
    TS_Label1: TTS_Label;
    Q_ParametrosDS: TDataSource;
    Q_Parametros: TIBQuery;
    C_Parametros: TClientDataSet;
    C_ParametrosCHAVE: TStringField;
    C_ParametrosPARAMETRO: TStringField;
    C_ParametrosCATEGORIA: TStringField;
    C_ParametrosVALOR: TStringField;
    C_ParametrosDOMINIO: TStringField;
    C_ParametrosCONTROLEINTERNO: TStringField;
    C_ParametrosLABEL: TStringField;
    C_ParametrosDESCRICAO: TStringField;
    C_ParametrosTIPO: TStringField;
    C_ParametrosIMPORTACAO: TIntegerField;
    C_ParametrosFORMS: TStringField;
    C_ParametrosValorData: TDateTimeField;
    C_ParametrosProvider: TDataSetProvider;
    U_Parametros: TIBUpdateSQL;
    Q_Lookups: TIBQuery;
    Q_LookupsProvider: TDataSetProvider;
    C_Lookups: TClientDataSet;
    DlgFonte: TFontDialog;
    tsParametros: TTS_TabSheet;
    TS_Panel1: TTS_Panel;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    cmbCategoria: TTS_ImageEdit;
    dfTexto: TTS_ButtonEdit;
    DBParametros: TdxDBGrid;
    DBParametrosColumn1: TdxDBGridColumn;
    DBParametrosColumn2: TdxDBGridWrapperColumn;
    DBParametrosColumn3: TdxDBGridColumn;
    dxParametrosCheck: TdxDBGridCheckColumn;
    dxParametrosData: TdxDBGridDateColumn;
    dxParametrosList: TdxDBGridPickColumn;
    dxParametrosListLookup: TdxDBGridImageColumn;
    dxParametrosFont: TdxDBGridButtonColumn;
    dxParametrosNumero: TdxDBGridCalcColumn;
    TS_Label5: TTS_Label;
    TS_Image46: TTS_Image;
    pnGrid: TTS_Panel;
    dbMemoExplic: TTS_DBMemo;
    lblExplic: TTS_Label;
    TS_Image3: TTS_Image;
    TS_Label8: TTS_Label;
    spOpcoes: TShape;
    lblOpcoes: TTS_Label;
    spLinha: TTS_Shape;
    TS_Panel2: TTS_Panel;
    TS_Label2: TTS_Label;
    dfDescricao: TTS_DBMemo;
    TS_Label7: TTS_Label;
    TS_Image4: TTS_Image;
    TS_Image6: TTS_Image;
    TS_Label10: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Image5: TTS_Image;
    TS_Label11: TTS_Label;
    TS_Image7: TTS_Image;
    TS_Image8: TTS_Image;
    TS_Label12: TTS_Label;
    TS_Label13: TTS_Label;
    TS_Image9: TTS_Image;
    TS_Label14: TTS_Label;
    TS_Image10: TTS_Image;
    TS_Label15: TTS_Label;
    TS_Image11: TTS_Image;
    TS_Image12: TTS_Image;
    TS_Label16: TTS_Label;
    TS_Label18: TTS_Label;
    TS_Image14: TTS_Image;
    TS_Image15: TTS_Image;
    TS_Label19: TTS_Label;
    TS_Label17: TTS_Label;
    TS_Image13: TTS_Image;
    TS_Image17: TTS_Image;
    TS_Label21: TTS_Label;
    TS_Label20: TTS_Label;
    TS_Image16: TTS_Image;
    TS_Label25: TTS_Label;
    TS_Image21: TTS_Image;
    TS_Image22: TTS_Image;
    TS_Label26: TTS_Label;
    TS_Label27: TTS_Label;
    TS_Image23: TTS_Image;
    TS_Label28: TTS_Label;
    TS_Image24: TTS_Image;
    TS_Label29: TTS_Label;
    TS_Image25: TTS_Image;
    TS_Image26: TTS_Image;
    TS_Label30: TTS_Label;
    TS_Image27: TTS_Image;
    TS_Label31: TTS_Label;
    TS_Image28: TTS_Image;
    TS_Label32: TTS_Label;
    TS_Image29: TTS_Image;
    TS_Label33: TTS_Label;
    TS_Image30: TTS_Image;
    TS_Label34: TTS_Label;
    TS_Image31: TTS_Image;
    TS_Label35: TTS_Label;
    TS_Image32: TTS_Image;
    TS_Label36: TTS_Label;
    TS_Image33: TTS_Image;
    TS_Label37: TTS_Label;
    TS_Image34: TTS_Image;
    TS_Label38: TTS_Label;
    dfUltimoCodigoItem: TTS_ButtonEdit;
    dfUltimoCodigoCliente: TTS_ButtonEdit;
    dfUltimoCodigoForn: TTS_ButtonEdit;
    dfUltimoCodigoFunc: TTS_ButtonEdit;
    TS_Label40: TTS_Label;
    TS_Label41: TTS_Label;
    TS_Label42: TTS_Label;
    TS_Label43: TTS_Label;
    TS_Image35: TTS_Image;
    TS_Label51: TTS_Label;
    OpenDialog: TOpenDialog;
    Q_Aux: TIBQuery;
    C_ParametrosCATEGORIA1: TStringField;
    C_ParametrosCATEGORIA2: TStringField;
    C_ParametrosCATEGORIA3: TStringField;
    C_ParametrosLABEL1: TStringField;
    C_ParametrosLABEL2: TStringField;
    C_ParametrosLABEL3: TStringField;
    C_ParametrosDESCRICAO1: TStringField;
    C_ParametrosDESCRICAO2: TStringField;
    C_ParametrosDESCRICAO3: TStringField;
    C_ParametrosDOMINIO1: TStringField;
    C_ParametrosDOMINIO2: TStringField;
    C_ParametrosDOMINIO3: TStringField;
    Efeitos: TTransitionList;
    tPrincipal: TWipeTransition;
    C_CustosDS: TDataSource;
    Q_Custos: TIBQuery;
    C_Custos: TClientDataSet;
    C_CustosIMPOSTOSFEDERAIS: TBCDField;
    C_CustosDESPESASFIXAS: TBCDField;
    C_CustosMAIORCOMISSAO: TBCDField;
    C_CustosLUCROPADRAO: TBCDField;
    P_Custos: TDataSetProvider;
    U_Custos: TIBUpdateSQL;
    TS_Image38: TTS_Image;
    TS_Label44: TTS_Label;
    C_ParametrosValorList: TStringField;
    pnFuncoes: TPanel;
    dbgFuncoes: TTS_QDBGrid;
    dbgFuncoesDESCRICAO: TdxDBGridMaskColumn;
    Q_Opcoes: TIBQuery;
    C_Opcoes: TClientDataSet;
    C_Opcoes_icSelecionado: TIntegerField;
    C_OpcoesChave: TIntegerField;
    C_OpcoesDescricao: TStringField;
    P_Opcoes: TDataSetProvider;
    C_OpcoesDS: TDataSource;
    DBParametrosPopup: TdxDBGridPopupColumn;
    procedure FormCreate(Sender: TObject);
    procedure C_ParametrosCHAVEChange(Sender: TField);
    procedure btGravarClick(Sender: TObject);
    procedure DBParametrosColumn2GetReferenceColumn(Sender: TObject;
      Node: TdxTreeListNode; var Column: TdxDBTreeListColumn);
    procedure C_ParametrosValorDataChange(Sender: TField);
    procedure dxParametrosFontButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cmbCategoriaChange(Sender: TObject);
    procedure dfTextoChange(Sender: TObject);
    procedure pcPrincipalChange(Sender: TObject);
    procedure TS_Label8Click(Sender: TObject);
    procedure TS_Label5Click(Sender: TObject);
    procedure TS_Label6Click(Sender: TObject);
    procedure TS_Label16Click(Sender: TObject);
    procedure TS_Label14Click(Sender: TObject);
    procedure TS_Label19Click(Sender: TObject);
    procedure TS_Label15Click(Sender: TObject);
    procedure TS_Label17Click(Sender: TObject);
    procedure TS_Label18Click(Sender: TObject);
    procedure TS_Label12Click(Sender: TObject);
    procedure TS_Label9Click(Sender: TObject);
    procedure TS_Label11Click(Sender: TObject);
    procedure TS_Label13Click(Sender: TObject);
    procedure TS_Label23Click(Sender: TObject);
    procedure TS_Label22Click(Sender: TObject);
    procedure TS_Label24Click(Sender: TObject);
    procedure TS_Label21Click(Sender: TObject);
    procedure TS_Label20Click(Sender: TObject);
    procedure TS_Label10Click(Sender: TObject);
    procedure TS_Label7Click(Sender: TObject);
    procedure TS_Label29Click(Sender: TObject);
    procedure TS_Label26Click(Sender: TObject);
    procedure TS_Label27Click(Sender: TObject);
    procedure TS_Label25Click(Sender: TObject);
    procedure TS_Label28Click(Sender: TObject);
    procedure TS_Label30Click(Sender: TObject);
    procedure TS_Label31Click(Sender: TObject);
    procedure TS_Label36Click(Sender: TObject);
    procedure TS_Label33Click(Sender: TObject);
    procedure TS_Label34Click(Sender: TObject);
    procedure TS_Label32Click(Sender: TObject);
    procedure TS_Label35Click(Sender: TObject);
    procedure TS_Label37Click(Sender: TObject);
    procedure TS_Label38Click(Sender: TObject);
    procedure dfUltimoCodigoItemButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dfUltimoCodigoClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dfUltimoCodigoFornButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dfUltimoCodigoFuncButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dfUltimoCodigoContaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure C_CustosNewRecord(DataSet: TDataSet);
    procedure TS_Label52Click(Sender: TObject);
    procedure TS_Label53Click(Sender: TObject);
    procedure TS_Label51Click(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure pcPrincipalChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure TS_Label44Click(Sender: TObject);
    procedure DBParametrosChangeNode(Sender: TObject; OldNode,
      Node: TdxTreeListNode);
    procedure C_ParametrosValorListChange(Sender: TField);
    procedure DBParametrosEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure DBParametrosPopupPopup(Sender: TObject;
      const EditText: String);
    procedure DBParametrosPopupCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure dbgFuncoesDblClick(Sender: TObject);
    procedure dbgFuncoesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    bCarregando: boolean;
    sDominioOld,sDominio:string;
    Menu: TMainMenu;
  public
    Constructor Create(AOwner: TComponent; oMenu: TMainMenu);
  end;

var
  DlgConfigurador: TDlgConfigurador;

implementation
uses DM_Projeto, funcoes, Frm_PerfilUsuario, teRender;

{$R *.DFM}

constructor TDlgConfigurador.Create;
begin
  Menu := oMenu;
  inherited Create(AOwner);
end;

procedure TDlgConfigurador.FormCreate(Sender: TObject);
begin
  inherited;
  pcPrincipal.ActivePage := tsIntroducao;

  dfUltimoCodigoItem.text := IntToStr(DMProjeto.LastID('IDCODIGOITEM'));
  dfUltimoCodigoCliente.text := IntToStr(DMProjeto.LastID('IDCODIGOCLIENTE'));
  dfUltimoCodigoForn.text := IntToStr(DMProjeto.LastID('IDCODIGOFORNECEDOR'));
  dfUltimoCodigoFunc.text := IntToStr(DMProjeto.LastID('IDCODIGOFUNCIONARIO'));
end;

procedure TDlgConfigurador.C_ParametrosCHAVEChange(Sender: TField);
begin
  inherited;
  C_ParametrosValor.asstring := C_ParametrosChave.AsString;
end;

procedure TDlgConfigurador.btGravarClick(Sender: TObject);
begin
  inherited;
  try
    C_Parametros.Post;
  except
  end;

  C_Parametros.ApplyUpdates(0);
  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  DMProjeto.C_Parametros.Close;
  DMProjeto.C_Parametros.Open;
end;

procedure TDlgConfigurador.DBParametrosColumn2GetReferenceColumn(
  Sender: TObject; Node: TdxTreeListNode; var Column: TdxDBTreeListColumn);
var sDominio,sDominioItem,sTabela,sWhere,sKeyField,sResultField: string;
    i: integer;
begin
  inherited;
  if Node.Values[2] = null then
    sDominio := ''
  else
    sDominio := Node.Values[2];
  if sDominio = 'S/N' then
    Column := dxParametrosCheck
  else if sDominio = 'Campo D' then
    Column := dxParametrosData
  else if sDominio = 'Campo N' then
    Column := dxParametrosNumero
  else if (pos('/',sDominio) > 0) or (pos('<Impressoras>',sDominio) > 0) then begin
    if sDominio = '<Impressoras>' then begin
      Column := dxParametrosList;
    end
    else if pos('/',sDominio) > 0 then begin
      Column := dxParametrosListLookup;
    end;
  end
  else if (pos('#',sDominio) > 0) then begin
    Column := dxParametrosListLookup;
  end
  else if (pos('%',sDominio) > 0) then begin
    Column := DBParametrosPopup;
  end
  else if (pos('<Fontes>',sDominio) > 0) then begin
    Column := dxParametrosFont;
  end;
(*  if Node.Values[2] = null then
    sDominio := ''
  else
    sDominio := Node.Values[2];

  if sDominio = 'S/N' then
    Column := dxParametrosCheck
  else if sDominio = 'Campo D' then
    Column := dxParametrosData
  else if sDominio = 'Campo N' then
    Column := dxParametrosNumero
  else if (pos('/',sDominio) > 0) or (pos('<Impressoras>',sDominio) > 0) then begin
    if sDominio = '<Impressoras>' then begin
      Column := dxParametrosList;
      dxParametrosList.Items.Assign(Printer.Printers);
    end
    else if pos('/',sDominio) > 0 then begin
      dxParametrosListLookup.Descriptions.Clear;
      dxParametrosListLookup.Values.Clear;
      Column := dxParametrosListLookup;
      if pos(':',sDominio) > 0 then begin
        for i := 1 to ContaStrings(sDominio,'/') do begin
          sDominioItem := SeparaStrings(sDominio,'/',i);
          dxParametrosListLookup.Descriptions.Add(SeparaStrings(sDominioItem,':',2));
          dxParametrosListLookup.Values.Add(SeparaStrings(sDominioItem,':',1));
        end;
      end
      else begin
        sDominio := replace(sDominio,'/',#13);
        dxParametrosList.Items.SetText(PChar(sDominio));
      end;
    end;
  end
  else if (pos('#',sDominio) > 0) then begin
    Column := dxParametrosListLookup;
    if sDominio <> sDominioOld then begin
      dxParametrosListLookup.Descriptions.Clear;
      dxParametrosListLookup.Values.Clear;

      C_Lookups.close;
      sKeyField    := Esquerda(sDominio,pos('#',sDominio)-1);
      sResultField := copy(sDominio,pos('#',sDominio)+1,50);
      sResultField := copy(sResultField,1,pos(' de ',sResultField)-1);
      if pos(':',sDominio) > 0 then begin
        sTabela := copy(sDominio, pos(' de ',sDominio)+4,50);
        sTabela := copy(sTabela, 1,pos(':',sTabela)-1);
        sWhere := ' Where '+copy(sDominio, pos(':',sDominio)+1,50)+' order by '+sResultField;
        end
      else
        sTabela := copy(sDominio, pos(' de ',sDominio)+4,30);

      Q_Lookups.SQL.Text := 'Select * from '+sTabela+sWhere;

      C_Lookups.Open;
      while not C_Lookups.eof do begin
        dxParametrosListLookup.Descriptions.Add(C_Lookups.FieldByName(sResultField).asstring);
        dxParametrosListLookup.Values.Add(C_Lookups.FieldByName(sKeyField).asstring);
        C_Lookups.next;
      end;
      C_Lookups.close;
    end;
  end
  else if (pos('<Fontes>',sDominio) > 0) then begin
    Column := dxParametrosFont;
  end;
  if sDominio <> sDominioOld then
    sDominioOld := sDominio;
 *)
end;

procedure TDlgConfigurador.C_ParametrosValorDataChange(Sender: TField);
begin
  inherited;
  if not bCarregando and (C_ParametrosDominio.value = 'Campo D') then
    C_ParametrosValor.value := FormatDateTime('yyyymmdd',C_ParametrosValorData.value);
end;

procedure TDlgConfigurador.dxParametrosFontButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var sFont: string;
    nSize: integer;
begin
  inherited;
  sFont := SeparaStrings(C_Parametros.FieldByName('Valor').asstring,';',1);
  if ContaStrings(C_Parametros.FieldByName('Valor').asstring,';') = 2 then
    nSize := StrToInt(SeparaStrings(C_Parametros.FieldByName('Valor').asstring,';',2));

  if sFont <> '' then begin
    DlgFonte.Font.name := sFont;
    DlgFonte.Font.size := nSize;
  end;
  DlgFonte.Execute;
  if C_Parametros.State = dsBrowse then
    C_Parametros.Edit;
  C_ParametrosValorList.asstring := DlgFonte.Font.Name+';'+IntToStr(DlgFonte.Font.Size);
end;

procedure TDlgConfigurador.FormsComponentBeforeClearParams(
  Sender: TObject);
var i: integer;
    sDominioItem: string;
    sTabela,sWhere,sKeyField,sResultField: string;
begin
  inherited;
  cmbCategoria.text := '1';

  bCarregando := true;

  C_Parametros.Close;
  C_Parametros.Filtered := false;
  C_Parametros.Open;

  C_Parametros.first;
  bCarregando := true;
  while not C_Parametros.eof do begin
    sDominio := C_ParametrosDominio.value;
    C_Parametros.edit;
    C_ParametrosValorList.value := C_ParametrosValor.value;
    if (C_ParametrosDominio.value = 'Campo D') and (C_ParametrosValor.value <> '') then begin
      C_ParametrosValorData.value := DMProjeto.ConverteDataParametro(C_ParametrosValor.value);
      C_Parametros.post;
    end
    else if (pos('/',C_ParametrosDominio.value) > 0) and (C_ParametrosDominio.value <> 'S/N') and (C_ParametrosValor.value <> '') then begin
      C_ParametrosValorList.value := C_ParametrosValor.value;
      if pos(':',C_ParametrosDominio.value) > 0 then begin
        for i := 1 to ContaStrings(C_ParametrosDominio.value,'/') do begin
          sDominioItem := SeparaStrings(C_ParametrosDominio.value,'/',i);
          if SeparaStrings(sDominioItem,':',1) = C_ParametrosValor.value then begin
            C_ParametrosValorList.value := SeparaStrings(sDominioItem,':',2);
            break;
          end;
        end;
      end
    end
    else if (pos('#',C_ParametrosDominio.value) > 0) and (C_ParametrosValor.value <> '') then begin
      C_Lookups.close;
      sWhere := '';
      sKeyField  := Esquerda(sDominio,pos('#',sDominio)-1);
      sResultField := copy(sDominio,pos('#',sDominio)+1,50);
      sResultField := copy(sResultField,1,pos(' de ',sResultField)-1);
      if pos(':',sDominio) > 0 then begin
        sTabela := copy(sDominio, pos(' de ',sDominio)+4,50);
        sTabela := copy(sTabela, 1,pos(':',sTabela)-1);
        sWhere := ' Where '+copy(sDominio, pos(':',sDominio)+1,50);
      end
      else
        sTabela := copy(sDominio, pos(' de ',sDominio)+4,30);

      if pos(copy(C_ParametrosValor.value,1,1),'0123456789') > 0 then begin
        if sWhere <> '' then
          Q_Lookups.SQL.Text := 'Select * from '+sTabela+sWhere+' and '+sKeyField+' = '+C_ParametrosValor.value
        else
          Q_Lookups.SQL.Text := 'Select * from '+sTabela+' where '+sKeyField+' = '+C_ParametrosValor.value;
      end
      else begin
        if sWhere <> '' then
          Q_Lookups.SQL.Text := 'Select * from '+sTabela+sWhere+' and '+sKeyField+' = '''+C_ParametrosValor.value+''''
        else
          Q_Lookups.SQL.Text := 'Select * from '+sTabela+sWhere+' where '+sKeyField+' = '''+C_ParametrosValor.value+'''';
      end;
      Q_Lookups.open;
      C_ParametrosValorList.value := Q_Lookups.fieldbyname(sResultField).asstring;
      Q_Lookups.close;
      C_Parametros.post;
    end;
    C_Parametros.next;
  end;

{  while not C_Parametros.eof do begin
    if (C_ParametrosDominio.value = 'Campo D') and (C_ParametrosValor.value <> '') then begin
      C_Parametros.edit;
      C_ParametrosValorData.value := DMProjeto.ConverteDataParametro(C_ParametrosValor.value);
      C_Parametros.post;
    end;
    C_Parametros.next;
  end;}

  C_Parametros.Filtered := false;
  C_Parametros.Filter := 'controleinterno = ''N'' and categoria = '''+cmbCategoria.Descriptions[cmbCategoria.Values.IndexOf(cmbCategoria.Text)]+'''';
  C_Parametros.Filtered := true;
  C_Parametros.first;

  C_Custos.open;
  bCarregando := false;
end;

procedure TDlgConfigurador.cmbCategoriaChange(Sender: TObject);
begin
  inherited;
  if bCarregando then
    exit;
  if cmbCategoria.Text <> '' then begin
    C_Parametros.Filtered := false;
    C_Parametros.Filter := 'controleinterno = ''N'' and categoria = '''+cmbCategoria.Descriptions[cmbCategoria.Values.IndexOf(cmbCategoria.Text)]+'''';
    C_Parametros.Filtered := true;
  end
  else if C_Parametros.Filtered then
    C_Parametros.Filtered := false;
end;

procedure TDlgConfigurador.dfTextoChange(Sender: TObject);
begin
  inherited;
  if bCarregando then
    exit;
  cmbCategoria.Text := '';
  C_Parametros.Locate('Label',dfTexto.text,[loCaseInsensitive,loPartialKey]);
end;

procedure TDlgConfigurador.pcPrincipalChange(Sender: TObject);
begin
  inherited;
  if (pcPrincipal.ActivePage <> tsIntroducao) and (pcPrincipal.ActivePage <> tsParametros) then begin
    pnGrid.parent       := pcPrincipal.ActivePage;
    lblExplic.parent    := pcPrincipal.ActivePage;
    dbMemoExplic.parent := pcPrincipal.ActivePage;
    spOpcoes.parent := pcPrincipal.ActivePage;
    lblOpcoes.parent := pcPrincipal.ActivePage;
    spLinha.parent := pcPrincipal.ActivePage;
    DBParametros.parent := pnGrid;
    DBParametros.Align := alClient;
  end;

  if pcPrincipal.ActivePage = tsVendas then begin
    C_Parametros.Filtered := false;
    C_Parametros.Filter := 'controleinterno = ''N'' and categoria = ''Vendas''';
    C_Parametros.Filtered := true;
    C_Parametros.first;
  end
  else if pcPrincipal.ActivePage = tsCompras then begin
    C_Parametros.Filtered := false;
    C_Parametros.Filter := 'controleinterno = ''N'' and categoria = ''Compras''';
    C_Parametros.Filtered := true;
    C_Parametros.first;
  end
  else if pcPrincipal.ActivePage = tsClientes then begin
    C_Parametros.Filtered := false;
    C_Parametros.Filter := 'controleinterno = ''N'' and categoria = ''Clientes''';
    C_Parametros.Filtered := true;
    C_Parametros.first;
  end
  else if pcPrincipal.ActivePage = tsFornecedores then begin
    C_Parametros.Filtered := false;
    C_Parametros.Filter := 'controleinterno = ''N'' and categoria = ''Fornecedores''';
    C_Parametros.Filtered := true;
    C_Parametros.first;
  end
  else if pcPrincipal.ActivePage = tsFuncionarios then begin
    C_Parametros.Filtered := false;
    C_Parametros.Filter := 'controleinterno = ''N'' and categoria = ''Funcionarios''';
    C_Parametros.Filtered := true;
    C_Parametros.first;
  end
  else if pcPrincipal.ActivePage = tsRelatorios then begin
    C_Parametros.Filtered := false;
    C_Parametros.Filter := 'controleinterno = ''N'' and categoria = ''Impressão''';
    C_Parametros.Filtered := true;
    C_Parametros.first;
  end
  else if pcPrincipal.ActivePage = tsFinanceiro then begin
    C_Parametros.Filtered := false;
    C_Parametros.Filter := 'controleinterno = ''N'' and categoria = ''Financeiro''';
    C_Parametros.Filtered := true;
    C_Parametros.first;
  end
  else if pcPrincipal.ActivePage = tsItens then begin
    C_Parametros.Filtered := false;
    C_Parametros.Filter := 'controleinterno = ''N'' and categoria = ''Itens''';
    C_Parametros.Filtered := true;
    C_Parametros.first;
  end
  else if pcPrincipal.ActivePage = tsGeral then begin
    C_Parametros.Filtered := false;
    C_Parametros.Filter := 'controleinterno = ''N'' and categoria = ''Geral''';
    C_Parametros.Filtered := true;
    C_Parametros.first;
  end
  else if pcPrincipal.ActivePage = tsParametros then begin
    DBParametros.parent := pcPrincipal.ActivePage;
    DBParametros.Align := alTop;
    C_Parametros.Filtered := false;
    C_Parametros.Filter := 'controleinterno = ''N'' and categoria = '''+cmbCategoria.Descriptions[cmbCategoria.Values.IndexOf(cmbCategoria.Text)]+'''';
    C_Parametros.Filtered := true;
    C_Parametros.first;
  end;

  DBParametros.GotoLast(false);
  DBParametros.GotoFirst;

  try
    if tPrincipal.Prepared then
      tPrincipal.Execute;
  finally
    if tPrincipal.Prepared then
      tPrincipal.unPrepare;
  end;

end;

procedure TDlgConfigurador.TS_Label8Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmTiposMovimento',Self,true);
end;

procedure TDlgConfigurador.TS_Label5Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([null, 'S']);
	DMProjeto.CriarForm('FrmPlanos_Pagamento',self,true);
end;

procedure TDlgConfigurador.TS_Label6Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmHistoricos',self,true);
end;

procedure TDlgConfigurador.TS_Label16Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmUnidades',Self,true);
end;

procedure TDlgConfigurador.TS_Label14Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmFabricantes',Self,true);
end;

procedure TDlgConfigurador.TS_Label19Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmGrupos',Self,true);
end;

procedure TDlgConfigurador.TS_Label15Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmTabelasPreco',Self,true);
end;

procedure TDlgConfigurador.TS_Label17Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmFormasPagamento',Self,true);
end;

procedure TDlgConfigurador.TS_Label18Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmItens',Self,true);
end;

procedure TDlgConfigurador.TS_Label12Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([-1]);
	DMProjeto.CriarForm('FrmEmpresa',self,true);
end;

procedure TDlgConfigurador.TS_Label9Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmUsuarios',Self,true);
end;

procedure TDlgConfigurador.TS_Label11Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmCadPerfis',self,true);
end;

procedure TDlgConfigurador.TS_Label13Click(Sender: TObject);
begin
  inherited;
  frmPerfilUsuario := TfrmPerfilUsuario.create(self,Menu);
  frmPerfilUsuario.ShowModal;
  frmPerfilUsuario.Release;
end;

procedure TDlgConfigurador.TS_Label23Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('DlgContasPadrao',self,true);
end;

procedure TDlgConfigurador.TS_Label22Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmContas',self,true);
end;

procedure TDlgConfigurador.TS_Label24Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('DlgHistoricosPadroes',self,true);
end;

procedure TDlgConfigurador.TS_Label21Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmBancos',Self,true);
end;

procedure TDlgConfigurador.TS_Label20Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmContas',Self,true);
end;

procedure TDlgConfigurador.TS_Label10Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmTiposMovEntrada',Self,true);
end;

procedure TDlgConfigurador.TS_Label7Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([null, 'E']);
	DMProjeto.CriarForm('FrmPlanos_Pagamento',self,true);
end;

procedure TDlgConfigurador.TS_Label29Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmClientes',Self,true);
end;

procedure TDlgConfigurador.TS_Label26Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([null,1]); // tipofavorecido
	DMProjeto.CriarForm('FrmTiposAtividade',self,true);
end;

procedure TDlgConfigurador.TS_Label27Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmZonas',Self,true);
end;

procedure TDlgConfigurador.TS_Label25Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmGruposCliente',Self,true);
end;

procedure TDlgConfigurador.TS_Label28Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmGrauRelacionamentos',Self,true);
end;

procedure TDlgConfigurador.TS_Label30Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmQualidades',Self,true);
end;

procedure TDlgConfigurador.TS_Label31Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([null,2]); // tipofavorecido
	DMProjeto.CriarForm('FrmTiposAtividade',self,true);
end;

procedure TDlgConfigurador.TS_Label36Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmUsuarios',Self,true);
end;

procedure TDlgConfigurador.TS_Label33Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmCargos',Self,true);
end;

procedure TDlgConfigurador.TS_Label34Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmFuncionarios',Self,true);
end;

procedure TDlgConfigurador.TS_Label32Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmFornecedores',Self,true);
end;

procedure TDlgConfigurador.TS_Label35Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmPayrollItems',Self,true);
end;

procedure TDlgConfigurador.TS_Label37Click(Sender: TObject);
begin
  inherited;
	DMProjeto.CriarForm('DlgCabecalhoRelatorios',self,true);
end;

procedure TDlgConfigurador.TS_Label38Click(Sender: TObject);
begin
  inherited;
	DMProjeto.CriarForm('DlgCabecalhoRelatorios',self,true);
end;

procedure TDlgConfigurador.dfUltimoCodigoItemButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if TTS_ButtonEdit(Sender).text <> '' then
    DMProjeto.SetLastID('IDCODIGOITEM',StrToInt(TTS_ButtonEdit(Sender).text));
end;

procedure TDlgConfigurador.dfUltimoCodigoClienteButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  if TTS_ButtonEdit(Sender).text <> '' then
    DMProjeto.SetLastID('IDCODIGOCLIENTE',StrToInt(TTS_ButtonEdit(Sender).text));
end;

procedure TDlgConfigurador.dfUltimoCodigoFornButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if TTS_ButtonEdit(Sender).text <> '' then
    DMProjeto.SetLastID('IDCODIGOFORNECEDOR',StrToInt(TTS_ButtonEdit(Sender).text));
end;

procedure TDlgConfigurador.dfUltimoCodigoFuncButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if TTS_ButtonEdit(Sender).text <> '' then
    DMProjeto.SetLastID('IDCODIGOFUNCIONARIO',StrToInt(TTS_ButtonEdit(Sender).text));
end;

procedure TDlgConfigurador.dfUltimoCodigoContaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if TTS_ButtonEdit(Sender).text <> '' then
    DMProjeto.SetLastID('IDCODIGOCONTA',StrToInt(TTS_ButtonEdit(Sender).text));
end;

procedure TDlgConfigurador.C_CustosNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_CustosDespesasFixas.value := 0;
  C_CustosMaiorComissao.value := 0;
  C_CustosLucroPadrao.value := 0;
end;

procedure TDlgConfigurador.TS_Label52Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmTaxAgencias',Self,true);
end;

procedure TDlgConfigurador.TS_Label53Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmTaxs',Self,true);
end;

procedure TDlgConfigurador.TS_Label51Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([-1,DMProjeto.Maquina]);
  DMProjeto.CriarForm('FrmPDVs',Self,true);
  DMProjeto.nPDV := DMProjeto.GetPDVMaq;
end;

procedure TDlgConfigurador.btComando2Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('DlgExportacaoDados',self,true);
end;

procedure TDlgConfigurador.btComando1Click(Sender: TObject);
var sArquivo,sRegistro,sParametro: string;
    ArqTexto: TextFile;
    nLinhas: integer;
    sCodigo,sDescricao: string;
    nDespesas, nMaiorComissao, nLucroPadrao, nEncargos: double;
begin
  inherited;
  if DlgMsg.ShowMsg(6003) <> 100 then
    exit;

  if OpenDialog.Execute then begin
    try
      sArquivo := OpenDialog.filename;
      AssignFile(ArqTexto,sArquivo);
      Reset(ArqTexto);
      Readln(ArqTexto,sRegistro);
      C_Parametros.DisableControls;
      C_Parametros.filtered := false;
      C_Parametros.first;
      while (sRegistro <> '') do begin
        if copy(sRegistro,1,10) = '**********' then begin
          nDespesas := 0;
          nMaiorComissao := 0;
          nLucroPadrao := 0;
          nEncargos := 0;
          //
          Readln(ArqTexto,sRegistro);
          if SeparaStrings(sRegistro,'|',2) <> '' then
            nDespesas := StrToFloat(SeparaStrings(sRegistro,'|',2));
          Readln(ArqTexto,sRegistro);
          if SeparaStrings(sRegistro,'|',2) <> '' then
            nMaiorComissao := StrToFloat(SeparaStrings(sRegistro,'|',2));
          Readln(ArqTexto,sRegistro);
          if SeparaStrings(sRegistro,'|',2) <> '' then
            nLucroPadrao := StrToFloat(SeparaStrings(sRegistro,'|',2));
          Readln(ArqTexto,sRegistro);
          if SeparaStrings(sRegistro,'|',2) <> '' then
            nEncargos := StrToFloat(SeparaStrings(sRegistro,'|',2));
          Readln(ArqTexto,sRegistro);

          Q_Custos.open;
          Q_Custos.last;
          if Q_Custos.recordcount > 0 then
            Q_Aux.SQL.text := 'update fatorescusto set despesasfixas = :despesa, maiorcomissao = :comissao,'+
            'lucropadrao = :lucro, encargoscartoes = :encargos'
          else
            Q_Aux.SQL.text := 'insert into fatorescusto(despesasfixas, maiorcomissao,'+
            'lucropadrao, encargoscartoes) values (:despesa, :comissao, :lucro, :encargos)';

          Q_Aux.params[0].asfloat := nDespesas;
          Q_Aux.params[1].asfloat := nMaiorComissao;
          Q_Aux.params[2].asfloat := nLucroPadrao;
          Q_Aux.params[3].asfloat := nEncargos;
          Q_Aux.ExecSQL;

          DMProjeto.SincronizarPrecosVenda('','','','');

          break;
        end
        else begin
          sParametro := SeparaStrings(sRegistro,'|',1);

          if not C_Parametros.locate('parametro',sParametro,[loCaseInsensitive]) then begin
            C_Parametros.append;
            C_ParametrosParametro.value       := sParametro;
          end
          else
            C_Parametros.edit;

          C_ParametrosValor.value           := SeparaStrings(sRegistro,'|',2);
          C_ParametrosCategoria.value       := SeparaStrings(sRegistro,'|',3);
          C_ParametrosDominio.value         := SeparaStrings(sRegistro,'|',4);
          C_ParametrosControleInterno.value := SeparaStrings(sRegistro,'|',5);
          C_ParametrosLabel.value           := SeparaStrings(sRegistro,'|',6);
          C_ParametrosTipo.value            := SeparaStrings(sRegistro,'|',7);
          C_ParametrosForms.value           := SeparaStrings(sRegistro,'|',8);
          C_ParametrosCategoria1.value      := SeparaStrings(sRegistro,'|',9);
          C_ParametrosCategoria2.value      := SeparaStrings(sRegistro,'|',10);
          C_ParametrosCategoria3.value      := SeparaStrings(sRegistro,'|',11);
          C_ParametrosDominio1.value        := SeparaStrings(sRegistro,'|',12);
          C_ParametrosDominio2.value        := SeparaStrings(sRegistro,'|',13);
          C_ParametrosDominio3.value        := SeparaStrings(sRegistro,'|',14);
          C_ParametrosLabel1.value          := SeparaStrings(sRegistro,'|',15);
          C_ParametrosLabel2.value          := SeparaStrings(sRegistro,'|',16);
          C_ParametrosLabel3.value          := SeparaStrings(sRegistro,'|',17);
          C_ParametrosDescricao1.value      := SeparaStrings(sRegistro,'|',18);
          C_ParametrosDescricao2.value      := SeparaStrings(sRegistro,'|',19);
          C_ParametrosDescricao3.value      := SeparaStrings(sRegistro,'|',20);
          C_Parametros.post;

          Readln(ArqTexto,sRegistro);
        end;
      end;
    except
      on e:Exception do begin
        DlgMsg.ShowMsg(4002,[e.message]);
      end;
    end;
    CloseFile(ArqTexto);
  end;
  if C_Parametros.changecount > 0 then
    C_Parametros.ApplyUpdates(0);
  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  C_Custos.close;
  C_Custos.open;

  C_Parametros.EnableControls;
  C_Parametros.close;
  C_Parametros.open;
  pcPrincipalChange(self);
end;

procedure TDlgConfigurador.pcPrincipalChanging(Sender: TObject;
  var AllowChange: Boolean);
var
  R: TRect;
begin
  inherited;

  R.TopLeft :=
    ControlScreenToClient( pcPrincipal.Parent,
                           ControlClientToScreen( pcPrincipal.ActivePage,
                                                  pcPrincipal.ActivePage.ClientRect.TopLeft));
  R.BottomRight :=
    ControlScreenToClient( pcPrincipal.Parent,
                           ControlClientToScreen(pcPrincipal.ActivePage,
                                                 pcPrincipal.ActivePage.ClientRect.BottomRight));
  tPrincipal.Prepare( pcPrincipal.Parent, r );
end;

procedure TDlgConfigurador.TS_Label44Click(Sender: TObject);
begin
  inherited;
	DMProjeto.CriarForm('FrmFatoresCustos',self,true);
end;

procedure TDlgConfigurador.DBParametrosChangeNode(Sender: TObject; OldNode,
  Node: TdxTreeListNode);
var sDominioItem,sTabela,sWhere,sKeyField,sResultField: string;
    i: integer;
begin
  inherited;
//  sDominio := C_ParametrosDominio.value;
  if Node.Values[2] = null then
    sDominio := ''
  else
    sDominio := Node.Values[2];

  if sDominio = '<Impressoras>' then
    dxParametrosList.Items.Assign(Printer.Printers)
  else if (pos('/',sDominio) > 0) and (sDominio <> 'S/N') then begin
    dxParametrosListLookup.Descriptions.Clear;
    dxParametrosListLookup.Values.Clear;
    if pos(':',sDominio) > 0 then begin
      for i := 1 to ContaStrings(sDominio,'/') do begin
        sDominioItem := SeparaStrings(sDominio,'/',i);
        dxParametrosListLookup.Descriptions.Add(SeparaStrings(sDominioItem,':',2));
        dxParametrosListLookup.Values.Add(SeparaStrings(sDominioItem,':',1));
      end;
    end
    else begin
      sDominio := replace(sDominio,'/',#13);
      dxParametrosList.Items.SetText(PChar(sDominio));
    end;
  end
  else if (pos('#',sDominio) > 0) then begin
{    dxParametrosListLookup.Descriptions.Clear;
    dxParametrosListLookup.Values.Clear;
    C_Lookups.close;
    sKeyField  := Esquerda(sDominio,pos('#',sDominio)-1);
    sResultField := copy(sDominio,pos('#',sDominio)+1,50);
    sResultField := copy(sResultField,1,pos(' de ',sResultField)-1);
    if pos(':',sDominio) > 0 then begin
      sTabela := copy(sDominio, pos(' de ',sDominio)+4,50);
      sTabela := copy(sTabela, 1,pos(':',sTabela)-1);
      sWhere := ' Where '+copy(sDominio, pos(':',sDominio)+1,50)+' order by '+sResultField;
      end
    else
      sTabela := copy(sDominio, pos(' de ',sDominio)+4,30);

    Q_Lookups.SQL.Text := 'Select * from '+sTabela+sWhere;

    C_Lookups.Open;
    while not C_Lookups.eof do begin
      dxParametrosListLookup.Descriptions.Add(C_Lookups.FieldByName(sResultField).asstring);
      dxParametrosListLookup.Values.Add(C_Lookups.FieldByName(sKeyField).asstring);
      C_Lookups.next;
    end;
    C_Lookups.close;}
  end;

end;

procedure TDlgConfigurador.C_ParametrosValorListChange(Sender: TField);
begin
  inherited;
  if not bCarregando then
    C_ParametrosValor.value := C_ParametrosValorList.value;
end;

procedure TDlgConfigurador.DBParametrosEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
var sDominioItem,sTabela,sWhere,sKeyField,sResultField: string;
    i: integer;
begin
  inherited;
  if Node.Values[2] = null then
    sDominio := ''
  else
    sDominio := Node.Values[2];

  if pos('#',sDominio) > 0 then begin
    dxParametrosListLookup.Descriptions.Clear;
    dxParametrosListLookup.Values.Clear;
    C_Lookups.close;
    sKeyField  := Esquerda(sDominio,pos('#',sDominio)-1);
    sResultField := copy(sDominio,pos('#',sDominio)+1,50);
    sResultField := copy(sResultField,1,pos(' de ',sResultField)-1);
    if pos(':',sDominio) > 0 then begin
      sTabela := copy(sDominio, pos(' de ',sDominio)+4,50);
      sTabela := copy(sTabela, 1,pos(':',sTabela)-1);
      sWhere := ' Where '+copy(sDominio, pos(':',sDominio)+1,50)+' order by '+sResultField;
      end
    else
      sTabela := copy(sDominio, pos(' de ',sDominio)+4,30);

    Q_Lookups.SQL.Text := 'Select * from '+sTabela+sWhere;

    C_Lookups.Open;
    while not C_Lookups.eof do begin
      dxParametrosListLookup.Descriptions.Add(C_Lookups.FieldByName(sResultField).asstring);
      dxParametrosListLookup.Values.Add(C_Lookups.FieldByName(sKeyField).asstring);
      C_Lookups.next;
    end;
    C_Lookups.close;
  end
  else if pos('%',sDominio) > 0 then begin
    C_Opcoes.close;
    sKeyField  := Esquerda(sDominio,pos('%',sDominio)-1);
    sResultField := copy(sDominio,pos('%',sDominio)+1,50);
    sResultField := copy(sResultField,1,pos(' de ',sResultField)-1);
    if pos(':',sDominio) > 0 then begin
      sTabela := copy(sDominio, pos(' de ',sDominio)+4,50);
      sTabela := copy(sTabela, 1,pos(':',sTabela)-1);
      sWhere := ' Where '+copy(sDominio, pos(':',sDominio)+1,50)+' order by '+sResultField;
      end
    else
      sTabela := copy(sDominio, pos(' de ',sDominio)+4,30);

    Q_Opcoes.SQL.Text := 'Select '+sKeyField+' as chave,'+sResultField+' as descricao from '+sTabela+sWhere;

    dbgFuncoes.KeyField := 'chave';
    dbgFuncoesDescricao.FieldName := 'descricao';
    C_Opcoes.Open;
  end;

end;

procedure TDlgConfigurador.DBParametrosPopupPopup(Sender: TObject;
  const EditText: String);
begin
  inherited;
  dbgFuncoes.SetSelecionados(C_ParametrosValorList.value);
end;

procedure TDlgConfigurador.DBParametrosPopupCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  if C_ParametrosValorList.value <> dbgFuncoes.Selecionados then begin
    C_Parametros.edit;
    C_ParametrosValorList.value := dbgFuncoes.Selecionados;
    C_Parametros.post;
  end;
  DBParametrosPopup.TreeList.CloseEditor;
end;

procedure TDlgConfigurador.dbgFuncoesDblClick(Sender: TObject);
begin
  inherited;
  (GetParentForm(dbgFuncoes) as TdxPopupEditForm).ClosePopup(True);
end;

procedure TDlgConfigurador.dbgFuncoesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ((Key in [VK_UP, VK_DOWN]) and (ssAlt in Shift)) or
      ((Key = VK_F4) and not (ssAlt in Shift)) or (Key = VK_ESCAPE) then
    (GetParentForm(dbgFuncoes) as TdxPopupEditForm).ClosePopup(False);
  if Key = VK_RETURN then dbgFuncoesDblClick(nil);
end;

end.

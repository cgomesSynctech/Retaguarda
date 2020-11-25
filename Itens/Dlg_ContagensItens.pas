unit Dlg_ContagensItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, IBCustomDataSet, IBUpdateSQL, Db, DBClient,
  Provider, IBQuery, DBCtrls, TS_DBLookupComboBox, StdCtrls, TS_ListBox,
  TS_Label, TS_LastDataObject, 
  DlgMsg, Menus, TS_PopupMenu, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  TS_BitBtn, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  FormsComponent, TS_Image, dxfLabel, TS_MaxPanel, TS_LookupComboBox,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls, TS_EffectsPanel, ppDB,
  ppDBPipe, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, Variants, BTOdeum, Placemnt;

type
  TDlgContagensItens = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    lblItensContagem: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label2: TTS_Label;
    lbContagens: TTS_ListBox;
    cmbUsuario: TTS_DBLookupComboBox;
    C_FichasDS: TDataSource;
    Q_Fichas: TIBQuery;
    Q_FichasProvider: TDataSetProvider;
    C_Fichas: TClientDataSet;
    C_FichasBALANCOFICHA: TIntegerField;
    C_FichasDATA: TDateField;
    C_FichasUSUARIO: TIntegerField;
    C_FichasSTATUS: TIntegerField;
    Q_ContagensItens: TIBQuery;
    C_ContagensItens: TClientDataSet;
    C_ContagensItensITEM: TIntegerField;
    C_ContagensItensCODIGO: TStringField;
    C_ContagensItensDESCRICAO: TStringField;
    C_ContagensItensUNIDADE: TStringField;
    C_ContagensItensBALANCOFICHA: TIntegerField;
    C_ContagensItensCONTAGEM: TIntegerField;
    C_ContagensItensBALANCOFICHAITEM: TIntegerField;
    C_ContagensItensUSUARIO: TIntegerField;
    Q_ContagensProvider: TDataSetProvider;
    C_ContagensItensDS: TDataSource;
    Q_Aux: TIBQuery;
    U_ContagensItens: TIBUpdateSQL;
    Q_Usuarios: TIBQuery;
    Q_UsuariosProvider: TDataSetProvider;
    C_Usuarios: TClientDataSet;
    C_UsuariosDS: TDataSource;
    ppmItens: TTS_PopupMenu;
    LocalizarpeloItem1: TMenuItem;
    LocalizarpelaDescrio1: TMenuItem;
    U_Fichas: TIBUpdateSQL;
    cmbFicha: TTS_LookupComboBox;
    dbgItens: TTS_QDBGrid;
    dbgItensITEM: TdxDBGridMaskColumn;
    dbgItensCODIGO: TdxDBGridMaskColumn;
    dbgItensDESCRICAO: TdxDBGridMaskColumn;
    dbgItensUNIDADE: TdxDBGridMaskColumn;
    dbgItensQUANTIDADE: TdxDBGridMaskColumn;
    dbgItensBALANCOFICHA: TdxDBGridMaskColumn;
    dbgItensCONTAGEM: TdxDBGridMaskColumn;
    dbgItensBALANCOFICHAITEM: TdxDBGridMaskColumn;
    dbgItensUSUARIO: TdxDBGridMaskColumn;
    C_ContagensItensREFERENCIA: TStringField;
    dbgItensREFERENCIA: TdxDBGridColumn;
    ppFichaBalanco: TppReport;
    ppTitleBand1: TppTitleBand;
    ppCabecalho: TppRegion;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppTitulo: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBFichaBalanco: TppDBPipeline;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppDBQtde: TppDBText;
    TS_SpeedButton1: TTS_SpeedButton;
    ppDataFicha: TppLabel;
    ppEstoquista: TppLabel;
    C_FichasNOME: TStringField;
    ppmImprimir: TTS_PopupMenu;
    ContagemDigitada1: TMenuItem;
    FichadeBalano1: TMenuItem;
    C_FichasDESCRICAOFICHA: TStringField;
    ppDescricaoFicha: TppLabel;
    ppLinha: TppLine;
    TS_SpeedButton2: TTS_SpeedButton;
    Q_FichaBalanco: TIBQuery;
    Q_FichaBalancoBALANCOFICHA: TIntegerField;
    Q_FichaBalancoDATA: TDateField;
    Q_FichaBalancoUSUARIO: TIntegerField;
    Q_FichaBalancoSTATUS: TIntegerField;
    Q_FichaBalancoOPENBALANCE: TIBStringField;
    Q_FichaBalancoCODIGO: TIBStringField;
    Q_FichaBalancoDESCRICAO: TIBStringField;
    Q_FichaBalancoUNIDADE: TIBStringField;
    Q_FichaBalancoNOME: TIBStringField;
    Q_FichaBalancoREFERENCIA: TIBStringField;
    Q_FichaBalancoDESCRICAOFICHA: TIBStringField;
    Q_FichaBalancoDS: TDataSource;
    Q_FichaBalancoITEM: TIntegerField;
    Q_FichaBalancoCONTAGEM: TIntegerField;
    Q_FichaBalancoBALANCOFICHAITEM: TIntegerField;
    C_ContagensItensQUANTIDADE: TFloatField;
    Q_FichaBalancoQUANTIDADE: TFloatField;
    sbColetor: TTS_SpeedButton;
    opColetor: TOpenDialog;
    procedure btDigitacaoClick(Sender: TObject);
    procedure C_ContagensItensNewRecord(DataSet: TDataSet);
    procedure C_FichasAfterScroll(DataSet: TDataSet);
    procedure lbContagensClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure TS_SpeedButton3Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbUsuarioChange(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure cmbFichaChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure dbgItensDblClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure ContagemDigitada1Click(Sender: TObject);
    procedure TS_SpeedButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lbContagensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure sbColetorClick(Sender: TObject);

  private
    bGravando: boolean;
    Function receberContagem(sPath: String): Boolean;
  public
    { Public declarations }
  end;

var
  DlgContagensItens: TDlgContagensItens;

implementation
uses DM_Projeto, funcoes, Dlg_DigitacaoLeitor;

{$R *.DFM}

Function TDlgContagensItens.receberContagem(sPath: String): Boolean;
Var sLinhas: TStringList;
    i,nTipoDelimitador:integer;
    sCodigo:String;
    nQtd: Real;
Begin
   Try
     //C_ContagensItens.DisableControls;
     result:=False;
     sLinhas := TStringList.Create;
     sLinhas.LoadFromFile(sPath);
     For i:=0 to sLinhas.Count -1 do Begin
        if Pos('|',sLinhas[i]) > 0 Then Begin
          sCodigo:= Trim(Copy(sLinhas[i],1,Pos('|',sLinhas[i])  - 1 ));
          nQtd := StrToInt(Copy(sLinhas[i],Pos('|',sLinhas[i])  + 1,Length(sLinhas[i])));
        End else begin
          sCodigo:= Trim(Copy(sLinhas[i],1,13));
          nQtd := StrToInt(Copy(sLinhas[i],14,Length(sLinhas[i])));
        End;
        with C_ContagensItens do Begin
          Open;
          if Locate('CODIGO',sCodigo,[]) Then Begin
             edit;
             FieldByName('Quantidade').AsFloat := FieldByName('Quantidade').AsFloat + nQtd;
          End;
        End;

     End;
     //C_ContagensItens.EnableControls;
     C_ContagensItens.First;
     result := true;
   Except
     on e:Exception do
       Application.MessageBox(pChar(e.Message),'Aviso',mb_ok);
   End;
End;

procedure TDlgContagensItens.btDigitacaoClick(Sender: TObject);
begin
  inherited;
  if (C_FichasBalancoFicha.value = 0) or (lbContagens.ItemIndex = -1) then begin
    DlgMsg.ShowMsg(1011);
    exit;
  end;
{  DlgDigitacaoItens := TDlgDigitacaoItens.Create(self,C_ContagensItens);
  DlgDigitacaoItens.free;}
end;

procedure TDlgContagensItens.C_ContagensItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_ContagensItensContagem.value := strtoint(copy(lbContagens.items[lbContagens.itemindex],1,1));//lbContagens.ItemIndex + 1;
  if cmbUsuario.Lookupkeyvalue <> null then
    C_ContagensItensUsuario.value := cmbUsuario.Lookupkeyvalue;
end;

procedure TDlgContagensItens.C_FichasAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if bGravando then
    exit;
  if (cmbFicha.LookupKeyValue <> null) and (cmbFicha.LookupKeyValue > 0) then begin
    Screen.Cursor := crHourGlass;
    if (C_FichasBalancoFicha.value <> C_ContagensItensBalancoFicha.value) then begin
      if C_ContagensItens.ChangeCount > 0 then
        btGravarClick(self);

      C_ContagensItens.close;
      C_ContagensItens.FetchParams;
      C_ContagensItens.Params[0].asinteger := C_FichasBalancoFicha.value;
      C_ContagensItens.open;

      C_ContagensItens.Filtered := false;
      C_ContagensItens.Filter := 'contagem = 0';
//      dbgItens.DataSetFilter := C_ContagensItens.Filter;
      C_ContagensItens.Filtered := true;
//      dbgItens.OrdenaColuna(1);
    end;

    lbContagens.Items.Clear;

    Q_Aux.close;
    Q_Aux.SQL.text := 'select distinct contagem from balancocontagemitens bci, balancofichasitens bfi '+
    'where bci.balancofichaitem = bfi.balancofichaitem and bfi.balancoficha = :balancoficha order by contagem';
    Q_Aux.ParamByName('balancoficha').asinteger := C_FichasBalancoFicha.value;
    Q_Aux.open;
    while not Q_Aux.eof do begin
      lbContagens.Items.Add(Q_Aux.FieldByName('contagem').AsString+'ª Contagem...');
      Q_Aux.next;
    end;

    if lbContagens.Items.count > 0 then begin
      lbContagens.ItemIndex := 0;
      lbContagensClick(self);
    end;
    Screen.Cursor := crDefault;
  end
  else begin
    if C_ContagensItens.ChangeCount > 0 then
      btGravarClick(self);

    C_ContagensItens.close;
    lbContagens.Items.Clear;
  end;
end;

procedure TDlgContagensItens.lbContagensClick(Sender: TObject);
begin
  inherited;
  lblItensContagem.caption := 'Itens da '+lbContagens.items[lbContagens.itemindex];
  if (cmbFicha.LookupKeyvalue <> null) and (cmbFicha.LookupKeyvalue > 0) and (C_FichasBalancoFicha.value <> C_ContagensItensBalancoFicha.value) then begin
    if C_ContagensItens.ChangeCount > 0 then
      btGravarClick(self);

    C_ContagensItens.close;
    C_ContagensItens.FetchParams;
    C_ContagensItens.Params[0].asinteger := C_FichasBalancoFicha.value;
    C_ContagensItens.open;
  end;
//    C_ContagensItens.Params[1].asinteger := lbContagens.ItemIndex + 1;
  if (cmbFicha.LookupKeyvalue <> null) and (cmbFicha.LookupKeyvalue > 0) then begin
    C_ContagensItens.Filtered := false;
    C_ContagensItens.Filter := 'contagem = '+copy(lbContagens.items[lbContagens.itemindex],1,1);
//    dbgItens.DataSetFilter := C_ContagensItens.Filter;
    C_ContagensItens.Filtered := true;
//    dbgItens.OrdenaColuna(1);
    if C_ContagensItensUsuario.value > 0 then begin
      C_Usuarios.locate('favorecido',C_ContagensItensUsuario.value,[]);
      cmbUsuario.Lookupkeyvalue := C_ContagensItensUsuario.value;
    end
    else
      cmbUsuario.Lookupkeyvalue := null;
  end;
end;

procedure TDlgContagensItens.btLimparClick(Sender: TObject);
var nContagem: integer;
begin
  inherited;
  if (cmbFicha.LookupKeyvalue <> null) and (cmbFicha.LookupKeyValue > 0) then begin
    if lbContagens.items.count > 0 then
      nContagem := strtoint(copy(lbContagens.items[lbContagens.items.count-1],1,1))+1  //lbContagens.Items.Count + 1;
    else
      nContagem := 1;


    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    Q_Aux.close;
    Q_Aux.SQL.text := 'insert into balancocontagemitens(balancofichaitem,contagem,quantidade) '+
    'select balancofichaitem, '+IntToStr(nContagem)+', 0 from balancofichasitens where balancoficha = :balancoficha';
//    Q_Aux.ParamByName('contagem').asinteger := nContagem;
    Q_Aux.ParamByName('balancoficha').asinteger := C_FichasBalancoFicha.value;
    Q_Aux.execsql;

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.Commit;

    lbContagens.Items.Add(IntToStr(nContagem)+'ª Contagem...');
    lbContagens.ItemIndex := lbContagens.Items.Count - 1;
    lbContagensClick(self);
    lbContagensClick(self);
  end
  else begin
    DlgMsg.ShowMsg(1011);
  end;
end;

procedure TDlgContagensItens.TS_SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if (cmbFicha.LookupKeyvalue = null) or not (cmbFicha.LookupKeyvalue > 0) or (lbContagens.ItemIndex = -1) then begin
    DlgMsg.ShowMsg(1011);
    exit;
  end;
  DlgDigitacaoLeitor := TDlgDigitacaoLeitor.Create(self,C_ContagensItens);
  DlgDigitacaoLeitor.free;
end;

procedure TDlgContagensItens.btGravarClick(Sender: TObject);
var sOldCaption: string;
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'S') then
    exit;

  if (cmbFicha.LookupKeyvalue = null) or not (cmbFicha.LookupKeyValue > 0) or (lbContagens.ItemIndex = -1) then begin
    DlgMsg.ShowMsg(1011);
    exit;
  end;

  Screen.Cursor := crHourGlass;
  bGravando := true;
  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

//  if C_ContagensItens.ChangeCount > 0 then   // Quando se atualiza apenas
                                               // a quantidade de itens nao acionava o
                                               // .ChangeCount (Marcos Antunes)
    C_ContagensItens.ApplyUpdates(0);

  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.Commit;

  bGravando := false;
  Screen.Cursor := crDefault;
//  close;
end;

procedure TDlgContagensItens.FormShow(Sender: TObject);
begin
  inherited;
  if (cmbFicha.LookupKeyValue = null) and (C_Fichas.recordcount > 0) then begin
    cmbFicha.LookupKeyValue := C_FichasBalancoFicha.value;
    C_Fichas.first;
    C_FichasAfterScroll(C_Fichas);
    if lbContagens.Items.Count = 0 then
      btLimparClick(self);
  end;
end;

procedure TDlgContagensItens.cmbUsuarioChange(Sender: TObject);
begin
  inherited;
  if C_ContagensItens.Active and (lbContagens.ItemIndex >= 0) then
    dbgItens.ApplyChangeToSelecteds('usuario',cmbUsuario.LookupKeyValue,'contagem = '+copy(lbContagens.items[lbContagens.itemindex],1,1));
end;

procedure TDlgContagensItens.btComando1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'CAN') then
    exit;

  if (cmbFicha.LookupKeyvalue = null) or not (cmbFicha.LookupKeyValue > 0) then begin
    DlgMsg.ShowMsg(1023);
    exit;
  end;
  bGravando := true;

  if DlgMsg.ShowMsg(1020) = 100 then begin
    Screen.Cursor := crHourGlass;
    C_Fichas.locate('balancoficha',cmbFicha.LookupKeyValue,[]);
    C_Fichas.edit;
    C_FichasStatus.value := 2;
    C_Fichas.post;

    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    if C_Fichas.ChangeCount > 0 then
      C_Fichas.ApplyUpdates(0);

    DMProjeto.Q_SQL.close;
    DMProjeto.Q_SQL.SQL.text := 'update itens set balanco = ''N'' where item in '+
    '(select item from balancofichasitens bfi where balancoficha = '+C_FichasBalancoFicha.AsString+')';
    DMProjeto.Q_SQL.execsql;

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.Commit;

{    C_Fichas.close;
    C_Fichas.open;
    cmbFicha.LookupKeyValue := null;}
    bGravando := false;
    Screen.Cursor := crDefault;
    close;
  end;
  bGravando := false;
end;

procedure TDlgContagensItens.cmbFichaChange(Sender: TObject);
begin
  inherited;
  if bGravando then
    exit;

  C_FichasAfterScroll(C_Fichas);
  if lbContagens.Items.Count = 0 then begin
    if DlgMsg.ShowMsg(3125) = 100 then
      btLimparClick(self);
  end;
end;

procedure TDlgContagensItens.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_Fichas.open;
  C_Usuarios.open;
  if DMProjeto.QtdParametrosForm > 0 then begin
    cmbFicha.LookupKeyValue := DMProjeto.GetParametrosForm(0);
    C_Fichas.locate('balancoficha',DMProjeto.GetParametrosForm(0),[]);
    C_FichasAfterScroll(C_Fichas);
    if lbContagens.Items.Count = 0 then
      btLimparClick(self);
  end;
end;

procedure TDlgContagensItens.dbgItensDblClick(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([C_ContagensItensItem.value]);
  DMProjeto.CriarForm('FrmItens', Self, true);
end;

procedure TDlgContagensItens.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  bGravando := true;
end;

procedure TDlgContagensItens.ContagemDigitada1Click(Sender: TObject);
var sOldCaption: string;
    nOrdenacao: integer;
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'IMP') then
    exit;

  if (cmbFicha.LookupKeyvalue = null) or not (cmbFicha.LookupKeyValue > 0) then begin
    DlgMsg.ShowMsg(1023);
    exit;
  end;

  if C_ContagensItens.state in [dsedit,dsinsert] then
    C_ContagensItens.post;
  if C_ContagensItens.ChangeCount > 0 then
    btGravarClick(self);

  Q_FichaBalanco.SQL.text := 'select i.item, i.codigo, i.descricao, i.unidade, bci.quantidade, i.referencia,'+
  'bfi.balancoficha, bci.contagem, bci.balancofichaitem, bci.usuario, f.nome, bf.* '+
  'from balancofichasitens bfi inner join balancofichas bf on bfi.balancoficha = bf.balancoficha '+
  'left join balancocontagemitens bci '+
  'on bfi.balancofichaitem = bci.balancofichaitem '+
  'left join itens i on bfi.item = i.item '+
  'left join Favorecidos f on bf.usuario = f.favorecido '+
  'where bfi.balancoficha = :balanco and bci.contagem = :contagem';
  nOrdenacao := DlgMsg.ShowMsg(4027);
  if nOrdenacao = 100 then
    Q_FichaBalanco.SQL.Add(' order by i.codigo')
  else if nOrdenacao = 200 then
    Q_FichaBalanco.SQL.Add(' order by i.descricao')
  else if nOrdenacao = 300 then
    Q_FichaBalanco.SQL.Add(' order by i.referencia');

  Q_FichaBalanco.params[0].asinteger := C_FichasBalancoFicha.value;
  Q_FichaBalanco.params[1].asinteger := strtoint(copy(lbContagens.items[lbContagens.itemindex],1,1));
  Q_FichaBalanco.open;

  if TMenuItem(sender).tag = 1 then begin
    ppLinha.visible := false;
    ppDBQtde.visible := true;
    ppTitulo.caption := 'Contagem da Ficha de Balanço de Nº';
  end
  else begin
    ppLinha.visible := true;
    ppDBQtde.visible := false;
    ppTitulo.caption := 'Ficha de Balanço de Nº';
  end;
  C_Fichas.locate('balancoficha',cmbFicha.LookupKeyValue,[]);
  sOldCaption := ppTitulo.caption;
  ppDataFicha.caption := DateToStr(C_FichasData.value);
  ppEstoquista.caption := cmbUsuario.text;
  ppDescricaoFicha.caption := C_FichasDescricaoFicha.value;
  ppTitulo.caption := copy(lbContagens.items[lbContagens.itemindex],1,1)+'º '+ppTitulo.caption+' '+IntToStr(cmbFicha.LookupKeyValue);
  DMProjeto.ImprimirCabecalho( ppCabecalho );
  ppFichaBalanco.print;
  ppTitulo.caption := sOldCaption;
end;

procedure TDlgContagensItens.TS_SpeedButton1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmImprimir.PopupFromCursorPos;
end;

procedure TDlgContagensItens.lbContagensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var nContagem: integer;
begin
  inherited;
  if key = vk_delete then begin
    nContagem := StrToInt(copy(lbContagens.items[lbContagens.itemindex],1,1)); // lbContagens.ItemIndex;
    if (nContagem >= 0) and (cmbFicha.LookupKeyvalue <> null) and (cmbFicha.LookupKeyValue > 0) then begin

      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

      Q_Aux.close;
      Q_Aux.SQL.text := 'delete from balancocontagemitens where contagem = '+IntToStr(nContagem)+' and balancofichaitem in (select balancofichaitem from balancofichasitens where balancoficha = '+C_FichasBalancoFicha.asstring+')';
      Q_Aux.execsql;

      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;

      lbContagens.Items.delete(lbContagens.ItemIndex);
      if lbContagens.Items.Count > 0 then begin
        lbContagens.ItemIndex := lbContagens.Items.Count - 1;
        lbContagensClick(self);
        lbContagensClick(self);
      end;
    end
    else begin
      DlgMsg.ShowMsg(1011);
    end;
  end;
end;

procedure TDlgContagensItens.TS_SpeedButton2Click(Sender: TObject);
var ssTeclaShift: TShiftState;
    nTecla: word;
begin
  inherited;
  ssTeclaShift := [];
  nTecla := vk_delete;
  lbContagensKeyDown(self,nTecla,ssTeclaShift);
end;

procedure TDlgContagensItens.sbColetorClick(Sender: TObject);
begin
  inherited;
  if opColetor.Execute Then Begin
    if receberContagem(opColetor.FileName) Then
      Application.MessageBox(pChar('Arquivo lido com êxito!'),'Aviso',mb_OK);
  End;
end;

end.

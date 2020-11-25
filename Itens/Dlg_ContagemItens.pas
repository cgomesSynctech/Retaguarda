unit Dlg_ContagemItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_MODAL, StdCtrls, TS_Label, Grids, DBGrids, TS_CDBGrid,
  TS_LastDataObject, vg2PropStore, DlgMsg, Menus, TS_PopupMenu, Buttons,
  TS_BitBtn, Db, DBClient, Provider, IBCustomDataSet, IBQuery, TS_ListBox,
  IBUpdateSQL, DBCtrls, TS_DBLookupComboBox, ExtCtrls;

type
  TDlgContagemItens = class(TDlgModal)
    TS_CDBGrid1: TTS_CDBGrid;
    TS_Label1: TTS_Label;
    C_FichasDS: TDataSource;
    Q_Fichas: TIBQuery;
    Q_FichasProvider: TDataSetProvider;
    C_Fichas: TClientDataSet;
    C_FichasBALANCOFICHA: TIntegerField;
    C_FichasDATA: TDateField;
    C_FichasUSUARIO: TIntegerField;
    C_FichasALMOXARIFADO: TIntegerField;
    C_FichasSTATUS: TIntegerField;
    C_FichasDescAlmox: TStringField;
    C_FichasLOGINNAME: TStringField;
    dbgItens: TTS_CDBGrid;
    lblItensContagem: TTS_Label;
    TS_Label3: TTS_Label;
    Q_ContagensItens: TIBQuery;
    C_ContagensItens: TClientDataSet;
    Q_ContagensProvider: TDataSetProvider;
    C_ContagensItensDS: TDataSource;
    C_ContagensItensITEM: TIntegerField;
    C_ContagensItensCODIGO: TStringField;
    C_ContagensItensDESCRICAO: TStringField;
    C_ContagensItensUNIDADE: TStringField;
    C_ContagensItensQUANTIDADE: TIntegerField;
    TS_BitBtn2: TTS_BitBtn;
    lbContagens: TTS_ListBox;
    Q_Aux: TIBQuery;
    C_ContagensItensBALANCOFICHA: TIntegerField;
    C_ContagensItensCONTAGEM: TIntegerField;
    C_ContagensItensBALANCOFICHAITEM: TIntegerField;
    U_ContagensItens: TIBUpdateSQL;
    C_ContagensItensUSUARIO: TIntegerField;
    TS_Label2: TTS_Label;
    Q_Usuarios: TIBQuery;
    Q_UsuariosProvider: TDataSetProvider;
    C_Usuarios: TClientDataSet;
    C_UsuariosDS: TDataSource;
    cmbUsuario: TTS_DBLookupComboBox;
    ppmItens: TTS_PopupMenu;
    LocalizarpeloItem1: TMenuItem;
    LocalizarpelaDescrio1: TMenuItem;
    btItem: TTS_BitBtn;
    btDigitacao: TTS_BitBtn;
    ppmFichas: TTS_PopupMenu;
    CancelarFichadeBalano1: TMenuItem;
    U_Fichas: TIBUpdateSQL;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    procedure C_FichasCalcFields(DataSet: TDataSet);
    procedure TS_BitBtn2Click(Sender: TObject);
    procedure C_FichasAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure lbContagensClick(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
    procedure cmbUsuarioClick(Sender: TObject);
    procedure dbgItensKeyPress(Sender: TObject; var Key: Char);
    procedure btItemClick(Sender: TObject);
    procedure btDigitacaoClick(Sender: TObject);
    procedure C_ContagensItensNewRecord(DataSet: TDataSet);
    procedure CancelarFichadeBalano1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgContagemItens: TDlgContagemItens;

implementation
uses DM_Projeto, funcoes, Dlg_LocalizarItem, Dlg_DigitacaoItens;

{$R *.DFM}

procedure TDlgContagemItens.C_FichasCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_FichasAlmoxarifado.value = 1 then
    C_FichasDescAlmox.value := replace(DMProjeto.Parametro('Almox1'),':','')
  else if C_FichasAlmoxarifado.value = 2 then
    C_FichasDescAlmox.value := replace(DMProjeto.Parametro('Almox2'),':','')
  else if C_FichasAlmoxarifado.value = 3 then
    C_FichasDescAlmox.value := replace(DMProjeto.Parametro('Almox3'),':','');
end;

procedure TDlgContagemItens.TS_BitBtn2Click(Sender: TObject);
var nContagem: integer;
begin
  inherited;
  if C_FichasBalancoFicha.value > 0 then begin
    nContagem := lbContagens.Items.Count + 1;

    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    Q_Aux.close;
    Q_Aux.SQL.text := 'insert into balancocontagemitens(balancofichaitem,contagem,quantidade) '+
    'select balancofichaitem, '+IntToStr(nContagem)+', 0 from balancofichasitens where balancoficha = :balancoficha';
//    Q_Aux.ParamByName('contagem').asinteger := nContagem;
    Q_Aux.ParamByName('balancoficha').asinteger := C_FichasBalancoFicha.value;
    Q_Aux.execsql;

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    lbContagens.Items.Add(IntToStr(nContagem)+'ª Contagem...');
    lbContagens.ItemIndex := lbContagens.Items.Count - 1;
    lbContagensClick(self);
    lbContagensClick(self);
  end;
end;

procedure TDlgContagemItens.C_FichasAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if C_FichasBalancoFicha.value > 0 then begin

    if (C_FichasBalancoFicha.value <> C_ContagensItensBalancoFicha.value) then begin
      if C_ContagensItens.ChangeCount > 0 then
        TS_BitBtn1Click(self);

      C_ContagensItens.close;
      C_ContagensItens.FetchParams;
      C_ContagensItens.Params[0].asinteger := C_FichasBalancoFicha.value;
      C_ContagensItens.open;

      C_ContagensItens.Filtered := false;
      C_ContagensItens.Filter := 'contagem = 0';
      dbgItens.DataSetFilter := C_ContagensItens.Filter;
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
  end;
end;

procedure TDlgContagemItens.FormShow(Sender: TObject);
begin
  inherited;
  C_Fichas.open;
  C_Usuarios.open;
end;

procedure TDlgContagemItens.lbContagensClick(Sender: TObject);
begin
  inherited;
  lblItensContagem.caption := 'Itens da '+IntToStr(lbContagens.itemindex + 1)+'ª Contagem...';
  if (C_FichasBalancoFicha.value > 0) and (C_FichasBalancoFicha.value <> C_ContagensItensBalancoFicha.value) then begin
    if C_ContagensItens.ChangeCount > 0 then
      TS_BitBtn1Click(self);

    C_ContagensItens.close;
    C_ContagensItens.FetchParams;
    C_ContagensItens.Params[0].asinteger := C_FichasBalancoFicha.value;
    C_ContagensItens.open;
  end;
//    C_ContagensItens.Params[1].asinteger := lbContagens.ItemIndex + 1;
  if (C_FichasBalancoFicha.value > 0) then begin
    C_ContagensItens.Filtered := false;
    C_ContagensItens.Filter := 'contagem = '+IntToStr(lbContagens.ItemIndex + 1);
    dbgItens.DataSetFilter := C_ContagensItens.Filter;
    C_ContagensItens.Filtered := true;
    dbgItens.OrdenaColuna(1);
    if C_ContagensItensUsuario.value > 0 then begin
      C_Usuarios.locate('usuario',C_ContagensItensUsuario.value,[]);
      cmbUsuario.keyvalue := C_ContagensItensUsuario.value;
    end
    else
      cmbUsuario.keyvalue := null;
  end;
end;

procedure TDlgContagemItens.TS_BitBtn1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

  if C_ContagensItens.ChangeCount > 0 then
    C_ContagensItens.ApplyUpdates(0);

  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
end;

procedure TDlgContagemItens.cmbUsuarioClick(Sender: TObject);
begin
  inherited;
  if C_ContagensItens.Active and (lbContagens.ItemIndex >= 0) then
    dbgItens.ApplyChangeToSelecteds('usuario',cmbUsuario.KeyValue,'contagem = '+IntToStr(lbContagens.itemindex + 1));
end;

procedure TDlgContagemItens.dbgItensKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key in [',','.']) and (dbgItens.SelectedIndex = 3) then
    key := decimalseparator;
end;

procedure TDlgContagemItens.btItemClick(Sender: TObject);
begin
  inherited;
  DlgLocalizarItem := TDlgLocalizarItem.Create(self,C_ContagensItens);
  DlgLocalizarItem.free;
end;

procedure TDlgContagemItens.btDigitacaoClick(Sender: TObject);
begin
  inherited;
  if (C_FichasBalancoFicha.value = 0) or (lbContagens.ItemIndex = -1) then begin
    DlgMsg.ShowMsg(1011);
    exit;
  end;
  DlgDigitacaoItens := TDlgDigitacaoItens.Create(self,C_ContagensItens);
  DlgDigitacaoItens.free;
end;

procedure TDlgContagemItens.C_ContagensItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_ContagensItensContagem.value := lbContagens.ItemIndex + 1;
  if cmbUsuario.keyvalue <> null then
    C_ContagensItensUsuario.value := cmbUsuario.keyvalue;
end;

procedure TDlgContagemItens.CancelarFichadeBalano1Click(Sender: TObject);
begin
  inherited;
  if DlgMsg.ShowMsg(1020) = 100 then begin
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
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    C_Fichas.close;
    C_Fichas.open;
  end;
end;

end.

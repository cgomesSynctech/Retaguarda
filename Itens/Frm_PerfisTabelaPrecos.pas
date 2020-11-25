unit Frm_PerfisTabelaPrecos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, DB, dxCntner, TS_QDBGrid, DBClient, Provider, IBCustomDataSet,
  IBQuery, dxEditor, dxEdLib, TS_ImageEdit, ImgList, IBUpdateSQL;

type
  TFrmPerfisTabelaPrecos = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    cmbPerfil: TTS_ImageEdit;
    Q_Perfis: TIBQuery;
    Q_PerfisProvider: TDataSetProvider;
    C_Perfis: TClientDataSet;
    C_PerfisPERFIL: TIntegerField;
    C_PerfisDESCRICAO: TStringField;
    dbgTabelas: TTS_QDBGrid;
    Q_Tabelas: TIBQuery;
    C_TabelasDS: TDataSource;
    C_Tabelas: TClientDataSet;
    P_Tabelas: TDataSetProvider;
    C_TabelasDESCRICAO: TStringField;
    C_TabelasCONSULTAR: TStringField;
    C_TabelasUTILIZAR: TStringField;
    C_TabelasTABELAPRECO: TIntegerField;
    dbgTabelasDESCRICAO: TdxDBGridMaskColumn;
    dbgTabelasCONSULTAR: TdxDBGridCheckColumn;
    dbgTabelasUTILIZAR: TdxDBGridCheckColumn;
    dbgTabelasTABELAPRECO: TdxDBGridMaskColumn;
    ImageList1: TImageList;
    U_Tabelas: TIBUpdateSQL;
    Q_Aux: TIBQuery;
    C_TabelasID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure cmbPerfilChange(Sender: TObject);
  private
    sPerfil: string;
    nPerfil: integer;
    procedure PopulaPerfis;
  public
    { Public declarations }
  end;

var
  FrmPerfisTabelaPrecos: TFrmPerfisTabelaPrecos;

implementation
uses DM_Projeto;

{$R *.dfm}

procedure TFrmPerfisTabelaPrecos.PopulaPerfis;
begin
  C_Perfis.close;
  C_Perfis.open;
  cmbPerfil.Descriptions.Clear;
  cmbPerfil.Values.Clear;
  cmbPerfil.ImageIndexes.Clear;
  while not C_Perfis.eof do begin
    cmbPerfil.Descriptions.Add(C_PerfisDescricao.value);
    cmbPerfil.Values.Add(C_PerfisPerfil.asstring);
    cmbPerfil.ImageIndexes.Add('0');
    C_Perfis.next;
  end;
  C_Perfis.first;
end;

procedure TFrmPerfisTabelaPrecos.FormCreate(Sender: TObject);
begin
  inherited;
  PopulaPerfis;
  sPerfil := C_PerfisPerfil.asstring;

  cmbPerfil.text := sPerfil;
  nPerfil := StrToInt(cmbPerfil.Text);

  C_Tabelas.close;
  C_Tabelas.FetchParams;
  C_Tabelas.Params[0].asinteger := nPerfil;
  C_Tabelas.open;

  ActiveControl := cmbPerfil;
end;

procedure TFrmPerfisTabelaPrecos.btGravarClick(Sender: TObject);
begin
  inherited;
  if C_Tabelas.state in [dsedit,dsinsert] then
    C_Tabelas.post;

  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

  if C_Tabelas.ChangeCount > 0 then
    C_Tabelas.ApplyUpdates(0);


  Q_Aux.SQL.text := 'insert into PERFISTABELAPRECOS(id,perfil,tabelapreco,consultar,utilizar) '+
  'values (:id,:perfil,:tabelapreco,:consultar,:utilizar)';

  C_Tabelas.first;
  while not C_Tabelas.eof do begin
    if C_TabelasID.IsNull and ((C_TabelasConsultar.value = 'S') or (C_TabelasUtilizar.value = 'S')) then begin
      Q_Aux.close;
      Q_Aux.params[0].asinteger := DMProjeto.NextIDGlobal;
      Q_Aux.params[1].asinteger := nPerfil;
      Q_Aux.params[2].asinteger  := C_TabelasTabelaPreco.value;
      Q_Aux.params[3].asstring  := C_TabelasConsultar.value;
      Q_Aux.params[4].asstring  := C_TabelasUtilizar.value;
      Q_Aux.execsql;
    end;

    C_Tabelas.next;
  end;
  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  DMProjeto.AtualizaPermissoesTabelasPreco;

  C_Tabelas.close;
  C_Tabelas.FetchParams;
  C_Tabelas.Params[0].asinteger := nPerfil;
  C_Tabelas.open;
end;

procedure TFrmPerfisTabelaPrecos.cmbPerfilChange(Sender: TObject);
begin
  inherited;
  if C_Tabelas.state in [dsInsert,dsEdit] then
    C_Tabelas.post;

  if (C_Tabelas.ChangeCount > 0) then begin
    if DlgMsg.ShowMsg(3083) = 100 then
      btGravarClick(self);
  end;

  nPerfil := StrToInt(cmbPerfil.Text);
  C_Perfis.locate('perfil',nPerfil,[]);

  C_Tabelas.close;
  C_Tabelas.FetchParams;
  C_Tabelas.Params[0].asinteger := nPerfil;
  C_Tabelas.open;
end;

end.

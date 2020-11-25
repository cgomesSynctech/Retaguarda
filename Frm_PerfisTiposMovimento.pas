unit Frm_PerfisTiposMovimento;

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
  TFrmPerfisTiposMovimento = class(TFrmModeloCadastros)
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
    dbgTabelasDESCRICAO: TdxDBGridMaskColumn;
    dbgTabelasUTILIZAR: TdxDBGridCheckColumn;
    dbgTabelasTABELAPRECO: TdxDBGridMaskColumn;
    ImageList1: TImageList;
    U_Tabelas: TIBUpdateSQL;
    Q_Aux: TIBQuery;
    C_TabelasID: TIntegerField;
    C_TabelasTIPOMOVIMENTO: TIntegerField;
    C_TabelasDESCRICAO: TStringField;
    C_TabelasUTILIZAR: TStringField;
    procedure btGravarClick(Sender: TObject);
    procedure cmbPerfilChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    sPerfil,sTipo: string;
    nPerfil: integer;
    procedure PopulaPerfis;
  public
    { Public declarations }
  end;

var
  FrmPerfisTiposMovimento: TFrmPerfisTiposMovimento;

implementation
uses DM_Projeto;

{$R *.dfm}

procedure TFrmPerfisTiposMovimento.PopulaPerfis;
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

procedure TFrmPerfisTiposMovimento.btGravarClick(Sender: TObject);
begin
  inherited;
  if C_Tabelas.state in [dsedit,dsinsert] then
    C_Tabelas.post;

  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

  if C_Tabelas.ChangeCount > 0 then
    C_Tabelas.ApplyUpdates(0);


  Q_Aux.SQL.text := 'insert into PERFISTIPOSMOVIMENTO(id,perfil,tipomovimento,utilizar) '+
  'values (:id,:perfil,:tipomovimento,:utilizar)';

  C_Tabelas.first;
  while not C_Tabelas.eof do begin
    if C_TabelasID.IsNull and (C_TabelasUtilizar.value = 'S') then begin
      Q_Aux.close;
      Q_Aux.params[0].asinteger := DMProjeto.NextIDGlobal;
      Q_Aux.params[1].asinteger := nPerfil;
      Q_Aux.params[2].asinteger  := C_TabelasTipoMovimento.value;
      Q_Aux.params[3].asstring  := C_TabelasUtilizar.value;
      Q_Aux.execsql;
    end;

    C_Tabelas.next;
  end;
  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  DMProjeto.AtualizaPermissoesTiposMovimento;

  C_Tabelas.close;
  C_Tabelas.FetchParams;
  C_Tabelas.Params[0].asinteger := nPerfil;
  C_Tabelas.Params[1].asstring := sTipo;
  C_Tabelas.open;
end;

procedure TFrmPerfisTiposMovimento.cmbPerfilChange(Sender: TObject);
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
  C_Tabelas.Params[1].asstring  := sTipo;
  C_Tabelas.open;
end;

procedure TFrmPerfisTiposMovimento.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  sTipo := DMProjeto.GetParametrosForm(0);

  PopulaPerfis;
  sPerfil := C_PerfisPerfil.asstring;

  cmbPerfil.text := sPerfil;
  nPerfil := StrToInt(cmbPerfil.Text);

  C_Tabelas.close;
  C_Tabelas.FetchParams;
  C_Tabelas.Params[0].asinteger := nPerfil;
  C_Tabelas.Params[1].asstring := sTipo;
  C_Tabelas.open;

  ActiveControl := cmbPerfil;
end;

end.

unit Dlg_PesquisaFabricante;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid,
  Provider, DBClient, DB, IBCustomDataSet, IBQuery, dxCntner, TS_QDBGrid,
  DBCtrls;

type
  TDlgPesquisaFabricante = class(TForm)
    pcFabricantes: TPageControl;
    tsFabricantes: TTabSheet;
    Panel1: TPanel;
    tsGrupos2: TTabSheet;
    Label2: TLabel;
    Panel2: TPanel;
    dblGrupos2: TDBLookupListBox;
    tsGrupos3: TTabSheet;
    Label3: TLabel;
    Panel3: TPanel;
    dblGrupos3: TDBLookupListBox;
    Q_FabricantesDS: TDataSource;
    Q_GruposDS2: TDataSource;
    Q_GruposDS3: TDataSource;
    dbgFabricantes: TTS_QDBGrid;
    Q_Fabricantes: TIBQuery;
    C_Fabricantes: TClientDataSet;
    P_Fabricantes: TDataSetProvider;
    dbgFabricantesColumn2: TdxDBGridColumn;
    C_FabricantesFABRICANTE: TIntegerField;
    C_FabricantesDESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure tsGrupos2Enter(Sender: TObject);
    procedure tsGrupos3Enter(Sender: TObject);
    procedure dblGrupos3DblClick(Sender: TObject);
    procedure dblGruposDblClick(Sender: TObject);
    procedure dblGrupos2DblClick(Sender: TObject);
    procedure dbgFabricantesKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure Avanca;
    procedure Retrocede;
  public
  end;

var
  DlgPesquisaFabricante: TDlgPesquisaFabricante;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDlgPesquisaFabricante.FormCreate(Sender: TObject);
begin
//  DMProjeto.sStringAux := '';
  C_Fabricantes.open;
//  Q_Grupos2.open;
//  Q_Grupos3.open;
  pcFabricantes.ActivePage := tsFabricantes;
//  dbgGrupos.Keyvalue := Q_GruposGrupo.value;
  ActiveControl := dbgFabricantes;
end;

procedure TDlgPesquisaFabricante.Avanca;
begin
  if pcFabricantes.ActivePage = tsFabricantes then begin
{    if Q_Grupos2.recordcount > 0 then
      pcGrupos.ActivePage := tsGrupos2
    else begin
      DMProjeto.sStringAux := InputBox('Produto','Digite as Letras iniciais:','');}
      ModalResult := C_FabricantesFabricante.value;
//    end;
  end
  else if pcFabricantes.ActivePage = tsGrupos2 then begin
{    if Q_Grupos3.recordcount > 0 then
      pcGrupos.ActivePage := tsGrupos3
    else begin
      DMProjeto.sStringAux := InputBox('Produto','Digite as Letras iniciais:','');
      ModalResult := Q_Grupos2Grupo.value;
    end;}
  end
  else if pcFabricantes.ActivePage = tsGrupos3 then begin
{    DMProjeto.sStringAux := InputBox('Produto','Digite as Letras iniciais:','');
    ModalResult := Q_Grupos3Grupo.value;}
  end;
end;

procedure TDlgPesquisaFabricante.Retrocede;
begin
  if pcFabricantes.ActivePage = tsFabricantes then
    ModalResult := -1
  else if pcFabricantes.ActivePage = tsGrupos2 then
    pcFabricantes.ActivePage := tsFabricantes
  else if pcFabricantes.ActivePage = tsGrupos3 then
    pcFabricantes.ActivePage := tsGrupos2;
end;

procedure TDlgPesquisaFabricante.tsGrupos2Enter(Sender: TObject);
begin
{  dblGrupos2.Keyvalue := Q_Grupos2Grupo.value;
  ActiveControl := dblGrupos2;}
end;

procedure TDlgPesquisaFabricante.tsGrupos3Enter(Sender: TObject);
begin
{  dblGrupos3.Keyvalue := Q_Grupos3Grupo.value;
  ActiveControl := dblGrupos3;}
end;

procedure TDlgPesquisaFabricante.dblGrupos3DblClick(Sender: TObject);
begin
  Avanca;
end;

procedure TDlgPesquisaFabricante.dblGruposDblClick(Sender: TObject);
begin
  Avanca;
end;

procedure TDlgPesquisaFabricante.dblGrupos2DblClick(Sender: TObject);
begin
  Avanca;
end;

procedure TDlgPesquisaFabricante.dbgFabricantesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Avanca
  else if key = #27 then
    Retrocede;
end;

procedure TDlgPesquisaFabricante.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Avanca
  else if key = #27 then
    Retrocede;
end;

end.

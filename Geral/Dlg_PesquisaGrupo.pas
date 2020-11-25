unit Dlg_PesquisaGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid,
  Provider, DBClient, DB, IBCustomDataSet, IBQuery, dxCntner, TS_QDBGrid,
  DBCtrls;

type
  TDlgPesquisaGrupo = class(TForm)
    pcGrupos: TPageControl;
    tsGrupos: TTabSheet;
    Panel1: TPanel;
    tsGrupos2: TTabSheet;
    Label2: TLabel;
    Panel2: TPanel;
    dblGrupos2: TDBLookupListBox;
    tsGrupos3: TTabSheet;
    Label3: TLabel;
    Panel3: TPanel;
    dblGrupos3: TDBLookupListBox;
    Q_GruposDS: TDataSource;
    Q_GruposDS2: TDataSource;
    Q_GruposDS3: TDataSource;
    dbgGrupos: TTS_QDBGrid;
    Q_Grupos: TIBQuery;
    C_Grupos: TClientDataSet;
    P_Grupos: TDataSetProvider;
    dbgGruposColumn2: TdxDBGridColumn;
    C_GruposGRUPO: TIntegerField;
    C_GruposDESCRICAOGRUPO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure tsGrupos2Enter(Sender: TObject);
    procedure tsGrupos3Enter(Sender: TObject);
    procedure dblGrupos3DblClick(Sender: TObject);
    procedure dblGruposDblClick(Sender: TObject);
    procedure dblGrupos2DblClick(Sender: TObject);
    procedure dbgGruposKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure Avanca;
    procedure Retrocede;
  public
  end;

var
  DlgPesquisaGrupo: TDlgPesquisaGrupo;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDlgPesquisaGrupo.FormCreate(Sender: TObject);
begin
//  DMProjeto.sStringAux := '';
  C_Grupos.open;
//  Q_Grupos2.open;
//  Q_Grupos3.open;
  pcGrupos.ActivePage := tsGrupos;
//  dbgGrupos.Keyvalue := Q_GruposGrupo.value;
  ActiveControl := dbgGrupos;
end;

procedure TDlgPesquisaGrupo.Avanca;
begin
  if pcGrupos.ActivePage = tsGrupos then begin
{    if Q_Grupos2.recordcount > 0 then
      pcGrupos.ActivePage := tsGrupos2
    else begin
      DMProjeto.sStringAux := InputBox('Produto','Digite as Letras iniciais:','');}
      ModalResult := C_GruposGrupo.value;
//    end;
  end
  else if pcGrupos.ActivePage = tsGrupos2 then begin
{    if Q_Grupos3.recordcount > 0 then
      pcGrupos.ActivePage := tsGrupos3
    else begin
      DMProjeto.sStringAux := InputBox('Produto','Digite as Letras iniciais:','');
      ModalResult := Q_Grupos2Grupo.value;
    end;}
  end
  else if pcGrupos.ActivePage = tsGrupos3 then begin
{    DMProjeto.sStringAux := InputBox('Produto','Digite as Letras iniciais:','');
    ModalResult := Q_Grupos3Grupo.value;}
  end;
end;

procedure TDlgPesquisaGrupo.Retrocede;
begin
  if pcGrupos.ActivePage = tsGrupos then
    ModalResult := -1
  else if pcGrupos.ActivePage = tsGrupos2 then
    pcGrupos.ActivePage := tsGrupos
  else if pcGrupos.ActivePage = tsGrupos3 then
    pcGrupos.ActivePage := tsGrupos2;
end;

procedure TDlgPesquisaGrupo.tsGrupos2Enter(Sender: TObject);
begin
{  dblGrupos2.Keyvalue := Q_Grupos2Grupo.value;
  ActiveControl := dblGrupos2;}
end;

procedure TDlgPesquisaGrupo.tsGrupos3Enter(Sender: TObject);
begin
{  dblGrupos3.Keyvalue := Q_Grupos3Grupo.value;
  ActiveControl := dblGrupos3;}
end;

procedure TDlgPesquisaGrupo.dblGrupos3DblClick(Sender: TObject);
begin
  Avanca;
end;

procedure TDlgPesquisaGrupo.dblGruposDblClick(Sender: TObject);
begin
  Avanca;
end;

procedure TDlgPesquisaGrupo.dblGrupos2DblClick(Sender: TObject);
begin
  Avanca;
end;

procedure TDlgPesquisaGrupo.dbgGruposKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Avanca
  else if key = #27 then
    Retrocede;
end;

procedure TDlgPesquisaGrupo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Avanca
  else if key = #27 then
    Retrocede;
end;

end.

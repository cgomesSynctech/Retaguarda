unit Dlg_LocaisEntrega;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms, Menus, TS_PopupMenu;

type
  TDlgLocaisEntrega = class(TFrmModeloCadastros)
    gridLocaisEntrega: TTS_QDBGrid;
    gridLocaisEntregaDESCRICAO: TdxDBGridMaskColumn;
    gridLocaisEntregaENDERECOENTREGA: TdxDBGridMaskColumn;
    gridLocaisEntregaCIDADEENTREGA: TdxDBGridMaskColumn;
    gridLocaisEntregaCEPENTREGA: TdxDBGridMaskColumn;
    gridLocaisEntregalkUFENTREGA: TdxDBGridLookupColumn;
    gridLocaisEntregalkPais: TdxDBGridLookupColumn;
    gridLocaisEntregaFONE: TdxDBGridMaskColumn;
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure FormShow(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgLocaisEntrega: TDlgLocaisEntrega;

implementation
  uses DM_Projeto, DM_Clientes, Frm_Clientes, db;

{$R *.DFM}

procedure TDlgLocaisEntrega.btGravarClick(Sender: TObject);
begin
  inherited;
  FrmClientes.btGravarClick(self);
end;

procedure TDlgLocaisEntrega.FormsComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
{  if DMProjeto.GetParametrosForm(0)='CLI' then begin
    gridLocaisEntrega.DataSource := DMClientes.C_LocaisEntregaDS;
  end else gridLocaisEntrega.DataSource := nil;}
end;

procedure TDlgLocaisEntrega.FormShow(Sender: TObject);
begin
  inherited;
  btGravar.Visible := DMClientes.bAlteracao;
  with gridLocaisEntrega.FindColumnByFieldName('_icSelecionado') do begin
    HeaderMaxLineCount := 3;
    VertAlignment     := tlCenter;
  end;
end;

procedure TDlgLocaisEntrega.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  if DMClientes.C_LocaisEntrega.State <> dsBrowse then
    DMClientes.C_LocaisEntrega.Post;
end;

end.

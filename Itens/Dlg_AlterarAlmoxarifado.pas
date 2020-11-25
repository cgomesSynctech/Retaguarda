unit Dlg_AlterarAlmoxarifado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, DB, DBClient, Provider, IBCustomDataSet,
  IBQuery, DBCtrls;

type
  TDlgAlterarAlmoxarifado = class(TFrmModeloCadastros)
    Q_Almoxarifados: TIBQuery;
    P_Almoxarifados: TDataSetProvider;
    C_Almoxarifados: TClientDataSet;
    DBLookupListBox1: TDBLookupListBox;
    C_AlmoxarifadosDS: TDataSource;
    C_AlmoxarifadosALMOXARIFADO: TIntegerField;
    C_AlmoxarifadosDESCRICAO: TStringField;
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgAlterarAlmoxarifado: TDlgAlterarAlmoxarifado;

implementation
  uses DM_Projeto;

{$R *.dfm}

procedure TDlgAlterarAlmoxarifado.btGravarClick(Sender: TObject);
begin
  inherited;
  ModalResult := C_AlmoxarifadosAlmoxarifado.Value;
end;

procedure TDlgAlterarAlmoxarifado.FormShow(Sender: TObject);
begin
  inherited;
  C_Almoxarifados.Open;
end;

procedure TDlgAlterarAlmoxarifado.btFecharCadastroClick(Sender: TObject);
begin
  ModalResult := -1;
end;

procedure TDlgAlterarAlmoxarifado.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    btGravarClick(self)
  else if key = #27 then
    ModalResult := -1;
end;

end.
 
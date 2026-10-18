unit Dlg_VipShop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, DB, DBClient, Provider, IBCustomDataSet,
  IBUpdateSQL, IBQuery;

type
  TDlgVipShop = class(TFrmModeloCadastros)
    Q_Tabela: TIBQuery;
    U_Tabela: TIBUpdateSQL;
    P_Tabela: TDataSetProvider;
    C_Tabela: TClientDataSet;
    C_Tabela_icSelecionado: TIntegerField;
    C_TabelaDS: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Button2: TButton;
    Label4: TLabel;
    dfCNPJbase: TEdit;
    Q_SQL: TIBQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgVipShop: TDlgVipShop;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDlgVipShop.Button1Click(Sender: TObject);

begin
  inherited;
    if Length(dfCNPJbase.Text) > 0 then
     begin
      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        With DMPRojeto.StoreProcedure do Begin
        StoredProcName := 'PARAMETROSVIPHOP';
        ParamByName('CNPJBASE').Value := dfCNPJbase.Text;
        ExecProc;
     End;
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        MessageDlg('Atualização Realizada Com Êxito!', mtInformation, [mbOK], 0);
  end;


end;

procedure TDlgVipShop.Button2Click(Sender: TObject);
var existe :integer  ;
begin
  inherited;
  with Q_SQL do
  begin
   Close;
   sql.Text := 'select COUNT(*) as existe  FROM RDB$GENERATORS WHERE RDB$GENERATOR_NAME = ''SR_REPLICAWEBLOCAL''';
   Open;
   existe := fieldbyname('existe').AsInteger ;
   if existe = 0 then
   begin
   if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        close;
        sql.Text := 'CREATE SEQUENCE SR_REPLICAWEBLOCAL' ;
        open;
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        MessageDlg('Generation Criado Com Êxito!', mtInformation, [mbOK], 0);
   end
   else
   MessageDlg('Generation Ja existe na Base', mtInformation, [mbOK], 0);

  end


end;

end.

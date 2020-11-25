unit Dlg_IP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, OleCtrls, SHDocVw, DB, DBClient, Provider,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDlgIP = class(TFrmModeloCadastros)
    WebBrowser: TWebBrowser;
    pnIP: TPanel;
    web1: TWebBrowser;
    Q_Tabela: TIBQuery;
    U_Tabela: TIBUpdateSQL;
    P_Tabela: TDataSetProvider;
    C_Tabela: TClientDataSet;
    C_Tabela_icSelecionado: TIntegerField;
    C_TabelaCPF_CNPJ: TStringField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgIP: TDlgIP;
   cnpjsite : string ;
implementation

uses DM_Projeto,Funcoes,DM_Empresa;

{$R *.dfm}

procedure TDlgIP.FormsComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
 // WebBrowser.Navigate('http://www.synctech.com.br/wfMeuIP.aspx');
 // cnpjsite :=  DMEmpresa.C_TabelaCPF_CNPJ.AsVariant ;
 C_Tabela.Close ;
 C_Tabela.Open;
  cnpjsite := 'https://synctech.com.br/siteboleto/boleto/index?cpfcnpj=' + C_TabelaCPF_CNPJ.AsString ;

  WebBrowser.Navigate(cnpjsite);

  web1.Navigate(cnpjsite);

end;

procedure TDlgIP.btGravarClick(Sender: TObject);
begin
  inherited;
//  WebBrowser.Refresh;
    pnIP.Caption := funcoes.GetIP;
end;

procedure TDlgIP.FormShow(Sender: TObject);
begin
  inherited;
   pnIP.Caption := funcoes.GetIP;
end;

end.

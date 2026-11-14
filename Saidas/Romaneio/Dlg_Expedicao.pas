unit Dlg_Expedicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, IBCustomDataSet, IBUpdateSQL, DB, DBClient,
  Provider, IBQuery, ppDB, ppDBPipe, ppBands, ppMemo, ppCtrls, ppStrtch,
  ppRegion, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxCntner, dxEditor, dxEdLib, dxDBELib, TS_DBEdit, ppTypes;

type
  TDlgExpedicao = class(TFrmModeloCadastros)
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ppEtiquetaItens: TppReport;
    ppHeaderBand38: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDetailBand60: TppDetailBand;
    ppRegion62: TppRegion;
    ppDBText921: TppDBText;
    ppDBText922: TppDBText;
    ppDBText923: TppDBText;
    ppLine328: TppLine;
    ppDBMemo33: TppDBMemo;
    ppLine343: TppLine;
    ppFooterBand32: TppFooterBand;
    ppSummaryBand34: TppSummaryBand;
    ppDBItensSaida: TppDBPipeline;
    C_TabelaDS: TDataSource;
    C_Tabela: TClientDataSet;
    C_Tabela_icSelecionado: TIntegerField;
    P_Tabela: TDataSetProvider;
    U_Tabela: TIBUpdateSQL;
    Q_Tabela: TIBQuery;
    Q_MasterDS: TDataSource;
    ResultSet: TClientDataSet;
    C_TabelaSAIDA: TIntegerField;
    C_TabelaNUMERO: TStringField;
    C_TabelaDATA: TDateField;
    C_TabelaRAZAO: TStringField;
    C_TabelaCPF_CNPJ: TStringField;
    C_TabelaCODIGO: TStringField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaQUANTIDADE: TFloatField;
    C_TabelaUNIDADE: TStringField;
    NSaida: TEdit;
    ppLabel1: TppLabel;
    Label5: TLabel;
    Q_Aux: TIBQuery;
    P_Aux: TDataSetProvider;
    C_Aux: TClientDataSet;
    IntegerField1: TIntegerField;
    C_AuxDS: TDataSource;
    C_AuxDATA: TDateField;
    C_AuxRAZAO: TStringField;
    lbData: TLabel;
    lbCliente: TLabel;
    ppVol: TppLabel;
    Vol: TEdit;
    procedure btGravarClick(Sender: TObject);
    procedure NSaidaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure VolKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgExpedicao: TDlgExpedicao;
  result : integer;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDlgExpedicao.btGravarClick(Sender: TObject);
var
i : integer ;

begin
  inherited;

        C_Tabela.Close;
   //     C_Tabela.FetchParams;
    //    C_Tabela.Params.ParamByName('NSAIDA').AsString := NSaida.Text;
        Q_Tabela.Close;
        C_Tabela.CommandText := 'select '+
                             ' s.saida, s.numero, s.data, f.razao , f.cpf_cnpj , i.codigo , ss.descricao , ss.quantidade , ss.unidade '+
                             ' from saidas s inner join saidasitens ss on ss.saida = s.saida inner join favorecidos f on f.favorecido = s.favorecido '+
                             ' inner join itens i on ss.item = i.item '+
                             ' where s.Numero = :NSAIDA ';
        C_Tabela.Params.ParamByName('NSAIDA').asstring := NSaida.Text ;
        C_tabela.Open;
        if C_tabela.IsEmpty then
        Begin
           ShowMessage('Não Foi encontrado movimentos com o numero digitado!');
           NSaida.SetFocus;
           Exit;
        end;
        ppEtiquetaItens.DeviceType := dtScreen ;
        ppEtiquetaItens.Print;
  end;

procedure TDlgExpedicao.NSaidaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then begin
  Q_Aux.Close;
  Q_Aux.ParamByName('nSaida').AsString := NSaida.Text;
  Q_Aux.Open;

  if Q_aux.Fields[0].AsInteger > 0 then
  begin
        lbData.Caption := q_aux.Fields[1].AsString;
        lbCliente.Caption := q_aux.Fields[2].AsString;
        vol.Visible := true;
        vol.Setfocus;

  end
  else begin
        lbData.Caption := 'Nao selecionada';
        lbCliente.Caption:= 'Nao selecionada';
        ShowMessage('Não foi possivel encontra a operação !');
        NSaida.Setfocus;

  end;
  end;


end;

procedure TDlgExpedicao.FormCreate(Sender: TObject);
begin
  inherited;
    lbCliente.Caption := '';
    lbData.Caption := '';
end;

procedure TDlgExpedicao.VolKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
        if Key = #13 then begin

           if (Application.MessageBox('Deseja Imprimir a Nota de Expedição do Movimento  ', 'Confirmação', MB_YESNO + MB_ICONINFORMATION) = IDYES) then
            begin
                ppVol.Text := Vol.Text ;
                btGravar.Click;
            end;

        end;
end;


end.

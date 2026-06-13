unit dlg_ValoresFechaCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, DB, DBClient, Provider, IBCustomDataSet,
  IBUpdateSQL, IBQuery, dxExEdtr, dxEdLib, TS_CalcEdit, dxCntner, dxEditor,
  TS_DateTimePicker;

type
  TdlgValoresFechaCaixa = class(TFrmModeloCadastros)
    Q_Tabela: TIBQuery;
    U_Tabela: TIBUpdateSQL;
    P_Tabela: TDataSetProvider;
    C_Tabela: TClientDataSet;
    C_Tabela_icSelecionado: TIntegerField;
    C_TabelaDS: TDataSource;
    C_TabelaIDFECHAMENTO: TIntegerField;
    C_TabelaCONTA: TIntegerField;
    C_TabelaDATAFECHAMENTO: TDateField;
    C_TabelaESPECIE: TIntegerField;
    C_TabelaVALORDIGITADO: TBCDField;
    C_TabelaVALORAPURADO: TBCDField;
    C_TabelaSALDO: TBCDField;
    C_TabelaORIGEMREPLIC: TStringField;
    DataI: TTS_DateTimePicker;
    TS_Label5: TTS_Label;
    edDinheiro: TTS_CalcEdit;
    edCheque: TTS_CalcEdit;
    edCartoes: TTS_CalcEdit;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    edCreditos: TTS_CalcEdit;
    Q_Sql: TIBQuery;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExecSQL(comando: string);
  end;

var
  dlgValoresFechaCaixa: TdlgValoresFechaCaixa;

implementation
uses DM_projeto, DM_Financeiro, funcoes, TDM_Projeto;

{$R *.dfm}

procedure TdlgValoresFechaCaixa.ExecSQL(comando: string);
begin
    with Q_Sql do
        begin
            Close;
            SQL.Text := comando;
            ExecSQL;
        end;
end;

procedure TdlgValoresFechaCaixa.btGravarClick(Sender: TObject);
var comando, dia: string;
conta, fechamento : integer ;
begin
  inherited;
    try
    dia := FormatDateTime('mm/dd/yyyy', DataI.Date);
      if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        conta := DMFinanceiro.nContaPadrao ;
        fechamento := DMProjeto.NextID('GEN_FECHAMENTOCAIXA_ID', 1);
        comando := ' INSERT INTO FECHAMENTOCAIXA (CONTA, FECHAMENTO, DATAFECHAMENTO, ESPECIE,FORMAPAGAMENTO, VALORDIGITADO) VALUES ('''+ IntToStr(conta) + ''', '''+IntToStr(fechamento)+ ''', '''+dia+ ''', 5, 1, '+ CurrToStr(edDinheiro.Value) +' )';
        ExecSql(comando);
        comando := ' INSERT INTO FECHAMENTOCAIXA (CONTA, FECHAMENTO, DATAFECHAMENTO, ESPECIE, FORMAPAGAMENTO, VALORDIGITADO) VALUES ('''+ IntToStr(conta) + ''', '''+IntToStr(fechamento)+ ''', '''+dia+ ''', 1, 2, '+ CurrToStr(edCheque.Value) +' )';
        ExecSql(comando);
        comando := ' INSERT INTO FECHAMENTOCAIXA (CONTA, FECHAMENTO, DATAFECHAMENTO, ESPECIE, FORMAPAGAMENTO, VALORDIGITADO) VALUES ('''+ IntToStr(conta) + ''', '''+IntToStr(fechamento)+ ''', '''+dia+ ''', 3, 20, '+ CurrToStr(edCartoes.Value) +' )';
        ExecSql(comando);
        comando := ' INSERT INTO FECHAMENTOCAIXA (CONTA, FECHAMENTO, DATAFECHAMENTO, ESPECIE, FORMAPAGAMENTO, VALORDIGITADO) VALUES ('''+ IntToStr(conta) + ''', '''+IntToStr(fechamento)+ ''', '''+dia+ ''', 6, -1,'+ CurrToStr(edCreditos.Value) +' )';
        ExecSql(comando);
      DMProjeto.DB_Projeto.DefaultTransaction.Commit;
      DMProjeto.FecharForm('dlgValoresFechaCaixa');
      
       
   except
    on E: Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
       DlgMsg.ShowMsg( 479 , e.message, '' );
    end;
   end;

end;

end.

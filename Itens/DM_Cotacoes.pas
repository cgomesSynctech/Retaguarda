unit DM_Cotacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMCotacoes = class(TDMManutencao)
    C_TabelaCOTACAO: TIntegerField;
    C_TabelaINDEXADOR: TIntegerField;
    C_TabelaDATA: TDateField;
    Q_Index: TIBQuery;
    P_Index: TDataSetProvider;
    C_Index: TClientDataSet;
    C_IndexINDEXADOR: TIntegerField;
    C_IndexDESCRICAO: TStringField;
    C_TabelalkIndex: TStringField;
    C_TabelaVALOR: TFloatField;
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCotacoes: TDMCotacoes;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDMCotacoes.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  with DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'select count(*) from cotacoes where data = :dt and indexador = :idx ' +
                'and cotacao <> :ct ';
    ParamByName('dt').AsDateTime := C_TabelaDATA.AsDateTime;
    ParamByName('idx').AsInteger := C_TabelaINDEXADOR.AsInteger;
    ParamByName('ct').AsInteger := C_TabelaCOTACAO.AsInteger;
    Open;
    if Fields[0].AsInteger > 0 then begin
      DlgMsg.ShowMsg( 8049 );
      bSkip := True;
    end;
  end;
end;

procedure TDMCotacoes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCotacoes := Self;
end;

end.

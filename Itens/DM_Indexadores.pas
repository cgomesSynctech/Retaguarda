unit DM_Indexadores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery;

type
  TDMIndexadores = class(TDMManutencao)
    C_TabelaINDEXADOR: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    Q_TabelaINDEXADOR: TIntegerField;
    Q_TabelaDESCRICAO: TIBStringField;
    Q_TabelaCIFRAO: TIBStringField;
    C_TabelaCIFRAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMIndexadores: TDMIndexadores;

implementation

uses DM_Projeto;

{$R *.DFM}
                                            
procedure TDMIndexadores.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMIndexadores := Self;
end;

procedure TDMIndexadores.DMComponentExclusao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if C_Tabela.FieldByName('Indexador').AsInteger = 0 then begin
    DlgMsg.ShowMsg( 3054 );
    bSkip := True;
  end;
end;

end.

unit DM_Embalagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMEmbalagem = class(TDMManutencao)
    C_TabelaSAIDA: TIntegerField;
    C_TabelaEMBALAGENS: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    TotalConsulta: Currency;
    NomeConsulta: String;
    ASaida :integer;

  Procedure DadosSaida(pedido: string);
  end;

var
  DMEmbalagem: TDMEmbalagem;

implementation
  uses DM_Projeto, frm_embalagem ;
{$R *.dfm}
Procedure TDMEmbalagem.DadosSaida(pedido: string);
  begin

    with DMProjeto.Q_SQL do begin
      Close;
      SQL.Text :=  ' select s.saida, s.total, s.data, f.nome from saidas s inner join favorecidos f on f.favorecido = s.favorecido '+
                   ' where s.numero = :NunPedido  ' ;
      ParamByName('NunPedido').AsString := pedido;
      Open;
      FrmEmbalagem.TS_DBEdit1.Text := Fields[0].Value ;
      TotalConsulta := Fields[1].Value ;
      NomeConsulta := Fields[3].Value ;



    end;

//    Q_Tabela.Prepare;
//
//     Q_Tabela.Close;

//     Q_Tabela.Sql.Text :=  ' select s.saida, s.total, s.data, f.nome from saidas s inner join favorecidos f on f.favorecido = s.favorecido '+
//                           ' where s.numero = :NunPedido  ' ;
//     Q_Tabela.ParamByName('NunPedido').AsString := pedido ;
//     C_Tabela.Params.ParamByName('NunPedido').AsString := pedido ;
//     Q_Tabela.Open ;
//     Q_Tabela.FetchAll;
//     Q_Tabela.Close;
//     FrmEmbalagem.TS_Label1.Caption := DMEmbalagem.C_TabelaTOTAL.AsString ;
//     FrmEmbalagem.TS_Label2.Caption := DMEmbalagem.C_TabelaNOME.AsString ;
end;

procedure TDMEmbalagem.DataModuleCreate(Sender: TObject);
begin
  inherited;
   DMEmbalagem := Self;
end;

end.

unit DM_SaidasReferenciadas;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
    IBCustomDataSet, IBUpdateSQL, IBQuery;

type
    TDMSaidasReferenciadas = class(TDMManutencao)
        C_TabelaSAIDAREFERENCIADA: TIntegerField;
        C_TabelaEMPRESA: TIntegerField;
        C_TabelaSAIDA: TIntegerField;
        C_TabelaPDV: TIntegerField;
        C_TabelaTIPODOCUMENTO: TIntegerField;
        C_TabelaCHAVEACESSO: TStringField;
        C_TabelaMODELO: TStringField;
        C_TabelaECF: TStringField;
        C_TabelaCOO: TStringField;
    C_TabelaNUMERO: TStringField;
    C_TabelaCOD_PART: TIntegerField;
    C_TabelaSER: TStringField;
    C_TabelaDT_DOC: TDateField;
    Q_Aux: TIBQuery;
    C_TabelaIND_OPER: TIntegerField;
    C_TabelaIND_EMIT: TIntegerField;
    C_TabelaNOMEPART: TStringField;
        procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure DataModuleCreate(Sender: TObject);
        procedure DMComponentAntesDeIniciar(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);
        procedure AcharRereferencia ( chave :string );

    private
        { Private declarations }
    public
        saida, empresa, pdv: integer;
        { Public declarations }
    end;

var
    DMSaidasReferenciadas: TDMSaidasReferenciadas;

implementation

{$R *.dfm}

uses DM_Projeto, funcoes;

procedure TDMSaidasReferenciadas.DMComponentPesquisar1_Iniciar(
    Sender: TObject; var Select, Where: string; var bSkip: Boolean);
begin
    inherited;
    Where := replace(Uppercase(Where), 'WHERE', 'where saida = ' + InttoStr(saida) + ' and empresa = ' + InttoStr(empresa) + ' and pdv = ' + InttoStr(pdv) + ' --');
end;

procedure TDMSaidasReferenciadas.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_TabelaTIPODOCUMENTO.Value := 1;
end;

procedure TDMSaidasReferenciadas.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMSaidasReferenciadas := Self;
end;

procedure TDMSaidasReferenciadas.DMComponentAntesDeIniciar(
    Sender: TObject);
begin
    inherited;
    saida := 0;
    empresa := 0;
    pdv := 0;
end;

procedure TDMSaidasReferenciadas.DMComponentGravar1_Iniciar(
  Sender: TObject; var bSkip: Boolean);
begin
  inherited;
  if C_Tabela.State = dsBrowse then
        C_Tabela.Edit;

    if (C_TabelaSAIDAREFERENCIADA.Value <= 0) then
        C_TabelaSAIDAREFERENCIADA.Value := DMProjeto.NextID('IDGLOBAL', 1);

    C_TabelaEMPRESA.Value := empresa;
    C_TabelaPDV.Value := pdv;
    C_TabelaSAIDA.Value := saida;
end;

procedure TDMSaidasReferenciadas.AcharRereferencia( chave :string );
var nResults : integer ;
  sNun , sSerie : String;
  dData : TDate ;
begin

  with DMSaidasReferenciadas.Q_Aux do
          begin
           Close ;
           SQL.Text := 'select count(*) from Entradas r where r.chavenfe = :chave';
           params[0].AsString := chave;
           Open;
           nResults := Fields[0].AsInteger;
           close;
           if (nResults > 0) then
           Begin
                Close;
                Sql.Text := 'select  s.numero , s.serienota, s.data , f.favorecido, f.razao, s.modelo, f.favorecido from entradas s inner join favorecidos f on f.favorecido = s.favorecido '+
                    '  where s.chavenfe = :chave ';
                params[0].AsString := chave;
                open;
                C_TabelaNUMERO.Value := Fields[0].AsString;
                C_TabelaSER.Value := Fields[1].AsString;
                C_TabelaDT_DOC.Value := Fields[2].AsDateTime;
                C_TabelaCOD_PART.Value := Fields[3].AsInteger;
                C_TabelaNOMEPART.Value := Fields[4].AsString;
                C_TabelaIND_EMIT.Value := 1 ;
                C_TabelaIND_OPER.Value := 0 ;
                C_TabelaMODELO.Value := Fields[5].AsString;
                if ( C_TabelaMODELO.Value = '65') then
                  C_TabelaCOD_PART.Value := 1
                else
                 C_TabelaCOD_PART.Value := Fields[6].AsInteger;
                

           end ;

        if (nResults <= 0) then
        begin
                Close ;
                SQL.Text := 'select count(*) from recibosnfe r where r.chavenfe = :chave';
                params[0].AsString := chave;
                Open;
                nResults := Fields[0].AsInteger;
                close;
                if (nResults > 0) then
                        begin
                        Close;
                        SQL.Text := 'select  s.numero , s.serienota, s.data , f.favorecido, f.razao, s.modelo, f.favorecido from saidas s inner join recibosnfe r on r.idmestre = s.saida '+
                            ' inner join favorecidos f on f.favorecido = s.favorecido  where r.chavenfe = :chave';
                        params[0].AsString := chave;
                        open;
                        C_TabelaNUMERO.Value := Fields[0].AsString;
                        C_TabelaSER.Value := Fields[1].AsString;
                        C_TabelaDT_DOC.Value := Fields[2].AsDateTime;
               // C_TabelaCOD_PART.Value := Fields[3].AsInteger;
                        C_TabelaNOMEPART.Value := Fields[4].AsString;
                        C_TabelaIND_EMIT.Value := 0 ;
                        C_TabelaIND_OPER.Value := 1 ;
                        C_TabelaMODELO.Value := Fields[5].AsString;
                       //         if ( C_TabelaMODELO.Value = '65') then
                      //                  C_TabelaCOD_PART.Value := 1
                     //           else
                                        C_TabelaCOD_PART.Value := Fields[6].AsInteger;


                        end ;
        end;

        if (nResults <= 0 ) then
        DlgMsg.ShowMsg(50, ['Não foi encontrado movimento registrado no sistema com a chave digitada ' + #13 +
                        'Em caso de Geração de Arquivo SPED podera ocorrer Criticas no Arquivo'])

        else
           ShowMessage('NF Encontrada!');


  end;


end;

end.

 
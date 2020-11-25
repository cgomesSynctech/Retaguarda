unit DM_Emails;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery;

type
  TDMEmails = class(TDMManutencao)
    C_TabelaEMAIL: TIntegerField;
    C_TabelaASSUNTO: TStringField;
    C_TabelaDE: TStringField;
    C_TabelaPARA: TStringField;
    C_TabelaMENSAGEM: TStringField;
    C_TabelaANEXO: TStringField;
    C_TabelaCOMPROMISSO: TIntegerField;
    C_TabelaPENDENTE: TStringField;
    Q_Consulta: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMEmails: TDMEmails;

implementation

uses DM_Projeto, Frm_Emails;

{$R *.DFM}

procedure TDMEmails.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMEmails := self;
end;

procedure TDMEmails.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    if ExisteParametrosForm then begin
      // INCLUIR EMAIL DE ALGUÉM
      if vParametrosForm[0] = -1 then begin
        if vParametrosForm[1] = 'U' then begin  // Email para o Usuário
          Q_Consulta.Close;
          Q_Consulta.SQL.Text := 'Select EMAIL From USUARIOS Where USUARIO='+IntToStr(vParametrosForm[3]);
          Q_Consulta.Open;
        end;
        if vParametrosForm[1] = 'C' then begin  // Email para o Cliente
          Q_Consulta.Close;
          Q_Consulta.SQL.Text := 'Select EMAIL From FAVORECIDOS Where FAVORECIDO='+IntToStr(vParametrosForm[3]);
          Q_Consulta.Open;
        end;
        C_TabelaDE.Value := vParametrosForm[2]; // Quem está mandando
        C_TabelaCOMPROMISSO.Value := vParametrosForm[4]; // Compromisso
        C_TabelaASSUNTO.Value := vParametrosForm[5]; // Assunto do Compromisso

        if Q_Consulta.FieldByName('EMAIL').AsVariant = null then
          C_TabelaPARA.Value := ''
        else
          C_TabelaPARA.Value := Q_Consulta.FieldByName('EMAIL').Value; // Email
        C_TabelaPENDENTE.Value := 'S';
        LimparParametrosForm;
      // TODOS OS EMAILS
      end else begin
        if vParametrosForm[0] = -2 then
          DMEmails.Localizar('Select * From Emails', 'Where Email=' + IntToStr(vParametrosForm[1]))
        else
          SetParametrosForm( [-5, vParametrosForm[0]] ); // o "-5" Indica que vai mostrar todos os emails
      end;
    end;
  end;
end;

end.

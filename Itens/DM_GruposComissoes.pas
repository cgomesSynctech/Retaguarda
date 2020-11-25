unit DM_GruposComissoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMGruposComissoes = class(TDMManutencao)
    C_TabelaGRUPOCOMISSAO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    Q_Detalhe: TIBQuery;
    U_Detalhe: TIBUpdateSQL;
    C_Detalhe: TClientDataSet;
    C_TabelaQ_Detalhe: TDataSetField;
    C_DetalheGRUPOCOMISSAODET: TIntegerField;
    C_DetalheGRUPOCOMISSAO: TIntegerField;
    C_DetalheVALORINI: TBCDField;
    C_DetalheVALORFIM: TBCDField;
    C_DetalheCOMISSAO: TBCDField;
    C_DetalheDS: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_DetalheNewRecord(DataSet: TDataSet);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
    nSeq : integer;
  public
    { Public declarations }
  end;

var
  DMGruposComissoes: TDMGruposComissoes;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDMGruposComissoes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMGruposComissoes := Self;
  nSeq := 0;
end;

procedure TDMGruposComissoes.C_DetalheNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec( nSeq );
  C_DetalheGRUPOCOMISSAODET.Value := nSeq;
end;

procedure TDMGruposComissoes.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
var sl : TStringList;
    bRepetido : boolean;
begin
  inherited;
  if (C_Detalhe.RecordCount < 1) then begin
    DlgMsg.ShowMsg( 8042 );
    bSkip := True;
    Exit;
  end;

  // Verificando se existem valores repetidos...
  try
    bRepetido := False;
    sl := TStringList.Create;
    C_Detalhe.First;
    while not C_Detalhe.Eof do begin
      if sl.IndexOf( C_DetalheVALORINI.AsString ) < 0 then
        sl.Add( C_DetalheVALORINI.AsString )
      else begin
        bRepetido := True;
        Break;
      end;
      if sl.IndexOf( C_DetalheVALORFIM.AsString ) < 0 then
        sl.Add( C_DetalheVALORFIM.AsString )
      else begin
        bRepetido := True;
        Break;
      end;
      C_Detalhe.Next;
    end;
  finally
    sl.Free;
  end;

  if bRepetido then begin
    DlgMsg.ShowMsg( 8043 );
    bSkip := True;
    Exit;
  end;

end;

end.

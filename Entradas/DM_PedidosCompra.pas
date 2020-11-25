unit DM_PedidosCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DM_Entradas, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, IBEvents;

type
  TDMPedidosCompra = class(TDMEntradas)
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure C_TabelaSTATUSValidate(Sender: TField);
    procedure C_ItensSTATUSValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetMovimentos(sTipo : String = '') : Integer; override;
    function ExportarYAMAHA(sCodigo:String): Boolean;

  end;

var
  DMPedidosCompra: TDMPedidosCompra;

implementation
  uses DM_Projeto, Funcoes, TDM_Projeto;

{$R *.DFM}



function TDMPedidosCompra.ExportarYAMAHA;
Var sArquivo:TStringList;
Begin
  Try
    Result := True;
    sArquivo:=TStringList.Create;
    if not DirectoryExists('c:\appl_transfer\enviar') then
       ForceDirectories('c:\appl_transfer\enviar');
    SetCurrentDir('c:\appl_transfer\enviar');
    // (Registro de identificação da concessionária)
    sArquivo.Add('00'+Sonumeros(sCodigo,7)+'   SIACY');
    With C_Itens do Begin
      DisableControls;
      First;
      While Not Eof do Begin
        sArquivo.Add('21'+
                     SoNumeros(C_TabelaNumero.AsString,10)+
                     PreencherStr(Copy(FieldByName('I_Codigo').AsString,1,12),'0',12)+
                     SoNumeros(FieldByName('Quantidade').AsString,5));
        Next;
      End;
      sArquivo.SaveTofile('PEC_PED_'+Sonumeros(sCodigo,7)+'_'+SoNumeros(C_TabelaNumero.AsString,10)+'.TXT');
      EnableControls;
    End;
  Except
     On e: Exception do Begin
        Result := False;
     End;   
  End;
End;


procedure TDMPedidosCompra.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMPedidosCompra := self;

end;

procedure TDMPedidosCompra.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao = 102 and ');
  Where := replace(Uppercase(Where), 'TIPOMOVIMENTO', 'T.TIPOMOVIMENTO');
end;

Function TDMPedidosCompra.GetMovimentos;
begin
  with Q_SQL do begin
    Close;

    if sTipo = 'F' then begin //Capturar apenas se existe requisições de itens fornecidos pelo fornecedor escolhido;
      SQL.Text := 'Select count(*) as Movimentos '+
                  'from Entradasitens ei inner join entradas e ON e.entrada = ei.entrada '+
                  '     inner join ItensForn i on ei.item = i.item '+
                  'where e.Situacao = ''N'' and e.Status in (''S'', ''D'') and e.TipoPadrao = 103 '+
                  '  and i.Fornecedor = :F ';
      params[0].asInteger := C_TabelaFavorecido.Value;
    end else
      SQL.Text := 'Select Count(*) as Movimentos from Entradas where TipoPadrao = 103 '+
                  ' and Situacao = ''N'' and Status in (''S'', ''D'') ';
    Open;

    Result := FieldByName('Movimentos').asInteger;

    Close;

  end;
end;

procedure TDMPedidosCompra.C_TabelaSTATUSValidate(Sender: TField);
begin
  inherited;
  if (sender.asString = 'R') or (Sender.asString = 'L') then begin
    DlgMsg.ShowMsg(2400); //Não é possível definir os status acima manualmente
    raise exception.create('@@');
    end
  else if bAlteracao and (C_TabelaStatusOld.Value = 'R') and (sender.asString <> 'R') then begin
    DlgMsg.ShowMsg(2401); //Não é possível alterar o status se estiver como faturado
    raise exception.create('@@');
    end
  else if bAlteracao and (C_TabelaStatusOld.Value = 'L') and (sender.asString <> 'H') then begin
    DlgMsg.ShowMsg(2402); //Quando no status L só pode ir para o Fechado
    raise exception.create('@@');
  end;
end;

procedure TDMPedidosCompra.C_ItensSTATUSValidate(Sender: TField);
begin
  inherited;
  if (sender.asString = 'R') or (Sender.asString = 'L') then begin
    DlgMsg.ShowMsg(2400); //Não é possível definir os status acima manualmente
    raise exception.create('@@');
    end
  else if bAlteracao and (C_ItensStatusOld.Value = 'R') and (sender.asString <> 'R') then begin
    DlgMsg.ShowMsg(2401); //Não é possível alterar o status se estiver como faturado
    raise exception.create('@@');
    end
  else if bAlteracao and (C_ItensStatusOld.Value = 'L') and (sender.asString <> 'H') then begin
    DlgMsg.ShowMsg(2402); //Quando no status L só pode ir para o Fechado
    raise exception.create('@@');
  end;
end;

end.

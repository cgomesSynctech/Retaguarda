unit Dlg_exemplo_planos_pagamento;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, StdCtrls, TS_Label,
  DBCtrls, TS_DBText, TS_LastDataObject, DlgMsg, Menus,
  TS_PopupMenu, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton, 
  TS_BitBtn, funcoes, DB, dxDBTLCl, dxGrClms,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, FormsComponent, TS_Image,
  dxfLabel, TS_MaxPanel, dxEditor, dxExEdtr, dxEdLib, TS_CalcEdit,
  TS_QDBGrid, TS_CurrencyEdit, teCtrls, TS_EffectsPanel, IBCustomDataSet,
  DBClient, Placemnt, BTOdeum;

type
  TDlgExemplo_planos_pagamento = class(TFrmModeloCadastros)
    TS_Label5: TTS_Label;
    TS_Label1: TTS_Label;
    dfValor: TTS_CurrencyEdit;
    dxDBGrid1: TTS_QDBGrid;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridDateColumn;
    dxDBGrid1Column3: TdxDBGridCurrencyColumn;
    C_Exemplo: TClientDataSet;
    C_ExemploParcela: TIntegerField;
    C_ExemploVencimento: TDateTimeField;
    C_ExemploDS: TDataSource;
    C_ExemploValor: TCurrencyField;
    procedure FormActivate(Sender: TObject);
    procedure dfValorKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    procedure GerarParcelamento( nEntradaFixa : Currency );
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgExemplo_planos_pagamento: TDlgExemplo_planos_pagamento;

implementation
  uses DM_Planos_Pagamento, DM_Projeto;

{$R *.DFM}

procedure TDlgExemplo_planos_pagamento.GerarParcelamento;
  procedure LimparParcelas;
  begin
    C_Exemplo.EmptyDataSet;
  end;

var
  sEntrada, sParcelas, Str : String;
  slParcelas : TStringList;
  i : Integer;
begin

  LimparParcelas;

  {Parametros do Parcelamento}

  DMProjeto.GerarPlanoPgto(DMPlanos_Pagamento.C_Tabela, dfValor.Value, nEntradaFixa, DMPlanos_Pagamento.C_TabelaJuros.Value, DMProjeto.dDataSistema,
                           DMPlanos_Pagamento.C_TabelaPlanoPagamento.Value, sEntrada, sParcelas );

  {Gerando o Parcelamento}
  if (sEntrada <> '') then begin

    C_Exemplo.Append;

    //Numero da Parcela
    C_ExemploParcela.AsString := SeparaStrings(sEntrada, ';', 1);

    //Data do Vencimento
    C_ExemploVencimento.asString := SeparaStrings(sEntrada, ';', 2);

    //Valor da Parcela
    C_ExemploValor.asString := SeparaStrings(sEntrada, ';', 3);

    C_Exemplo.Post;

  end;

  if sParcelas <> '' then begin
    slParcelas := TStringList.Create;
    slParcelas.SetText(PChar(sParcelas));
    for i := 0 to slParcelas.Count - 1 do begin
      str := slParcelas[i];

      if Str = '' then
        Continue;

      C_Exemplo.Append;

      //Numero da Parcela
      C_ExemploParcela.AsString := SeparaStrings(str, ';', 1);

      //Data do Vencimento
      C_ExemploVencimento.asString := SeparaStrings(str, ';', 2);

      //Valor da Parcela
      C_ExemploValor.asString := SeparaStrings(str, ';', 3);

      C_Exemplo.Post;

    end; //for i:=1 to ...

    slParcelas.Free;
  end;
end;

procedure TDlgExemplo_planos_pagamento.FormActivate(Sender: TObject);
begin
  inherited;
  btGravar.Click;
end;

procedure TDlgExemplo_planos_pagamento.dfValorKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
    btGravar.Click;
end;

procedure TDlgExemplo_planos_pagamento.FormShow(Sender: TObject);
begin
  inherited;
  C_Exemplo.CreateDataSet;
end;

procedure TDlgExemplo_planos_pagamento.btGravarClick(Sender: TObject);
begin
  inherited;
  GerarParcelamento( 0 );
end;

end.

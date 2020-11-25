unit Dlg_RecalcularMinimo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, StdCtrls,
  TS_Label, TS_LastDataObject, DlgMsg, Menus,
  TS_PopupMenu, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  TS_BitBtn, TS_CheckBox, dxCntner, dxExEdtr, dxEdLib, FormsComponent,
  TS_Image, dxfLabel, TS_MaxPanel, dxEditor, TS_DateTimePicker,
  teCtrls, TS_EffectsPanel, TS_CalcEdit, BTOdeum, Placemnt, TS_PopupEdit,
  TS_PopupFiltrarItens, dxfProgressBar, DB, IBCustomDataSet, IBQuery;

type
  TDlgRecalcularMinimo = class(TFrmModeloCadastros)
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    dfQtdeMinimo: TTS_CalcEdit;
    dfQtdeMaximo: TTS_CalcEdit;
    Bevel1: TBevel;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    dfQtdePedido: TTS_CalcEdit;
    dfQtdeDias: TTS_CalcEdit;
    cbMinimo: TTS_CheckBox;
    cbPedido: TTS_CheckBox;
    cbMaximo: TTS_CheckBox;
    dtDataI: TTS_DateTimePicker;
    dtDataF: TTS_DateTimePicker;
    PopupFiltroItens: TTS_PopupFiltrarItens;
    Barra: TdxfProgressBar;
    Q_SQLReport: TIBQuery;
    procedure btGravarClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgRecalcularMinimo: TDlgRecalcularMinimo;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgRecalcularMinimo.btGravarClick(Sender: TObject);
var nMinimo,nMaximo,nDias,nDiasPedido,nDiasEstoque: single;
    sWhere: string;
    bZerarTodos: boolean;
begin
  inherited;
  Q_SQLReport.Close;
  Q_SQLReport.SQL.Text := 'execute procedure PP_CALCULA_GIRO_PRODUTO(:DTINICIO, :DTFIM)';
  Q_SQLReport.ParamByName('DTINICIO').AsDateTime := trunc(dtDataI.date);
  Q_SQLReport.ParamByName('DTFIM').AsDateTime := trunc(dtDataF.date);
  Q_SQLReport.ExecSQL;

  if DlgMsg.ShowMsg(3004) <> 100 then
    exit;
  Barra.Max := 10;
  Barra.Position := 0;
  Barra.Visible := True;
  bZerarTodos := DlgMsg.ShowMsg(6002) = 100;

  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

  nMinimo := 1 + truncar((dfQtdeMinimo.value)/100,2);
  nMaximo := 1 + truncar((dfQtdeMaximo.value)/100,2);
  nDiasEstoque := dfQtdeDias.value;
  nDias   := (trunc(dtDataF.date) - trunc(dtDataI.date)) + 1;
  nDiasPedido := nDiasEstoque + dfQtdePedido.value;
  with DMProjeto.Q_SQL do begin
    SQL.Text := 'update itens i set ';

    if cbMinimo.checked then
      SQL.Text := SQL.Text + 'i.qtdeminimo = (((( I.GiroEstoqueMinimo) / '+Replace(FloatToStr(nDias),',','.')+') * '+Replace(FloatToStr(nDiasEstoque),',','.')+') * '+Replace(FloatToStrF(nMinimo, ffNumber,10,3),',','.')+') ';

    if cbPedido.checked then begin
      if cbMinimo.checked then
        SQL.Text := SQL.Text + ' , ';
      SQL.Text := SQL.Text + 'i.pontopedido = (((I.GiroEstoqueMinimo) / '+Replace(FloatToStr(nDias),',','.')+') * '+Replace(FloatToStr(nDiasPedido),',','.')+') ';
    end;

    if cbMaximo.checked then begin
      if cbMinimo.checked or cbPedido.checked then
        SQL.Text := SQL.Text + ' , ';
      SQL.Text := SQL.Text + 'i.qtdemaximo = ((((I.GiroEstoqueMinimo) / '+Replace(FloatToStr(nDias),',','.')+') * '+Replace(FloatToStr(nDiasEstoque),',','.')+') * '+Replace(FloatToStrF(nMaximo, ffNumber,10,3),',','.')+') ';
    end;

    if bZerarTodos then
      SQL.Add('where '+popupFiltroItens.getSQL+' and i.tipoitem = 1 ')
    else Begin
      SQL.Add('where '+popupFiltroItens.getSQL+' and i.item in (select distinct T.item from TRANSACOESESTOQUE T '+
      'where T.item = i.item and T.data >= :dDataI and T.data <= :dDataF) ');
      parambyname('dDataI').asdatetime := trunc(dtDataI.date);
      parambyname('dDataF').asdatetime := trunc(dtDataF.date);
    End;
    execsql;
    Barra.Position := 1;
    SQL.Text := 'update itens set qtdeminimo = 0 where qtdeminimo is null';
    execsql;
    Barra.Position := 2;
    SQL.Text := 'update itens set qtdeminimo = 1 where (qtdeminimo > 0 and qtdeminimo < 1) ';
    execsql;

    Barra.Position := 3;
    SQL.Text := 'update itens set qtdeminimo = cast(qtdeminimo as integer) where qtdeminimo <> 0';
    execsql;

    Barra.Position := 4;
    SQL.Text := 'update itens set qtdemaximo = 0 where qtdemaximo is null';
    execsql;

    Barra.Position := 5;
    SQL.Text := 'update itens set qtdemaximo = 1 where (qtdemaximo > 0 and qtdemaximo < 1) ';
    execsql;
    Barra.Position := 6;
    SQL.Text := 'update itens set qtdemaximo = cast(qtdemaximo as integer) where qtdemaximo <> 0';
    execsql;

    Barra.Position := 7;
    SQL.Text := 'update itens set pontopedido = 0 where qtdeminimo is null';
    execsql;
    Barra.Position := 8;
    SQL.Text := 'update itens set pontopedido = 1 where (pontopedido > 0 and pontopedido < 1) ';
    execsql;
    Barra.Position := 9;
    SQL.Text := 'update itens set pontopedido = cast(pontopedido as integer) where pontopedido <> 0';
    execsql;
    Barra.Position := 10;
  end;

  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  DlgMsg.ShowMsg(6044);

  close;
  Barra.Position := 0;
  Barra.Visible := False;

end;

procedure TDlgRecalcularMinimo.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TDlgRecalcularMinimo.FormCreate(Sender: TObject);
begin
  inherited;
  dtDataI.date := DMProjeto.dDataSistema - 30;
  dtDataF.date := DMProjeto.dDataSistema;

end;

end.

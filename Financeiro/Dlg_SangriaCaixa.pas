{
- Tabelas Principais:

	Contas.

- Objetivo:

	Fazer a abertura do caixa diariamente. Informando o funcionario selecionado para o
	Caixa. O sistema seleciona o caixa automaticamente (rotina: DMProjeto.DefinirCaixa)
      através da máquina(tabela:contas, campo:maquinascaixa) ou funcionário(tabela:contas,
      campo: funscaixa).

- Funcionalidades:

	Com a abertura do Caixa, o caixa estará habilitado para realizar transações finan
	ceiras. Em caso de se precisar colocar mais dinheiro disponível na abertura do caixa
      em "Fundo de Troco" informe o valor e a conta proveniente deste dinheiro.
	Em caso de encerramento do caixa, o sistema não permitirá abrir novamente o caixa
	(no mesmo dia do fechamento).

- Quais cuidados devem ser tomados por quem irá alterar a unit.

	Prestar bem a atenção do que está fazendo!
	A informação do turno só será visualizada, caso o parâmetro "Turnos" seja igual a "S".
	Caso um turno já tenha sido utilizado em um caixa (HistoricoCaixas), este caixa não
 	poderá usar o turno já existente.
	Os funcionarios do lookupcombobox serão selecionados de acordo com o evento "OnBeforeOpen"
	da Query Q_Funcionarios, ou seja, tipofavorecido = "U" e Cargo = Parametro('Cargo_Caixa')

-----------------------------------------------------------------------------------------------
}
unit Dlg_SangriaCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Db, DBTables, DBCtrls, StdCtrls, ExtCtrls,
  DlgMsg, Buttons, TS_SpeedButton, TS_BitBtn,
  IBCustomDataSet, IBQuery, TS_DBLookupComboBox, TS_Edit, TS_Label,
  TS_Bevel, TS_LastDataObject, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxfLabel, FormsComponent, TS_Image,
  TS_MaxPanel, TS_Shape, TS_CalcEdit, Menus, teCtrls,
  TS_EffectsPanel, TS_PopupMenu, BTOdeum, Placemnt;

type
  TDlgSangriaCaixa = class(TFrmModeloCadastros)
    lbCaixa: TdxfLabel;
    lbData: TdxfLabel;
    dxfLabel3: TdxfLabel;
    dxfLabel1: TdxfLabel;
    dxfLabel2: TdxfLabel;
    lbFunc: TdxfLabel;
    lbSaldo: TdxfLabel;
    dxfLabel6: TdxfLabel;
    lbSituacao: TdxfLabel;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    edValor: TTS_CalcEdit;
    TS_Label1: TTS_Label;
    btContabilidade: TTS_SpeedButton;
    TS_Label2: TTS_Label;
    dfReferente: TTS_Edit;
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function  Validacoes(bMostrarMensagem:boolean) : boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btContabilidadeClick(Sender: TObject);
  private
    // Adriano
//    DMContabil: TDMContabilidade;
  public
    { Public declarations }
  end;

var
  DlgSangriaCaixa: TDlgSangriaCaixa;

implementation

uses funcoes, DM_Projeto, DM_Financeiro, DM_ECF, RegReducaoZ_R06;

{$R *.DFM}

function TDlgSangriaCaixa.Validacoes;
begin
  result := false;
  if DMFinanceiro.Caixa_Situacao = 'Aberto' then begin
    if DMFinanceiro.Caixa_MovimentoCorrente < DMProjeto.dDataSistema then begin  // => que o Caixa não foi fechado no dia anterior
      DlgMsg.ShowMsg( 398 );
      exit;
      end
    end
  else if (DMFinanceiro.Caixa_Situacao = 'Encerrado') and (DMFinanceiro.Caixa_MovimentoCorrente = DMProjeto.dDataSistema) then begin
    DlgMsg.ShowMsg( 400 );
    Exit;
  end;
  result := true;
end;


procedure TDlgSangriaCaixa.btGravarClick(Sender: TObject);
var
  sMensagem : String;
begin
  if not Validacoes(true) then
    exit;
  try
    DMFinanceiro.Transferir(DMFinanceiro.nContaPadrao, 1, edValor.value, dfReferente.text, '',
                   '', -1, DMProjeto.getDataServidor  );
  except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DMProjeto.GeraLog('Suprimentos',e.message);
    end;
  end;

  try
    SendLastDataObject(Self.Name, 'Contas', 'Conta',DMFinanceiro.nContaPadrao,false );
  except
  end;
  if DMFinanceiro.C_ContasCx.Active then begin
  	DMFinanceiro.C_ContasCx.Close;
    DMFinanceiro.C_ContasCx.Open;
  end;

  if DMFinanceiro.C_ContasCxBc.Active then begin
  	DMFinanceiro.C_ContasCxBc.Close;
    DMFinanceiro.C_ContasCxBc.Open;
  end;
  if DMFinanceiro.C_Contas.Active then begin
  	DMFinanceiro.C_Contas.Close;
    DMFinanceiro.C_Contas.Open;
  end;

  if edValor.Value > 0 then Begin
    DMECF.ECF1.Sangria(FormatFloat('0.00',edValor.Value),DMProjeto.sLoginName);
   {PAF} {Chamada da função para Guardar R06 Passando o 'DENOMINACAO = RG }
   DMProjeto.ReducaoZ_R06('CN');




  End;


  ModalResult := mrOk;

end;

procedure TDlgSangriaCaixa.FormShow(Sender: TObject);
begin
  inherited;
  {Data da Abertura}
  lbCaixa.Caption := DMFinanceiro.Caixa_Nome;
  lbData.Caption 	:= FormatDateTime(ShortDateFormat,DMFinanceiro.Caixa_MovimentoCorrente);
  lbFunc.Caption	:= DMProjeto.sLoginName;
  lbSaldo.Caption := formatfloat('###,###,##0.00',DMFinanceiro.SaldoConta(DMFinanceiro.nContaPadrao,DMProjeto.dDataSistema,'5'));
  lbSituacao.Caption 	:= DMFinanceiro.Caixa_Situacao;
	lbFunc.Autosize 		:= false;
  lbFunc.Autosize 		:= true;
  lbData.Autosize 		:= false;
  lbData.Autosize 		:= true;
  lbSaldo.Autosize 		:= false;
  lbSaldo.Autosize 		:= true;
  lbSituacao.Autosize := false;
  lbSituacao.Autosize := true;
end;

procedure TDlgSangriaCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // Adriano
{  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;}
  ////////////////////
end;

procedure TDlgSangriaCaixa.btContabilidadeClick(Sender: TObject);
begin
  inherited;
	if not Validacoes(false) then
  	Exit;
  // Adriano
{  DMContabil.ContabilizaAberturaCaixa(-1,DMFinanceiro.nContaPadrao,1,StrToFloat(edValor.text));

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.free;}
  ////////////////
end;

end.

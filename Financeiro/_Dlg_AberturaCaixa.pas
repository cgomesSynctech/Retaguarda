{
Autor: Rosil
Data de Criação   		:

- Historico de Alterações:

	20/01/2001 - André - Mudança da Classe/Interbase/MultiIdioma

- Localização:

      No menu principal, escolha Caixa e em seguida "Abertura de Caixa"

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
unit Dlg_AberturaCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Db, DBTables, DBCtrls, StdCtrls, ExtCtrls,
  DlgMsg, Buttons, TS_SpeedButton, TS_BitBtn,
  IBCustomDataSet, IBQuery, TS_DBLookupComboBox, TS_Edit, TS_Label,
  TS_Bevel, TS_LastDataObject, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxfLabel, FormsComponent, TS_Image,
  TS_MaxPanel, TS_Shape, TS_CalcEdit, Menus, teCtrls,
  TS_EffectsPanel, TS_PopupMenu, DM_Contabilidade, BTOdeum, Placemnt, ECF;

type
  TDlgAberturaCaixa = class(TFrmModeloCadastros)
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
    Contabilidade1: TMenuItem;
    AbrirCaixa1: TMenuItem;
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function  Validacoes(bMostrarMensagem:boolean) : boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure edValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    // Adriano
    DMContabil: TDMContabilidade;
  public
    { Public declarations }
  end;

var
  DlgAberturaCaixa: TDlgAberturaCaixa;

implementation

uses funcoes, DM_Projeto, DM_Financeiro, Frm_Contabilidade, dm_ECF;

{$R *.DFM}

function TDlgAberturaCaixa.Validacoes;
begin
	result := false;
  if DMFinanceiro.Caixa_Situacao = 'Aberto' then begin
    if DMFinanceiro.Caixa_MovimentoCorrente < DMProjeto.dDataSistema then begin  // => que o Caixa não foi fechado no dia anterior
      // ShowMessage('O Caixa não foi Fechado no Movimento anterior!  É necessário Fechá-lo, antes de abrir o Movimento de hoje.');
      DlgMsg.ShowMsg( 398 );
      exit;
      end
    else begin
      // ShowMessage('O Caixa já está aberto!');
      DlgMsg.ShowMsg( 399 );
      exit;
    end;
    end
  else if (DMFinanceiro.Caixa_Situacao = 'Encerrado') and (DMFinanceiro.Caixa_MovimentoCorrente = DMProjeto.dDataSistema) then begin
    // Showmessage('O Caixa já foi encerrado hoje!');
    DlgMsg.ShowMsg( 400 );
    Exit;
  end;
	result := true;
end;


procedure TDlgAberturaCaixa.btGravarClick(Sender: TObject);
var
  sMensagem, s : String;
begin

	if not Validacoes(true) then
  	exit;

  try
    DMFinanceiro.AbrirCaixa(DMProjeto.getDataServidor,edValor.Value,1,DMProjeto.nFuncionario);
    DMContabil.ContabilizaAberturaCaixa(-1,DMFinanceiro.nContaPadrao,1,edValor.Value);

    if not DMContabil.Salvar(-1) then
      raise Exception.Create(DMProjeto.GetMsg(3117));
    ///////////////////////////
  except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DMProjeto.GeraLog('Abertura Caixa',e.message);
    end;
  end;

  try
    SendLastDataObject(Self.Name, 'Contas', 'Conta',DMFinanceiro.nContaPadrao,
                         false );
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
  {
  (* Abertura do ECF *)
  if (DMProjeto.Parametro('CaixaECF') = 'S') and (DMECF.ECF1.Modelo <> Nenhuma) then begin
    s := DMECF.ECF1.ChkECFAberto;
    if s = 'ECF Aberto' then begin
      DlgMsg.ShowMsg(6034);
    end
    else begin
      if DlgMsg.ShowMsg(6032) = 100 then begin
        DMECF.ECF1.AberturaDia('0,01', 'Dinheiro');
        if not (DMProjeto.nModeloECF in [1,10]) then
          DMECF.ECF1.Sangria('0,00', DMProjeto.sLoginName);
      end;
    end;
  end;
  }
  ModalResult := mrOk;

end;

procedure TDlgAberturaCaixa.FormShow(Sender: TObject);
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

procedure TDlgAberturaCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
  ////////////////////
end;

procedure TDlgAberturaCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then
    btContabilidade.visible := false;

  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgAberturaCaixa.btContabilidadeClick(Sender: TObject);
begin
  inherited;
	if not Validacoes(false) then
  	Exit;
  DMContabil.ContabilizaAberturaCaixa(-1,DMFinanceiro.nContaPadrao,1,StrToFloat(edValor.text));

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgAberturaCaixa.edValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_return then
    btGravarClick(self);
end;

end.

{
TradeSoft Ltda
Autor : Rosil
Data de Criação:

- Historico de Alteracoes:

  10/01/2001	- André	- Mundança de Classe, Interbase, MultiIdioma

- Localização:

	No menu "Contas a Receber" escolha "Invoices a Receber".

- Tabelas Principais:

	TitulosAReceber

- Objetivo:

	Inserir, Pesquisar, Apagar, Consultar títulos que estão em Aberto, Cancelados, Liquidados,
	Atrasados, etc.

- Funcionalidades:

	Cancelamentos de Títulos/Documentos recebidos. (botão Pagtos Recebidos)
	Fazer um Recebimento de Título em Aberto (baixa). (botão direito-F2)
	Pesquisar no período e por tipo de Status.
	Imprimir Recibo. (botão direito)
	Bloquear Cliente. (botão direito)
	Alterar o Status da Invoice (botão direito)

- Quais cuidados devem ser tomados por quem irá alterar a unit.

	Para fazer o pagamento de Invoices (F2) atente com os parâmetros passados para o form
	DlgDepositos.

-----------------------------------------------------------------------------------------------
}
unit frm_A_Receber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, StdCtrls, ComCtrls, Menus, Buttons, DBCtrls, ExtCtrls, Mask,
  T_AutorizacaoDialog, ImgList,
  db, TS_PopupMenu,
  TS_ScrollBox, TS_SpeedButton,
  TS_Bevel, TS_Label, TS_DBText, TS_DBEdit, TS_DBLookupComboBox,
  TS_PageControl, TS_GroupBox, TS_DBMemo, TS_Image, TS_ComboBox,
  FormComponent, DlgMsg, TS_Shape,
  TS_LastDataObject, TS_DBEditFavorecido, TS_DBLookupTipoFav, TS_MaxPanel,
  TS_DBEditNumber, TS_DBTextEffect, 
  TS_CheckListBox, dxExEdtr, dxEdLib, dxDBELib, dxCntner,
  dxEditor, TS_DBButtonEdit, dxfLabel, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, TS_DBEditDate, dxDBTLCl, dxGrClms, 
  dxGrClEx, Dlg_popupContas, teCtrls,
  TS_EffectsPanel, DBText, dxTLClms, dxDBEdtr, Variants, BTOdeum, Placemnt,
  dxfProgressBar, TS_CheckBox;

type
  TFrmA_Receber = class(TFrmPadrao)
    lblDoc: TTS_Label;
    dfNota: TTS_DBEdit;
    Label10: TTS_Label;
    Label12: TTS_Label;
    lbStatus: TTS_Label;
    Label6: TTS_Label;
    Label7: TTS_Label;
    Label8: TTS_Label;
    Label9: TTS_Label;
    dfParc: TTS_DBEdit;
    dfObs: TTS_DBMemo;
    TS_Label4: TTS_Label;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    dfValor: TTS_DBEditNumber;
    dbtStatus: TTS_DBText;
    dfCompetencia: TTS_DBEditDate;
    dfVencimento: TTS_DBEditDate;
    GridID: TdxDBGridMaskColumn;
    GridTITULO: TdxDBGridMaskColumn;
    GridVENCIMENTO: TdxDBGridDateColumn;
    GridCOMPETENCIA: TdxDBGridDateColumn;
    GridOBS: TdxDBGridMaskColumn;
    GridDATAANTECIPACAO: TdxDBGridDateColumn;
    GridDATAATRASADO: TdxDBGridDateColumn;
    GridDATACANCELAMENTO: TdxDBGridDateColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridDescStatus: TdxDBGridLookupColumn;
    GridSaldo: TdxDBGridColumn;
    GridCREDITOUTILIZADO: TdxDBGridMaskColumn;
    GridVALOR: TdxDBGridMaskColumn;
    GridVALORPAGO: TdxDBGridMaskColumn;
    GridVALORDESCANTECIPADO: TdxDBGridMaskColumn;
    GridDESCONTOS: TdxDBGridMaskColumn;
    GridJUROSRECEBIDOS: TdxDBGridMaskColumn;
    GridCREDITOGERADO: TdxDBGridMaskColumn;
    dfCliente: TTS_DBEditFavorecido;
    btContabilidade: TTS_SpeedButton;
    ppFiltrar: TTS_PopupMenu;
    AReceber1: TMenuItem;
    EmAtraso1: TMenuItem;
    Liquidados1: TMenuItem;
    Cancelados1: TMenuItem;
    N4: TMenuItem;
    Todos1: TMenuItem;
    N5: TMenuItem;
    ReceberPagamento1: TMenuItem;
    DarDescontos1: TMenuItem;
    ppmRecebimentos: TTS_PopupMenu;
    Legenda1: TMenuItem;
    VerRecebimento: TMenuItem;
    N6: TMenuItem;
    ltimoGravado1: TMenuItem;
    btReparcelar: TTS_SpeedButton;
    TS_Label2: TTS_Label;
    TS_DBTextEffect7: TTS_DBTextEffect;
    Bevel1: TBevel;
    CancelarRecebimento: TMenuItem;
    N7: TMenuItem;
    cbLockFav: TTS_CheckBox;
    TS_Label1: TTS_Label;
    cmbTipoCobranca: TTS_DBLookupComboBox;
    lbDiasAtraso: TTS_DBText;
    lbMsgAtraso: TTS_Label;
    btVerRecebimentos: TTS_SpeedButton;
    TS_Label3: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    dfDataAntecip: TTS_DBEditDate;
    dfDescAntecip: TTS_DBEditNumber;
    dfPercMulta: TTS_DBEditNumber;
    dfPercJuros: TTS_DBEditNumber;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    TS_Label11: TTS_Label;
    cmbEmpresa: TTS_DBLookupComboBox;
    cmbCarteira: TTS_DBLookupComboBox;
    dfProrrogacao: TTS_DBEditDate;
    pnCancelado: TdxfLabel;
    ImprimirBoleto1: TMenuItem;
    ImprimirTtuloReceber1: TMenuItem;
    procedure btPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BloquearClienteClick(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure RegistrarPagamentodoCliente1Click(Sender: TObject);
    procedure DBEdit14Change(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure roStatusClick(Sender: TObject);
    procedure DeixarSemCrditoSuspenso1Click(Sender: TObject);
    procedure AtivarTtulo1Click(Sender: TObject);
    procedure ProtestarTtulo1Click(Sender: TObject);
    procedure CobranaJudicial1Click(Sender: TObject);
    procedure btProxCodClick(Sender: TObject);
    procedure IndicadoemCartrio1Click(Sender: TObject);
    procedure ComAdvogados1Click(Sender: TObject);
    procedure ComAgnciadeCobrana1Click(Sender: TObject);
    procedure GridSelection(Sender: TObject; bSelected: Boolean;
      var bCanSelect: Boolean);
    procedure DarDescontos1Click(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure TS_DBGrid2EspecialSelection(Sender: TObject;
      bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
    procedure SignificadodasCores1Click(Sender: TObject);
    procedure EmAberto1Click(Sender: TObject);
    procedure ApagarDadosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure DBReceitasDescContaInitPopup(Sender: TObject);
    procedure ppmPadraoPopup(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btComando2Click(Sender: TObject);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure dfValorChange(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure ReceberPagamento1Click(Sender: TObject);
    procedure ltimoGravado1Click(Sender: TObject);
    procedure btReparcelarClick(Sender: TObject);
    procedure ppFiltrarPopup(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure CancelarRecebimentoClick(Sender: TObject);
    procedure ppmRecebimentosPopup(Sender: TObject);
    procedure PageChange(Sender: TObject);
    procedure FormComponentBeforeSave(Sender: TObject; var bSkip: Boolean);
    procedure FormComponentInclusao(Sender: TObject);
    procedure btVerRecebimentosClick(Sender: TObject);
    procedure ImprimirBoleto1Click(Sender: TObject);
    procedure ImprimirTtuloReceber1Click(Sender: TObject);
  protected
  	DlgPopUp : TDlgpopupContas;
  private
    { Private declarations }
    nTmp : integer;
    ID : integer;
    bBaixa : Boolean;
    nIDBaixa, IDParcelaAtual : Integer;
		procedure DarDesconto;
    procedure ReceberPagamento;
  protected
     procedure Estado_Inicial; override;
  public
    { Public declarations }
  end;

var
  sOrdem: String;
  FrmA_Receber: TFrmA_Receber;

implementation
  uses DM_A_Receber, funcoes, DM_Projeto, Dlg_CoresStatus, DM_Financeiro, Rpt_DocCobranca;

{$R *.DFM}

procedure TFrmA_Receber.Estado_Inicial;
var
  i : integer;
begin
  inherited;

  for i := 0 to ComponentCount - 1 do begin
    if Esquerda(Components[i].Name,2) = 'ro' then
      if Components[i] is TTS_DBEdit then begin
        TTS_DBEdit(Components[i]).ReadOnly := false;
        TTS_DBEdit(Components[i]).Color    := clWindow;
        end
      else if Components[i] is TTS_DBLookupComboBox then begin
        TTS_DBLookupComboBox(Components[i]).ReadOnly := false;
        TTS_DBLookupComboBox(Components[i]).Color    := clWindow;
      end;
  end;

  Pesquisa := 1;

  if pos('Loc:',DMProjeto.sParametrosForm) > 0 then
    Localizar('',' and ID = '+SeparaStrings(DMProjeto.sParametrosForm,':',2)+' ');

end;

procedure TFrmA_Receber.btPesquisarClick(Sender: TObject);
begin
{  if FormatoTabela.Down then
    Localizar('','')
  else begin
    if not (ActiveControl is TTS_DBEdit) and not (ActiveControl is TTS_DBLookupComboBox) then
      Localizar('','')
    else }
   inherited;
//  end;
end;

procedure TFrmA_Receber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DlgPopup.free;
  // Adriano
  if DMA_Receber.ContabilidadeAtivado then
    DMA_Receber.ContabilidadeDesativado;
  ////////////////////

  FrmA_Receber := nil;
end;

procedure TFrmA_Receber.BloquearClienteClick(Sender: TObject);
begin
  inherited;
  if DMA_Receber.C_TabelaCliente.AsVariant = null then begin
    DlgMsg.ShowMsg(200); // 'Selecione o cliente que deseja bloquear!'
    exit;
  end;

  with DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'Update Favorecidos set Situacao = ''B'' ' +
                'where  Favorecido = '+DMA_Receber.C_TabelaCliente.AsString;
    ExecSQL;
    DlgMsg.ShowMsg(201); // 'Cliente bloqueado com sucesso!'
  end;
end;

procedure TFrmA_Receber.Label19Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmBancos',self,true);
end;


procedure TFrmA_Receber.ReceberPagamento;
begin
  IDParcelaAtual := DMA_Receber.C_TabelaID.Value;
  if not DMProjeto.dlgAutorizacao.ExecuteX(self.name, 'FAZERRECEB') then
    exit;

  if not DMA_Receber.bAlteracao then begin
    // ShowMessage('É preciso cadastrar primeiro para poder baixar!');
    DlgMsg.ShowMsg( 205 );
    exit;
  end;

  if (FormatoTabela.Checked) and (Grid.Selecionados <> '') then begin
    with DMProjeto do begin
      SetParametrosForm( [null, DMA_Receber.C_TabelaCliente.AsInteger, Grid.Selecionados] );
      CriarForm( 'DlgDepositos', self, true );
    end;
  end else if (DMA_Receber.C_TabelaStatus.Value < 50) and (DMA_Receber.C_TabelaStatus.Value >0) then begin
    with DMProjeto do begin
       SetParametrosForm( [null, DMA_Receber.C_TabelaCliente.AsInteger, DMA_Receber.C_TabelaID.AsInteger] );
       CriarForm( 'DlgDepositos', self, true );
    end;
  end else
    DlgMsg.ShowMsg(206); // 'O Título já foi baixado!'
end;

procedure TFrmA_Receber.RegistrarPagamentodoCliente1Click(Sender: TObject);
begin
  inherited;
  ReceberPagamento;
end;

procedure TFrmA_Receber.DBEdit14Change(Sender: TObject);
begin
  inherited;
  {Só pode alterar se não foi lançado para alguma conta}
  dfValor.ReadOnly := DMA_Receber.bAlteracao and
                      ((DMA_Receber.C_TabelaValorPago.Value > 0) or not
                      (DMA_Receber.C_TabelaStatus.Value in [1..49]));

  {Só pode alterar se não foi liquidado}
  dfVencimento.ReadOnly := (DMA_Receber.bAlteracao and (DMA_Receber.C_TabelaStatus.Value > 39));

  if (DMA_Receber.C_TabelaStatus.Value = 0) and not DMA_Receber.C_TabelaStatus.Isnull then
    dbtStatus.Font.Color := clRed
  else
    dbtStatus.Font.Color := clBlack;

end;

procedure TFrmA_Receber.DBText1Click(Sender: TObject);
begin
  inherited;
  ActiveControl := nil;
end;

procedure TFrmA_Receber.roStatusClick(Sender: TObject);
begin
  inherited;
  if (DMA_Receber.C_TabelaStatus.Value = 0) and not DMA_Receber.C_TabelaStatus.Isnull then
    dbtStatus.Font.Color := clRed
  else
    dbtStatus.Font.Color := clBlack;
end;

procedure TFrmA_Receber.DeixarSemCrditoSuspenso1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(self.name, 'ALTSTATUSR') then // 'Desculpe, você não possui permissão para Alterar o Status!'
    exit;

  if DMA_Receber.C_TabelaStatus.Value >= 50 then begin
    DlgMsg.ShowMsg(208); //'Não é possível impor este Status a um Título Liquidado!  Estorne primeiro.');
    exit;
  end;

  With DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'Update TitulosAReceber set Status = -1 where ID = :ID ';
    ParamByName('ID').asInteger := DMA_Receber.C_TabelaID.Value;
    ExecSQL;
  end;

  if DMA_Receber.C_Tabela.State = dsBrowse then
    DMA_Receber.C_Tabela.Edit;

  DMA_Receber.C_TabelaStatus.Value := -1;

end;

procedure TFrmA_Receber.AtivarTtulo1Click(Sender: TObject);
begin
  inherited;
  if (DMA_Receber.C_TabelaStatus.Value > 0) or (DMA_Receber.C_TabelaStatus.Value < -1) then begin
    DlgMsg.ShowMsg(209); // 'O Título já está ativo!'
    exit;
  end;

  if not DMProjeto.dlgAutorizacao.ExecuteX(self.name, 'ALTSTATUSR') then // 'Desculpe, você não possui permissão para Alterar o Status!'
    exit;

  With DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'Update TitulosAReceber set Status = 1 where ID = :ID ';
    ParamByName('ID').asInteger := DMA_Receber.C_TabelaID.Value;
    ExecSQL;
  end;

  if DMA_Receber.C_Tabela.State = dsBrowse then
    DMA_Receber.C_Tabela.Edit;

  DMA_Receber.C_TabelaStatus.Value := 1;
end;

procedure TFrmA_Receber.ProtestarTtulo1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(self.name, 'ALTSTATUSR') then // 'Desculpe, você não possui permissão para Alterar o Status!'
    exit;

  if DMA_Receber.C_TabelaStatus.Value >= 50 then begin
    DlgMSg.ShowMsg(208); //'Não é possível impor este Status a um Título Liquidado!  Estorne primeiro.');
    exit;
  end;

  With DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'Update TitulosAReceber set Status = 4 where ID = :ID ';
    ParamByName('ID').asInteger := DMA_Receber.C_TabelaID.Value;
    ExecSQL;
  end;

  if DMA_Receber.C_Tabela.State = dsBrowse then
    DMA_Receber.C_Tabela.Edit;

  DMA_Receber.C_TabelaStatus.Value := 4;

end;

procedure TFrmA_Receber.CobranaJudicial1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(self.name, 'ALTSTATUSR') then //'Desculpe, você não possui permissão para Alterar o Status!'
    exit;

  if DMA_Receber.C_TabelaStatus.Value >= 50 then begin
    // ShowMessage('Não é possível impor este Status a um Título Liquidado!  Estorne primeiro.');
    DlgMsg.ShowMsg( 208 );
    exit;
  end;

  With DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'Update TitulosAReceber set Status = 6 where ID = :ID ';
    ParamByName('ID').asInteger := DMA_Receber.C_TabelaID.Value;
    ExecSQL;
  end;


  if DMA_Receber.C_Tabela.State = dsBrowse then
    DMA_Receber.C_Tabela.Edit;

  DMA_Receber.C_TabelaStatus.Value := 6;

end;

procedure TFrmA_Receber.btProxCodClick(Sender: TObject);
begin
  inherited;
  if DMA_Receber.C_Tabela.State = dsBrowse then
    DMA_Receber.C_Tabela.Edit;

  DMA_Receber.C_TabelaTitulo.Value := AdicionarStr(IntToStr(DMProjeto.NextID('Titulo')),'0',6);
end;

procedure TFrmA_Receber.IndicadoemCartrio1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(self.name, 'ALTSTATUSR') then //'Desculpe, você não possui permissão para Alterar o Status!'
    exit;

  if DMA_Receber.C_TabelaStatus.Value >= 50 then begin
    // ShowMessage('Não é possível impor este Status a um Título Liquidado!  Estorne primeiro.');
    DlgMsg.ShowMsg(208);
    exit;
  end;

  With DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'Update TitulosAReceber set Status = 4 where ID = :ID ';
    ParamByName('ID').asInteger := DMA_Receber.C_TabelaID.Value;
    ExecSQL;
  end;

  if DMA_Receber.C_Tabela.State = dsBrowse then
    DMA_Receber.C_Tabela.Edit;

  DMA_Receber.C_TabelaStatus.Value := 4;

end;

procedure TFrmA_Receber.ComAdvogados1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(self.name, 'ALTSTATUSR') then //'Desculpe, você não possui permissão para Alterar o Status!'
    exit;

  if DMA_Receber.C_TabelaStatus.Value >= 50 then begin
    // ShowMessage('Não é possível impor este Status a um Título Liquidado!  Estorne primeiro.');
    DlgMsg.ShowMsg( 208 );
    exit;
  end;

  With DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'Update TitulosAReceber set Status = 8 where ID = :ID ';
    ParamByName('ID').asInteger := DMA_Receber.C_TabelaID.Value;
    ExecSQL;
  end;


  if DMA_Receber.C_Tabela.State = dsBrowse then
    DMA_Receber.C_Tabela.Edit;

  DMA_Receber.C_TabelaStatus.Value := 8;

end;

procedure TFrmA_Receber.ComAgnciadeCobrana1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(self.name, 'ALTSTATUSR') then // 'Desculpe, você não possui permissão para Alterar o Status!'
    exit;

  if DMA_Receber.C_TabelaStatus.Value >= 50 then begin
    // ShowMessage('Não é possível impor este Status a um Título Liquidado!  Estorne primeiro.');
    DlgMsg.ShowMsg(208);
    exit;
  end;

  With DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'Update TitulosAReceber set Status = 7 where ID = :ID ';
    ParamByName('ID').asInteger := DMA_Receber.C_TabelaID.Value;
    ExecSQL;
  end;


  if DMA_Receber.C_Tabela.State = dsBrowse then
    DMA_Receber.C_Tabela.Edit;

  DMA_Receber.C_TabelaStatus.Value := 7;

end;

procedure TFrmA_Receber.GridSelection(Sender: TObject; bSelected: Boolean;
  var bCanSelect: Boolean);
begin
  inherited;
  bCanSelect := DMA_Receber.C_TabelaStatus.Value < 50;
end;

procedure TFrmA_Receber.DarDesconto;
var sDescontos : string;
		nDescontos : single;
begin
	sDescontos := InputBox('Desconto', 'Informe o Valor do Desconto:', '');
  if trim(sDescontos) = '' then
  	Exit;
  sDescontos := replace( trim(sDescontos), ',',DecimalSeparator);
  sDescontos := replace( trim(sDescontos), '.',DecimalSeparator);
  nDescontos := StrToFloat(trim(sDescontos));

  with DMA_Receber do begin
		if nDescontos > C_TabelaFaltaReceber.Value then begin
    	// ShowMessage('O desconto não pode ser maior que o Saldo a Receber!');
       DlgMsg.ShowMsg( 514 );
       Exit;
    end;
    if DlgMsg.ShowMsg( 515, [formatfloat('###,###,##0.00',nDescontos)] ) = 200 then
    	Exit;
    C_Tabela.Edit;

    C_TabelaDescontos.Value	:= C_TabelaDescontos.Value + nDescontos;
    if C_TabelaFaltaReceber.Value < 0.01 then
    	C_TabelaStatus.Value := 50;

    Gravar;
  end;

end;

procedure TFrmA_Receber.DarDescontos1Click(Sender: TObject);
begin
  inherited;
  if DMA_Receber.C_TabelaValorPago.Value >= DMA_Receber.C_TabelaValor.Value then begin
  	DlgMsg.ShowMsg( 537 );
    Exit;
  end;
	DarDesconto;
end;

procedure TFrmA_Receber.FormComponentAfterScroll(Sender: TObject);
var bPgtoParcial : boolean;
begin
  inherited;
  lbDiasAtraso.Visible:= DMA_Receber.C_TabelaDiasEmAtraso.Value > 0;
  lbMsgAtraso.Visible := lbDiasAtraso.Visible;

	if DMA_Receber.bAlteracao and (not FormatoTabela.Checked) then begin
		DMA_Receber.C_ContasOperacao.Close;
    DMA_Receber.C_ContasOperacao.Open;
	end;

	if DMA_Receber.bAlteracao and (not FormatoTabela.Checked) then begin
		DMA_Receber.C_DepositosDoc.Close;
    DMA_Receber.C_DepositosDoc.Open;
	end;

  // Adriano
   btContabilidade.enabled 	:= DMA_Receber.C_TabelaVenda.value = 0;
 /////////////////////////////

  {Cancelados}
  if (DMA_Receber.C_TabelaID.AsInteger <> 0) and (DMA_Receber.C_TabelaStatus.Value = 0) then begin
    pnCancelado.Visible := true;
    pnCancelado.Invalidate;
  end else
  	pnCancelado.Visible := false;

  {Verificando se já foi realizado algum pgto parcial}
    bPgtoParcial := false;
    with DMA_Receber.C_DepositosDoc do begin
      if Active then begin
      	disablecontrols;
    		if RecordCount > 0 then begin
      		first;
        	while not eof do begin
        		if fieldbyname('status').value < 70 then begin
      				bPgtoParcial := true;
        		end;
          	next;
        	end;
      	end;
      	enablecontrols;
      end;
    end;

  dfNota.readonly 			:= (DMA_Receber.C_TabelaStatus.Value = 0) or (DMA_Receber.C_TabelaStatus.Value >= 50) or (DMA_Receber.C_TabelaVenda.AsInteger<>0);
  if dfNota.readonly then
  	dfNota.Color := $00ebebeb
  else
  	dfNota.Color := clWhite;

  dfParc.readonly 			:= (DMA_Receber.C_TabelaStatus.Value = 0) or (DMA_Receber.C_TabelaStatus.Value >= 50) or (DMA_Receber.C_TabelaVenda.AsInteger<>0);
  if dfParc.readonly then
  	dfParc.Color := $00ebebeb
  else
  	dfParc.Color := clWhite;

  dfCliente.readonly 		:= (DMA_Receber.C_TabelaStatus.Value = 0) or (DMA_Receber.C_TabelaStatus.Value >= 50) or (DMA_Receber.C_TabelaVenda.AsInteger<>0);
  if dfCliente.readonly then
  	dfCliente.Color := $00ebebeb
  else
  	dfCliente.Color := clWhite;

  dfCompetencia.readonly:= (DMA_Receber.C_TabelaStatus.Value = 0) or (DMA_Receber.C_TabelaStatus.Value >= 50) or (DMA_Receber.C_TabelaVenda.AsInteger<>0);
  if dfCompetencia.readonly then
  	dfCompetencia.Color := $00ebebeb
  else
  	dfCompetencia.Color := clWhite;

  dfVencimento.readonly := (DMA_Receber.C_TabelaStatus.Value = 0) or (DMA_Receber.C_TabelaStatus.Value >= 50);
  if dfVencimento.readonly then
  	dfVencimento.Color := $00ebebeb
  else
  	dfVencimento.Color := clWhite;
  dfValor.readonly     := (DMA_Receber.C_TabelaStatus.Value = 0) or (DMA_Receber.C_TabelaStatus.Value >= 50) or (bPgtoParcial) or (DMA_Receber.C_TabelaVenda.AsInteger<>0);
  if dfValor.readonly then
  	dfValor.Color := $00ebebeb
  else
  	dfValor.Color := clWhite;
  btComando2.Visible		:= DMA_Receber.C_TabelaIDGerador_AReceber.AsInteger <> 0;
  btReparcelar.Visible 	:= (DMA_Receber.C_TabelaStatus.Value > 0) and (DMA_Receber.C_TabelaStatus.Value < 50) and (DMA_Receber.bAlteracao);
  btComando1.Visible 		:= (DMA_Receber.C_TabelaStatus.Value > 0) and (DMA_Receber.C_TabelaStatus.Value < 50) and (DMA_Receber.bAlteracao);
  btVerRecebimentos.Visible := (DMA_Receber.C_TabelaValorPago.Value+DMA_Receber.C_TabelaCreditoUtilizado.Value > 0) and (DMA_Receber.bAlteracao);
end;

procedure TFrmA_Receber.TS_DBGrid2EspecialSelection(Sender: TObject;
  bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
begin
  inherited;
    NewFont.Color := DMProjeto.CorPadrao( DMA_Receber.C_DepositosDocStatus.value );
    if DMA_Receber.C_DepositosDocStatus.value = 70 then
      NewFont.Style := [fsStrikeout];
end;

procedure TFrmA_Receber.SignificadodasCores1Click(Sender: TObject);
begin
  inherited;
	DlgCoresStatus := TDlgCoresStatus.Create(self);
  DlgCoresStatus.ShowModal;
  DlgCoresStatus.Release;
end;

procedure TFrmA_Receber.EmAberto1Click(Sender: TObject);
var sTexto, sWhereAdicional : string;
begin
  inherited;
  sWhereAdicional := '';
  if (ActiveControl = dfCliente) and (dfCliente.ID <> 0) then
  	sWhereAdicional := 'cliente = '+IntToStr(dfCliente.ID)+' ';

  if (ActiveControl = dfValor) and (dfValor.value <> 0) then
  	sWhereAdicional := 'valor = '+FloatToStr(dfValor.Value)+' ';

  if (ActiveControl = dfVencimento) and (dfVencimento.Date <> 0) then
  	sWhereAdicional := 'vencimento = '+QuotedStr(formatdatetime('mm/dd/yyyy',dfVencimento.Date))+' ';

  if (ActiveControl = dfCompetencia) and (dfCompetencia.Date <> 0) then
  	sWhereAdicional := 'competencia = '+QuotedStr(formatdatetime('mm/dd/yyyy',dfCompetencia.Date))+' ';

  if TWinControl(Sender).Tag = 1 then begin //Em aberto e em atraso
  	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'FiltroAber' ) then
  		exit;
  	Localizar(DMA_Receber.Q_Tabela.SQL.Text,'where Status > 0 and Status < 50 '+iif(sWhereAdicional<>'',' and ','')+sWhereAdicional)
  end else if TWinControl(Sender).Tag = -1 then begin//Todas
  	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'FiltroTodo' ) then
  		exit;
    Localizar(DMA_Receber.Q_Tabela.SQL.Text,sWhereAdicional)
  end else if TWinControl(Sender).Tag = 3 then begin
  	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'FiltroAtra' ) then
  		exit;
  	Localizar(DMA_Receber.Q_Tabela.SQL.Text,'where Status = '+IntToStr(TWinControl(Sender).Tag)+iif(sWhereAdicional<>'',' and ','')+sWhereAdicional);
  end else if TWinControl(Sender).Tag = 50 then begin
  	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'FiltroLiq' ) then
  		exit;
  	Localizar(DMA_Receber.Q_Tabela.SQL.Text,'where Status = '+IntToStr(TWinControl(Sender).Tag)+iif(sWhereAdicional<>'',' and ','')+sWhereAdicional);
  end else if TWinControl(Sender).Tag = 0 then begin
  	if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'FiltroCan' ) then
  		exit;
  	Localizar(DMA_Receber.Q_Tabela.SQL.Text,'where Status = '+IntToStr(TWinControl(Sender).Tag)+iif(sWhereAdicional<>'',' and ','')+sWhereAdicional);
  end;
  DMA_Receber.nFiltro := TWinControl(Sender).Tag;
  sTexto   := replace(TMenuItem(Sender).Caption,'&','');
	// btComando1.Caption := 'IrFiltro: '+sTexto;
end;

procedure TFrmA_Receber.ApagarDadosClick(Sender: TObject);
var nID : integer;
begin
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'CAN' ) then
  	exit;
  if DMA_Receber.C_TabelaStatus.Value <= 0 then begin
    DlgMsg.ShowMsg(202); // 'O Status do Título não é válido para Cancelamento!'
    exit;
  end;
  if DMA_Receber.C_TabelaVenda.AsInteger <> 0 then begin
    with DMFinanceiro.Q_SQL do begin
    	close;
      sql.text := 'select Numero from saidas where id = '+DMA_Receber.C_TabelaVenda.AsString;
      open;
      if recordcount > 0 then begin
        DlgMsg.ShowMsg(937, ['#'+fields[0].AsString]);
        close;
        exit;
      end;
    end;
  end;


  nID := DMA_Receber.C_TabelaID.AsInteger;
  if DlgMsg.ShowMsg(203,[DMA_Receber.C_TabelaTitulo.AsString,
  											 currencystring+formatfloat('###,###,##0.00',DMA_Receber.C_TabelaValor.Value)]) = 100 then begin
    //if DMFinanceiro.CancelarTitulo(nID, null, null, '', true, true ) then begin
    if DMFinanceiro.CancelarTitulo(nID, DMA_Receber.C_TabelaEMPRESA.AsInteger, DMA_Receber.C_TabelaPDV.AsInteger, '', true, true ) then begin
    	DMA_Receber.C_Tabela.Edit;
      DMA_Receber.C_TabelaStatus.Value := 0;
      DMA_Receber.C_Tabela.Post;
			FormComponentAfterScroll(Sender);
    end;
 		DMA_Receber.Localizar('','');
  end;
end;

procedure TFrmA_Receber.FormCreate(Sender: TObject);
begin

  DMA_Receber.CriaContabilidade;
  inherited;
  btContabilidade.visible := false;
	DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasDS, nil, true );
  DMA_Receber.nFiltro := 1;
end;

procedure TFrmA_Receber.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btReparcelar.Visible := false;
  btComando1.Visible := false;
  IDParcelaAtual := 0;

  if cbLockFav.Checked then begin
    if dfNota.CanFocus then
      FormComponent.FirstEditField := dfNota;
  end;
end;

procedure TFrmA_Receber.DBReceitasDescContaInitPopup(Sender: TObject);
begin
  inherited;
  DlgPopup.SetDs( DMFinanceiro.C_ContasDS );
  DlgPopup.SetColuna(TdxDBGridPopupColumn(Sender));
  DlgPopup.SetTipo(13);
  DlgPopup.SetNaoTipo('3');
end;

procedure TFrmA_Receber.ppmPadraoPopup(Sender: TObject);
begin
  inherited;
  ApagarDados.Enabled := (DMA_Receber.C_TabelaVenda.AsInteger=0) and (DMA_Receber.C_TabelaStatus.AsInteger>0);
end;

procedure TFrmA_Receber.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f2 then
    ReceberPagamento;
  if (ssCtrl in Shift) and (chr(key) ='L') then
  	ltimoGravado1.Click;
end;

procedure TFrmA_Receber.btComando2Click(Sender: TObject);
begin
  inherited;
	if DMA_Receber.C_TabelaIDGerador_AReceber.AsInteger <> DMA_Receber.C_TabelaID.AsInteger then begin
		with DMProjeto do begin
  		SetParametrosForm([DMA_Receber.C_TabelaIDGerador_AReceber.AsInteger]);
    	CriarForm(getTelaGeradora(DMA_Receber.C_TabelaOrigem_AReceber.AsInteger),self,true);
  	end;
  end;
end;

procedure TFrmA_Receber.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	if pos(UpperCase(LastDataObject.TableName),'DEPOSITOS,DEPOSITOSDOC')>0 then begin
    if IDParcelaAtual <> 0 then
  		DMA_Receber.Localizar('','where ID = '+IntToStr(IDParcelaAtual));
  end else if pos(UpperCase(LastDataObject.TableName),'FAVORECIDOS')>0 then
  	if ActiveControl is TTS_DBEditFavorecido then
    	TTS_DBEditFavorecido(ActiveControl).ID := LastDataObject.ObjectKey;
end;

procedure TFrmA_Receber.dfValorChange(Sender: TObject);
begin
  inherited;
	DMA_Receber.AtualizaContas(dfValor.Value);
end;

procedure TFrmA_Receber.btContabilidadeClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(self.name,'CONTABILID') then
    exit;

  // Adriano
  DMA_Receber.Contabiliza;

  DMA_Receber.MostraContabilidade;
  ////////////////
end;

procedure TFrmA_Receber.ReceberPagamento1Click(Sender: TObject);
begin
  inherited;
  ReceberPagamento;
end;

procedure TFrmA_Receber.ltimoGravado1Click(Sender: TObject);
begin
  inherited;
  with DMProjeto.Q_SQL do begin
  	close;
    sql.text := 'select max(id) from titulosareceber ';
    open;
  	Localizar('',' where id = '+fields[0].AsString );
    close;
  end;
end;

procedure TFrmA_Receber.btReparcelarClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([null,DMA_Receber.C_TabelaCliente.Value, DMA_Receber.C_TabelaID.Value] ); 
  	CriarForm('DlgReparcelamento', self, true );
  end;
end;

procedure TFrmA_Receber.ppFiltrarPopup(Sender: TObject);
begin
  inherited;
	AReceber1.Enabled 	:= DMProjeto.LerPermissao(self.name,'FiltroAber');
  EmAtraso1.Enabled 	:= DMProjeto.LerPermissao(self.name,'FiltroAtra');
  Liquidados1.Enabled := DMProjeto.LerPermissao(self.name,'FiltroLiq');
  Todos1.Enabled 			:= DMProjeto.LerPermissao(self.name,'FiltroTodo');
  Cancelados1.Enabled := DMProjeto.LerPermissao(self.name,'FiltroCan');
end;

procedure TFrmA_Receber.btComando1Click(Sender: TObject);
begin
  inherited;
  if DMProjeto.Versao = 'S' then begin
  	DMProjeto.SetParametrosForm([DMA_Receber.C_TabelaID.AsInteger,
                                 DMA_Receber.C_TabelaCliente.AsInteger,
                                 DMA_Receber.C_TabelaNome.AsString,
                                 DMA_Receber.C_TabelaNotaFiscal.AsString,
                                 DMA_Receber.C_TabelaVencimento.Value,
                                 DMA_Receber.C_TabelaValor.Value,
                                 DMA_Receber.C_TabelaFaltaReceber.Value]);
    DMProjeto.CriarForm('DlgRecebimentoLight',self,true);
    DMA_Receber.Localizar('',' where id = '+DMA_Receber.C_TabelaID.AsString );
  end else begin
     with DMProjeto do begin
     	SetParametrosForm([null,DMA_Receber.C_TabelaCliente.Value, DMA_Receber.C_TabelaID.AsString]);
       	CriarForm('DlgDepositos',self,true);
     end;
  end;
end;

procedure TFrmA_Receber.CancelarRecebimentoClick(Sender: TObject);
begin
  inherited;
  if not DMA_Receber.C_DepositosDoc.Active then
  	DMA_Receber.C_DepositosDoc.Open;
	DMFinanceiro.CancelarDeposito( DMA_Receber.C_DepositosDocDEPOSITO.AsString,'',true,true );
  DMA_Receber.Localizar('',' where id = '+DMA_Receber.C_TabelaID.AsString );
end;

procedure TFrmA_Receber.ppmRecebimentosPopup(Sender: TObject);
begin
  inherited;
  VerRecebimento.Visible := DMProjeto.Versao <> 'S';
  CancelarRecebimento.Visible := DMProjeto.Versao = 'S';
end;

procedure TFrmA_Receber.PageChange(Sender: TObject);
begin
  inherited;
{
	if DMA_Receber.bAlteracao and (Page.Activepage = tabContas) then begin
		DMA_Receber.C_ContasOperacao.Close;
    DMA_Receber.C_ContasOperacao.Open;
	end;

	if DMA_Receber.bAlteracao and (Page.Activepage = tabRecebimentos) then begin
		DMA_Receber.C_DepositosDoc.Close;
    DMA_Receber.C_DepositosDoc.Open;
  end;
  }
end;

procedure TFrmA_Receber.FormComponentBeforeSave(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	ID := dfCliente.ID;
end;

procedure TFrmA_Receber.FormComponentInclusao(Sender: TObject);
begin
  inherited;
  if cbLockFav.Checked then 
  	dfCliente.ID := ID;
end;

procedure TFrmA_Receber.btVerRecebimentosClick(Sender: TObject);
begin
  inherited;
//  DMProjeto.VerRecebimentos( DMA_Receber.C_TabelaID.AsInteger, 0, DMA_Receber.C_TabelaNome.AsString );
end;

procedure TFrmA_Receber.ImprimirBoleto1Click(Sender: TObject);
begin
  inherited;
  If DMA_Receber.C_TabelaTIPOCOBRANCA.AsString = '3' then begin
     RptDocCobranca := TRptDocCobranca.Create(self);
     RptDocCobranca.ImprimirDuplicata(DMA_Receber.C_TabelaID.Value);
     RptDocCobranca.Release;
     RptDocCobranca := nil;
  End;

end;

procedure TFrmA_Receber.ImprimirTtuloReceber1Click(Sender: TObject);
begin
  inherited;
    RptDocCobranca := TRptDocCobranca.Create(self);
    RptDocCobranca.ImprimirTituloReceber(DMA_Receber.C_TabelaVENDA.Value);
    RptDocCobranca.Release;
    RptDocCobranca := nil;
end;

end.





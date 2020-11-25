unit Rpt_VendasProdutos;
                                                                                        
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor, dxEdLib,
  TS_DateTimePicker, dxDBTLCl, dxGrClms, dxDBEdtr, dxDBELib,
  TS_LookupComboBox, TS_PopupEdit, TS_PopupFiltrarItens, TS_CheckBox,
  CheckLst, TS_CheckListBox, TS_DBCheckBox;

type
  TRptVendasProdutos = class(TRptPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    dbgConsultaSAIDAITEM: TdxDBGridMaskColumn;
    dbgConsultaSAIDA: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaNOMECLIENTE: TdxDBGridMaskColumn;
    dbgConsultaNOMEVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    dbgConsultaNOMEFORNECEDOR: TdxDBGridMaskColumn;
    dbgConsultaCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgConsultaCUSTOCONTABIL: TdxDBGridMaskColumn;
    dbgConsultaCOLUNA1: TdxDBGridMaskColumn;
    dbgConsultaCOLUNA2: TdxDBGridMaskColumn;
    dbgConsultaCOLUNA3: TdxDBGridMaskColumn;
    dbgConsultaCOLUNA4: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgConsultaRATEIODESCONTO: TdxDBGridMaskColumn;
    Q_TiposMovimentos: TIBQuery;
    Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    Q_TiposMovimentosDESCRICAO: TIBStringField;
    Q_TiposMovimentosDs: TDataSource;
    PopupFiltrarItens: TTS_PopupFiltrarItens;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    btClientes: TTS_SpeedButton;
    btVendedor: TTS_SpeedButton;
    dbgConsultaColumn25: TdxDBGridColumn;
    dbgConsultaMesAno: TdxDBGridColumn;
    cbCanceladas: TTS_CheckBox;
    dbgConsultapiscofins: TdxDBGridColumn;
    dbgConsultaVALORFINAL: TdxDBGridColumn;
    clbTipoOperacao: TTS_CheckListBox;
    dbgConsultaEndereco: TdxDBGridColumn;
    dbgConsultaBairro: TdxDBGridColumn;
    dbgConsultaCidade: TdxDBGridColumn;
    dbgConsultaUF: TdxDBGridColumn;
    dbgConsultaCPF_CNPJ: TdxDBGridColumn;
    dbgConsultaINSCRICAO_MUN: TdxDBGridColumn;
    dbgConsultaINSCRICAO_EST: TdxDBGridColumn;
    dbgConsultaTOTCUSTO: TdxDBGridColumn;
    dbgConsultaGrupoComissao: TdxDBGridColumn;
    dbgConsultaTIPOTRIBUTACAOFEDERAL: TdxDBGridColumn;
    dbgConsultaQUANTIDADEVOLUME: TdxDBGridMaskColumn;
    Q_TipoPadrao: TIBQuery;
    P_TipoPadrao: TDataSetProvider;
    C_TipoPadrao: TClientDataSet;
    C_TipoPadraoTIPOPADRAO: TIntegerField;
    C_TipoPadraoDESCRICAO: TStringField;
    clbTipoPadrao: TTS_CheckListBox;
    C_TipoPadraoDs: TDataSource;
    TS_Label5: TTS_Label;
    ppeTipoPadrao: TTS_PopupEdit;
    TS_Label3: TTS_Label;
    ppeTiposMovimento: TTS_PopupEdit;
    pnTipoPadrao: TPanel;
    cbTipoPadrao: TTS_CheckBox;
    dbgConsultaCFOPCST: TdxDBGridColumn;
    cbItensCancelados: TTS_CheckBox;
    dbgConsultaPRECOFATORADO: TdxDBGridMaskColumn;
    C_ConsultaSAIDAITEM: TIntegerField;
    C_ConsultaSAIDA: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaPRECOFATORADO: TFloatField;
    C_ConsultaSUBTOTALITEM: TFloatField;
    C_ConsultaNOMECLIENTE: TStringField;
    C_ConsultaNOMEVENDEDOR: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    C_ConsultaFABRICANTE: TStringField;
    C_ConsultaNOMEFORNECEDOR: TStringField;
    C_ConsultaTOTCUSTO: TFloatField;
    C_ConsultaCUSTOMEDIO: TFloatField;
    C_ConsultaCUSTOCONTABIL: TFloatField;
    C_ConsultaRATEIODESCONTO: TFloatField;
    C_ConsultaCOLUNA1: TStringField;
    C_ConsultaCOLUNA2: TStringField;
    C_ConsultaCOLUNA3: TStringField;
    C_ConsultaCOLUNA4: TStringField;
    C_ConsultaNOMEMEDICO: TStringField;
    C_ConsultaMESANO: TStringField;
    C_ConsultaPISCOFINS: TStringField;
    C_ConsultaVENDEDOR: TIntegerField;
    C_ConsultaTIPOFEDERAL: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaBAIRRO: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCPF_CNPJ: TStringField;
    C_ConsultaINSCRICAO_EST: TStringField;
    C_ConsultaINSCRICAO_MUN: TStringField;
    C_ConsultaDECGRUPOCOMISSAO: TStringField;
    C_ConsultaTRIBUTACAOFEDERAL: TStringField;
    C_ConsultaQUANTIDADEVOLUME: TFloatField;
    C_ConsultaCFOPCST: TStringField;
    C_ConsultaQUANTIDADE: TFloatField;
    C_ConsultaVALORFINAL: TFloatField;
    C_ConsultaDESCITEMORIGINAL: TStringField;
    dbgConsultaDESCITEMORIGINAL: TdxDBGridMaskColumn;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure PopupFiltrarItensSelecionou(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure cbCanceladasChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure ppeTiposMovimentoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure ppeTipoPadraoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure ppeTipoPadraoExit(Sender: TObject);
    procedure cbTipoPadraoClick(Sender: TObject);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
    sClientes, sNomesClientes, sVendedores, sNomesVendedores : String;
  end;

var
  RptVendasProdutos: TRptVendasProdutos;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptVendasProdutos.FormsComponentBeforeClearParams(
  Sender: TObject);
var i : integer;
 sID: String;
begin
  inherited;
  C_TipoPadrao.Close;
  C_TipoPadrao.Open;
  clbTipoPadrao.SetDataSet(C_TipoPadrao);
  clbTipoPadrao.SetSelecionados('1');
  Q_TiposMovimentos.Close;
  Q_TiposMovimentos.Sql.Text :=  'Select TIPOMOVIMENTO,DESCRICAO FROM TIPOSMOVIMENTO WHERE TIPOPADRAO IN ('+clbTipoPadrao.Selecionados+') order by DESCRICAO';
  Q_TiposMovimentos.Open;
  clbTipoOperacao.SetDataSet(Q_TiposMovimentos);
  Q_TiposMovimentos.First;
  sId:='';
  while Not Q_TiposMovimentos.Eof do Begin
    sId := sId + Q_TiposMovimentosTIPOMOVIMENTO.AsString +',';
    Q_TiposMovimentos.Next;
  End;
  Q_TiposMovimentos.Close;
  clbTipoOperacao.SetSelecionados(Copy(sId,1,Length(sId)-1));
  if DMProjeto.ExisteParametrosForm then begin
		 with dbgConsulta do begin
    	 for i:=0 to GroupColumnCount-1 do
       	 DeleteGroupColumn(i);
     	 if DMProjeto.getParametrosForm(1) = 'G' then
         AddGroupColumn( dbgConsultaDescricaoGrupo )
     	 else if DMProjeto.getParametrosForm(1) = 'F' then
       	AddGroupColumn( dbgConsultaFabricante );
		 end;
  end;
	DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := ( DMProjeto.dDataSistema );
  if DataF.GetEditingText = '' then DataF.Date := ( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
//  Atualizar;
end;

procedure TRptVendasProdutos.Atualizar;
var
     nTP_MV, sSituacao, sTipoOperacao: string;
begin
     nTP_MV := '';
     sTipoOperacao := clbTipoOperacao.Selecionados;
     if (sTipoOperacao = '') then begin
        Application.MessageBox('Nenhuma seleção foi feita em tipos de movimento.','Aviso', mb_ok);
        ppeTiposMovimento.DroppedDown := True;
        Exit;
     end;
     nTP_MV := ' and s.TIPOPADRAO = 1 ';
     if cbTipoPadrao.Checked Then
        nTP_MV := ' and s.tipomovimento in ('+sTipoOperacao+')';


     sSituacao := ' and s.situacao = '+iif(cbCanceladas.CHecked,' ''C'' ',' ''N'' ');
     sSituacao := sSituacao + ' and si.situacao = '+iif(cbItensCancelados.Checked,' ''C'' ',' ''N'' ');
     with C_Consulta do begin
      	Close;
        CommandText := 'Select ' + getCampos + ' ' +
                       'From '   + getTabelas + ' ' +
                       'Where '+PopupFiltrarItens.getSQL(False)+iif(PopupFiltrarItens.getSQL(False)<>'',' and ', '')+
                       ' s.data >= :datai and s.data <= :dataf  '
                       +sSituacao
                       +nTP_MV;

        if sClientes <> '' then begin
           CommandText := CommandText + ' and s.favorecido in (' + sClientes +')';
        end;

        if sVendedores <> '' then begin
           CommandText := CommandText + ' and s.vendedor in (' + sVendedores +')';
        end;

        //CommandText := CommandText + ' Order by s.data';

        Params.ParamByName('DataI').AsDateTime := DataI.Date;
        Params.ParamByName('DataF').AsDateTime := DataF.Date;
     Open;

     end;
  with dbgConsulta do begin
  	FullExpand;
  end;
  FormsComponent.Caption := 'Vendas de Produtos no Período: '+DateTostr(DataI.Date) +' a '+
                                                DateTostr(DataF.Date);
end;

procedure TRptVendasProdutos.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptVendasProdutos.DataIDateChange(Sender: TObject);
begin
  inherited;
  //	Atualizar;
end;

procedure TRptVendasProdutos.PopupFiltrarItensSelecionou(
  Sender: TObject);
begin
  inherited;
  //	Atualizar;
end;

procedure TRptVendasProdutos.btClientesClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomesClientes := GetParametrosForm(1);
      LimparParametrosForm;
      // Atualizar;
    end;
  end;
end;

procedure TRptVendasProdutos.btVendedorClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sVendedores, 3]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
       sVendedores := GetParametrosForm(0);
       sNomesVendedores := GetParametrosForm(1);
       LimparParametrosForm;
       //Atualizar;
    end;
  end;
end;

procedure TRptVendasProdutos.cbCanceladasChange(Sender: TObject);
begin
  inherited;
  //Atualizar;
end;

procedure TRptVendasProdutos.dbgConsultaDblClick(Sender: TObject);
begin
  inherited;
  if dbgConsulta.TS_SelectedColumn = 'NOMECLIENTE' then begin
     DMProjeto.SetParametrosForm([C_ConsultaFavorecido.Value]);
     DMProjeto.CriarForm(DMProjeto.getTelaFavorecido(C_ConsultaTipoFavorecido.Value),self,true);
  end else if dbgConsulta.TS_SelectedColumn = 'NOMEVENDEDOR' then begin
     if C_ConsultaVendedor.Value > 0 then begin
     	DMProjeto.SetParametrosForm([C_ConsultaVendedor.Value]);
    	DMProjeto.CriarForm('FrmFuncionarios',self,true);
     end;
  end else begin
     DMProjeto.SetParametrosForm([C_ConsultaSaida.Value]);
     DMProjeto.CriarForm('FrmInvoices',self,true);
  end;
end;

procedure TRptVendasProdutos.ppeTiposMovimentoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbTipoOperacao.Selecionados( true );
  Accept := true;
  //	Atualizar;
end;

procedure TRptVendasProdutos.ppeTipoPadraoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbTipoPadrao.Selecionados( true );
  Accept := true;

end;

procedure TRptVendasProdutos.ppeTipoPadraoExit(Sender: TObject);
Var sId: String;
begin
  inherited;
  Q_TiposMovimentos.Close;
  Q_TiposMovimentos.Sql.Text :=  'Select TIPOMOVIMENTO,DESCRICAO FROM TIPOSMOVIMENTO WHERE TIPOPADRAO IN ('+clbTipoPadrao.Selecionados+') order by DESCRICAO';
  Q_TiposMovimentos.Open;
  clbTipoOperacao.UpdateItems;
  clbTipoOperacao.SetDataSet(Q_TiposMovimentos);
  Q_TiposMovimentos.First;
  sId:='';
  while Not Q_TiposMovimentos.Eof do Begin
    sId := sId + Q_TiposMovimentosTIPOMOVIMENTO.AsString +',';
    Q_TiposMovimentos.Next;
  End;

  Q_TiposMovimentos.Close;
  clbTipoOperacao.SetSelecionados(Copy(sId,1,Length(sId)-1));
end;

procedure TRptVendasProdutos.cbTipoPadraoClick(Sender: TObject);
begin
  inherited;
   pnTipoPadrao.Enabled := False;
   pnTipoPadrao.Visible := False;
   pnTipoPadrao.SendToBack;
   cbTipoPadrao.BringToFront;

   if cbTipoPadrao.Checked Then Begin
      pnTipoPadrao.Enabled := True;
      pnTipoPadrao.Visible := True;
      pnTipoPadrao.BringToFront;
      cbTipoPadrao.SendToBack;
   End;
end;

end.

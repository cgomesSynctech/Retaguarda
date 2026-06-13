unit Rpt_OrcamentosProdutos;
                                                                                        
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
  TRptOrcamentosProdutos = class(TRptPadrao)
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
    clbTipoPadrao: TTS_CheckListBox;
    pnTipoPadrao: TPanel;
    dbgConsultaCFOPCST: TdxDBGridColumn;
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
    ppeTipoPadrao: TTS_PopupEdit;
    Q_TiposMovimentos: TIBQuery;
    Q_TiposMovimentosDs: TDataSource;
    Q_TiposMovimentosSTATUS: TIBStringField;
    Q_TiposMovimentosDESCRICAO: TIBStringField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure PopupFiltrarItensSelecionou(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure cbCanceladasChange(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
  private
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
    sClientes, sNomesClientes, sVendedores, sNomesVendedores : String;
  end;

var
  RptOrcamentosProdutos: TRptOrcamentosProdutos;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptOrcamentosProdutos.FormsComponentBeforeClearParams(
  Sender: TObject);
var i : integer;
 sID: String;
begin
  inherited;
  Q_TiposMovimentos.Close;
  Q_TiposMovimentos.Open;
  sId:='';
  Q_TiposMovimentos.First;
  sId:='';
  while Not Q_TiposMovimentos.Eof do Begin
    sId := sId + Q_TiposMovimentosDESCRICAO.AsString +',';
    Q_TiposMovimentos.Next;
  End;
  Q_TiposMovimentos.Close;
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

procedure TRptOrcamentosProdutos.Atualizar;
var
     nTP_MV, sSituacao, sStatus: string;
begin
     nTP_MV := '';
     nTP_MV := ' and s.TIPOPADRAO = 3 ';
     nTP_MV := ' and s.Status in ('+sStatus+')';
     sSituacao := ' and s.situacao = '+iif(cbCanceladas.CHecked,' ''C'' ',' ''N'' ');
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
  FormsComponent.Caption := 'Itens de Orçamentos no Período: '+DateTostr(DataI.Date) +' a '+
                                                DateTostr(DataF.Date);
end;

procedure TRptOrcamentosProdutos.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptOrcamentosProdutos.DataIDateChange(Sender: TObject);
begin
  inherited;
  //	Atualizar;
end;

procedure TRptOrcamentosProdutos.PopupFiltrarItensSelecionou(
  Sender: TObject);
begin
  inherited;
  //	Atualizar;
end;

procedure TRptOrcamentosProdutos.btClientesClick(Sender: TObject);
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

procedure TRptOrcamentosProdutos.btVendedorClick(Sender: TObject);
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

procedure TRptOrcamentosProdutos.cbCanceladasChange(Sender: TObject);
begin
  inherited;
  //Atualizar;
end;

procedure TRptOrcamentosProdutos.dbgConsultaDblClick(Sender: TObject);
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



end.

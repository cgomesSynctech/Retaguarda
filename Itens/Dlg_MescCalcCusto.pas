unit Dlg_MescCalcCusto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, DM_Saidas, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, Db, IBCustomDataSet, IBQuery,
  DBText, TS_DBTextEffect, dxDBTLCl, dxGrClms, DBClient, Provider, dxGrClEx,
  dxfProgressBar, Variants, dxExEdtr, BTOdeum, Placemnt, dxEditor, dxEdLib,
  TS_DateTimePicker;

type
  TDlgMescCalcCusto = class(TFrmModeloCadastros)
    GridMovs: TTS_QDBGrid;
    Q_Movimentos: TIBQuery;
    P_Movimentos: TDataSetProvider;
    C_Movimentos: TClientDataSet;
    C_MovimentosTOTAL: TBCDField;
    C_MovimentosFAVORECIDO: TIntegerField;
    C_MovimentosDATA: TDateField;
    C_MovimentosSITUACAO: TStringField;
    C_MovimentosSTATUS: TStringField;
    C_MovimentosNOME: TStringField;
    C_MovimentosDESCTIPOMOV: TStringField;
    C_MovimentosDESCTIPOPADRAO: TStringField;
    C_MovimentosDS: TDataSource;
    GridMovsSAIDA: TdxDBGridMaskColumn;
    GridMovsTOTAL: TdxDBGridMaskColumn;
    GridMovsFAVORECIDO: TdxDBGridMaskColumn;
    GridMovsDATA: TdxDBGridDateColumn;
    GridMovsSITUACAO: TdxDBGridMaskColumn;
    GridMovsNOME: TdxDBGridMaskColumn;
    GridMovsDESCTIPOMOV: TdxDBGridMaskColumn;
    GridMovsDESCTIPOPADRAO: TdxDBGridMaskColumn;
    GridMovsVendedor: TdxDBGridColumn;
    GridMovsPedidoCliente: TdxDBGridColumn;
    C_MovimentosicItens: TStringField;
    GridMovsItens: TdxDBGridPopupColumn;
    ppmGrid: TTS_PopupMenu;
    Q_Itens: TIBQuery;
    Q_MovimentosDS: TDataSource;
    C_Itens: TClientDataSet;
    C_MovimentosQ_Itens: TDataSetField;
    C_ItensSEQUENCIA: TIntegerField;
    C_ItensITEM: TIntegerField;
    C_ItensDESCRICAO: TStringField;
    C_ItensQUANTIDADE: TBCDField;
    C_ItensPRECO: TFloatField;
    C_ItensTAXAVEL: TStringField;
    C_ItensIMPORTACAO: TIntegerField;
    C_ItensUSOTIPOITEM: TStringField;
    C_ItensSUBTOTALITEM: TBCDField;
    C_ItensORDEM: TIntegerField;
    C_ItensRATEIODESCONTO: TBCDField;
    C_ItensHASCHILDREN: TStringField;
    C_ItensCOLUNA1: TStringField;
    C_ItensCOLUNA2: TStringField;
    C_ItensCOLUNA3: TStringField;
    C_ItensCOLUNA4: TStringField;
    C_ItensENTRADAITEM: TIntegerField;
    C_ItensTIPOITEM: TIntegerField;
    C_ItensDS: TDataSource;
    dbgItens: TTS_QDBGrid;
    dbgItensSAIDAITEM: TdxDBGridMaskColumn;
    dbgItensSAIDA: TdxDBGridMaskColumn;
    dbgItensSEQUENCIA: TdxDBGridMaskColumn;
    dbgItensITEM: TdxDBGridMaskColumn;
    dbgItensDESCRICAO: TdxDBGridMaskColumn;
    dbgItensQUANTIDADE: TdxDBGridMaskColumn;
    dbgItensPRECO: TdxDBGridMaskColumn;
    dbgItensIMPORTACAO: TdxDBGridMaskColumn;
    dbgItensUSOTIPOITEM: TdxDBGridMaskColumn;
    dbgItensSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgItensORDEM: TdxDBGridMaskColumn;
    dbgItensCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgItensHASCHILDREN: TdxDBGridMaskColumn;
    dbgItensCOLUNA1: TdxDBGridMaskColumn;
    dbgItensCOLUNA2: TdxDBGridMaskColumn;
    dbgItensCOLUNA3: TdxDBGridMaskColumn;
    dbgItensCOLUNA4: TdxDBGridMaskColumn;
    dbgItensDESPESA: TdxDBGridMaskColumn;
    dbgItensENTRADAITEM: TdxDBGridMaskColumn;
    dbgItensTIPOITEM: TdxDBGridMaskColumn;
    C_Movimentos_icSelecionado: TIntegerField;
    C_Itens_icSelecionado: TIntegerField;
    C_MovimentosQtdItens: TIntegerField;
    GridMovsQtdItensSel: TdxDBGridColumn;
    C_MovimentosNUMERO: TStringField;
    GridMovsNumero: TdxDBGridColumn;
    C_ItensCODIGO: TStringField;
    C_ItensREFERENCIA: TStringField;
    dbgItensCodigo: TdxDBGridColumn;
    dbgItensReferencia: TdxDBGridColumn;
    ppmGridItens: TTS_PopupMenu;
    Q_Filhos: TIBQuery;
    C_MovimentosOBS: TStringField;
    C_MovimentosDESCONTO: TBCDField;
    C_MovimentosPLANOPAGAMENTO: TIntegerField;
    C_MovimentosCAMPO01: TStringField;
    C_MovimentosCAMPO02: TStringField;
    C_MovimentosCAMPO03: TStringField;
    C_MovimentosCAMPO04: TStringField;
    C_MovimentosLOCALENTREGA: TIntegerField;
    C_ItensNUMEROLOTE: TStringField;
    C_MovimentosENTRADA: TIntegerField;
    C_ItensENTRADA: TIntegerField;
    C_ItensQTDRECEBIDA: TBCDField;
    C_MovimentosTIPOENTREGA: TIntegerField;
    C_MovimentosDATAENTREGA: TDateField;
    C_ItensUNIDADE: TStringField;
    C_ItensFATOR: TFloatField;
    C_ItensCUSTOMEDIO: TFloatField;
    C_ItensCUSTOCONTABIL: TFloatField;
    C_ItensOLDQTDRECEBIDA: TBCDField;
    C_ItensALMOXARIFADO: TIntegerField;
    C_ItensIPI: TBCDField;
    C_ItensALIQICMS: TBCDField;
    C_ItensCST: TStringField;
    C_ItensREDUCAOCST: TBCDField;
    C_ItensCFOPENTRADA: TStringField;
    C_ItensSITUACAOECF: TStringField;
    TS_Label1: TTS_Label;
    edDataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    edDataF: TTS_DateTimePicker;
    C_ItensGRUPO: TIntegerField;
    C_ItensCSTGRUPO: TStringField;
    C_ItensALIQICMSGRUPO: TBCDField;
    C_ItensREDUCAOCSTGRUPO: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure GridMovsTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure GridMovsItensCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure btGravarClick(Sender: TObject);
    procedure edDataIDateChange(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarSelecionados;
    procedure Atualizar;

  public
    { Public declarations }
    sItens : string;
  end;

var
  DlgMescCalcCusto: TDlgMescCalcCusto;

implementation
  uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TDlgMescCalcCusto.Atualizar;
begin
  Screen.Cursor := crHourGlass;

  try
    C_Movimentos.Close;

    Q_Movimentos.ParamByName('datai').AsDateTime := edDataI.Date;
    Q_Movimentos.ParamByName('dataf').AsDateTime := edDataF.Date;

    C_Movimentos.Open;

    C_Movimentos.First;

    AtualizarSelecionados;
  finally
    Screen.Cursor := crDefault;
  end;

  GridMovs.ExpandirGrupos;
end;

procedure TDlgMescCalcCusto.FormShow(Sender: TObject);
begin
  inherited;
  edDataI.OnDateChange := nil;
  edDataI.Date := DMProjeto.dDataSistemaAtual;
  edDataI.OnDateChange := edDataIDateChange;
  //
  edDataF.OnDateChange := nil;
  edDataF.Date := DMProjeto.dDataSistemaAtual;
  edDataF.OnDateChange := edDataIDateChange;
  //
  Atualizar;
  //
  sItens := '';
end;

procedure TDlgMescCalcCusto.GridMovsTS_OnAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  if not bSelected then
		dbgItens.LimparSelecionados
  else
    dbgItens.SelectAll; 

  C_Movimentos.Edit;
  if (dbgItens.nQuantidadeSelecionada > 0) and (dbgItens.nQuantidadeSelecionada <> C_Itens.RecordCount) then
    C_MovimentosicItens.Value := 'Alguns Itens Selecionados'
  else if (dbgItens.nQuantidadeSelecionada > 0) and (dbgItens.nQuantidadeSelecionada = C_Itens.RecordCount) then
    C_MovimentosicItens.Value := 'Todos os Itens'
  else if (dbgItens.nQuantidadeSelecionada = 0) then
    C_MovimentosicItens.Value := 'Nenhum Item Selecionado';

  C_MovimentosQtdItens.Value := dbgItens.nQuantidadeSelecionada;

  if GridMovs.nQuantidadeSelecionada > 1 then
    btLimpar.Enabled := false
  else
    btLimpar.Enabled := true;

end;

procedure TDlgMescCalcCusto.GridMovsItensCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  AtualizarSelecionados;
end;

procedure TDlgMescCalcCusto.AtualizarSelecionados;
begin
  if dbgItens.nQuantidadeSelecionada = 0 then
    GridMovs.RemoverSelecao
  else if not GridMovs.Selecionado then
    GridMovs.Selecionar;

  C_Movimentos.Edit;
  if (dbgItens.nQuantidadeSelecionada > 0) and (dbgItens.nQuantidadeSelecionada <> C_Itens.RecordCount) then
    C_MovimentosicItens.Value := 'Alguns Itens Selecionados'
  else if (dbgItens.nQuantidadeSelecionada > 0) and (dbgItens.nQuantidadeSelecionada = C_Itens.RecordCount) then
    C_MovimentosicItens.Value := 'Todos os Itens'
  else if (dbgItens.nQuantidadeSelecionada = 0) then
    C_MovimentosicItens.Value := 'Nenhum Item Selecionado';

  C_MovimentosQtdItens.Value := dbgItens.nQuantidadeSelecionada;

  if GridMovs.nQuantidadeSelecionada > 1 then
    btLimpar.Enabled := false
  else
    btLimpar.Enabled := true;

end;


procedure TDlgMescCalcCusto.btGravarClick(Sender: TObject);
var m,i: integer;
   sAux : string;
begin
  inherited;

  if C_Movimentos.State <> dsBrowse then
    C_Movimentos.Post;

  { Mesclar os Itens escolhidos na invoice }
  if GridMovs.nQuantidadeSelecionada = 0 then begin
    DlgMsg.ShowMsg(2300);
    exit;
  end;

  {Confirmação}
  if DlgMsg.ShowMsg(8019) = 200 then
    exit;

  sItens := '';
  // Esta variável guardará somente as chaves
  sAux := ''; 

  GridMovs.FirstSelected;

  for m := 1 to GridMovs.nQuantidadeSelecionada do begin
    dbgItens.FirstSelected;

    for i := 1 to dbgItens.nQuantidadeSelecionada do begin
      if IndiceString( sAux, ',', C_ItensITEM.AsString ) < 1 then begin
        sAux := CExp( sAux,',' ) + C_ItensITEM.AsString;

        sItens := sItens +
                 C_ItensITEM.AsString + '|' +
                 C_ItensCODIGO.AsString + '|' +
                 C_ItensDESCRICAO.AsString + '|' +
                 FloatToStr(C_ItensPRECO.AsFloat) + '|' +
                 FloatToStr(C_ItensFATOR.AsFloat) + '|' +
                 FloatToStr(C_ItensALIQICMS.AsFloat) + '|' +
                 C_ItensCST.AsString + '|' +
                 FloatToStr(C_ItensREDUCAOCST.AsFloat) + '|' +
                 IntToStr(C_ItensGRUPO.AsInteger) + '|' +
                 FloatToStr( C_ItensALIQICMSGRUPO.AsFloat ) + '|' +
                 C_ItensCSTGRUPO.AsString + '|' +
                 FloatToStr( C_ItensREDUCAOCSTGRUPO.AsFloat ) + 'ß';

      end;

      dbgItens.NextSelected;
    end;

    GridMovs.NextSelected;
  end;

  if Copy(sItens,Length(sItens)-1,1) = 'ß' then Delete(sItens,Length(sItens)-1,1);

  ModalResult := mrOk;
end;

procedure TDlgMescCalcCusto.edDataIDateChange(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.



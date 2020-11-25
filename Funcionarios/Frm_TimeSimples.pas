unit Frm_TimeSimples;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, dxTLClms, dxTL, dxCntner,
  TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, TS_Shape,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, TS_DBEditDate, TS_DBButtonEdit,
  TS_DBEditFavorecido, dxDBEdtr, TS_DBLookupComboBox, TS_DBEdit,
  DBCtrls, TS_DBText, TS_DBEditNumber,
  dxDBTLCl, dxGrClms, TS_CheckBox, Menus,
  TS_PopupMenu, Mask, TS_DBCheckBox, Variants, BTOdeum, TS_DBPopupEdit,
  TS_MaskEdit, Placemnt, TransEff, teTimed, teRoll, dxfProgressBar;

type
  TFrmTimeSimples = class(TFrmPadrao)
    TS_Shape2: TTS_Shape;
    GridDATAINICIO: TdxDBGridDateColumn;
    GridDATAFIM: TdxDBGridDateColumn;
    GridQTDHORAS: TdxDBGridMaskColumn;
    GridVALORHORA: TdxDBGridMaskColumn;
    GridVALORCONTRATO: TdxDBGridMaskColumn;
    GridDESC_PAYROLL: TdxDBGridMaskColumn;
    GridNUMINVOICE: TdxDBGridMaskColumn;
    GridlkItem: TdxDBGridLookupColumn;
    GridlkFuncionario: TdxDBGridLookupColumn;
    spProducao: TTS_Panel;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    lbPayItem: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Shape5: TTS_Shape;
    TS_Label8: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    TS_Label11: TTS_Label;
    TS_DBText1: TTS_DBText;
    TS_DBText2: TTS_DBText;
    dfDataInicio: TTS_DBEditDate;
    cmbItem: TTS_DBLookupComboBox;
    dfCliente: TTS_DBEditFavorecido;
    cmbPayItem: TTS_DBLookupComboBox;
    dfValorHora: TTS_DBEditNumber;
    dfValorContrato: TTS_DBEditNumber;
    dfDataFim: TTS_DBEditDate;
    cbLockDates: TTS_CheckBox;
    TS_Shape6: TTS_Shape;
    TS_Shape7: TTS_Shape;
    TS_Shape8: TTS_Shape;
    pn: TTS_Panel;
    TS_Panel1: TTS_Panel;
    TS_Panel2: TTS_Panel;
    imgFolha: TTS_Image;
    TS_Panel3: TTS_Panel;
    TS_Shape9: TTS_Shape;
    cbLockFunc: TTS_CheckBox;
    cbLockCliente: TTS_CheckBox;
    dfFuncionario: TTS_DBEditFavorecido;
    DBEdit3: TDBEdit;
    TS_DBCheckBox1: TTS_DBCheckBox;
    cmbContrato: TTS_DBLookupComboBox;
    TS_Label5: TTS_Label;
    cbLockItemPayroll: TTS_CheckBox;
    pnDetalheHoras: TTS_Panel;
    TS_Label12: TTS_Label;
    TS_Label13: TTS_Label;
    TS_Label14: TTS_Label;
    TS_Label15: TTS_Label;
    btCalcHoras: TTS_SpeedButton;
    TS_Image1: TTS_Image;
    dfHoraInicio: TTS_MaskEdit;
    dfHoraFim: TTS_MaskEdit;
    dfDesconto: TTS_MaskEdit;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_SpeedButton2: TTS_SpeedButton;
    dfHoras: TTS_DBPopupEdit;
    dfHorasUser: TTS_DBPopupEdit;
    TS_Label16: TTS_Label;
    TS_DBEditNumber1: TTS_DBEditNumber;
    TS_Label17: TTS_Label;
    TS_DBEditNumber2: TTS_DBEditNumber;
    GridTOTALHORa: TdxDBGridMaskColumn;
    GridQTDHORAS_USER: TdxDBGridMaskColumn;
    T_List: TTransitionList;
    T_Folha: TRollTransition;
    procedure cbLockDatesChange(Sender: TObject);
    procedure dfDataInicioExit(Sender: TObject);
    procedure dfDataFimExit(Sender: TObject);
    procedure FormComponentLayoutChange(Sender: TObject;
      LayoutGrid: Boolean; var bSkip: Boolean);
    procedure cmbContratoEnter(Sender: TObject);
    procedure cmbContratoExit(Sender: TObject);
    procedure imgFolhaClick(Sender: TObject);
    procedure FormComponentBeforeMoveRecord(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentInclusao(Sender: TObject);
    procedure cbLockFuncChange(Sender: TObject);
    procedure dfFuncionarioSelecionou(Sender: TObject);
    procedure cbLockClienteChange(Sender: TObject);
    procedure dfClienteSelecionou(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure FormComponentPesquisar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure TS_Label3SetParametrosForm(Sender: TObject);
    procedure cmbPayItemChange(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure dfHoraInicioKeyPress(Sender: TObject; var Key: Char);
    procedure dfHoraFimKeyPress(Sender: TObject; var Key: Char);
    procedure dfDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure btCalcHorasClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dfHorasCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure dfHorasUserEnter(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
    Funcionario, Cliente, PayRollItem : Integer;
  public
    { Public declarations }
  end;

var
  FrmTimeSimples: TFrmTimeSimples;

implementation
  uses DM_Projeto, DM_TimeSimples, db, funcoes;

{$R *.DFM}

procedure TFrmTimeSimples.cbLockDatesChange(Sender: TObject);
begin
  inherited;
  if cbLockDates.Checked then begin
    DMTimeSimples.dDataI := DMTimeSimples.C_TabelaDataInicio.Value;
    DMTimeSimples.dDataF := DMTimeSimples.C_TabelaDataFim.Value;
    end
  else begin
    DMTimeSimples.dDataI := DMProjeto.dDataSistema;
    DMTimeSimples.dDataF := DMProjeto.dDataSistema;
  end;
end;

procedure TFrmTimeSimples.dfDataInicioExit(Sender: TObject);
begin
  inherited;
  if cbLockDates.Checked and (DMTimeSimples.C_TabelaDataInicio.Value > 0) then
    DMTimeSimples.dDataI := DMTimeSimples.C_TabelaDataInicio.Value;

end;

procedure TFrmTimeSimples.dfDataFimExit(Sender: TObject);
begin
  inherited;
  if cbLockDates.Checked and (DMTimeSimples.C_TabelaDataFim.Value > 0) then
    DMTimeSimples.dDataF := DMTimeSimples.C_TabelaDataFim.Value;
end;

procedure TFrmTimeSimples.FormComponentLayoutChange(Sender: TObject;
  LayoutGrid: Boolean; var bSkip: Boolean);
begin
  inherited;
  if FormatoTabela.Checked then begin
    if (DMTimeSimples.C_Tabela.State <> dsBrowse) then
      DMTimeSimples.C_Tabela.Post;
    if (DMTimeSimples.C_Tabela.ChangeCount > 0) then begin
      DMTimeSimples.C_Tabela.UndoLastChange(false);
    end;
  end;
end;

procedure TFrmTimeSimples.cmbContratoEnter(Sender: TObject);
begin
  inherited;
  if DMTimeSimples.C_TabelaFavorecido.asString <> '' then
    DMTimeSimples.C_Contratos.Filter := ' FAVORECIDO = '+DMTimeSimples.C_TabelaFavorecido.asString
  else
    DMTimeSimples.C_Contratos.Filter := ' FAVORECIDO = 0 ';

  DMTimeSimples.C_Contratos.Filtered := true;
end;

procedure TFrmTimeSimples.cmbContratoExit(Sender: TObject);
begin
  inherited;
  DMTimeSimples.C_Contratos.Filtered := False;
end;

procedure TFrmTimeSimples.imgFolhaClick(Sender: TObject);
begin
  inherited;

  T_Folha.Prepare(spProducao.Parent, spProducao.BoundsRect);
  if T_Folha.Prepared then begin
    T_Folha.Execute;
    T_Folha.Unprepare;
  end;

  if DMTimeSimples.bAlteracao and btProxReg.Enabled then begin
    btProxReg.OnClick(self)
    end
  else if not DMTimeSimples.bAlteracao then begin
    btGravarClick(self);
  end;

end;

procedure TFrmTimeSimples.FormComponentBeforeMoveRecord(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if (DMTimeSimples.C_Tabela.State <> dsBrowse) then
    DMTimeSimples.C_Tabela.Post;
  if (DMTimeSimples.C_Tabela.ChangeCount > 0) and (DlgMsg.ShowMsg(2103) = 100) then begin
    btGravarClick(self);
    end
  else if (DMTimeSimples.C_Tabela.ChangeCount > 0) then begin
    DMTimeSimples.C_Tabela.UndoLastChange(false);
  end;
end;

procedure TFrmTimeSimples.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  FormComponent.FirstEditField := dfDataInicio;

  if cbLockDates.Checked then
    FormComponent.FirstEditField := dfFuncionario;

  if cbLockFunc.Checked then
    FormComponent.FirstEditField := cmbPayItem;

  if cbLockItemPayroll.Checked then
    FormComponent.FirstEditField := dfHoras;

end;

procedure TFrmTimeSimples.FormComponentInclusao(Sender: TObject);
begin
  inherited;
  if cbLockFunc.Checked then
    dfFuncionario.ID := Funcionario;
  if cbLockCliente.Checked then
    dfCliente.ID := Cliente;
  if cbLockItemPayroll.Checked then begin
    if DMTimeSimples.C_Tabela.State in [dsBrowse] then
    	DMTimeSimples.C_Tabela.Edit;
    DMTimeSimples.C_TabelaFuncPayItem.Value := PayRollItem;
  end;
end;

procedure TFrmTimeSimples.cbLockFuncChange(Sender: TObject);
begin
  inherited;
  if cbLockFunc.Checked then
    Funcionario := dfFuncionario.ID
  else
    Funcionario := 0;

end;

procedure TFrmTimeSimples.dfFuncionarioSelecionou(Sender: TObject);
begin
  inherited;
  if cbLockFunc.Checked then
    Funcionario := dfFuncionario.ID;
  if DMTimeSimples.C_TabelaFuncPayItem.AsInteger <> 0 then
  	PayRollItem := DMTimeSimples.C_TabelaFuncPayItem.AsInteger;
end;

procedure TFrmTimeSimples.cbLockClienteChange(Sender: TObject);
begin
  inherited;
  if cbLockCliente.Checked then
    Cliente := dfCliente.ID
  else
    Cliente := 0;
end;

procedure TFrmTimeSimples.dfClienteSelecionou(Sender: TObject);
begin
  inherited;
  if cbLockCliente.Checked then
    Cliente := dfCliente.ID;

  {Capturando o Preço do Item [na tabela do cliente]}
  if DMTimeSimples.GetPrecoItem <> 0 then
    DMTimeSimples.C_TabelaValorContrato.Value := DMTimeSimples.GetPrecoItem;

end;

procedure TFrmTimeSimples.DBEdit3Change(Sender: TObject);
begin
  inherited;
{  if DMTimeSimples.C_TabelaFuncionario.Value <> 0 then
    lbPayItem.LinkTo := 'FrmFastFuncPay'
  else
    lbPayItem.LinkTo := ''; }
end;

procedure TFrmTimeSimples.FormComponentPesquisar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  if Pos('NOMEFUNC', Where) > 0 then
    Where := replace(Where, 'NOMEFUNC', 'fu.Nome');

  if Pos('DATA', Where) > 0 then
    Where := replace(Where, 'DATA', 'pf.DATA');


end;

procedure TFrmTimeSimples.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if LastDataObject.TableName = 'ITENS' then
    DMTimeSimples.C_TabelaITEM.Value := LastDataObject.ObjectKey;
    
  if LastDataObject.TableName = 'FAVORECIDOS' then begin
    if ActiveControl = dfFuncionario then
      dfFuncionario.ID := LastDataObject.ObjectKey
    else
      dfCliente.ID := LastDataObject.ObjectKey;
  end;

end;

procedure TFrmTimeSimples.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  with DMTimeSimples do begin
    C_PayrollItens.Close;
    C_PayrollItens.Open;
    C_Contratos.Close;
    C_Contratos.Open;
  end;
end;

procedure TFrmTimeSimples.FormComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;

  Where := lowercase(Where);

  if pos('producao', Where) > 0 then
    Where := replace(Where, 'producao', 'pf.producao');
end;

procedure TFrmTimeSimples.TS_Label3SetParametrosForm(Sender: TObject);
begin
  inherited;
	DMProjeto.SetParametrosForm( [null,3] );
end;

procedure TFrmTimeSimples.cmbPayItemChange(Sender: TObject);
begin
  inherited;
  PayRollItem := StrToIntDef(VarToStr(cmbPayItem.LookUpKeyValue),0);
end;

procedure TFrmTimeSimples.TS_SpeedButton1Click(Sender: TObject);
var
  nDif : Integer;
begin
  inherited;

  {Recuar periodo}
  nDif := trunc(DMTimeSimples.C_TabelaDataFIM.Value) - trunc(DMTimeSimples.C_TabelaDataInicio.Value);

  DMTimeSimples.C_TabelaDataFim.Value := DMTimeSimples.C_TabelaDataInicio.Value - 1;
  DMTimeSimples.C_TabelaDataInicio.Value := DMTimeSimples.C_TabelaDataFim.Value - nDif;

end;

procedure TFrmTimeSimples.TS_SpeedButton2Click(Sender: TObject);
var
  nDif : Integer;
begin
  inherited;

  {Avancar periodo}
  nDif := trunc(DMTimeSimples.C_TabelaDataFIM.Value) - trunc(DMTimeSimples.C_TabelaDataInicio.Value);

  DMTimeSimples.C_TabelaDataInicio.Value := DMTimeSimples.C_TabelaDataFim.Value + 1;
  DMTimeSimples.C_TabelaDataFim.Value := DMTimeSimples.C_TabelaDataInicio.Value + nDif;

end;

procedure TFrmTimeSimples.dfHoraInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    dfHoraFim.SetFocus;

end;

procedure TFrmTimeSimples.dfHoraFimKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    dfDesconto.SetFocus;
end;

procedure TFrmTimeSimples.dfDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    btCalcHorasClick(self);
end;

procedure TFrmTimeSimples.btCalcHorasClick(Sender: TObject);
begin

  (GetParentForm(pnDetalheHoras) as TdxPopupEditForm).ClosePopup(True);
  
end;

procedure TFrmTimeSimples.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key in [33,34]) and not DMTimeSimples.bAlteracao then begin
    if Key = 33 then
      TS_SpeedButton1Click(self);
    if Key = 34 then
      TS_SpeedButton2Click(self);

    if cbLockDates.Checked and (DMTimeSimples.C_TabelaDataInicio.Value > 0) then
      DMTimeSimples.dDataI := DMTimeSimples.C_TabelaDataInicio.Value;
    if cbLockDates.Checked and (DMTimeSimples.C_TabelaDataFim.Value > 0) then
      DMTimeSimples.dDataF := DMTimeSimples.C_TabelaDataFim.Value;
  end;
end;

procedure TFrmTimeSimples.FormShow(Sender: TObject);
begin
  inherited;
  if DMProjeto.Parametro('FormatoHorasProd') = 'H' then
    dfHorasUser.Visible := false
  else
    dfHoras.Visible := false;
end;

procedure TFrmTimeSimples.dfHorasCloseUp(Sender: TObject; var Text: String;
  var Accept: Boolean);
var
  MinInicio, MinFim : Integer;
  nHorasDia, nMinutos : double;
begin
  inherited;

  if (dfHoraFim.Text = '') or (dfHoraInicio.Text = '') then
    exit;

  Accept := true;

  MinFim := (StrToIntDef(SeparaStrings(dfHoraFim.Text,':',1),0) * 60 + StrToIntDef(SeparaStrings(dfHoraFim.Text,':',2),0));
  MinInicio := (StrToIntDef(SeparaStrings(dfHoraInicio.Text,':',1),0) * 60 + StrToIntDef(SeparaStrings(dfHoraInicio.Text,':',2),0));

  nHorasDia := ( (MinFim - MinInicio) - StrToIntDef(dfDesconto.Text,0) )/60;

  if nHorasDia < 0 then
    nHorasDia := 0;

  nMinutos := nHorasDia - Trunc(nHorasDia);

  Text := AdicionarStr(IntToStr(Trunc(nHorasDia)),'0',2) + ':' +
          AdicionarStr(IntToStr(Round(nMinutos*60)),'0',2);
  {
  DMTimeSimples.C_Tabela.Edit;
  DMTimeSimples.C_TabelaQtdHoras.Value := nHorasDia;
  DMTimeSimples.C_TabelaQtdHoras_User.Value := AdicionarStr(IntToStr(Trunc(nHorasDia)),'0',2) + ':' +
                                               AdicionarStr(IntToStr(Round(nMinutos*60)),'0',2);
  }
end;

procedure TFrmTimeSimples.dfHorasUserEnter(Sender: TObject);
begin
  inherited;
	dfHorasUser.SelectAll;
end;

procedure TFrmTimeSimples.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  if DMProjeto.Parametro('FormatoHorasProd') = 'H' then
    GridQtdHoras_User.Visible := false
  else
    GridQtdHoras.Visible := false;
end;

end.

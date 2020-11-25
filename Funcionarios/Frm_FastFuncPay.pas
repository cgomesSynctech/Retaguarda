unit Frm_FastFuncPay;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, dxDBGrid, dxDBCtrl, dxTL, dxDBTLCl, dxGrClms, dxCntner,
  TS_QDBGrid, Db, Provider, DBClient, IBCustomDataSet, IBUpdateSQL, IBQuery,
  dxEditor, dxEdLib, TS_Edit, Variants, dxExEdtr, dxDBELib, TS_DBImageEdit,
  dxDBEdtr, TS_DBLookupComboBox, TS_ImageEdit, Placemnt, BTOdeum;

type
  TFrmFastFuncPay = class(TFrmModeloCadastros)
    dbgFuncPay: TTS_QDBGrid;
    dbgFuncPaylkPayrollItem: TdxDBGridLookupColumn;
    dbgFuncPayVALOR: TdxDBGridMaskColumn;
    dbgFuncPayDESC_ITEM: TdxDBGridLookupColumn;
    Q_FuncsPayItens: TIBQuery;
    U_FuncsPayItens: TIBUpdateSQL;
    C_FuncsPayItens: TClientDataSet;
    C_FuncsPayItensFUNCPAYITEM: TIntegerField;
    C_FuncsPayItensFUNCIONARIO: TIntegerField;
    C_FuncsPayItensITEM: TIntegerField;
    C_FuncsPayItensPAYROLLITEM: TIntegerField;
    C_FuncsPayItensVALOR: TBCDField;
    C_FuncsPayItensPERCENTUAL: TBCDField;
    C_FuncsPayItensQTDHORAS: TBCDField;
    C_FuncsPayItensLIMITE: TBCDField;
    C_FuncsPayItensFAVORECIDO: TIntegerField;
    C_FuncsPayItenslkPayrollItem: TStringField;
    C_FuncsPayItensTIPOPAYROLL: TIntegerField;
    C_FuncsPayItenslkItem: TStringField;
    Q_PayrollItens: TIBQuery;
    P_PayrollItens: TDataSetProvider;
    C_PayrollItens: TClientDataSet;
    C_PayrollItensPAYROLLITEM: TIntegerField;
    C_PayrollItensDESCRICAO: TStringField;
    C_PayrollItensTIPOPAYROLL: TIntegerField;
    C_PayrollItensCONTA: TIntegerField;
    C_PayrollItensVALOR: TBCDField;
    C_PayrollItensPERCENTUAL: TBCDField;
    C_PayrollItensLIMITE: TBCDField;
    C_PayrollItensTIPOWAGE: TStringField;
    Q_Itens: TIBQuery;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensHASCHILDREN: TStringField;
    C_FuncsPayItensDS: TDataSource;
    P_FuncsPayItens: TDataSetProvider;
    Q_SQL: TIBQuery;
    ppmGrid: TTS_PopupMenu;
    C_FuncsPayItensPRODUTIVIDADE: TStringField;
    C_FuncsPayItensMETODOADIC: TIntegerField;
    pnNovoFunc: TTS_Panel;
    TS_Label1: TTS_Label;
    TS_Label37: TTS_Label;
    TS_Label24: TTS_Label;
    dfFunc: TTS_Edit;
    cmbCargo: TTS_DBLookupComboBox;
    cmbTipo: TTS_ImageEdit;
    C_Cargos: TClientDataSet;
    P_Cargos: TDataSetProvider;
    Q_Cargos: TIBQuery;
    C_CargosCARGO: TIntegerField;
    C_CargosDESCRICAO: TStringField;
    C_CargosDS: TDataSource;
    pnFunc: TTS_Panel;
    lbFunc: TdxfLabel;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure Q_FuncsPayItensBeforeOpen(DataSet: TDataSet);
    procedure btGravarClick(Sender: TObject);
    procedure C_FuncsPayItensNewRecord(DataSet: TDataSet);
    procedure dbgFuncPayColumnClick(Sender: TObject;
      Column: TdxDBTreeListColumn);
    procedure dbgFuncPayTS_AfterNewRecord(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Funcionario : Integer;
  end;

var
  FrmFastFuncPay: TFrmFastFuncPay;

implementation
  uses DM_Projeto;

{$R *.DFM}

procedure TFrmFastFuncPay.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  if DMProjeto.GetParametrosForm(0) <> null then begin
    pnNovoFunc.Visible := false;
    pnFunc.Visible := true;
    lbFunc.Caption := DMProjeto.GetParametrosForm(1);
    Funcionario := DMProjeto.GetParametrosForm(0);
    end
  else begin
    pnNovoFunc.Visible := true;
    pnFunc.Visible 		 := false;
    FormsComponent.FirstEditField := dfFunc;
  end;

  C_FuncsPayItens.Open;

end;

procedure TFrmFastFuncPay.Q_FuncsPayItensBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Q_FuncsPayItens.Params[0].asInteger := Funcionario;
end;

procedure TFrmFastFuncPay.btGravarClick(Sender: TObject);
var
  nFunc : Integer;
begin
  inherited;
  if pnNovoFunc.Visible then begin
     if Trim(dfFunc.Text) = '' then begin
        DlgMsg.ShowMsg(929, ['o nome do Funcionário']);
        Exit;
     end;
     if Trim(cmbCargo.Text) = '' then begin
        DlgMsg.ShowMsg(929, ['o cargo do Funcionário']);
        Exit;
     end;
     if Trim(cmbTipo.Text) = '' then begin
        DlgMsg.ShowMsg(929, ['o tipo do Funcionário']);
        Exit;
     end;
     if C_FuncsPayItens.IsEmpty then begin
        DlgMsg.ShowMsg(929, ['o Item de Payroll para o Funcionário']);
        Exit;
     end;
  end;
  try
    {Gravando o Funcionario}
    nFunc := 0;
    if dfFunc.Visible then with Q_SQL do begin
      nFunc := DMProjeto.NextIDGlobal;
      Close;
      SQL.Text := 'Insert Into Favorecidos (Favorecido, Nome, TipoFavorecido, LIMITECREDITO, TAXAVEL, '+
                  '                         DESATIVADO, EXIGIVEL1099, DATACADASTRO, SITUACAO, CREDITO, '+
                  '                         ISVENDEDOR, periodicidade, Cargo, Codigo, Tipo ) '+
                  'Values (:F, :Nome, 3, 0, ''S'', ''N'', ''N'', :Data, ''N'', 0, ''N'', ''S'', :Cargo, :Codigo, :Tipo  ) ';
      ParamByName('F').asInteger 		 := nFunc;
      ParamByName('Nome').asString 	 := dfFunc.Text;
      ParamByName('Cargo').AsInteger := cmbCargo.LookUpKeyValue;
      ParamByName('Codigo').AsString := DMProjeto.GeraCodigoFunc('',nFunc);
      ParamByName('Tipo').AsString 	 := cmbTipo.Text;
      ParamByName('Data').asDateTime := DMProjeto.dDataSistema;
      ExecSQL;
    end;

    {Gerando IDS}
    with C_FuncsPayItens do begin
      First;
      while not EOF do begin
        if FieldByName('FuncPayItem').asInteger < 0 then begin
          Edit;
          FieldByName('FuncPayItem').asInteger := DMProjeto.NextIDGlobal;
          if nFunc > 0 then
            FieldByName('Funcionario').asInteger := nFunc;
          Post;
        end;
        Next;
      end;
    end;

    C_FuncsPayItens.ApplyUpdates(0);
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    SendLastDataObject(Self.Name, 'FuncsPayItens', 'FuncPayItem', nFunc, false );
    ModalResult := mrok;
  except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining ;

      DlgMsg.ShowMsg(2,e.message, '');
    end;
  end;
end;

procedure TFrmFastFuncPay.C_FuncsPayItensNewRecord(DataSet: TDataSet);
begin
  inherited;

  C_FuncsPayItensFuncPayItem.Value := -1;
  C_FuncsPayItensValor.Value := 0;
  C_FuncsPayItensPercentual.Value := 0;
  C_FuncsPayItensQTDHoras.Value := 0;
  C_FuncsPayItensLimite.Value := 0;
  C_FuncsPayItensFuncionario.Value := Funcionario;
  C_FuncsPayItensProdutividade.Value := 'S';
  C_FuncsPayItensMetodoAdic.Value := 2;
end;

procedure TFrmFastFuncPay.dbgFuncPayColumnClick(Sender: TObject;
  Column: TdxDBTreeListColumn);
begin
  inherited;
  if TdxDBGridColumn(Column).FieldName = 'lkPayrollItem' then begin
    DMProjeto.SetParametrosForm([C_FuncsPayItensPayrollItem.asVariant]);
    DMProjeto.CriarForm('FrmPayrollItems', Self, true);
    end
  else if TdxDBGridColumn(Column).FieldName = 'lkItem' then begin
    DMProjeto.SetParametrosForm([C_FuncsPayItensItem.asVariant]);
    DMProjeto.CriarForm('FrmItens', Self, true);
  end;

end;

procedure TFrmFastFuncPay.dbgFuncPayTS_AfterNewRecord(Sender: TObject);
begin
  inherited;
  dbgFuncPay.TS_SelectedColumn := 'lkPayrollItem';
end;

procedure TFrmFastFuncPay.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if LastDataObject.TableName = 'PAYROLLITENS' then begin
    C_PayrollItens.Close;
    C_PayrollItens.Open;

    if C_FuncsPayItens.State = dsBrowse then
      C_FuncsPayItens.Append;
    C_FuncsPayItensPayrollItem.Value := LastDataObject.ObjectKey;
  end;
end;

procedure TFrmFastFuncPay.btLimparClick(Sender: TObject);
begin
  inherited;
  pnNovoFunc.Visible := true;
  dfFunc.Text 		:= '';
  cmbCargo.Text   := '';
  cmbTipo.Text    := '';
  pnFunc.Visible 	:= false;
  Funcionario 		:= 0;
  ActiveControl 	:= dfFunc;
  C_FuncsPayItens.Close;
  C_FuncsPayItens.Open;
end;

end.

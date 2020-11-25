unit Dlg_MontagensProduto;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxDBTLCl, dxGrClms, dxTL,
    dxDBCtrl, dxDBGrid, dxCntner, TS_QDBGrid, FormsComponent, Placemnt,
    BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel,
    StdCtrls, TS_Label, ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, IBCustomDataSet, IBUpdateSQL,
    DB, Provider, IBQuery, DBClient;

type
    TDlgMontagensProduto = class(TFrmModeloCadastros)
    dbgMontagemProduto: TTS_QDBGrid;
    dbgMontagemProdutoITEM: TdxDBGridMaskColumn;
    dbgMontagemProdutoCODIGO: TdxDBGridButtonColumn;
    dbgMontagemProdutoDESCRICAO: TdxDBGridButtonColumn;
    dbgMontagemProdutoQUANTIDADE: TdxDBGridMaskColumn;
    dbgMontagemProdutoUNIDADE: TdxDBGridMaskColumn;
    dbgMontagemProdutoFATOR: TdxDBGridMaskColumn;
        Q_MontagensProduto: TIBQuery;
        P_MontagensProduto: TDataSetProvider;
        C_MontagensProdutoDS: TDataSource;
        U_MontagensProduto: TIBUpdateSQL;
        C_MontagensProduto: TClientDataSet;
        C_MontagensProdutoMONTAGEMFILHO: TIntegerField;
        C_MontagensProdutoMONTAGEM: TIntegerField;
        C_MontagensProdutoITEM: TIntegerField;
        C_MontagensProdutoQUANTIDADE: TBCDField;
        C_MontagensProdutoUNIDADE: TStringField;
        C_MontagensProdutoFATOR: TFloatField;
        C_MontagensProdutoQTDE: TBCDField;
        C_MontagensProdutoEMPRESA: TIntegerField;
        C_MontagensProdutoORIGEMREPLIC: TStringField;
        C_MontagensProdutoCODIGO: TStringField;
        C_MontagensProdutoDESCRICAO: TStringField;
        procedure btGravarClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_MontagensProdutoNewRecord(DataSet: TDataSet);
    private
        idMontagem: integer;
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DlgMontagensProduto: TDlgMontagensProduto;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TDlgMontagensProduto.btGravarClick(Sender: TObject);
begin
    inherited;

    C_MontagensProduto.First;

    while not C_MontagensProduto.Eof do
    begin
        C_MontagensProduto.Edit;
        C_MontagensProdutoFATOR.Value := 2;
        C_MontagensProduto.Post;
        C_MontagensProduto.Next;
    end;

    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    C_MontagensProduto.ApplyUpdates(0);
    
end;

procedure TDlgMontagensProduto.FormShow(Sender: TObject);
begin
    inherited;

    with Q_MontagensProduto do
        begin
            Close;
            ParamByName('MONTAGEM').AsInteger := idMontagem;
            Open;
        end;

end;

procedure TDlgMontagensProduto.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    idMontagem := 0;
    idMontagem := IIF(DMProjeto.GetParametrosForm(0) <> null, DMProjeto.GetParametrosForm(0), 1);
end;

procedure TDlgMontagensProduto.C_MontagensProdutoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
    C_MontagensProduto.FieldByName('MONTAGEMFILHO').AsInteger := DMProjeto.NextID('IDGLOBAL', 1);
    C_MontagensProduto.FieldByName('EMPRESA').AsInteger := -1;
end;

end.


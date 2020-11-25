unit Dlg_OperacoesDoc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Db, IBCustomDataSet, IBQuery, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, TS_LastDataObject, DlgMsg, Menus,
  TS_PopupMenu, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton, TS_Panel,
  StdCtrls, TS_BitBtn, dxDBTLCl, dxGrClms, FormsComponent, TS_Label, 
  TS_Image, dxfLabel, TS_MaxPanel, teCtrls, TS_EffectsPanel,
  TS_QDBGrid, dxExEdtr, Placemnt, BTOdeum;

type
  TDlgOperacoesDoc = class(TFrmModeloCadastros)
    Q_OperacoesDoc: TIBQuery;
    Q_OperacoesDocDS: TDataSource;
    Q_OperacoesDocDATA: TDateField;
    Q_OperacoesDocTIPOOPERACAO: TIBStringField;
    Q_OperacoesDocVALOR: TIBBCDField;
    DBOperacoes: TTS_QDBGrid;
    DBOperacoesDATA: TdxDBGridDateColumn;
    DBOperacoesTIPOOPERACAO: TdxDBGridMaskColumn;
    DBOperacoesVALOR: TdxDBGridMaskColumn;
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
    bConfirma, bTodos : boolean;
  public
    { Public declarations }
  end;

var
  DlgOperacoesDoc: TDlgOperacoesDoc;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgOperacoesDoc.btGravarClick(Sender: TObject);
begin
  inherited;
  if DlgMsg.ShowMsg( 927 ) = 100 then
  	ModalResult := 1;
end;

procedure TDlgOperacoesDoc.FormsComponentBeforeClearParams(
  Sender: TObject);
var sIDDoc : string;
begin
  inherited;
	if DMProjeto.ExisteParametrosForm then begin
  	sIDDoc 		:= DMProjeto.GetParametrosForm( 0 );
    bConfirma := DMProjeto.GetParametrosForm( 1 );
    bTodos    := DMProjeto.GetParametrosForm( 2 );
    DMProjeto.LimparParametrosForm;
  end;
  DBOperacoesValor.Visible := not bTodos;
  with Q_OperacoesDoc do begin
  	Close;
		SQL.Text := 'Select o.Data, t.Descricao as TipoOperacao, o.Valor '+
								'From OperacoesDoc o inner join TiposOrigens t on o.tipooperacao = t.origem '+
								'Where o.IDDoc IN ('+sIDDoc+') '+iif(bTodos,'','and not o.tipooperacao IN (1,2) ')+
                'Order by o.Data, o.OperacaoDoc ';
    Open;
  end;
  btGravar.Visible := bConfirma;
end;

end.

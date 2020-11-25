unit Dlg_OcorrenciasDoCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxDBCtrl, dxDBGrid, dxTL,
  dxDBTLCl, dxGrClms, DB, IBCustomDataSet, IBQuery, dxCntner, TS_QDBGrid,
  Placemnt, FormsComponent, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel;

type
  TDlgOcorrenciasDoCheque = class(TFrmModeloCadastros)
    dbgDoc: TTS_QDBGrid;
    Q_OperacoesDoc: TIBQuery;
    Q_OperacoesDocDS: TDataSource;
    Q_OperacoesDocDATA: TDateField;
    Q_OperacoesDocLOGINNAME: TIBStringField;
    Q_OperacoesDocOBS: TIBStringField;
    Q_OperacoesDocSTATUS: TIBStringField;
    dbgDocDATA: TdxDBGridDateColumn;
    dbgDocLOGINNAME: TdxDBGridMaskColumn;
    dbgDocOBS: TdxDBGridMaskColumn;
    dbgDocSTATUS: TdxDBGridMaskColumn;
    Q_OperacoesDocOPERACAODOC: TIntegerField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    ID : integer;
  end;

var
  DlgOcorrenciasDoCheque: TDlgOcorrenciasDoCheque;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDlgOcorrenciasDoCheque.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	Q_OperacoesDoc.Close;
  Q_OperacoesDoc.ParambyName('iddoc').AsInteger := ID;
  Q_OperacoesDoc.Open;
end;

procedure TDlgOcorrenciasDoCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
	Q_OperacoesDoc.Close;
end;

end.

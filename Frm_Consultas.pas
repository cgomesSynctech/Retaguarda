unit Frm_Consultas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, DBCtrls, TS_DBMemo, Mask,
  TS_DBEdit, TS_Label, Db, IBCustomDataSet, IBQuery, dxExEdtr,
  dxEdLib, dxDBELib, dxCntner, dxEditor, TS_LastDataObject,
  TS_Image, dxfLabel, TS_MaxPanel, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, CheckLst, TS_CheckListBox, TS_Bevel, 
  teCtrls, TS_EffectsPanel, dxTLClms, Placemnt, BTOdeum, dxfProgressBar;

type
  TFrmConsultas = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    mSQL: TTS_DBMemo;
    Q_Consulta: TIBQuery;
    Q_ConsultaDS: TDataSource;
    procedure btComando1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultas: TFrmConsultas;

implementation

uses DM_Projeto, DM_Consultas;

{$R *.DFM}

procedure TFrmConsultas.btComando1Click(Sender: TObject);
begin
  inherited;
  if mSQL.Text = '' then
  	exit;
	with Q_Consulta do begin
  	try
    	close;
      SQL.Text := mSQL.Text;
      Open;
    except
    	on E:Exception do
      	DlgMsg.ShowMsg( 1, e.message, '' );
    end;
    Close;
  end;
end;

end.

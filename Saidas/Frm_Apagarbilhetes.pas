unit Frm_Apagarbilhetes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TS_DateTimePicker;

type
  TFrmApagarbilhetes = class(TFrmModeloCadastros)
    TSData: TTS_DateTimePicker;
    Label1: TLabel;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmApagarbilhetes: TFrmApagarbilhetes;

implementation

uses Form_Padrao, DM_Projeto;

{$R *.dfm}

procedure TFrmApagarbilhetes.btGravarClick(Sender: TObject);
begin
  inherited;
        if DlgMsg.ShowMsg(8088) = 100 then  begin
          DMProjeto.DB_Projeto.DefaultTransaction.Commit;

          if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
          With DMPRojeto.StoredProcedure do Begin
                StoredProcName := 'APAGARBILHETESANTIGOS' ;
                ParamByName('DDATASISTEMA').AsDateTime := TSData.Date    ;
                Prepare;
                ExecProc;
          End;
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;
        ShowMessage('Bilhetes Apagados com Sucesso !' );
        end ;

end;

end.

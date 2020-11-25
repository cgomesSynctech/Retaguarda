unit Frm_Mensagens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, DBCtrls, TS_DBMemo, Mask,
  TS_DBEdit, TS_Label, TS_DBRadioGroup, TS_LastDataObject,
  TS_Bevel, TS_MaxPanel, CheckLst, TS_CheckListBox, dxExEdtr,
  dxEdLib, dxDBELib, dxCntner, dxEditor, TS_Image, dxfLabel, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, dxTLClms;

type
  TFrmMensagens = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    TS_DBEdit2: TTS_DBEdit;
    TS_DBEdit4: TTS_DBEdit;
    TS_DBMemo1: TTS_DBMemo;
    TS_Label5: TTS_Label;
    TS_DBEdit3: TTS_DBEdit;
    TS_DBRadioGroup1: TTS_DBRadioGroup;
    TS_DBMemo2: TTS_DBMemo;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_DBMemo3: TTS_DBMemo;
    Grid_icSelecionado: TdxDBGridColumn;
    GridMENSAGEM: TdxDBGridMaskColumn;
    GridIDIOMA: TdxDBGridMaskColumn;
    GridTITULO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridBOTOES: TdxDBGridMaskColumn;
    GridTIPOMSG: TdxDBGridMaskColumn;
    GridMODULO: TdxDBGridMaskColumn;
    GridIMPORTACAO: TdxDBGridMaskColumn;
    GridSOLUCAO: TdxDBGridMaskColumn;
    GridPORQUE: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMensagens: TFrmMensagens;

implementation
uses DM_Mensagens, DM_Projeto;

{$R *.DFM}

procedure TFrmMensagens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmMensagens := nil;
end;

end.

unit Frm_Tarefas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, 
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, TS_Label, DBCtrls,
  TS_DBComboBox, TS_DateTimePicker, TS_DBMemo, Mask, TS_DBEdit,
  TS_DBLookupComboBox, RxDBComb, TS_DBCheckBox, TS_LastDataObject,
  TS_Bevel, TS_MaxPanel, CheckLst, TS_CheckListBox, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, dxDBEdtr, dxCntner, TS_Image,
  dxfLabel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  dxDBTLCl, dxGrClms, TS_DBEditDate, teCtrls, TS_EffectsPanel,
  dxTLClms, TS_DBText, TS_PopupMenu, TS_DBImageEdit, BTOdeum, Placemnt;

type
  TFrmTarefas = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label7: TTS_Label;
    DF_Assunto: TTS_DBEdit;
    DF_Descricao: TTS_DBMemo;
    DF_UsuOrigem: TTS_DBLookupComboBox;
    DF_Conclusao: TTS_DBCheckBox;
    DF_Desativado: TTS_DBCheckBox;
    DF_UsuDestino: TTS_DBLookupComboBox;
    DF_Previsao: TTS_DBEditDate;
    Img_Con: TTS_Image;
    Img_Canc: TTS_Image;
    GridTAREFA: TdxDBGridMaskColumn;
    GridASSUNTO: TdxDBGridMaskColumn;
    GridDATA: TdxDBGridDateColumn;
    GridPREVISAO: TdxDBGridDateColumn;
    GridPRIORIDADE: TdxDBGridMaskColumn;
    GridUSUORIGEM: TdxDBGridMaskColumn;
    GridUSUDESTINO: TdxDBGridMaskColumn;
    GridlkUsuOrigem: TdxDBGridLookupColumn;
    GridlkUsuDestino: TdxDBGridLookupColumn;
    GridCONCLUIDO: TdxDBGridCheckColumn;
    GridDESATIVADO: TdxDBGridCheckColumn;
    GridDESCRICAO: TdxDBGridMemoColumn;
    TS_Label10: TTS_Label;
    DF_Prioridade: TTS_DBImageEdit;
    df_data: TTS_DBEditDate;
    TS_DBEditDate1: TTS_DBEditDate;
    TS_Label6: TTS_Label;
    procedure FormComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTarefas: TFrmTarefas;

implementation

uses DM_Tarefas, DM_Projeto, DM_Agenda;

{$R *.DFM}

procedure TFrmTarefas.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  with DMTarefas do begin
    if DMProjeto.QtdParametrosForm > 1 then begin
      // INCLUSÃO
      C_TabelaUSUDESTINO.AsVariant := DMProjeto.GetParametrosForm(1);
    end;
  end;
end;

end.

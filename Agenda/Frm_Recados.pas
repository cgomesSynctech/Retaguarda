unit Frm_Recados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus,
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, TS_Label,
  TS_DateTimePicker, DBCtrls, TS_DBLookupComboBox, TS_DBMemo, TS_DBCheckBox, db,
  TS_Shape, TS_Image, TS_DBText, TS_LastDataObject, TS_Bevel,
  TS_MaxPanel, CheckLst, TS_CheckListBox, dxExEdtr, dxEdLib, dxDBELib,
  dxCntner, dxEditor, dxDBEdtr, dxfLabel, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, dxDBTLCl, dxGrClms, IBCustomDataSet,
  IBQuery, teCtrls, TS_EffectsPanel, dxTLClms, TS_PopupMenu, Placemnt,
  BTOdeum;

type
  TFrmRecados = class(TFrmPadrao)
    Lbl_Usuario: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label1: TTS_Label;
    DF_DataHora: TTS_DBText;
    DF_Usuario: TTS_DBLookupComboBox;
    DF_Descricao: TTS_DBMemo;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridLIDO: TdxDBGridCheckColumn;
    GridDATA_HORA: TdxDBGridMaskColumn;
    Q_SQL: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormComponentGravou(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure FormComponentInclusao(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure HabilitarControles( habilita : boolean );
  end;

var
  FrmRecados: TFrmRecados;

implementation

uses DM_Recados, DM_Projeto, MDI_Projeto, Dlg_Recados, DM_Agenda;

{$R *.DFM}

procedure TFrmRecados.HabilitarControles( habilita : boolean );
begin
  DF_Usuario.Enabled := habilita;
  DF_Descricao.ReadOnly := not habilita;
  btGravar.Enabled := habilita;
end;

procedure TFrmRecados.FormCreate(Sender: TObject);
begin
  inherited;
  FrmRecados := Self;
end;

procedure TFrmRecados.FormComponentGravou(Sender: TObject);
begin
  inherited;
  if DMProjeto.FormExiste('DlgRecados') <> -1 then begin
    DlgRecados.AtualizaRecados;
  end;
end;

procedure TFrmRecados.btLimparClick(Sender: TObject);
begin
  inherited;
  HabilitarControles(true);
end;

procedure TFrmRecados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not(DMRecados.Incluindo) and (DMRecados.QuemChamou = 'RECEBIDO') then begin
    DMRecados.C_Tabela.Edit;
    DMRecados.C_TabelaLIDO.Value := 'S';
    btGravar.Click;
  end;
  ModalResult := 1;
  inherited;
end;

procedure TFrmRecados.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  with DMRecados do begin
    QuemChamou := DMProjeto.GetParametrosForm(1);
    Incluindo := DMProjeto.GetParametrosForm(2);
    //
    if (QuemChamou = 'ENVIADO') then begin
      Lbl_Usuario.Caption := 'Para:';
      DF_Usuario.DataField := 'PARA';
      HabilitarControles(false);
    end;
    if (QuemChamou = 'RECEBIDO') then begin
      // ENVIANDO
      if Incluindo then begin
        Lbl_Usuario.Caption := 'Para:';
        DF_Usuario.DataField := 'PARA';
        HabilitarControles(true);
      end else begin
      // LENDO UM RECEBIDO
        Lbl_Usuario.Caption := 'De:';
        DF_Usuario.DataField := 'DE';
        HabilitarControles(false);
      end;
    end;
  end; // with DMRecados
end;

procedure TFrmRecados.FormComponentInclusao(Sender: TObject);
begin
  inherited;
  Lbl_Usuario.Caption := 'Para:';
  DF_Usuario.DataField := 'PARA';
  HabilitarControles(false);
end;

end.

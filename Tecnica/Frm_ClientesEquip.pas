unit Frm_ClientesEquip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib, TS_DBEdit,
  TS_DBEditEquipamento, dxEditor, TS_DBButtonEdit, TS_DBEditFavorecido,
  TS_DBEditDate, TS_DBEditNumber, TS_DBMaskEdit;

type
  TFrmClientesEquip = class(TFrmPadrao)
    TS_Label5: TTS_Label;
    df_favorecido: TTS_DBEditFavorecido;
    TS_Label1: TTS_Label;
    dfEquipamento: TTS_DBEditEquipamento;
    TS_Label2: TTS_Label;
    dfNumSerie: TTS_DBEdit;
    GridNUMEROSERIE: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    TS_DBEdit1: TTS_DBEdit;
    TS_DBEdit2: TTS_DBEdit;
    TS_DBEditNumber1: TTS_DBEditNumber;
    TS_DBEditDate1: TTS_DBEditDate;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    dfCNPJ: TTS_DBMaskEdit;
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure dfCNPJEnter(Sender: TObject);
    procedure dfCNPJExit(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClientesEquip: TFrmClientesEquip;

implementation

{$R *.dfm}

uses DM_Projeto, DM_ClientesEquip, Funcoes, Frm_EntradasAssistencia;

procedure TFrmClientesEquip.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  df_favorecido.ReadOnly := False;
  df_favorecido.Enabled := True;    
  if (DMProjeto.GetParametrosForm(0) <> null) then begin
      DMClientesEquip.C_TabelaCliente.Value := DMProjeto.GetParametrosForm(0);
      with DMProjeto.Q_SQL do begin
        Close;
        SQL.Text := 'select nome from favorecidos where favorecido='+IntToStr(DMClientesEquip.C_TabelaCliente.Value);
        Open;
        df_favorecido.Text := Fields[0].AsString;
        Close;
        df_favorecido.ReadOnly := True;
        df_favorecido.Enabled := false;
      End;
  end;
end;

procedure TFrmClientesEquip.dfCNPJEnter(Sender: TObject);
begin
  inherited;
  DMClientesEquip.C_TabelaCPF_CNPJ.EditMask := '';
end;

procedure TFrmClientesEquip.dfCNPJExit(Sender: TObject);
begin
  inherited;
  try
    Funcoes.CPF_CGCValido(AllTrim(TTS_DBMaskEdit(Sender).Text));
  Except
    on E: Exception do Begin
      DlgMsg.ShowMsg(50,[pChar('CPF/CNPJ inv�lido!')]);
      TTS_DBMaskEdit(Sender).SetFocus;
    End;
 End;
 if length(AllTrim(TTS_DBMaskEdit(Sender).Text)) = 11 then
    DMClientesEquip.C_TabelaCPF_CNPJ.EditMask := '999.999.999-99;0; '
  else if length(TTS_DBMaskEdit(Sender).Text) = 14 then
    DMClientesEquip.C_TabelaCPF_CNPJ.EditMask := '99.999.999/9999-99;0; ';
end;

procedure TFrmClientesEquip.btGravarClick(Sender: TObject);
begin
  if FrmEntradasAssistencia.camposObrigatorios = 0 then begin
        if ((dfNumSerie.Text = '') or  (dfCNPJ.text = '') or (TS_DBEdit2.text = '') or
        (TS_DBEditDate1.Text = '') or (dfNumSerie.text = '')) then begin
        ShowMessage('Garantia de F�brica, por favor preencha todos os campos');
        exit;
        end;
  end;
  inherited;
end;

end.

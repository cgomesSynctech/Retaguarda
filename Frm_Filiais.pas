unit Frm_Filiais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib, TS_DBEdit,
  dxEditor, TS_DBMaskEdit;

type
  TFrmFiliais = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    dfCNPJ: TTS_DBMaskEdit;
    dfNome: TTS_DBEdit;
    dfRazao: TTS_DBEdit;
    dfEndereco: TTS_DBEdit;
    dfBairro: TTS_DBEdit;
    dfCidade: TTS_DBEdit;
    dfUF: TTS_DBEdit;
    dfTelefone: TTS_DBEdit;
    dfFax: TTS_DBEdit;
    dfEmail: TTS_DBEdit;
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiliais: TFrmFiliais;

implementation

uses DM_Projeto, DM_Filiais;

{$R *.dfm}

procedure TFrmFiliais.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if UpperCase(LastDataObject.TableName) = 'FAVORECIDOS' then begin
    DMProjeto.C_Empresas.Close;
    DMProjeto.C_Empresas.Open;
  end;
end;

end.

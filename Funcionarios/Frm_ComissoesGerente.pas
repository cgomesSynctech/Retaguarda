 unit Frm_ComissoesGerente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg, Menus,
  TS_PopupMenu, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  StdCtrls, TS_BitBtn, DBCtrls, TS_DBText, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, FormsComponent, TS_Label, TS_Image,
  dxfLabel, TS_MaxPanel, TS_QDBGrid, teCtrls, TS_EffectsPanel;

type
  TFrmComissoesGerente = class(TFrmModeloCadastros)
    TS_DBText1: TTS_DBText;
    Label1: TLabel;
    dxDBGrid1: TTS_QDBGrid;
    dxDBGrid1FUNCIONARIO: TdxDBGridLookupColumn;
    dxDBGrid1COMISSAO: TdxDBGridCalcColumn;
    TS_Label1: TTS_Label;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComissoesGerente: TFrmComissoesGerente;

implementation

uses DM_Funcionarios, DM_Projeto;

{$R *.DFM}

procedure TFrmComissoesGerente.btGravarClick(Sender: TObject);
begin
  inherited;
  DMFuncionarios.Gravar;
  Close;
end;

end.

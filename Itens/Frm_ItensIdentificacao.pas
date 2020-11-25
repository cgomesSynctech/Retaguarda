unit Frm_ItensIdentificacao;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
    Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
    dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, dxDBTLCl, dxGrClms, dxEditor,
    dxEdLib, dxDBELib, TS_DBEdit, TS_Edit;

type
    TFrmItensIdentificacao = class(TFrmPadrao)
        TS_Label1: TTS_Label;
        dbgItensIdentificacaoEntrada: TTS_QDBGrid;
        dbgItensIdentificacaoSerial: TdxDBGridMaskColumn;
        procedure btGravarClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmItensIdentificacao: TFrmItensIdentificacao;

implementation

uses DM_Projeto, DM_ItensIdentificacao, IBQuery, Form_Padrao, funcoes,
    TDM_Manutencao;

{$R *.dfm}

procedure TFrmItensIdentificacao.btGravarClick(Sender: TObject);
begin
    if (DMItensIdentificacao.ConsultaSerialnoGrid) then
        inherited
    else
        DlgMsg.ShowMsg(50, ['A operação não pode ser concluída.']);
end;

procedure TFrmItensIdentificacao.FormCreate(Sender: TObject);
begin
    inherited;
    DMItensIdentificacao.ApagarInformacoesItensPendentes;
end;

end.


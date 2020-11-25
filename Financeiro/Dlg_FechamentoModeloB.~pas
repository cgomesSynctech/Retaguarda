unit Dlg_FechamentoModeloB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg,
  ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  StdCtrls, TS_BitBtn, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxfLabel, Db,
  IBCustomDataSet, IBQuery,
  dxfProgressBar, FormsComponent, TS_Label,
  TS_Image, TS_MaxPanel, TS_Memo, teCtrls, TS_EffectsPanel, Menus,
  TS_PopupMenu, TS_DateTimePicker, BTOdeum, Placemnt{, ECF};

type
  TDlgFechamentoModeloB = class(TFrmModeloCadastros)
    Barra: TdxfProgressBar;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    lbCaixa: TdxfLabel;
    lbData: TdxfLabel;
    FecharCaixa1: TMenuItem;
    TS_Label3: TTS_Label;
    lbFunc: TdxfLabel;
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    dDataCaixa : TDatetime;
  public
    { Public declarations }
  end;

var
  DlgFechamentoModeloB: TDlgFechamentoModeloB;

implementation

uses DM_Projeto, DM_Financeiro, funcoes{, dm_ECF};

{$R *.DFM}

procedure TDlgFechamentoModeloB.btGravarClick(Sender: TObject);
var s:string;
begin
  inherited;
  if Copy(DMFinanceiro.Conta_Situacao( DMFinanceiro.nContaPadrao ),1,1)<>'F' then begin

	DMFinanceiro.FecharCaixa;
  if (DMProjeto.Parametro('VisualizarSaldoDinheiro') = 'S') Then Begin
    if DlgMsg.ShowMsg(650,['do Caixa.']) = 100 then begin
  	   DMProjeto.SetParametrosForm([DMFinanceiro.nContaPadrao, dDataCaixa ]);
      DMProjeto.CriarForm('DlgRelCaixaB',self,true);
    end;
  end;
  end else begin
    DlgMsg.ShowMsg(409);
    Exit;
  end;
  //Remoção do DM_ecf
  {  (* Finalização do ECF *)
  if (DMProjeto.Parametro('CaixaECF') = 'S') and (DMECF.ECF1.Modelo <> Nenhuma) then begin
    s := DMECF.ECF1.ChkECFAberto;
    if s = 'ECF Fechado' then begin
      DlgMsg.ShowMsg(6035);
    end
    else begin
      if DlgMsg.ShowMsg(6033) = 100 then begin
        DMECF.ECF1.FechamentoDia(ExtractFilePath(Application.ExeName));
      end;
    end;
  end;}
  Close;
end;

procedure TDlgFechamentoModeloB.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  dDataCaixa := DMProjeto.dDataSistema;
  lbData.Caption  := DateToStr(DMProjeto.dDataSistema);
  lbCaixa.Caption := DMFinanceiro.Caixa_Nome;
  lbFunc.Caption	:= DMProjeto.sLoginName;
  lbCaixa.AutoSize:= false;
  lbCaixa.AutoSize:= true;
  lbData.AutoSize:= false;
  lbData.AutoSize:= true;
  lbFunc.AutoSize:= false;
  lbFunc.AutoSize:= true;
end;

procedure TDlgFechamentoModeloB.FormShow(Sender: TObject);
begin
  inherited;
  btLimpar.Enabled := (DMProjeto.Parametro('VisualizarSaldoDinheiro') = 'S');
end;

end.


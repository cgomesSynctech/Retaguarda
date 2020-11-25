unit Dlg_AplicarIndicesGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxExEdtr, dxEdLib, TS_CheckBox,
  TS_Shape;

type
  TDlgAplicarIndicesGrupo = class(TFrmModeloCadastros)
    TS_Label48: TTS_Label;
    TS_Shape11: TTS_Shape;
    TS_Shape12: TTS_Shape;
    ckbComissao: TTS_CheckBox;
    ckbDescMax: TTS_CheckBox;
    TS_Label1: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Label2: TTS_Label;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Label3: TTS_Label;
    TS_Shape5: TTS_Shape;
    TS_Shape6: TTS_Shape;
    ckbDespFixas: TTS_CheckBox;
    ckbEncCartoes: TTS_CheckBox;
    ckbComissAplic: TTS_CheckBox;
    ckbImpFed: TTS_CheckBox;
    ckbICMSVenda: TTS_CheckBox;
    ckbCustoAdic: TTS_CheckBox;
    ckbPercLucro: TTS_CheckBox;
    ckbTipoTrib: TTS_CheckBox;
    ckbAliqICMS: TTS_CheckBox;
    ckbCST: TTS_CheckBox;
    ckbRedCST: TTS_CheckBox;
    ckbTVASubst: TTS_CheckBox;
    ckbTVAFonte: TTS_CheckBox;
    TS_Shape7: TTS_Shape;
    TS_Label4: TTS_Label;
    TS_Shape8: TTS_Shape;
    cbImpostosFederais: TTS_CheckBox;
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sAtualizar : string;
  end;

var
  DlgAplicarIndicesGrupo: TDlgAplicarIndicesGrupo;

implementation

{$R *.dfm}

uses DM_Projeto, DM_Grupos;

procedure TDlgAplicarIndicesGrupo.btGravarClick(Sender: TObject);
begin
  inherited;
  if DlgMsg.ShowMsg( 565 ) <> 100 then Exit;
  sAtualizar := '';
  if (ckbComissao.Checked) or (ckbComissAplic.Checked) then sAtualizar := sAtualizar + 'COMISSAO,';
  if ckbDescMax.Checked then sAtualizar := sAtualizar + 'DESCONTOMAXIMO,';
  if ckbDespFixas.Checked then sAtualizar := sAtualizar + 'DESPESASFIXAS,';
  if ckbEncCartoes.Checked then sAtualizar := sAtualizar + 'ENCARGOSCARTOES,';
  if ckbImpFed.Checked then sAtualizar := sAtualizar + 'IMPOSTOSFEDERAIS,';
  if (ckbICMSVenda.Checked) or (ckbAliqICMS.Checked) then sAtualizar := sAtualizar + 'ALIQICMS,';
  if ckbCustoAdic.Checked then sAtualizar := sAtualizar + 'CUSTODESPESAS,';
  if ckbPercLucro.Checked then sAtualizar := sAtualizar + 'FATORLUCRO,';
  if ckbTipoTrib.Checked then sAtualizar := sAtualizar + 'SITUACAOECF,';
  if ckbCST.Checked then sAtualizar := sAtualizar + 'CST,';
  if ckbRedCST.Checked then sAtualizar := sAtualizar + 'REDUCAOCST,';
  if ckbTVASubst.Checked then sAtualizar := sAtualizar + 'TVA,';
  if ckbTVAFonte.Checked then sAtualizar := sAtualizar + 'TVAFONTE,';
  If cbImpostosFederais.Checked Then sAtualizar := sAtualizar + 'ALIQIR,ALIQSS,ALIQPISSAIDA,ALIQCOFINSSAIDA,ALIQCOFINS,ALIQPIS,IDTRIBFEDERAL,CSTPISCOFINSSAIDA,NATURAZARECEITAPISCOFINS,';
  If cbImpostosFederais.Checked Then sAtualizar := sAtualizar + 'IPIVENDA,IPICOMPRA,ALIQPISSAIDA,ALIQCOFINSSAIDA,VINCULOCREDITOPISCOFINS,BASECREDITOPISCOFINS,PISCOFINS,CSTPISCOFINS, ';
  if Copy(sAtualizar,Length(sAtualizar),1) = ',' then Delete(sAtualizar,Length(sAtualizar),1);
  ModalResult := mrOK;
end;

procedure TDlgAplicarIndicesGrupo.btLimparClick(Sender: TObject);
begin
  inherited;
  ckbComissao.Checked := true;
  ckbComissAplic.Checked := true;
  ckbDescMax.Checked := true;
  ckbDespFixas.Checked := true;
  ckbEncCartoes.Checked := true;
  ckbImpFed.Checked  := true;
  ckbICMSVenda.Checked := true;
  ckbAliqICMS.Checked := true;
  ckbCustoAdic.Checked := true;
  ckbPercLucro.Checked  := true;
  ckbTipoTrib.Checked := true;
  ckbCST.Checked := true;
  ckbRedCST.Checked := true;
  ckbTVASubst.Checked := true;
  ckbTVAFonte.Checked := true;
  cbImpostosFederais.Checked := true;
  cbImpostosFederais.Checked := true;
end;

procedure TDlgAplicarIndicesGrupo.btComando1Click(Sender: TObject);
begin
  inherited;
  ckbComissao.Checked := false;
  ckbComissAplic.Checked := false;
  ckbDescMax.Checked := false;
  ckbDespFixas.Checked := false;
  ckbEncCartoes.Checked := false;
  ckbImpFed.Checked  := false;
  ckbICMSVenda.Checked := false;
  ckbAliqICMS.Checked := false;
  ckbCustoAdic.Checked := false;
  ckbPercLucro.Checked  := false;
  ckbTipoTrib.Checked := false;
  ckbCST.Checked := false;
  ckbRedCST.Checked := false;
  ckbTVASubst.Checked := false;
  ckbTVAFonte.Checked := false;
  cbImpostosFederais.Checked := false;
  cbImpostosFederais.Checked := false;
end;

end.

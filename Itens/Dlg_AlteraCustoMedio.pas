unit Dlg_AlteraCustoMedio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TS_CalcEdit;

type
  TDlgAlteraCustoMedio = class(TFrmModeloCadastros)
    lbItem: TTS_Label;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    dfCustoAtual: TTS_CalcEdit;
    dfNovoCusto: TTS_CalcEdit;
    dfDiferenca: TTS_CalcEdit;
    procedure FormShow(Sender: TObject);
    procedure dfNovoCustoChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Item       : Integer;
    Descricao  : String;

    Estoque    : double;
    FatorVenda : Double;
    CustoAtual : Currency;
    NovoCusto  : Currency;

  end;

var
  DlgAlteraCustoMedio: TDlgAlteraCustoMedio;

implementation
  uses DM_Projeto;

{$R *.dfm}

procedure TDlgAlteraCustoMedio.FormShow(Sender: TObject);
begin
  inherited;
  lbItem.Caption := Descricao;

  dfCustoAtual.Value := CustoAtual;
  dfNovoCusto.Value  := CustoAtual;
  dfDiferenca.Value := 0;

end;

procedure TDlgAlteraCustoMedio.dfNovoCustoChange(Sender: TObject);
begin
  inherited;
  dfDiferenca.Value := (dfNovoCusto.Value * Estoque) - (dfCustoAtual.Value * Estoque);
end;

procedure TDlgAlteraCustoMedio.btGravarClick(Sender: TObject);
begin
  inherited;
  NovoCusto := dfNovoCusto.Value;

  {Ajustando tabelas e contabilidade}



  {Registrando Ocorrência de Alteração}


  ModalResult := 100;
end;

end.
 
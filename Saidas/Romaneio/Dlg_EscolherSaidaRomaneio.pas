unit Dlg_EscolherSaidaRomaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Dlg_EscolherOperacao, dxExEdtr, DB, DBClient, Provider,
  IBCustomDataSet, IBQuery, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, ExtCtrls, TS_Image,
  TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, dxDBTLCl, dxGrClms,
  dxGrClEx, dxDBGrid, dxTL, dxDBCtrl, dxCntner, TS_QDBGrid,
  TS_LookupComboBox, TS_EditItem, dxEdLib, TS_CalcEdit, dxDBEdtr, dxDBELib,
  TS_DBLookupTipoFav, TS_Edit, TS_ButtonEdit, TS_EditFavorecido, dxEditor,
  TS_DateTimePicker, TS_Shape, StdCtrls, TS_Label, teCtrls, TS_EffectsPanel,
  TS_PopupEdit, CheckLst, TS_CheckListBox, TS_CheckBox, dxfProgressBar;

type
  TDlgEscolherSaidaRomaneio = class(TDlgEscolherOperacao)
    Panel1: TPanel;
    TS_Label15: TTS_Label;
    TS_Label16: TTS_Label;
    dfQtdSelecionado: TTS_CalcEdit;
    dfTotalSelecionado: TTS_CalcEdit;
    TS_Label18: TTS_Label;
    dfPesoBruto: TTS_CalcEdit;
    procedure btGravarClick(Sender: TObject);
    procedure GridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure AtualizaPainel(vendas: string);
  public
    { Public declarations }

  end;

var
  DlgEscolherSaidaRomaneio: TDlgEscolherSaidaRomaneio;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDlgEscolherSaidaRomaneio.btGravarClick(Sender: TObject);
begin
//  inherited;
  if Grid.Selecionados <> '' then
    Grid.FirstSelected;
  DMPRojeto.SetParametrosForm([Grid.Selecionados]);
  ModalResult := -1;

end;

procedure TDlgEscolherSaidaRomaneio.AtualizaPainel(vendas: string);
Begin
  if (vendas = '') Then Begin
   dfTotalSelecionado.Value := 0;
   dfPesoBruto.Value := 0;
   dfQtdSelecionado.Value := 0;
  End Else Begin
    With Q_Sql do Begin
      Close;
      Sql.Text := 'SELECT Sum( Coalesce(i.pesobruto * si.quantidade,0)) as PesoBruto, Sum(coalesce(si.subtotalitem,0)) as TotalSelecionado FROM saidas s '+
                  ' inner join saidasitens si on s.saida = si.saida  inner join Itens i on i.item = si.item '+
                  ' where s.saida in ('+vendas+') ';
      Open;
      dfTotalSelecionado.Value := FieldByName('TotalSelecionado').Value;
      dfPesoBruto.Value := FieldByName('PesoBruto').Value;
      dfQtdSelecionado.Value := Grid.QuantidadeSelecionada();
    End;
  End;
end;


procedure TDlgEscolherSaidaRomaneio.GridMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AtualizaPainel(Grid.Selecionados);
end;

end.

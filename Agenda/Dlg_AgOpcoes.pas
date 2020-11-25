unit Dlg_AgOpcoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TS_ScrollBox, ComCtrls, ExtCtrls, 
  StdCtrls, Mask, DBCtrls, TS_DBEdit, TS_Label, TS_GroupBox, TS_DBCheckBox,
  TS_CheckBox, TS_ComboBox, Spin, TS_Edit, TS_DBMemo, Buttons,
  TS_SpeedButton, TS_Memo, db, DBTables, IBCustomDataSet, IBQuery,
  TS_DateTimePicker, IBSQL, FORM_PADRAO, DlgMsg, Menus,
  TS_BitBtn, DBClient, Provider, TS_DBLookupComboBox, TS_LastDataObject,
  dxDBEdtr, dxDBELib, dxExEdtr, dxEdLib, dxCntner, dxEditor,
  FRM_MODELOCADASTROS, FormsComponent, TS_Image, dxfLabel,
  TS_MaxPanel, TS_Bevel, teCtrls, TS_EffectsPanel, TS_LookupComboBox,
  TS_PopupMenu, Variants;

type
  TDlgAgOpcoes = class(TFrmModeloCadastros)
    IBSQL: TIBSQL;
    TS_Label1: TTS_Label;
    TS_Label5: TTS_Label;
    ME_DataConclusao: TTS_DateTimePicker;
    MM_ConcluidoAnotacoes: TTS_Memo;
    procedure btFecharCadastroClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    QuemChamou: string;
    CompromissoAtual: integer;
    bmrOK: boolean;
  end;

var
  DlgAgOpcoes: TDlgAgOpcoes;

implementation

uses DM_Compromissos, DM_Projeto, Dlg_Calendario, Dlg_CalendarioMes;

{$R *.DFM}

procedure TDlgAgOpcoes.btFecharCadastroClick(Sender: TObject);
begin
  Close;
end;

procedure TDlgAgOpcoes.btGravarClick(Sender: TObject);
begin
  inherited;
  if QuemChamou = 'FrmCompromissos' then begin
    with DMCompromissos do begin
      if not(C_Tabela.State in [dsInsert]) then C_Tabela.Edit;
      // SETA OS VALORES ESCOLHIDOS PELO USUÁRIO
      C_TabelaCONCLUIDO_ANOTACOES.Value :=  MM_ConcluidoAnotacoes.Text;
      if ME_DataConclusao.Date>0 then begin
        C_TabelaDATACONCLUSAO.Value := ME_DataConclusao.Date;
        C_TabelaCONCLUIDO.Value := 'S'
      end else begin
        C_TabelaDATACONCLUSAO.AsVariant := null;
        C_TabelaCONCLUIDO.Value := 'N';
      end;
      // GRAVAÇÃO
      if not(C_Tabela.State in [dsInsert]) then begin
        C_Tabela.Post;
        C_Tabela.Edit;
      end;
    end;
  end else if QuemChamou = 'DlgCalendarioMes' then begin
    if (ME_DataConclusao.Date>0) then begin
      IBSQL.SQL.Text := 'Update Compromissos Set CONCLUIDO='+QuotedStr('S')+', '+
       'DATACONCLUSAO='+QuotedStr(FormatDateTime('mm/dd/yyyy', ME_DataConclusao.Date))+', '+
       'CONCLUIDO_ANOTACOES='+QuotedStr(MM_ConcluidoAnotacoes.Text)+' '+
       'Where COMPROMISSO='+QuotedStr(IntToStr(CompromissoAtual));
    end else begin
      IBSQL.SQL.Text := 'Update Compromissos Set CONCLUIDO='+QuotedStr('N')+', '+
       'DATACONCLUSAO=null, '+
       'CONCLUIDO_ANOTACOES='+QuotedStr(MM_ConcluidoAnotacoes.Text)+' '+
       'Where COMPROMISSO='+QuotedStr(IntToStr(CompromissoAtual));
    end;
    IBSQL.ExecQuery;
    DMProjeto.IBT_Projeto.CommitRetaining;
    with DlgCalendarioMes do begin
    end;
  end;
  bmrOK := True;
  Close;
end;

procedure TDlgAgOpcoes.FormCreate(Sender: TObject);
begin
  inherited;
  bmrOK := False;
end;

end.

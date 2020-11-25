unit Dlg_ReciboPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_MODAL, StdCtrls, ExtCtrls, Buttons, TS_BitBtn, TS_Edit, TS_Memo, TS_RadioGroup,
  TS_Label, TS_Panel, DlgMsg, Menus, TS_PopupMenu, dxEdLib, dxCntner,
  dxEditor, dxExEdtr, TS_LastDataObject, vg2PropStore;

type
  TDlgReciboPadrao = class(TDlgModal)
    Panel1: TTS_Panel;
    lbEsplanacao: TTS_Label;
    rgTipo: TTS_RadioGroup;
    Texto: TTS_Memo;
    Label1: TTS_Label;
    Label2: TTS_Label;
    Edit1: TTS_Edit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure TextoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TS_BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Tipo : Integer;
    Natureza : String;

    Valor : double;

  end;

var
  DlgReciboPadrao: TDlgReciboPadrao;

implementation
  uses funcoes, DM_Projeto, Util2;

{$R *.DFM}

procedure TDlgReciboPadrao.FormShow(Sender: TObject);
begin
  if Natureza <> '' then
    lbEsplanacao.Caption := 'A Natureza "'+Natureza+'" não possui um modelo de recibo associado, '+
                            'se não desejar que esta tela de composição de recibos apareça mais, vá '+
                            'ao Cadastro de Naturezas (ou à Categoria desta Natureza) e defina um '+
                            'modelo padrão de recibo que atenda a este tipo de transação.'
  else
    lbEsplanacao.Caption := 'Configure abaixo o Tipo de Recibo que deseja emitir e seu texto...';

  if Tipo < 4 then begin
    rgTipo.ItemIndex := Tipo-1;
    rgTipo.Enabled := true;
    end
  else
    rgTipo.ItemIndex := 0;

  {Carregando ultimo impresso para o tipo}
  try
    Case rgTipo.ItemIndex of
      0: Texto.Lines.LoadFromFile(DMProjeto.RelPath+'Recibos\ReciboVendaPadrao.rcb');
      1: Texto.Lines.LoadFromFile(DMProjeto.RelPath+'Recibos\ReciboRetiradaPadrao.rcb');
      2: Texto.Lines.LoadFromFile(DMProjeto.RelPath+'Recibos\ReciboDepositoPadrao.rcb');
    end;
  except
    Texto.Lines.Clear;
  end;

end;

procedure TDlgReciboPadrao.BitBtn1Click(Sender: TObject);
begin
  {Salvando para arquivo}
end;

procedure TDlgReciboPadrao.rgTipoClick(Sender: TObject);
begin
  {Carregando ultimo impresso para o tipo}
  try
    Case rgTipo.ItemIndex of
      0: Texto.Lines.LoadFromFile(DMProjeto.RelPath+'Recibos\ReciboVendaPadrao.rcb');
      1: Texto.Lines.LoadFromFile(DMProjeto.RelPath+'Recibos\ReciboRetiradaPadrao.rcb');
      2: Texto.Lines.LoadFromFile(DMProjeto.RelPath+'Recibos\ReciboDepositoPadrao.rcb');
    end;
  except
    Texto.Lines.Clear;
  end;
end;

procedure TDlgReciboPadrao.Edit1Exit(Sender: TObject);
begin
    Valor := StrToFloat(Edit1.Text);
end;

procedure TDlgReciboPadrao.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key in ['0','1','2','3','4','5','6','7','8','9',',','.']) or (Ord(key)=8) then begin
    if key in [',','.'] then
       Key := Decimalseparator
  end else
    Key := #0;
end;

procedure TDlgReciboPadrao.TextoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F4 then
    Texto.Text := Texto.Text + extenso(Valor);
end;

procedure TDlgReciboPadrao.TS_BitBtn1Click(Sender: TObject);
begin
  inherited;
  try
    Case rgTipo.ItemIndex of
      0: Texto.Lines.SaveToFile(DMProjeto.RelPath+'Recibos\ReciboVendaPadrao.rcb');
      1: Texto.Lines.SaveToFile(DMProjeto.RelPath+'Recibos\ReciboRetiradaPadrao.rcb');
      2: Texto.Lines.SaveToFile(DMProjeto.RelPath+'Recibos\ReciboDepositoPadrao.rcb');
    end;
  except
    DlgMsg.ShowMsg( 544 );
    Exit;
  end;

  Tipo := rgTipo.ItemIndex;
  if DlgMsg.ShowMsg( 429 ) = 200 then
    exit;

end;

end.

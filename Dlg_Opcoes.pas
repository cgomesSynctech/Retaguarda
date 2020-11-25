unit Dlg_Opcoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_Modal, StdCtrls, Buttons, TS_BitBtn, TS_ListBox, DlgMsg, Menus,
  TS_PopupMenu, TS_LastDataObject, Placemnt, BTOdeum;

type
  TDlgOpcoes = class(TDlgModal)
    lbOpcoes: TTS_ListBox;
    procedure FormCreate(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    FListaOpcoes : String;
    FOpcao : String;
    
  public
    { Public declarations }
    Opcao : String;

    Constructor Create(AOwner: TComponent; ListaOpcoes, OpcaoPadrao : String);
  end;

var
  DlgOpcoes: TDlgOpcoes;

implementation
  uses Funcoes, Printers;

{$R *.DFM}

Constructor TDlgOpcoes.Create;
Begin
  FListaOpcoes := ListaOpcoes;
  FOpcao := OpcaoPadrao;

  inherited Create(AOwner);
end;

procedure TDlgOpcoes.FormCreate(Sender: TObject);
begin
  if FListaOpcoes = '<Impressoras>' then begin
    lbOpcoes.Items.Assign(Printer.Printers);
    lbOpcoes.ItemIndex := lbOpcoes.Items.IndexOf(FOpcao);
    end
  else if pos('/',FListaOpcoes) > 0 then begin
    FListaOpcoes := replace(FListaOpcoes,'/',#13);
    lbOpcoes.Items.SetText(PChar(FListaOpcoes));
    lbOpcoes.ItemIndex := lbOpcoes.Items.IndexOf(FOpcao);
  end;
end;

procedure TDlgOpcoes.TS_BitBtn1Click(Sender: TObject);
begin
  inherited;
  try
    Opcao := lbOpcoes.Items[lbOpcoes.ItemIndex];
  except
    Opcao := '';
  end;

end;

end.



unit DLG_VisialuzadorImagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TS_Image, StdCtrls, Buttons, TS_BitBtn, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, TS_Memo, TS_Panel;

type
  TDLGVisialuzadorImagem = class(TForm)
    btnFechar: TTS_BitBtn;
    TS_PanelCorner1: TTS_PanelCorner;
    ImagemAmpliada: TTS_Image;
    TS_PanelCorner2: TTS_PanelCorner;
    dfDescricaoTecnica: TTS_Memo;
    procedure FormCreate(Sender: TObject);
    procedure ImagemAmpliadaClick(Sender: TObject);
    procedure ImagemAmpliadaDblClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    LocalIMagem, DescricaoTecnica:String;
  public

    constructor Create(AOwner : TComponent; sImagem:String; sDescricaTecnica: String);
    { Public declarations }
  end;

var
  DLGVisialuzadorImagem: TDLGVisialuzadorImagem;

implementation

{$R *.dfm}

Constructor TDLGVisialuzadorImagem.Create;

begin
  DescricaoTecnica := sDescricaTecnica;
  LocalIMagem := sImagem;
  inherited Create(AOwner);
end;


procedure TDLGVisialuzadorImagem.FormCreate(Sender: TObject);
begin
    ImagemAmpliada.Picture.LoadFromFile(LocalIMagem);
    dfDescricaoTecnica.Lines.Text := DescricaoTecnica;
    ShowModal;
end;

procedure TDLGVisialuzadorImagem.ImagemAmpliadaClick(Sender: TObject);
begin
 ImagemAmpliada.Stretch := (Not (ImagemAmpliada.Stretch)); 
end;

procedure TDLGVisialuzadorImagem.ImagemAmpliadaDblClick(Sender: TObject);
begin
  Close;
end;

procedure TDLGVisialuzadorImagem.btnFecharClick(Sender: TObject);
begin
 Close;
end;

end.

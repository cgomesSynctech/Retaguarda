unit Dlg_CoresStatus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, TS_Label, ExtCtrls, TS_Shape;

type
  TDlgCoresStatus = class(TForm)
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape5: TTS_Shape;
    TS_Shape6: TTS_Shape;
    TS_Shape7: TTS_Shape;
    TS_Shape8: TTS_Shape;
    TS_Shape9: TTS_Shape;
    TS_Shape10: TTS_Shape;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Shape11: TTS_Shape;
    TS_Label10: TTS_Label;
    TS_Label11: TTS_Label;
    TS_Shape12: TTS_Shape;
    TS_Label12: TTS_Label;
    TS_Shape13: TTS_Shape;
    TS_Label13: TTS_Label;
    TS_Shape14: TTS_Shape;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgCoresStatus: TDlgCoresStatus;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDlgCoresStatus.FormShow(Sender: TObject);
var i : integer;
begin
	for i:=0 to ComponentCount-1 do begin
  	if Components[i] is TShape then
       if TShape(Components[i]).Tag <> 0 then
    		TShape(Components[i]).Brush.Color := DMProjeto.CorPadrao( TShape(Components[i]).Tag );
  	if Components[i] is TLabel then begin
    	TLabel(Components[i]).Font.Color := DMProjeto.CorPadrao( TLabel(Components[i]).Tag );
      TLabel(Components[i]).Caption    := DMProjeto.DescricaoStatus( TLabel(Components[i]).Tag );
       if TLabel(Components[i]).Tag = 70 then
       	TLabel(Components[i]).Font.Style := [fsStrikeOut];
    end;
  end;
end;

end.

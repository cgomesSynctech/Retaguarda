unit dlg_DataPosVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FORM_PADRAO, Placemnt, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, Buttons, TS_BitBtn, ComCtrls,
  TS_MonthCalendar, TS_Label, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TS_DateTimePicker;

type
  TdlgDataPosvenda = class(TFormPadrao)
    dData: TTS_MonthCalendar;
    TS_BitBtn1: TTS_BitBtn;
    dfData: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    procedure TS_BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dfDataDateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgDataPosvenda: TdlgDataPosvenda;

implementation

{$R *.dfm}

procedure TdlgDataPosvenda.TS_BitBtn1Click(Sender: TObject);
begin
  inherited;
  ModalResult := Trunc(dData.Date);
end;

procedure TdlgDataPosvenda.FormShow(Sender: TObject);
begin
  inherited;
  dData.Date := Date + 22;
  dfData.Date := dData.Date;
  ActiveControl := dfData;
end;

procedure TdlgDataPosvenda.dfDataDateChange(Sender: TObject);
begin
  inherited;
  dData.Date := dfData.Date;
end;

end.

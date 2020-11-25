unit Dlg_Data;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DLG_Modal, StdCtrls, Buttons, ComCtrls, TS_BitBtn, TS_Label, DlgMsg,
  Menus, TS_PopupMenu, TS_LastDataObject, MonthCalendar;

type
  TDlgData = class(TDlgModal)
    dfData: Tvg2MonthCalendar;
    TS_BitBtn2: TTS_BitBtn;
    procedure FormCreate(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Data : TDateTime;
    
  end;

var
  DlgData: TDlgData;

implementation
  uses DM_Projeto;

{$R *.DFM}

procedure TDlgData.FormCreate(Sender: TObject);
begin
  dfData.Date := DMProjeto.dDataSistema;
end;

procedure TDlgData.TS_BitBtn1Click(Sender: TObject);
begin
  inherited;
  Data := trunc(dfData.Date);
end;

end.

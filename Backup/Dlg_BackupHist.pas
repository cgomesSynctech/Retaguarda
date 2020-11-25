unit Dlg_BackupHist;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL, dxCntner, StdCtrls, Buttons, TS_BitBtn;

type
  TDlgBackupHist = class(TForm)
    dxTreeList1: TdxTreeList;
    dxTreeList1Column1: TdxTreeListColumn;
    dxTreeList1Column2: TdxTreeListColumn;
    dxTreeList1Column3: TdxTreeListColumn;
    dxTreeList1Column4: TdxTreeListColumn;
    dxTreeList1Column5: TdxTreeListColumn;
    procedure FormCreate(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgBackupHist: TDlgBackupHist;

implementation
uses funcoes;
{$R *.DFM}

procedure TDlgBackupHist.FormCreate(Sender: TObject);
var
  N: TdxTreeListNode;
  slArquivo : TStringList;
  i : integer;
begin
  if not fileexists(ExtractFilePath(Application.ExeName)+'\backup.log') then
  	exit;
  slArquivo := TStringList.Create;
  with slArquivo do begin
  	loadfromfile(ExtractFilePath(Application.ExeName)+'\backup.log');
    for i:=0 to slArquivo.Count-1 do
      if SeparaStrings(slArquivo[i],';',5) = 'BACKUP' then begin
  			N := dxTreeList1.Add; //Insert(dxTreeList1.Items[0]);
  			N.Values[0] := SeparaStrings(slArquivo[i],';',1);
  			N.Values[1] := SeparaStrings(slArquivo[i],';',2);
  			N.Values[2] := SeparaStrings(slArquivo[i],';',3);
      	N.Values[3] := SeparaStrings(slArquivo[i],';',4);
        N.Values[4] := SeparaStrings(slArquivo[i],';',7);
      end;
    Free;
	end;
end;

procedure TDlgBackupHist.TS_BitBtn1Click(Sender: TObject);
begin
	dxTreeList1.SaveToFile('f:\treelist.txt');
end;

end.

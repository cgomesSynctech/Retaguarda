unit Dlg_CompromissoRelatorio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, IBCustomDataSet, IBQuery, Db, DBClient, Provider,
  Qrctrls, QRPrntr, jpeg;

type
  TDlgCompromissoRelatorio = class(TForm)
    QuickRep1: TQuickRep;
    bandTitulo: TQRBand;
    QRBand2: TQRBand;
    C_CompProvider: TDataSetProvider;
    C_Comp: TClientDataSet;
    Q_Comp: TIBQuery;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    DF_Categoria: TQRDBText;
    bandTurno: TQRGroup;
    LblTurno: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    Lbl_Horario: TQRLabel;
    QRImage1: TQRImage;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    bandTituloChild: TQRChildBand;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape1: TQRShape;
    QRImg_Concluido: TQRImage;
    procedure FormCreate(Sender: TObject);
    procedure bandTurnoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1Preview(Sender: TObject);
  private
    { Private declarations }
    TurnoAtual: char;
  public
    { Public declarations }
  end;

var
  DlgCompromissoRelatorio: TDlgCompromissoRelatorio;

implementation

uses DM_Projeto, Dlg_Preview, DM_Agenda;

{$R *.DFM}

procedure TDlgCompromissoRelatorio.FormCreate(Sender: TObject);
begin
  TurnoAtual := ' ';
end;

procedure TDlgCompromissoRelatorio.bandTurnoBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  with C_Comp do begin
    PrintBand := False;
    DF_Categoria.Color := StringToColor( FieldByName('COR').AsString );
    DF_Categoria.Font.Color := StringToColor( FieldByName('COR_FONTE').AsString );
    if (TurnoAtual<>'M') and (TurnoDaHoraInteira(FieldByName('HORA_ORDEM').AsInteger)='M') then begin
      LblTurno.Caption := 'MANHÃ';
      TurnoAtual := 'M';
      PrintBand := True;
    end;
    if (TurnoAtual<>'T') and (TurnoDaHoraInteira(FieldByName('HORA_ORDEM').AsInteger)='T') then begin
      LblTurno.Caption := 'TARDE';
      TurnoAtual := 'T';
      PrintBand := True;
    end;
    if (TurnoAtual<>'N') and (TurnoDaHoraInteira(FieldByName('HORA_ORDEM').AsInteger)='N') then begin
      LblTurno.Caption := 'NOITE';
      TurnoAtual := 'N';
      PrintBand := True;
    end;
  end;  
end;

procedure TDlgCompromissoRelatorio.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  with C_Comp do begin
    if FieldByName('CONCLUIDO').AsString = 'S' then begin
      QRImg_Concluido.Enabled := True;
    end else begin
      QRImg_Concluido.Enabled := False;
    end;
    Lbl_Horario.Caption := FieldByName('HORA_AMPM').AsString +' '+ FieldByName('HORA_TURNO').AsString +
    ' às ' + FieldByName('HORA_AMPM_F').AsString +' '+ FieldByName('HORA_TURNO_F').AsString;
  end;
end;

procedure TDlgCompromissoRelatorio.QuickRep1Preview(Sender: TObject);
begin
// PREVIEW
  try
    DlgPreview := TDlgPreview.Create(Self);
    DlgPreview.QRPreview.QRPrinter := QuickRep1.QRPrinter;
    DlgPreview.QRPreview.ZoomToWidth;
    DlgPreview.ShowModal;
  finally
    DlgPreview.Free;
  end;
end;

end.

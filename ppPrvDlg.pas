{******************************************************************************}
{                                                                              }
{                   ReportBuilder Report Component Library                     }
{                                                                              }
{             Copyright (c) 1996, 2000 Digital Metaphors Corporation           }
{                                                                              }
{******************************************************************************}

unit ppPrvDlg;

interface

{$I ppIfDef.pas}

uses
  Windows, ComCtrls, SysUtils, Messages, Classes, Graphics, Controls, Forms, ExtCtrls, StdCtrls, Mask, Buttons,
  ppForms, ppTypes, ppProd, ppDevice, ppViewr, Dialogs, ppUtils, jpeg,
  TS_Image, ppComm, ppEndUsr, ppReport, DB, ppDBPipe,ppSubRpt, ppFilDev, ppArchiv, ppRelatv, ppBands, ppClass, ppCache,
  TS_SpeedButton, TXComp, HH, HH_FUNCS, Menus, TS_PopupMenu, ShellApi;

type

  { TppPrintPreview }
  TppTradeSoftPreview = class(TppCustomPreviewer)
    pnlPreviewBar: TPanel;
    spbPreviewPrint: TSpeedButton;
    ppViewer1: TppViewer;
    spbAutoSearch: TSpeedButton;
    spbPreviewWhole: TSpeedButton;
    spbPreviewWidth: TSpeedButton;
    spbPreview100Percent: TSpeedButton;
    mskPreviewPercentage: TMaskEdit;
    spbPreviewFirst: TSpeedButton;
    spbPreviewPrior: TSpeedButton;
    mskPreviewPage: TMaskEdit;
    spbPreviewNext: TSpeedButton;
    spbPreviewLast: TSpeedButton;
    spbPreviewClose: TSpeedButton;
    TS_Image1: TTS_Image;
    SpeedButton1: TSpeedButton;
    ppDesigner1: TppDesigner;
    spExpandSub: TSpeedButton;
    SpeedButton3: TSpeedButton;
    btExportar: TTS_SpeedButton;
    Salvar: TSaveDialog;
    TS_SpeedButton2: TTS_SpeedButton;
    ppmHelp: TTS_PopupMenu;
    Ajuda1: TMenuItem;
    Padro1: TMenuItem;
    ExtraOptions1: TExtraOptions;
    SpeedButton2: TSpeedButton;
    procedure spbPreviewPrintClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewFirstClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewLastClick(Sender: TObject);
    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure ppViewerPageChange(Sender: TObject);
    procedure ppViewerStatusChange(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
    procedure ppViewer1PrintStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure spbAutoSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spExpandSubClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure Padro1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

  private
    FStatusBar: TStatusBar;
    aTipoArquivo : array[0..11] of string;
		function GerarArquivo( Arquivo : string = ''; bEmail : boolean = false) : string;
    function getTipoArquivo(sArquivo: string): string;
  protected
    procedure Activate; override;
    function  GetViewer: TObject; override;
    procedure LanguageChanged; override;

  public
    procedure Init; override;
  end; {class, TppPrintPreview}

var
  ppTradeSoftPreview: TppTradeSoftPreview;

implementation
  uses funcoes, TDM_PROJETO;
{$R *.DFM}

{------------------------------------------------------------------------------}
{ TppPrintPreview.FormCreate }

procedure TppTradeSoftPreview.FormCreate(Sender: TObject);
begin

  FStatusBar := TStatusBar.Create(Self);
  FStatusBar.Parent      := Self;
  FStatusBar.SimplePanel := True;
  FStatusBar.Align       := alBottom;
end; {procedure FormCreate}

{------------------------------------------------------------------------------}
{ TppPrintPreview.FormClose}

procedure TppTradeSoftPreview.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end; {procedure FormClose}

{------------------------------------------------------------------------------}
{ TppPrintPreview.Activate }

procedure TppTradeSoftPreview.Activate;
begin

  {this is in Activate because we want it to fire after OnPreviewFormCreate
   and it's before Inherited to avoid caption flash.}
  if DisplayDocumentName then
    Caption := ppViewer1.Report.PrinterSetup.DocumentName;

  inherited Activate;

end; {procedure, Activate}

{------------------------------------------------------------------------------}
{ TppPrintPreview.Init }

procedure TppTradeSoftPreview.Init;
var i,j : integer;
begin
	aTipoArquivo[0] := 'RTFFile';
  aTipoArquivo[1] := 'HTMLFile';
	aTipoArquivo[2] := 'PDFFile';
  aTipoArquivo[3] := 'XHTMLFile';
  aTipoArquivo[4] := 'ReportTextFile';
  aTipoArquivo[5] := 'GraphicFile';
  aTipoArquivo[6] := 'GraphicFile';
  aTipoArquivo[7] := 'GraphicFile';
  aTipoArquivo[8] := 'ArchiveFile';
	aTipoArquivo[9] := 'ExcelFile';
	aTipoArquivo[10]:= 'LotusFile';
	aTipoArquivo[11]:= 'QuattroFile';

  if (Report is TppProducer) then begin
    ppViewer1.Report := TppProducer(Report);
  	ppDesigner1.Report := TppReport(Report);
  end;
	spExpandSub.Enabled := false;

  if not (Report is TppArchiveReader) then
  for i:=0 to TppReport(ppViewer1.Report).BandCount-1 do
  	for j:=0 to TppReport(ppViewer1.Report).Bands[i].ObjectCount-1 do
      if TppReport(ppViewer1.Report).Bands[i].Objects[j] is TppSubReport then
    		 spExpandSub.Enabled := true;
end; {procedure, Init}

{------------------------------------------------------------------------------}
{ TppPrintPreview.FormShow }

procedure TppTradeSoftPreview.FormShow(Sender: TObject);
begin

  if (Report is TppProducer) then
    spbAutoSearch.Visible := TppProducer(Report).ShowAutoSearchDialog;

{  if not(spbAutoSearch.Visible) then
    pnlStandardButtons.Left := spbAutoSearch.Left; }

  spbPreviewWhole.Down      := (ppViewer1.ZoomSetting = zsWholePage);
  spbPreviewWidth.Down      := (ppViewer1.ZoomSetting = zsPageWidth);
  spbPreview100Percent.Down := (ppViewer1.ZoomSetting = zs100Percent);

end; {procedure, FormShow}

{------------------------------------------------------------------------------}
{ TppPrintPreview.LanguageChanged}

procedure TppTradeSoftPreview.LanguageChanged;
var
  lBitMap: TBitMap;
begin

  spbAutoSearch.Hint := ppLoadStr(1021);
  spbPreviewPrint.Hint := ppLoadStr(22);
  spbPreviewWhole.Hint := ppLoadStr(30);
  spbPreviewWidth.Hint := ppLoadStr(31);
  spbPreview100Percent.Hint := ppLoadStr(1); {'100 %'}
  spbPreviewFirst.Hint := ppLoadStr(13);
  spbPreviewPrior.Hint := ppLoadStr(29);
  spbPreviewNext.Hint  := ppLoadStr(15);
  spbPreviewLast.Hint  := ppLoadStr(14);
  spbPreviewClose.Caption := ppLoadStr(6); {'Close'}

  lBitMap := TBitMap.Create;
  spbPreviewClose.Width := lBitMap.Canvas.TextWidth(spbPreviewClose.Caption) + 50;
  lBitMap.Free;

  Caption := ppLoadStr(23);

end; {procedure, LanguageChanged}

{------------------------------------------------------------------------------}
{ TppPrintPreview.GetViewer }

function TppTradeSoftPreview.GetViewer: TObject;
begin
  Result := ppViewer1;
end; {function, GetViewer}

{------------------------------------------------------------------------------}
{ TppPrintPreview.ppViewer1PrintStateChange }

procedure TppTradeSoftPreview.ppViewer1PrintStateChange(Sender: TObject);
var
  lPosition: TPoint;
begin

  if ppViewer1.Busy then
    begin
      mskPreviewPercentage.Enabled := False;
      mskPreviewPage.Enabled := False;

      pnlPreviewBar.Cursor := crHourGlass;

      ppViewer1.PaintBox.Cursor := crHourGlass;

      FStatusbar.Cursor := crHourGlass;

      spbPreviewClose.Cursor := crArrow;

      spbPreviewClose.Caption := ppLoadStr(ppMsgCancel);
    end
  else
    begin
      mskPreviewPercentage.Enabled := True;
      mskPreviewPage.Enabled := True;

      pnlPreviewBar.Cursor := crDefault;

      ppViewer1.PaintBox.Cursor := crDefault;

      FStatusbar.Cursor := crDefault;

      spbPreviewClose.Cursor := crDefault;

      spbPreviewClose.Caption := ppLoadStr(6); {'Close'}
    end;

  {this code will force the cursor to update}
  GetCursorPos(lPosition);
  SetCursorPos(lPosition.X, lPosition.Y);

end; {procedure, ppViewer1PrintStateChange}

{------------------------------------------------------------------------------}
{ TppPrintPreview.FormKeyDown}

procedure TppTradeSoftPreview.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  lScrollBar: TControlScrollBar;
begin

  if (ssCtrl in Shift) then
    begin

      case Key of
       VK_PRIOR: ppViewer1.PriorPage;
       VK_NEXT:  ppViewer1.NextPage;
       VK_HOME:  ppViewer1.FirstPage;
       VK_END:   ppViewer1.LastPage;
      end;

    end
  else
    begin

      case Key of
       VK_PRIOR, VK_UP:
         begin
           lScrollBar := ppViewer1.ScrollBox.VertScrollBar;
           lScrollBar.Position := lScrollBar.Position - ppViewer1.ScrollBox.Height;
         end;

       VK_NEXT, VK_DOWN:
         begin
           lScrollBar := ppViewer1.ScrollBox.VertScrollBar;
           lScrollBar.Position := lScrollBar.Position + ppViewer1.ScrollBox.Height;
         end;

       VK_LEFT:
         begin
           lScrollBar := ppViewer1.ScrollBox.HorzScrollBar;
           lScrollBar.Position := lScrollBar.Position - ppViewer1.ScrollBox.Width;
         end;

       VK_RIGHT:
         begin
           lScrollBar := ppViewer1.ScrollBox.HorzScrollBar;
           lScrollBar.Position := lScrollBar.Position + ppViewer1.ScrollBox.Width;
         end;

      end;

    end;

end; {procedure, FormKeyDown}

{------------------------------------------------------------------------------}
{ TppPrintPreview.spbCloseClick }

procedure TppTradeSoftPreview.spbPreviewCloseClick(Sender: TObject);
begin
  if TppProducer(Report).Printing then
    begin
      ppViewer1.Cancel;
      DoOnCancel;
    end
  else
    Close;
end; {procedure, spbCloseClick}

{------------------------------------------------------------------------------}
{ TppPrintPreview.ppViewerStatusChange }

procedure TppTradeSoftPreview.ppViewerStatusChange(Sender: TObject);
begin
  FStatusBar.SimpleText := ppViewer1.Status;
end; {procedure, ppViewerStatusChange}

{------------------------------------------------------------------------------}
{ TppPrintPreview.ppViewerPageChange }

procedure TppTradeSoftPreview.ppViewerPageChange(Sender: TObject);
begin
  mskPreviewPage.Text := IntToStr(ppViewer1.AbsolutePageNo);
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end; {procedure, ppViewerPageChange}

{------------------------------------------------------------------------------}
{ TppPrintPreview.spbPreviewPrintClick }

procedure TppTradeSoftPreview.spbPreviewPrintClick(Sender: TObject);
begin
  ppViewer1.Report.AllowPrintToFile := true;
  ppViewer1.Print;
end; {procedure, spbPreviewPrintClick}

{------------------------------------------------------------------------------}
{ TppPrintPreview.spbAutoSearchClick}

procedure TppTradeSoftPreview.spbAutoSearchClick(Sender: TObject);
begin
  ppViewer1.DisplayAutoSearchDialog;
end; {procedure, spbAutoSearchClick}

{------------------------------------------------------------------------------}
{ TppPrintPreview.spbPreviewFirstClick}

procedure TppTradeSoftPreview.spbPreviewFirstClick(Sender: TObject);
begin
  ppViewer1.FirstPage;
end; {procedure, spbCloseClick}

{------------------------------------------------------------------------------}
{ TppPrintPreview.spbPreviewPriorClick}

procedure TppTradeSoftPreview.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
end; {procedure, spbPreviewFirstClick}

{------------------------------------------------------------------------------}
{ TppPrintPreview.spbPreviewNextClick}

procedure TppTradeSoftPreview.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
end; {procedure, spbPreviewNextClick}

{------------------------------------------------------------------------------}
{ TppPrintPreview.spbPreviewLastClick}

procedure TppTradeSoftPreview.spbPreviewLastClick(Sender: TObject);
begin
  ppViewer1.LastPage;
end; {procedure, spbPreviewLastClick}

{------------------------------------------------------------------------------}
{ TppPrintPreview.mskPreviewPageKeyPress}

procedure TppTradeSoftPreview.mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
var
  liPage: Longint;
begin

  if (Key = #13) then
    begin
      liPage := StrToInt(mskPreviewPage.Text);

      ppViewer1.GotoPage(liPage);
    end; {if, carriage return pressed}

end; {procedure, mskPreviewPageKeyPress}

{------------------------------------------------------------------------------}
{ TppPrintPreview.spbPreviewZoomClick }

procedure TppTradeSoftPreview.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end; {procedure, spbPreviewZoomClick}

{------------------------------------------------------------------------------}
{ TppPrintPreview.spbPreviewWidthClick}

procedure TppTradeSoftPreview.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end; {procedure, spbPreviewWidthClick}

{------------------------------------------------------------------------------}
{ TppPrintPreview.spbPreview100PercentClick}

procedure TppTradeSoftPreview.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end; {procedure, spbPreview100PercentClick}

{------------------------------------------------------------------------------}
{ TppPrintPreview.mskPreviewPercentageKeyPress}

procedure TppTradeSoftPreview.mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
var
  liPercentage: Integer;
begin
  if (Key = #13) then
    begin
      liPercentage := StrToIntDef(mskPreviewPercentage.Text, 100);

      ppViewer1.ZoomPercentage := liPercentage;

      spbPreviewWhole.Down := False;
      spbPreviewWidth.Down := False;
      spbPreview100Percent.Down := False;

      mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
    end; {if, carriage return pressed}

end; {procedure, mskPreviewPercentageKeyPress}

{******************************************************************************
 *
 ** I N I T I A L I Z A T I O N   /   F I N A L I Z A T I O N
 *
{******************************************************************************}



procedure TppTradeSoftPreview.spExpandSubClick(Sender: TObject);
var i,j : integer;
begin
  for i:=0 to TppReport(ppViewer1.Report).BandCount-1 do
  	for j:=0 to TppReport(ppViewer1.Report).Bands[i].ObjectCount-1 do
      if TppReport(ppViewer1.Report).Bands[i].Objects[j] is TppSubReport then
    		TppSubReport(TppReport(ppViewer1.Report).Bands[i].Objects[j]).ExpandAll := not TppSubReport(TppReport(ppViewer1.Report).Bands[i].Objects[j]).ExpandAll;
  ppViewer1.Report.Publisher.Publish;
end;

procedure TppTradeSoftPreview.SpeedButton1Click(Sender: TObject);
var sArquivo : string;
begin
  sArquivo := GerarArquivo( DMProject.ArquivoEmail, true );

 	SendMail(TppReport(Report).ArchiveFileName, // Titulo
           'Segue em anexo o arquivo: '+ExtractFileName(sArquivo), // corpo da mensagem
           sArquivo, // arquivo
           '', // seu nome
           '', // seu endereco
           '', // nome do destinatário
           '');// destino
end;

procedure TppTradeSoftPreview.SpeedButton3Click(Sender: TObject);
var sFile : string;
begin
  sFile := TppReport(ppViewer1.Report).Template.FileName;
  ppViewer1.Report := nil;
  Application.ProcessMessages;
  ppDesigner1.ShowModal;
  ppViewer1.Report := TppProducer(ppDesigner1.Report);
	if sFile <> '' then begin
  	TppReport(ppViewer1.Report).Template.New;
  	TppReport(ppViewer1.Report).Template.FileName := sFile;
  	TppReport(ppViewer1.Report).Template.LoadFromFile;
  	ppViewer1.Report.EnableProcessMessages := true;
  	ppViewer1.Report.Publisher.Clear;
  end;
  ppViewer1.Report.Print;
  ppViewer1.Report.ProcessMessages;
  Application.ProcessMessages;
end;

function TppTradeSoftPreview.getTipoArquivo( sArquivo : string ) : string;
var sExt : string;
begin
  sExt := UpperCase(ExtractFileExt( sArquivo ));
  sExt := replace(sExt,'.','');
  if sExt = 'RTF' then
		result := 'RTFFile'
	else if sExt = 'XLS' then
		result := 'ExcelFile'
	else if Copy(sExt,1,2) = 'WK' then
		result := 'LotusFile'
	else if sExt = 'QPR' then
		result := 'QuattroFile'
  else if sExt = 'HTM' then
		result := 'HTMLFile'
  else if sExt = 'HTML' then
		result := 'XHTMLFile'
	else if sExt = 'PDF' then
		result := 'PDFFile'
  else if sExt = 'TXT' then
		result := 'ReportTextFile'
  else if sExt = 'JPG' then
		result := 'GraphicFile'
  else if sExt = 'GIF' then
		result := 'GraphicFile'
  else if sExt = 'BMP' then
		result := 'GraphicFile'
  else
		result := 'ArchiveFile';
end;

function TppTradeSoftPreview.GerarArquivo( Arquivo : string = ''; bEmail : boolean = false) : string;
var
  lDeviceClass: TppDeviceClass;
  lFileDevice: TppFileDevice;
  i, nIndice: Integer;
  slArquivos : TStringList;
  sArq, sNome : string;
begin
  result := '';

	if Arquivo <> '' then

  else if Salvar.Execute then
     sArq := Salvar.FileName
  else
  	Exit;

  {get the device class}
  if Arquivo <> '' then
  	lDeviceClass := ppDeviceClassForName(getTipoArquivo(Arquivo))
  else
  	lDeviceClass := ppDeviceClassForName(aTipoArquivo[Salvar.FilterIndex-1]);

  {create the file device}
  lFileDevice  := TppFileDevice(lDeviceClass.Create(Self));
  if Arquivo = '' then begin
  	nIndice := Salvar.FilterIndex*2;
  	if pos('.',Direita(sArq,4)) <= 0 then
  		Arquivo := sArq + '.'+SeparaStrings(SeparaStrings(Salvar.Filter,'|',nIndice),'.',2)
    else
    	Arquivo := sArq;
  end else
  	Arquivo := DMProject.EmailPath+ExtractFileName(Arquivo);

  lFileDevice.Publisher := TppReport(Report).Publisher;

  FStatusBar.SimpleText := 'Gerando arquivo '+Arquivo+' ...';
  Application.ProcessMessages;

  lFileDevice.FileName := Arquivo;
  TppReport(Report).PrintToDevices;
  lFileDevice.Free;

  sNome := '';
  if Pos(UpperCase(ExtractFileExt(Arquivo)),'.JPG,.BMP,.GIF')>0 then
  	sNome := 'IMG'
  else if Pos(UpperCase(ExtractFileExt(Arquivo)),'.HTM')>0 then
  	sNome := 'RPT';
  if sNome <> '' then begin
  	slArquivos := getFileList(ExtractFilePath(Arquivo)+sNome+'*'+ExtractFileExt(Arquivo));
    if slArquivos.Count>1 then begin
  		for i:=0 to slArquivos.Count-1 do begin
      	slArquivos[i] := ExtractFilePath(Arquivo)+slArquivos[i];
 				RenameFile(slArquivos[i],ExtractFilePath(Arquivo)+Copy(ExtractFileName(Arquivo),1,pos('.',ExtractFileName(Arquivo))-1)+IntToStr(i+1)+ExtractFileExt(Arquivo));
      end;
      Arquivo := slArquivos[0];
      //sNome := slArquivos.CommaText;
      //sNome := replace(sNome,',',';');
    end;
  end;
  result := Arquivo;

  {Abrir Arquivo}
  if (not bEmail) and (Application.MessageBox('Deseja abrir o arquivo ?','Abrir arquivo',MB_YESNO or MB_ICONEXCLAMATION)=IDYES) then
		ShellExecute(handle, 'open', PChar(Arquivo), '','',0)
  else if (not bEmail) then
    ShowMessage('Arquivo: '+ExtractFileName(Arquivo)+ ' gerado com Sucesso!');

end;

procedure TppTradeSoftPreview.btExportarClick(Sender: TObject);
begin
  GerarArquivo;
end;

procedure TppTradeSoftPreview.TS_SpeedButton2Click(Sender: TObject);
begin
  ppmHelp.PopupFromCursorPos;
end;

procedure TppTradeSoftPreview.Padro1Click(Sender: TObject);
begin
  HtmlHelp(GetDesktopWindow, PChar(DMProject.sHelp), HH_HELP_CONTEXT, TMenuItem(sender).helpcontext);
end;

procedure TppTradeSoftPreview.SpeedButton2Click(Sender: TObject);
var
  PageSetupDlg: TppCustomPageSetupDialog;
  FormClass: TFormClass;

begin
  if (Report = nil) then Exit;


  ppViewer1.Report := nil;

  FormClass := ppGetFormClass(TppCustomPageSetupDialog);

  PageSetupDlg := TppCustomPageSetupDialog(FormClass.Create(Self));
  PageSetupDlg.Report := Report;
  PageSetupDlg.LanguageIndex := TppReport(Report).LanguageIndex;
  PageSetupDlg.ShowModal;
  PageSetupDlg.Release;

  ppViewer1.Report := TppProducer(ppDesigner1.Report);
  ppViewer1.Report.Publisher.Publish;

  
end;

initialization

  ppRegisterForm(TppCustomPreviewer, TppTradeSoftPreview);

finalization

  ppUnRegisterForm(TppCustomPreviewer);

end.


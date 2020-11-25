unit Dlg_CabecalhoRelatorios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, ComCtrls, dxEdLib,
  TS_Edit, ClipBrd, dxCntner, dxEditor, dxExEdtr, TS_ComboBox, ToolWin, DBCtrls,
  Db, Provider, DBClient, IBCustomDataSet, IBQuery, ppBands,
  ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport, RXSplit, ImgList, ppRegion,
  ppPrnabl, ppStrtch, ppRichTx, ppCtrls, Placemnt, BTOdeum;

type
  TDlgCabecalhoRelatorios = class(TFrmModeloCadastros)
    pnLadoEsquerdo: TTS_Panel;
    TS_Panel2: TTS_Panel;
    pnLadoDireito: TTS_Panel;
    TS_Panel1: TTS_Panel;
    Q_Cabecalho: TIBQuery;
    C_Cabecalho: TClientDataSet;
    P_Cabecalho: TDataSetProvider;
    C_CabecalhoDS: TDataSource;
    C_CabecalhoID: TIntegerField;
    C_CabecalhoESQUERDO: TStringField;
    C_CabecalhoDIREITO: TStringField;
    ppPalavrasChaves: TTS_PopupMenu;
    DataAtual1: TMenuItem;
    DataExtenso1: TMenuItem;
    Hora1: TMenuItem;
    Usuario1: TMenuItem;
    DataHora1: TMenuItem;
    NmeroPgina1: TMenuItem;
    TotalDePginas1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    NomeEmpresa1: TMenuItem;
    EnderecoEmpresa1: TMenuItem;
    Cidade1: TMenuItem;
    Estado1: TMenuItem;
    ZIP1: TMenuItem;
    Fone11: TMenuItem;
    Fone21: TMenuItem;
    Fax1: TMenuItem;
    Email1: TMenuItem;
    Site1: TMenuItem;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    StandardToolBar: TToolBar;
    CutButton: TToolButton;
    CopyButton: TToolButton;
    PasteButton: TToolButton;
    UndoButton: TToolButton;
    ToolButton10: TToolButton;
    FontName: TTS_ComboBox;
    ToolButton11: TToolButton;
    FontSize: TTS_Edit;
    UpDown1: TUpDown;
    ToolButton2: TToolButton;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ToolButton16: TToolButton;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    ToolButton20: TToolButton;
    BulletsButton: TToolButton;
    ToolButton1: TToolButton;
    ToolbarImages: TImageList;
    RxSplitter1: TRxSplitter;
    DlgCores: TColorDialog;
    reg: TppRegion;
    dfLadoEsquerdo: TRichEdit;
    dfLadoDireito: TRichEdit;
    BairrodaEmpresa1: TMenuItem;
    CPFCNPJdaEmpresa1: TMenuItem;
    InscricaoEstadualdaEmpresa1: TMenuItem;
    procedure TotalDePginas1Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btComando1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CutButtonClick(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
    procedure PasteButtonClick(Sender: TObject);
    procedure UndoButtonClick(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure BoldButtonClick(Sender: TObject);
    procedure ItalicButtonClick(Sender: TObject);
    procedure UnderlineButtonClick(Sender: TObject);
    procedure LeftAlignClick(Sender: TObject);
    procedure CenterAlignClick(Sender: TObject);
    procedure RightAlignClick(Sender: TObject);
    procedure BulletsButtonClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure dfLadoEsquerdoSelectionChange(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure dfLadoEsquerdoEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Controle  : TRichEdit;
    FUpdating : boolean;
    sCabEsquerdo, sCabDireito : string;
    function CurrText: TTextAttributes;
    procedure UpdateCursorPos;
    procedure ImprimirCabecalho(Regiao: TppRegion);
    function  FormataCabecalho( sCab : string ) : string;
    procedure Atualiza( sender : TObject );
  public
    { Public declarations }
  end;

var
  DlgCabecalhoRelatorios: TDlgCabecalhoRelatorios;

implementation

uses DM_Projeto, RichEdit, ShellApi, funcoes;

{$R *.DFM}

procedure TDlgCabecalhoRelatorios.TotalDePginas1Click(Sender: TObject);
begin
  inherited;
  if Controle = nil then
  	Controle := dfLadoEsquerdo;
  if (Controle = dfLadoEsquerdo) or
  	 (Controle = dfLadoDireito) then begin
	 	if C_CabecalhoDS.state in [dsBrowse] then
 			C_Cabecalho.Edit;
 		ClipBoard.asText := TMenuItem(Sender).Caption;
    Controle.PasteFromClipBoard;
  end;
end;

procedure TDlgCabecalhoRelatorios.btGravarClick(Sender: TObject);
var sArq : TStringList;
begin
  inherited;
  sArq := TStringList.Create;
  dfLadoEsquerdo.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+ 'cab_e.cab');
  dfLadoDireito.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'cab_d.cab');
	with C_Cabecalho do begin
  	if State in [dsBrowse] then
    	Edit;
    fieldbyname('ID').AsInteger := 1;
    sArq.LoadFromFile( ExtractFilePath(Application.ExeName)+'cab_e.cab' );
    fieldbyname('Esquerdo').AsString 	:= sArq.Text;
    sArq.LoadFromFile( ExtractFilePath(Application.ExeName)+'cab_d.cab' );
    fieldbyname('Direito').AsString 	:= sArq.Text;
    Post;
   	ApplyUpdates(0);
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  end;
  sArq.Free;
end;

procedure TDlgCabecalhoRelatorios.FormsComponentBeforeClearParams(
  Sender: TObject);
var sArq : TStringList;
begin
	sArq := TStringList.Create;
  inherited;
	FontName.Items := Screen.Fonts;
  Controle := dfLadoEsquerdo;
	with C_Cabecalho do begin
  	Open;
    sArq.Text := fieldbyname('Esquerdo').AsString;
    sArq.SaveTofile(ExtractFilePath(Application.ExeName)+'cab_e.cab');
  	dfLadoEsquerdo.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'cab_e.cab');
    sArq.Text := fieldbyname('Direito').AsString;
    sArq.SaveTofile(ExtractFilePath(Application.ExeName)+'cab_d.cab');
  	dfLadoDireito.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'cab_d.cab');
    sArq.Free;
  end;
end;

procedure TDlgCabecalhoRelatorios.btComando1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
	ppPalavrasChaves.PopupFromCursorPos;
end;

procedure TDlgCabecalhoRelatorios.CutButtonClick(Sender: TObject);
begin
  inherited;
  Controle.CutToClipboard;
end;

procedure TDlgCabecalhoRelatorios.CopyButtonClick(Sender: TObject);
begin
  inherited;
  Controle.CopyToClipboard;
end;

procedure TDlgCabecalhoRelatorios.PasteButtonClick(Sender: TObject);
begin
  inherited;
  Controle.PasteFromClipboard;
end;

procedure TDlgCabecalhoRelatorios.UndoButtonClick(Sender: TObject);
begin
  inherited;
  with Controle do
    if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure TDlgCabecalhoRelatorios.FontNameChange(Sender: TObject);
begin
  inherited;
  if C_Cabecalho.State in [dsBrowse] then
		C_Cabecalho.Edit;
  if FUpdating then Exit;
  CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure TDlgCabecalhoRelatorios.FontSizeChange(Sender: TObject);
begin
  inherited;
  if C_Cabecalho.State in [dsBrowse] then
		C_Cabecalho.Edit;
  if FUpdating then Exit;
  CurrText.Size := StrToInt(FontSize.Text);
end;

procedure TDlgCabecalhoRelatorios.BoldButtonClick(Sender: TObject);
begin
  inherited;
  if C_Cabecalho.State in [dsBrowse] then
		C_Cabecalho.Edit;
  if FUpdating then Exit;
  if BoldButton.Down then
    CurrText.Style := CurrText.Style + [fsBold]
  else
    CurrText.Style := CurrText.Style - [fsBold];
end;

procedure TDlgCabecalhoRelatorios.ItalicButtonClick(Sender: TObject);
begin
  inherited;
  if C_Cabecalho.State in [dsBrowse] then
		C_Cabecalho.Edit;
  if FUpdating then Exit;
  if ItalicButton.Down then
    CurrText.Style := CurrText.Style + [fsItalic]
  else
    CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure TDlgCabecalhoRelatorios.UnderlineButtonClick(Sender: TObject);
begin
  inherited;
  if C_Cabecalho.State in [dsBrowse] then
		C_Cabecalho.Edit;
  if FUpdating then Exit;
  if UnderlineButton.Down then
    CurrText.Style := CurrText.Style + [fsUnderline]
  else
    CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure TDlgCabecalhoRelatorios.LeftAlignClick(Sender: TObject);
begin
  inherited;
  if C_Cabecalho.State in [dsBrowse] then
		C_Cabecalho.Edit;

  if FUpdating then Exit;
  Controle.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);
end;

procedure TDlgCabecalhoRelatorios.CenterAlignClick(Sender: TObject);
begin
  inherited;
  if C_Cabecalho.State in [dsBrowse] then
		C_Cabecalho.Edit;
  if FUpdating then Exit;
  Controle.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);
end;

procedure TDlgCabecalhoRelatorios.RightAlignClick(Sender: TObject);
begin
  inherited;
  if C_Cabecalho.State in [dsBrowse] then
		C_Cabecalho.Edit;
  if FUpdating then Exit;
  Controle.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);
end;

procedure TDlgCabecalhoRelatorios.BulletsButtonClick(Sender: TObject);
begin
  inherited;
  if C_Cabecalho.State in [dsBrowse] then
		C_Cabecalho.Edit;
  Controle.Paragraph.Numbering := TNumberingStyle(BulletsButton.Down);
end;

procedure TDlgCabecalhoRelatorios.ToolButton1Click(Sender: TObject);
begin
  inherited;
  if C_Cabecalho.State in [dsBrowse] then
		C_Cabecalho.Edit;
  if dlgCores.Execute then
		CurrText.Color := DlgCores.Color;
end;

procedure TDlgCabecalhoRelatorios.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(Controle.Handle, EM_EXLINEFROMCHAR, 0,
    Controle.SelStart);
  CharPos.X := (Controle.SelStart -
    SendMessage(Controle.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
//  StatusBar.Panels[0].Text := Format(sColRowInfo, [CharPos.Y, CharPos.X]);
end;


procedure TDlgCabecalhoRelatorios.dfLadoEsquerdoSelectionChange(
  Sender: TObject);
begin
  inherited;
  with Controle.Paragraph do
  try
    FUpdating := True;
    BoldButton.Down := fsBold in Controle.SelAttributes.Style;
    ItalicButton.Down := fsItalic in Controle.SelAttributes.Style;
    UnderlineButton.Down := fsUnderline in Controle.SelAttributes.Style;
    BulletsButton.Down := Boolean(Numbering);
    FontSize.Text := IntToStr(Controle.SelAttributes.Size);
    FontName.Text := Controle.SelAttributes.Name;
    case Ord(Alignment) of
      0: LeftAlign.Down := True;
      1: RightAlign.Down := True;
      2: CenterAlign.Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

function TDlgCabecalhoRelatorios.CurrText: TTextAttributes;
begin
  if (Controle <> nil) then begin
  	if Controle.SelLength > 0 then
    	Result := Controle.SelAttributes
  	else
    	Result := Controle.DefAttributes;
  end;
end;

procedure TDlgCabecalhoRelatorios.ImprimirCabecalho( Regiao : TppRegion );
var MargemEsquerda, LargLabel, AlturaLogotipo, AlturaLabel, AlturaMemo, Altura : single;
		Logotipo    	: TppImage;
    i, nUnidade   : integer;

  function ConverteUnits( Valor : single; Tipo : integer ) : single;
  begin
  	if Tipo = 2 then
    	result := Valor * 25.4
  	else if Tipo = 3 then
    	result := Valor * 0.0104
    else
    	result := Valor;
  end;
begin
  if DMProjeto.Parametro('ImprimirCabecalho') = 'N' then begin
    TppBand(Regiao.Parent).Height := 0;
  	exit;
  end;
    // Destruindo os componentes
  	with Regiao do begin
    	for i:=TppBand(Regiao.Parent).ObjectCount-1 downto 0 do
    		if TppBand(Regiao.Parent).Objects[i].Tag = -1 then
         TppBand(Regiao.Parent).Objects[i].Free;

    // Criando o logotipo
    AlturaLogoTipo := 0;
    if FileExists(DMProjeto.ImgPath+DMProjeto.sLogotipoEmpresa) then begin
    	Logotipo := TppImage.Create(Regiao);
    	with Logotipo do begin
      	Autosize := true;
    		Left 	:= Regiao.Left;
      	Top  	:= Regiao.Top;
      	Name 	:= 'Logotipo';
      	Picture.LoadFromFile(DMProjeto.ImgPath+DMProjeto.sLogotipoEmpresa);
      	Band  := TppBand(Regiao.Parent);
      	Tag		:= -1;
        MargemEsquerda := Regiao.Left+Logotipo.Width;
        AlturaLogoTipo := Logotipo.Height;
    	end;
    end else
    	MargemEsquerda := Regiao.Left;

      sCabEsquerdo 	:= C_CabecalhoEsquerdo.AsString;
      sCabDireito		:= C_CabecalhoDireito.AsString;

    // Criando o RichEdit Lado Esquerdo
    with TppRichText.Create(Regiao) do begin
      Top   			:= Regiao.Top;
    	Left 				:= MargemEsquerda+0.1;
      Name  			:= 'CabecalhoLadoEsquerdo';
      DMProjeto.Interpreta( sCabEsquerdo );
      RichText		:= sCabEsquerdo;
      Width				:= 5;
      Height			:= iif(AlturaLogotipo<>0,AlturaLogotipo,1);
      AlturaLabel := Height;
      Altura      := AlturaLabel;
      LargLabel   := Width;
      Band  			:= TppBand(Regiao.Parent);
      Tag					:= -1;
    end;
    // Criando o RichEdit Lado Direito
    with TppRichText.Create(Regiao) do begin
      Top   			:= Regiao.Top;
    	Left 				:= ConverteUnits(Regiao.Width,nUnidade) - Width - 0.1;
      Name  			:= 'CabecalhoLadoDireito';
      Height			:= iif(AlturaLogotipo<>0,AlturaLogotipo,1);
  		DMProjeto.Interpreta( sCabDireito );
  		RichText		:= sCabDireito;
      AlturaLabel := Height;
      Altura      := AlturaLabel;
      LargLabel   := Width;
      Band  			:= TppBand(Regiao.Parent);
      Tag					:= -1;
      OnPrint			:= Atualiza;
    end;

  end;
end;

procedure TDlgCabecalhoRelatorios.Atualiza( sender : TObject );
var RichEdit : TppRichText;
begin  
  RichEdit := TppRichText(FindComponent('CabecalhoLadoDireito'));
  RichEdit.RichText	:= sCabDireito;
	RichEdit.RichText := replace(RichEdit.RichText,'<NumeroPagina>',IntToStr(TppReport(TppBand(RichEdit.Parent).Report).AbsolutePageNo));
	RichEdit.RichText := replace(RichEdit.RichText,'<TotalPaginas>',IntToStr(TppReport(TppBand(RichEdit.Parent).Report).AbsolutePageCount));
end;

procedure TDlgCabecalhoRelatorios.btComando2Click(Sender: TObject);
begin
  inherited;
  btGravarClick(sender);
 	DMProjeto.ImprimirCabecalho( reg );
  ppReport1.Print;
end;

procedure TDlgCabecalhoRelatorios.dfLadoEsquerdoEnter(Sender: TObject);
begin
  inherited;
  Controle := TRichEdit(Sender);
end;

function TDlgCabecalhoRelatorios.FormataCabecalho( sCab : string ) : string;
var Texto : TRichEdit;
		i,j,k :integer;
    Arquivo : TStringList;
    TextAtributos : TTextAttributes;
    sTexto, sFormato : string;

procedure Compara(bProximaLinha : boolean = false);
begin
        Texto.SelStart := i;
        if bProximaLinha then
           sTexto := sTexto + '|' + IntToStr(j) + '|' + sFormato + ';'
        else if (SeparaStrings(sFormato,'|',1) <> Texto.SelAttributes.Name) or
        	 (StrToInt(SeparaStrings(sFormato,'|',2)) <> Texto.SelAttributes.Size) or
           (StringToColor(SeparaStrings(sFormato,'|',3)) <> Texto.SelAttributes.Color) or
           (SeparaStrings(sFormato,'|',4) <> (iif(fsBold in Texto.SelAttributes.Style,'N','')+
                    												 iif(fsItalic in Texto.SelAttributes.Style,'I','')+
                    												 iif(fsUnderline in Texto.SelAttributes.Style,'S',''))) then begin

              sTexto := Copy(sTexto,1,length(sTexto)-1) + '|' + IntToStr(j) + '|' + sFormato + ';' + Copy(sTexto,length(sTexto),1);

    					sFormato := Texto.SelAttributes.Name+'|'+IntToStr(Texto.SelAttributes.Size)+
              '|'+ColorToString(Texto.SelAttributes.Color)+
              '|'+iif(fsBold in Texto.SelAttributes.Style,'N','')+
                  iif(fsItalic in Texto.SelAttributes.Style,'I','')+
                  iif(fsUnderline in Texto.SelAttributes.Style,'S','');
        end;
end;

begin
  inherited;
	Texto 	:= TRichEdit.Create(self);
  Arquivo := TStringList.Create;
  try
    Arquivo.Text 		:= sCab;
    Arquivo.SaveToFile(ExtractFilePath(Application.ExeName)+'cab_e.cab');
  	Texto.Parent 		:= self;
    Texto.Visible		:= false;
  	Texto.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'cab_e.cab');
    Texto.SelStart 	:= 0;
    TextAtributos  	:= Texto.SelAttributes;
    sFormato 				:= Texto.SelAttributes.Name+'|'+IntToStr(Texto.SelAttributes.Size)+
                			'|'+ColorToString(Texto.SelAttributes.Color)+
                			'|'+iif(fsBold in Texto.SelAttributes.Style,'N','')+
                    	iif(fsItalic in Texto.SelAttributes.Style,'I','')+
                    	iif(fsUnderline in Texto.SelAttributes.Style,'S','');
    sTexto := '';
  	i := 0;
  	for j:=0 to Texto.Lines.Count-1 do begin
    	for k :=0 to Length(Texto.Lines[j]) do begin
  			Texto.SelStart := i;
      	Texto.SelLength:= 1;
        if Texto.SelText = '' then begin
          inc(i);
        	Continue;
        end;
        sTexto := sTexto + Texto.SelText;
    		inc(i);
        Compara;
  		end;
      inc(i);
      Compara( true );
    end;
		result := sTexto;
  finally
  	Arquivo.Free;
    Texto.Free;
  end;
end;

procedure TDlgCabecalhoRelatorios.Button1Click(Sender: TObject);
var sValor : string;
begin
  inherited;
	sValor := FormataCabecalho( C_CabecalhoEsquerdo.Value );
  showmessage(sValor);
end;

end.



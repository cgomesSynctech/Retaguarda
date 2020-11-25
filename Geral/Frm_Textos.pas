unit Frm_Textos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, Mask, DBCtrls, TS_DBEdit,
  TS_Label, TS_DBLookupComboBox, ToolWin, TS_DBRichEdit, TS_Edit,
  TS_ComboBox, ClipBrd, DB, TS_LastDataObject, TS_Bevel, TS_MaxPanel, dxEdLib, dxEditor, dxExEdtr,
  dxCntner, dxDBELib, TS_Image, dxfLabel, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, CheckLst, TS_CheckListBox, teCtrls,
  TS_EffectsPanel, dxTLClms, dxDBEdtr, dxDBTLCl, dxGrClms, Variants,
  BTOdeum, Placemnt, TS_Shape, dxfProgressBar;

type
  TFrmTextos = class(TFrmPadrao)
    TS_Panel1: TTS_Panel;
    TS_Label2: TTS_Label;
    TS_Panel2: TTS_Panel;
    ppPalavrasChaves: TTS_PopupMenu;
    DataAtual1: TMenuItem;
    Hora1: TMenuItem;
    Empresa1: TMenuItem;
    EnderecoEmpresa1: TMenuItem;
    DlgCores: TColorDialog;
    ppCamposConsulta: TTS_PopupMenu;
    DataExtenso1: TMenuItem;
    Usuario1: TMenuItem;
    ContaAtual1: TMenuItem;
    GridTEXTO: TdxDBGridMaskColumn;
    GridTITULO: TdxDBGridMaskColumn;
    GridCONSULTA: TdxDBGridMaskColumn;
    GridTEXTOCOMPLETO: TdxDBGridMemoColumn;
    dfTitulo: TTS_DBEdit;
    ToolbarImages: TImageList;
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
    Ruler: TPanel;
    FirstInd: TLabel;
    LeftInd: TLabel;
    RulerLine: TBevel;
    RightInd: TLabel;
    Bevel1: TBevel;
    TS_SpeedButton1: TTS_SpeedButton;
    Editor: TRichEdit;
    TS_Shape1: TTS_Shape;
    CidadeEmpresa1: TMenuItem;
    EstadoEmpresa1: TMenuItem;
    ZipEmpresa1: TMenuItem;
    N4: TMenuItem;
    SSNdaEmpresa1: TMenuItem;
    Fone1daEmpresa1: TMenuItem;
    Fone2daEmpresa1: TMenuItem;
    EmaildaEmpresa1: TMenuItem;
    SitedaEmpresa1: TMenuItem;
    FaxdaEmpresa1: TMenuItem;
    BairrodaEmpresa1: TMenuItem;
    procedure DataAtual1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure btNegritoClick(Sender: TObject);
    procedure btItalicoClick(Sender: TObject);
    procedure btSublinhadoButtonClick(Sender: TObject);
    procedure btEsquerdaClick(Sender: TObject);
    procedure btCorClick(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure ppCamposConsultaPopup(Sender: TObject);
    procedure TS_Label4SetParametrosForm(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure EditorSelectionChange(Sender: TObject);
    procedure TS_SpeedButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btComando2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RulerResize(Sender: TObject);
    procedure BulletsButtonClick(Sender: TObject);
    procedure FirstIndMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FirstIndMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RightIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UndoButtonClick(Sender: TObject);
    procedure CutButtonClick(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
    procedure PasteButtonClick(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure FormComponentGravou(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
    FUpdating : Boolean;
    FDragOfs  : Integer;
    FDragging : Boolean;
    function 	CurrText: TTextAttributes;
    procedure	CliqueOnMenuPopup( Sender : TObject );
    procedure UpdateCursorPos;
  public
    { Public declarations }
  end;

var
  FrmTextos: TFrmTextos;

implementation

uses DM_Textos, RichEdit, DM_Projeto, ShellAPI;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.DFM}

procedure	TFrmTextos.CliqueOnMenuPopup( Sender : TObject );
begin
  if DMTextos.C_TabelaDS.state in [dsBrowse] then
  	DMTextos.C_Tabela.Edit;
  ClipBoard.asText := TMenuItem(Sender).Caption;
  Editor.PasteFromClipBoard;
end;

procedure TFrmTextos.DataAtual1Click(Sender: TObject);
begin
  inherited;
	CliqueOnMenuPopup( Sender );
end;

procedure TFrmTextos.SpeedButton3Click(Sender: TObject);
begin
  inherited;
	Editor.CopyToClipboard;
end;

procedure TFrmTextos.SpeedButton2Click(Sender: TObject);
begin
  inherited;
	Editor.PasteFromClipboard;
end;

procedure TFrmTextos.FontNameChange(Sender: TObject);
begin
  inherited;
  if DMTextos.C_Tabela.State in [dsBrowse] then
		DMTextos.C_Tabela.Edit;
  if FUpdating then Exit;
  CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure TFrmTextos.FormCreate(Sender: TObject);
begin
  inherited;
	FontName.Items := Screen.Fonts;
end;

procedure TFrmTextos.FontSizeChange(Sender: TObject);
begin
  inherited;
  if DMTextos.C_Tabela.State in [dsBrowse] then
		DMTextos.C_Tabela.Edit;
  if FUpdating then Exit;
  CurrText.Size := StrToInt(FontSize.Text);
end;

procedure TFrmTextos.btNegritoClick(Sender: TObject);
begin
  inherited;
  if DMTextos.C_Tabela.State in [dsBrowse] then
		DMTextos.C_Tabela.Edit;
  if FUpdating then Exit;
  if BoldButton.Down then
    CurrText.Style := CurrText.Style + [fsBold]
  else
    CurrText.Style := CurrText.Style - [fsBold];
end;

procedure TFrmTextos.btItalicoClick(Sender: TObject);
begin
  inherited;
  if DMTextos.C_Tabela.State in [dsBrowse] then
		DMTextos.C_Tabela.Edit;
  if FUpdating then Exit;
  if ItalicButton.Down then
    CurrText.Style := CurrText.Style + [fsItalic]
  else
    CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure TFrmTextos.btSublinhadoButtonClick(Sender: TObject);
begin
  inherited;
  if DMTextos.C_Tabela.State in [dsBrowse] then
		DMTextos.C_Tabela.Edit;
  if FUpdating then Exit;
  if UnderlineButton.Down then
    CurrText.Style := CurrText.Style + [fsUnderline]
  else
    CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure TFrmTextos.btEsquerdaClick(Sender: TObject);
begin
  inherited;
  if DMTextos.C_Tabela.State in [dsBrowse] then
		DMTextos.C_Tabela.Edit;
  if FUpdating then Exit;
  Editor.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);
end;

procedure TFrmTextos.btCorClick(Sender: TObject);
begin                                             
  inherited;
  if DMTextos.C_Tabela.State in [dsBrowse] then
		DMTextos.C_Tabela.Edit;
  if dlgCores.Execute then
		CurrText.Color := DlgCores.Color;
end;

procedure TFrmTextos.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirRecibo(DMTextos.C_TabelaTexto.AsInteger);
end;

procedure TFrmTextos.ppCamposConsultaPopup(Sender: TObject);
var sCampos : TStringList;
		i : integer;
    mItemsMenu : TMenuItem;
begin
  inherited;
  if DMTextos.C_TabelaConsulta.IsNull then
  	exit;
  try
  	sCampos := TStringList.Create;
  	with DMProjeto.Q_SQL do begin
    	try
        if DMTextos.C_TabelaTexto.Value <= 100 then begin
  				close;
    			SQL.Text := DMTextos.C_TabelaQuery.AsString;
    			open;
    			getFieldNames( sCampos );
        	close;
        end else begin
        	sCampos.Add('nome');
          sCampos.Add('endereco');
          sCampos.Add('cidade');
          sCampos.Add('uf');
          sCampos.Add('cep');
          sCampos.Add('fone1');
          sCampos.Add('fone2');
          sCampos.Add('contato');
          sCampos.Add('caixapostal');
          sCampos.Add('pais');
          sCampos.Add('fax');
          sCampos.Add('celular');
          sCampos.Add('email');
          sCampos.Add('site');
          sCampos.Add('vendedor');
          sCampos.Add('limitecredito');
          sCampos.Add('taxavel');
          sCampos.Add('ssn');
          sCampos.Add('datacadastro');
          sCampos.Add('credito');
          sCampos.Add('campo01');
          sCampos.Add('campo02');
          sCampos.Add('campo03');
          sCampos.Add('campo04');
          sCampos.Add('campo05');
          sCampos.Add('campo06');
          sCampos.Add('campo07');
          sCampos.Add('campo08');
          sCampos.Add('campo09');
          sCampos.Add('campo10');
          sCampos.Add('ultcompra');
          sCampos.Add('ultvalorcompra');
          sCampos.Add('obs');
        end;
      	ppCamposConsulta.Items.Clear;
      	for i:=0 to sCampos.Count-1 do begin
        	mItemsMenu := TMenuItem.Create(self);
        	mItemsMenu.Caption := '<'+sCampos[i]+'>';
        	mItemsMenu.OnClick := CliqueOnMenuPopup;
					ppCamposConsulta.Items.Add(mItemsMenu);
      	end;
    	except
    		on E : Exception do
      		DlgMsg.ShowMsg( 1, e.message, '' );
    	end;
  	end;
  finally
  	sCampos.Free;
  end;
end;

procedure TFrmTextos.TS_Label4SetParametrosForm(Sender: TObject);
begin
  inherited;
	DMProjeto.SetParametrosForm([DMTextos.C_TabelaConsulta.AsVariant]);
end;

procedure TFrmTextos.btComando1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirRecibo( DMTextos.C_TabelaTexto.AsInteger );
end;

procedure TFrmTextos.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(Editor.Handle, EM_EXLINEFROMCHAR, 0,Editor.SelStart);
  CharPos.X := (Editor.SelStart - SendMessage(Editor.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
//  StatusBar.Panels[0].Text := Format(sColRowInfo, [CharPos.Y, CharPos.X]);
end;

function TFrmTextos.CurrText: TTextAttributes;
begin
  if Editor.SelLength > 0 then
  	Result := Editor.SelAttributes
  else
  	Result := Editor.DefAttributes;
end;

procedure TFrmTextos.EditorSelectionChange(Sender: TObject);
begin
  inherited;
  with Editor.Paragraph do
  try
    FUpdating := True;
    FirstInd.Left := Trunc(FirstIndent*RulerAdj)-4+GutterWid;
    LeftInd.Left  := Trunc((LeftIndent+FirstIndent)*RulerAdj)-4+GutterWid;
    RightInd.Left := Ruler.ClientWidth-6-Trunc((RightIndent+GutterWid)*RulerAdj);

    BoldButton.OnClick  := nil;
    BoldButton.Down     := fsBold in Editor.SelAttributes.Style;
    BoldButton.OnClick  := btNegritoClick;

    ItalicButton.OnClick:= nil;
    ItalicButton.Down   := fsItalic in Editor.SelAttributes.Style;
    ItalicButton.OnClick:= btItalicoClick;

    UnderlineButton.OnClick := nil;
    UnderlineButton.Down    := fsUnderline in Editor.SelAttributes.Style;
    UnderlineButton.OnClick := btSublinhadoButtonClick;

    BulletsButton.Down := Boolean(Numbering);

    FontSize.OnChange  := nil;
    FontSize.Text      := IntToStr(Editor.SelAttributes.Size);
    FontSize.OnChange  := FontSizeChange;

    FontName.OnChange  := nil;
    FontName.Text := Editor.SelAttributes.Name;
    FontName.OnChange  := FontNameChange;

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

procedure TFrmTextos.TS_SpeedButton1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var xy : TPoint;
begin
  inherited;
  xy.x := X;
  xy.Y := Y;
  xy:= TTS_SpeedButton(Sender).ClientToScreen(xy);
  ppPalavrasChaves.Popup(xy.X, xy.Y);
end;

procedure TFrmTextos.btComando2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppCamposConsulta.PopupFromCursorPos;
end;

procedure TFrmTextos.RulerResize(Sender: TObject);
begin
  inherited;
  RulerLine.Width := Ruler.ClientWidth - (RulerLine.Left*2);
end;

procedure TFrmTextos.BulletsButtonClick(Sender: TObject);
begin
  inherited;
  if DMTextos.C_Tabela.State in [dsBrowse] then
		DMTextos.C_Tabela.Edit;
  Editor.Paragraph.Numbering := TNumberingStyle(BulletsButton.Down);
end;

procedure TFrmTextos.FirstIndMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  FDragOfs := (TLabel(Sender).Width div 2);
  TLabel(Sender).Left := TLabel(Sender).Left+X-FDragOfs;
  FDragging := True;
end;

procedure TFrmTextos.FirstIndMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  if FDragging then
    TLabel(Sender).Left :=  TLabel(Sender).Left+X-FDragOfs
end;

procedure TFrmTextos.FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  FDragging := False;
  Editor.Paragraph.FirstIndent := Trunc((FirstInd.Left+FDragOfs-GutterWid) / RulerAdj);
  LeftIndMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TFrmTextos.LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  FDragging := False;
  Editor.Paragraph.LeftIndent := Trunc((LeftInd.Left+FDragOfs-GutterWid) / RulerAdj)-Editor.Paragraph.FirstIndent;
	EditorSelectionChange(Sender);
end;

procedure TFrmTextos.RightIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  FDragging := False;
  Editor.Paragraph.RightIndent := Trunc((Ruler.ClientWidth-RightInd.Left+FDragOfs-2) / RulerAdj)-2*GutterWid;
  EditorSelectionChange(Sender);
end;

procedure TFrmTextos.UndoButtonClick(Sender: TObject);
begin
  inherited;
  with Editor do
    if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure TFrmTextos.CutButtonClick(Sender: TObject);
begin
  inherited;
  Editor.CutToClipboard;
end;

procedure TFrmTextos.CopyButtonClick(Sender: TObject);
begin
  inherited;
  Editor.CopyToClipboard;
end;

procedure TFrmTextos.PasteButtonClick(Sender: TObject);
begin
  inherited;
  Editor.PasteFromClipboard;
end;

procedure TFrmTextos.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  if DMTextos.C_TabelaTexto.AsInteger >= 100 then begin
    Editor.OnSelectionChange := nil;
    FontName.Text := 'Courier New';
  	Editor.PlainText := true;
    Editor.Font.Name := 'Courier New';
    Editor.Font.Size := 10;
    Editor.Font.Style:= [];
    Editor.Width 	:= 320;
    RightInd.Left := 315;
    Editor.Paragraph.RightIndent := 192;
    CurrText.Name := 'Courier New';
    CurrText.Style := [];
    CurrText.Size := 10;
  end else begin
		Editor.PlainText := false;
    Editor.Paragraph.RightIndent := 0;
    RightInd.Left := 575;
    Editor.Width 	:= 584;
  end;
  if DMTextos.bAlteracao then begin
  	if fileexists(DMProjeto.ProgPath+'Textos\'+DMTextos.C_TabelaTexto.AsString+'.rtf') then
			Editor.Lines.LoadFromFile(DMProjeto.ProgPath+'Textos\'+DMTextos.C_TabelaTexto.AsString+'.rtf')
  	else
  		Editor.Lines.Clear;
  end;
  Editor.OnSelectionChange := EditorSelectionChange;
end;

procedure TFrmTextos.FormComponentGravou(Sender: TObject);
begin
  inherited;
	Editor.Lines.SaveToFile(DMProjeto.ProgPath+'Textos\'+DMTextos.C_TabelaTexto.AsString+'.rtf');
{
  if DMTextos.C_TabelaTexto.ASInteger >= 100 then begin
    Memo1.Lines.SaveToFile(DMProjeto.ProgPath+'Textos\'+DMTextos.C_TabelaTexto.AsString+'.rtf');
  end;
}
end;

procedure TFrmTextos.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	Editor.Lines.Clear;
end;

end.

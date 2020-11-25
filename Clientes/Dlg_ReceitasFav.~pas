unit Dlg_ReceitasFav;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, TS_Shape, dxCntner, dxEditor, dxEdLib,
  dxDBELib, TS_DBEdit, dxExEdtr, dxDBEdtr, TS_DBLookupComboBox, TS_DBMemo, db,
  ppCtrls, ppPrnabl, ppClass, ppStrtch, ppRegion, ppBands, ppCache, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ppMemo;

type
  TDlgReceitasFav = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    TS_Panel2: TTS_Panel;
    TS_Shape1: TTS_Shape;
    TS_Label1: TTS_Label;
    TS_Shape2: TTS_Shape;
    TS_Label2: TTS_Label;
    TS_Shape3: TTS_Shape;
    TS_Label3: TTS_Label;
    TS_Shape4: TTS_Shape;
    TS_Label4: TTS_Label;
    TS_Shape5: TTS_Shape;
    TS_Label5: TTS_Label;
    TS_Shape6: TTS_Shape;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Shape7: TTS_Shape;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    TS_Shape8: TTS_Shape;
    TS_Label11: TTS_Label;
    TS_Label12: TTS_Label;
    TS_Shape9: TTS_Shape;
    TS_Label13: TTS_Label;
    OD_P1: TTS_DBEdit;
    TS_Shape10: TTS_Shape;
    TS_Shape11: TTS_Shape;
    TS_Shape12: TTS_Shape;
    OD_P2: TTS_DBEdit;
    OD_P3: TTS_DBEdit;
    OD_P4: TTS_DBEdit;
    OD_P7: TTS_DBEdit;
    OE_P1: TTS_DBEdit;
    OE_P2: TTS_DBEdit;
    OE_P3: TTS_DBEdit;
    OE_P4: TTS_DBEdit;
    OE_P7: TTS_DBEdit;
    OD_P5: TTS_DBEdit;
    OD_P6: TTS_DBEdit;
    OE_P5: TTS_DBEdit;
    OE_P6: TTS_DBEdit;
    TS_Panel3: TTS_Panel;
    TS_Shape13: TTS_Shape;
    TS_Label14: TTS_Label;
    TS_Shape14: TTS_Shape;
    TS_Label15: TTS_Label;
    TS_Shape15: TTS_Shape;
    TS_Label16: TTS_Label;
    TS_Shape16: TTS_Shape;
    TS_Label17: TTS_Label;
    TS_Shape17: TTS_Shape;
    TS_Label18: TTS_Label;
    TS_Label19: TTS_Label;
    TS_Shape18: TTS_Shape;
    TS_Label20: TTS_Label;
    TS_Label21: TTS_Label;
    TS_Shape19: TTS_Shape;
    TS_Label22: TTS_Label;
    TS_Shape20: TTS_Shape;
    TS_Shape21: TTS_Shape;
    TS_Shape22: TTS_Shape;
    TS_Shape23: TTS_Shape;
    TS_Label23: TTS_Label;
    TS_Label24: TTS_Label;
    TS_Label25: TTS_Label;
    TS_Shape24: TTS_Shape;
    TS_Label26: TTS_Label;
    OD_L1: TTS_DBEdit;
    OD_L2: TTS_DBEdit;
    OD_L3: TTS_DBEdit;
    OD_L4: TTS_DBEdit;
    OD_L7: TTS_DBEdit;
    OE_L1: TTS_DBEdit;
    OE_L2: TTS_DBEdit;
    OE_L3: TTS_DBEdit;
    OE_L4: TTS_DBEdit;
    OE_L7: TTS_DBEdit;
    OD_L5: TTS_DBEdit;
    OD_L6: TTS_DBEdit;
    OE_L5: TTS_DBEdit;
    OE_L6: TTS_DBEdit;
    TS_Panel4: TTS_Panel;
    TS_Label27: TTS_Label;
    TS_Label28: TTS_Label;
    TS_Label29: TTS_Label;
    TS_Label30: TTS_Label;
    TS_Label31: TTS_Label;
    dfReferente: TTS_DBMemo;
    dfObs: TTS_DBMemo;
    dfTipoLente: TTS_DBLookupComboBox;
    dfCor: TTS_DBLookupComboBox;
    dfTipoMaterial: TTS_DBLookupComboBox;
    ppReceita: TppReport;
    ppDBReceita: TppDBPipeline;
    ppDBClientes: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    regCab: TppRegion;
    ppShape1: TppShape;
    lbTitulo: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    ppShape2: TppShape;
    ppLine2: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppShape3: TppShape;
    ppLine10: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppShape4: TppShape;
    ppLine18: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppShape5: TppShape;
    ppLine26: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBMemo4: TppDBMemo;
    procedure btGravarClick(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure ppDBText17GetText(Sender: TObject; var Text: String);
    procedure ppDBText19GetText(Sender: TObject; var Text: String);
    procedure ppDBText21GetText(Sender: TObject; var Text: String);
    procedure ppDBText23GetText(Sender: TObject; var Text: String);
    procedure ppDBText25GetText(Sender: TObject; var Text: String);
    procedure ppDBText27GetText(Sender: TObject; var Text: String);
    procedure ppDBText29GetText(Sender: TObject; var Text: String);
    procedure btComando1Click(Sender: TObject);
    procedure ppDBText31GetText(Sender: TObject; var Text: String);
    procedure ppDBText33GetText(Sender: TObject; var Text: String);
    procedure ppDBText35GetText(Sender: TObject; var Text: String);
    procedure ppDBText37GetText(Sender: TObject; var Text: String);
    procedure ppDBText39GetText(Sender: TObject; var Text: String);
    procedure ppDBText41GetText(Sender: TObject; var Text: String);
    procedure ppDBText43GetText(Sender: TObject; var Text: String);
    procedure ppDBText32GetText(Sender: TObject; var Text: String);
    procedure ppDBText34GetText(Sender: TObject; var Text: String);
    procedure ppDBText36GetText(Sender: TObject; var Text: String);
    procedure ppDBText38GetText(Sender: TObject; var Text: String);
    procedure ppDBText40GetText(Sender: TObject; var Text: String);
    procedure ppDBText42GetText(Sender: TObject; var Text: String);
    procedure ppDBText44GetText(Sender: TObject; var Text: String);
    procedure ppDBText45GetText(Sender: TObject; var Text: String);
    procedure ppDBText46GetText(Sender: TObject; var Text: String);
    procedure ppDBText47GetText(Sender: TObject; var Text: String);
    procedure ppDBMemo1GetMemo(Sender: TObject; aLines: TStrings);
    procedure ppDBMemo2GetMemo(Sender: TObject; aLines: TStrings);
    procedure ppDBText18GetText(Sender: TObject; var Text: String);
    procedure ppDBText20GetText(Sender: TObject; var Text: String);
    procedure ppDBText22GetText(Sender: TObject; var Text: String);
    procedure ppDBText24GetText(Sender: TObject; var Text: String);
    procedure ppDBText26GetText(Sender: TObject; var Text: String);
    procedure ppDBText28GetText(Sender: TObject; var Text: String);
    procedure ppDBText30GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgReceitasFav: TDlgReceitasFav;

implementation
uses DM_Projeto, DM_Clientes;
{$R *.dfm}

procedure TDlgReceitasFav.btGravarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOK;
end;

procedure TDlgReceitasFav.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  if (DMClientes.bAlteracao) and (DMClientes.C_Receitas.State <> dsBrowse) then
    DMClientes.C_Receitas.Cancel
  else if (DMClientes.C_Receitas.State <> dsBrowse) then
		DMClientes.C_Receitas.Post;
end;

procedure TDlgReceitasFav.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if UpperCase(LastDataObject.TableName) = 'TIPOSLENTE' then begin
    DMClientes.C_TiposLentes.close;
    DMClientes.C_TiposLentes.open;
//  	DMClientes.C_ContratosItem.Value := LastDataObject.ObjectKey;
  end;
end;

procedure TDlgReceitasFav.ppDBText17GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OD_L1.Text ;
end;

procedure TDlgReceitasFav.ppDBText19GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OD_L2.Text ;
end;

procedure TDlgReceitasFav.ppDBText21GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OD_L3.Text ;
end;

procedure TDlgReceitasFav.ppDBText23GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
    Text := OD_L4.Text ;
end;

procedure TDlgReceitasFav.ppDBText25GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
    Text := OD_L5.Text ;
end;

procedure TDlgReceitasFav.ppDBText27GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
    Text := OD_L6.Text ;
end;

procedure TDlgReceitasFav.ppDBText29GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OD_L7.Text ;
end;

procedure TDlgReceitasFav.btComando1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirCabecalho(regCab);
  ppReceita.Print;
end;

procedure TDlgReceitasFav.ppDBText31GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OD_P1.Text;
end;

procedure TDlgReceitasFav.ppDBText33GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OD_P2.Text;
end;

procedure TDlgReceitasFav.ppDBText35GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OD_P3.Text;
end;

procedure TDlgReceitasFav.ppDBText37GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OD_P4.Text;
end;

procedure TDlgReceitasFav.ppDBText39GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OD_P5.Text;
end;

procedure TDlgReceitasFav.ppDBText41GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OD_P6.Text;
end;

procedure TDlgReceitasFav.ppDBText43GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OD_P7.Text;
end;

procedure TDlgReceitasFav.ppDBText32GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_P1.Text;
end;

procedure TDlgReceitasFav.ppDBText34GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_P2.Text;
end;

procedure TDlgReceitasFav.ppDBText36GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_P3.Text;
end;

procedure TDlgReceitasFav.ppDBText38GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_P4.Text;
end;

procedure TDlgReceitasFav.ppDBText40GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_P5.Text;
end;

procedure TDlgReceitasFav.ppDBText42GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_P6.Text;
end;

procedure TDlgReceitasFav.ppDBText44GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_P7.Text;
end;

procedure TDlgReceitasFav.ppDBText45GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := dftipolente.Text;
end;

procedure TDlgReceitasFav.ppDBText46GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := dfCor.Text;
end;

procedure TDlgReceitasFav.ppDBText47GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := dfTipoMaterial.Text;
end;

procedure TDlgReceitasFav.ppDBMemo1GetMemo(Sender: TObject;
  aLines: TStrings);
begin
  inherited;
  aLines.Add(dfReferente.Lines.Text);
end;

procedure TDlgReceitasFav.ppDBMemo2GetMemo(Sender: TObject;
  aLines: TStrings);
begin
  inherited;
  aLines.Add(dfObs.Lines.Text);
end;

procedure TDlgReceitasFav.ppDBText18GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_L1.Text ;
end;

procedure TDlgReceitasFav.ppDBText20GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_L2.Text ;
end;

procedure TDlgReceitasFav.ppDBText22GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_L3.Text ;
end;

procedure TDlgReceitasFav.ppDBText24GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_L4.Text ;
end;

procedure TDlgReceitasFav.ppDBText26GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_L5.Text ;
end;

procedure TDlgReceitasFav.ppDBText28GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_L6.Text ;
end;

procedure TDlgReceitasFav.ppDBText30GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := OE_L7.Text ;
end;

end.

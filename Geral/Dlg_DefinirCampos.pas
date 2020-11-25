unit Dlg_DefinirCampos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg, Menus, TS_PopupMenu,
  StdCtrls, Buttons, TS_BitBtn, TS_Label, ExtCtrls, TS_RadioGroup, TS_Edit,
  TS_Bevel, TS_SpeedButton, dxCntner, dxEditor, dxEdLib,
  FormsComponent, TS_Image, dxfLabel, TS_MaxPanel, teCtrls,
  TS_EffectsPanel, Placemnt, BTOdeum;

type
  TDlgDefinirCampos = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    dfCampo1: TTS_Edit;
    dfCampo2: TTS_Edit;
    dfCampo4: TTS_Edit;
    dfCampo3: TTS_Edit;
    dfCampo10: TTS_Edit;
    dfCampo5: TTS_Edit;
    dfCampo6: TTS_Edit;
    dfCampo7: TTS_Edit;
    dfCampo8: TTS_Edit;
    dfCampo9: TTS_Edit;
    rgTipoCampo1: TTS_RadioGroup;
    rgTipoCampo2: TTS_RadioGroup;
    rgTipoCampo3: TTS_RadioGroup;
    rgTipoCampo4: TTS_RadioGroup;
    rgTipoCampo5: TTS_RadioGroup;
    rgTipoCampo6: TTS_RadioGroup;
    rgTipoCampo7: TTS_RadioGroup;
    rgTipoCampo8: TTS_RadioGroup;
    rgTipoCampo9: TTS_RadioGroup;
    rgTipoCampo10: TTS_RadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
  private
    sCamposDef,sCamposTit,sCamposTipo: string;
  public
    { Public declarations }
  end;

var
  DlgDefinirCampos: TDlgDefinirCampos;

implementation
uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgDefinirCampos.FormCreate(Sender: TObject);
var i:integer;
    sCampo,sTitulo,sTipo: string;
begin
  inherited;
  sCamposDef  := DMProjeto.Parametro('ItensCamposDefinidos');
  sCamposTit  := DMProjeto.Parametro('ItensCamposTitulos');
  sCamposTipo := DMProjeto.Parametro('ItensCamposTipos');

  for i := 1 to ContaStrings(sCamposDef,';') do begin
    sCampo  := SeparaStrings(sCamposDef,';',i);
    sTitulo := SeparaStrings(sCamposTit,';',i);
    sTipo   := SeparaStrings(sCamposTipo,';',i);
    if sCampo = '1' then begin
      dfCampo1.text := sTitulo;
      rgTipoCampo1.ItemIndex := StrToInt(sTipo);
    end
    else if sCampo = '2' then begin
      dfCampo2.text := sTitulo;
      rgTipoCampo2.ItemIndex := StrToInt(sTipo);
    end
    else if sCampo = '3' then begin
      dfCampo3.text := sTitulo;
      rgTipoCampo3.ItemIndex := StrToInt(sTipo);
    end
    else if sCampo = '4' then begin
      dfCampo4.text := sTitulo;
      rgTipoCampo4.ItemIndex := StrToInt(sTipo);
    end
    else if sCampo = '5' then begin
      dfCampo5.text := sTitulo;
      rgTipoCampo5.ItemIndex := StrToInt(sTipo);
    end
    else if sCampo = '6' then begin
      dfCampo6.text := sTitulo;
      rgTipoCampo6.ItemIndex := StrToInt(sTipo);
    end
    else if sCampo = '7' then begin
      dfCampo7.text := sTitulo;
      rgTipoCampo7.ItemIndex := StrToInt(sTipo);
    end
    else if sCampo = '8' then begin
      dfCampo8.text := sTitulo;
      rgTipoCampo8.ItemIndex := StrToInt(sTipo);
    end
    else if sCampo = '9' then begin
      dfCampo9.text := sTitulo;
      rgTipoCampo9.ItemIndex := StrToInt(sTipo);
    end
    else if sCampo = '10' then begin
      dfCampo10.text := sTitulo;
      rgTipoCampo10.ItemIndex := StrToInt(sTipo);
    end
  end;
  ShowModal;
end;

procedure TDlgDefinirCampos.TS_BitBtn1Click(Sender: TObject);
begin
  inherited;
  sCamposDef  := '';
  sCamposTit  := '';
  sCamposTipo := '';

  if trim(dfCampo1.text) <> '' then begin
    sCamposDef  := '1';
    sCamposTit  := dfCampo1.text;
    sCamposTipo := IntToStr(rgTipoCampo1.itemindex);
  end;
  if trim(dfCampo2.text) <> '' then begin
    sCamposDef  := sCamposDef + ';2';
    sCamposTit  := sCamposTit + ';' + dfCampo2.text;
    sCamposTipo := sCamposTipo + ';' + IntToStr(rgTipoCampo2.itemindex);
  end;
  if trim(dfCampo3.text) <> '' then begin
    sCamposDef  := sCamposDef + ';3';
    sCamposTit  := sCamposTit + ';' + dfCampo3.text;
    sCamposTipo := sCamposTipo + ';' + IntToStr(rgTipoCampo3.itemindex);
  end;
  if trim(dfCampo4.text) <> '' then begin
    sCamposDef  := sCamposDef + ';4';
    sCamposTit  := sCamposTit + ';' + dfCampo4.text;
    sCamposTipo := sCamposTipo + ';' + IntToStr(rgTipoCampo4.itemindex);
  end;
  if trim(dfCampo5.text) <> '' then begin
    sCamposDef  := sCamposDef + ';5';
    sCamposTit  := sCamposTit + ';' + dfCampo5.text;
    sCamposTipo := sCamposTipo + ';' + IntToStr(rgTipoCampo5.itemindex);
  end;
  if trim(dfCampo6.text) <> '' then begin
    sCamposDef  := sCamposDef + ';6';
    sCamposTit  := sCamposTit + ';' + dfCampo6.text;
    sCamposTipo := sCamposTipo + ';' + IntToStr(rgTipoCampo6.itemindex);
  end;
  if trim(dfCampo7.text) <> '' then begin
    sCamposDef  := sCamposDef + ';7';
    sCamposTit  := sCamposTit + ';' + dfCampo7.text;
    sCamposTipo := sCamposTipo + ';' + IntToStr(rgTipoCampo7.itemindex);
  end;
  if trim(dfCampo8.text) <> '' then begin
    sCamposDef  := sCamposDef + ';8';
    sCamposTit  := sCamposTit + ';' + dfCampo8.text;
    sCamposTipo := sCamposTipo + ';' + IntToStr(rgTipoCampo8.itemindex);
  end;
  if trim(dfCampo9.text) <> '' then begin
    sCamposDef  := sCamposDef + ';9';
    sCamposTit  := sCamposTit + ';' + dfCampo9.text;
    sCamposTipo := sCamposTipo + ';' + IntToStr(rgTipoCampo9.itemindex);
  end;
  if trim(dfCampo10.text) <> '' then begin
    sCamposDef  := sCamposDef + ';10';
    sCamposTit  := sCamposTit + ';' + dfCampo10.text;
    sCamposTipo := sCamposTipo + ';' + IntToStr(rgTipoCampo10.itemindex);
  end;
  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

  DMProjeto.SetParametro('ItensCamposDefinidos',sCamposDef);
  DMProjeto.SetParametro('ItensCamposTitulos',sCamposTit);
  DMProjeto.SetParametro('ItensCamposTipos',sCamposTipo);

  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  close;
end;

procedure TDlgDefinirCampos.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  close;
end;

end.

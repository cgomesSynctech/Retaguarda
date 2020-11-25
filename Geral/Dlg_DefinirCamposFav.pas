unit Dlg_DefinirCamposFav;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg, Menus, TS_PopupMenu,
  StdCtrls, Buttons, TS_BitBtn, TS_Label, ExtCtrls, TS_RadioGroup, TS_Edit,
  TS_Bevel, TS_SpeedButton, TS_CheckBox, dxExEdtr, dxEdLib,
  dxCntner, dxEditor, FormsComponent, TS_Image, dxfLabel,
  TS_MaxPanel, teCtrls, TS_EffectsPanel, Placemnt, BTOdeum;

type
  TDlgDefinirCamposFav = class(TFrmModeloCadastros)
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
    TS_Label11: TTS_Label;
    TS_Label12: TTS_Label;
    TS_Label13: TTS_Label;
    cbClientes1: TTS_CheckBox;
    cbForn1: TTS_CheckBox;
    cbFunc1: TTS_CheckBox;
    cbClientes2: TTS_CheckBox;
    cbForn2: TTS_CheckBox;
    cbFunc2: TTS_CheckBox;
    cbClientes3: TTS_CheckBox;
    cbForn3: TTS_CheckBox;
    cbFunc3: TTS_CheckBox;
    cbClientes4: TTS_CheckBox;
    cbForn4: TTS_CheckBox;
    cbFunc4: TTS_CheckBox;
    cbClientes5: TTS_CheckBox;
    cbForn5: TTS_CheckBox;
    cbFunc5: TTS_CheckBox;
    cbClientes6: TTS_CheckBox;
    cbForn6: TTS_CheckBox;
    cbFunc6: TTS_CheckBox;
    cbClientes7: TTS_CheckBox;
    cbForn7: TTS_CheckBox;
    cbFunc7: TTS_CheckBox;
    cbClientes8: TTS_CheckBox;
    cbForn8: TTS_CheckBox;
    cbFunc8: TTS_CheckBox;
    cbClientes9: TTS_CheckBox;
    cbForn9: TTS_CheckBox;
    cbFunc9: TTS_CheckBox;
    cbClientes10: TTS_CheckBox;
    cbForn10: TTS_CheckBox;
    cbFunc10: TTS_CheckBox;
    procedure FormCreate(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
  private
    sCamposCliDef,sCamposCliTit,sCamposCliTipo: string;
    sCamposFornDef,sCamposFornTit,sCamposFornTipo: string;
    sCamposFuncDef,sCamposFuncTit,sCamposFuncTipo: string;
  public
    { Public declarations }
  end;

var
  DlgDefinirCamposFav: TDlgDefinirCamposFav;

implementation
uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgDefinirCamposFav.FormCreate(Sender: TObject);
var i:integer;
    sCampo,sTitulo,sTipo: string;
begin
  inherited;
  sCamposCliDef  := DMProjeto.Parametro('CliCamposDefinidos');
  sCamposCliTit  := DMProjeto.Parametro('CliCamposTitulos');
  sCamposCliTipo := DMProjeto.Parametro('CliCamposTipos');

  sCamposFornDef  := DMProjeto.Parametro('FornCamposDefinidos');
  sCamposFornTit  := DMProjeto.Parametro('FornCamposTitulos');
  sCamposFornTipo := DMProjeto.Parametro('FornCamposTipos');

  sCamposFuncDef  := DMProjeto.Parametro('FuncCamposDefinidos');
  sCamposFuncTit  := DMProjeto.Parametro('FuncCamposTitulos');
  sCamposFuncTipo := DMProjeto.Parametro('FuncCamposTipos');

  for i := 1 to ContaStrings(sCamposCliDef,';') do begin
    sCampo  := SeparaStrings(sCamposCliDef,';',i);
    sTitulo := SeparaStrings(sCamposCliTit,';',i);
    sTipo   := SeparaStrings(sCamposCliTipo,';',i);
    if sCampo = '1' then begin
      dfCampo1.text := sTitulo;
      rgTipoCampo1.ItemIndex := StrToInt(sTipo);
      cbClientes1.Checked := true;
    end
    else if sCampo = '2' then begin
      dfCampo2.text := sTitulo;
      rgTipoCampo2.ItemIndex := StrToInt(sTipo);
      cbClientes2.Checked := true;
    end
    else if sCampo = '3' then begin
      dfCampo3.text := sTitulo;
      rgTipoCampo3.ItemIndex := StrToInt(sTipo);
      cbClientes3.Checked := true;
    end
    else if sCampo = '4' then begin
      dfCampo4.text := sTitulo;
      rgTipoCampo4.ItemIndex := StrToInt(sTipo);
      cbClientes4.Checked := true;
    end
    else if sCampo = '5' then begin
      dfCampo5.text := sTitulo;
      rgTipoCampo5.ItemIndex := StrToInt(sTipo);
      cbClientes5.Checked := true;
    end
    else if sCampo = '6' then begin
      dfCampo6.text := sTitulo;
      rgTipoCampo6.ItemIndex := StrToInt(sTipo);
      cbClientes6.Checked := true;
    end
    else if sCampo = '7' then begin
      dfCampo7.text := sTitulo;
      rgTipoCampo7.ItemIndex := StrToInt(sTipo);
      cbClientes7.Checked := true;
    end
    else if sCampo = '8' then begin
      dfCampo8.text := sTitulo;
      rgTipoCampo8.ItemIndex := StrToInt(sTipo);
      cbClientes8.Checked := true;
    end
    else if sCampo = '9' then begin
      dfCampo9.text := sTitulo;
      rgTipoCampo9.ItemIndex := StrToInt(sTipo);
      cbClientes9.Checked := true;
    end
    else if sCampo = '10' then begin
      dfCampo10.text := sTitulo;
      rgTipoCampo10.ItemIndex := StrToInt(sTipo);
      cbClientes10.Checked := true;
    end
  end;
  //
  for i := 0 to ContaStrings(sCamposFornDef,';') do begin
    sCampo  := SeparaStrings(sCamposFornDef,';',i);
    sTitulo := SeparaStrings(sCamposFornTit,';',i);
    sTipo   := SeparaStrings(sCamposFornTipo,';',i);
    if sCampo = '1' then begin
      dfCampo1.text := sTitulo;
      rgTipoCampo1.ItemIndex := StrToInt(sTipo);
      cbForn1.Checked := true;
    end
    else if sCampo = '2' then begin
      dfCampo2.text := sTitulo;
      rgTipoCampo2.ItemIndex := StrToInt(sTipo);
      cbForn2.Checked := true;
    end
    else if sCampo = '3' then begin
      dfCampo3.text := sTitulo;
      rgTipoCampo3.ItemIndex := StrToInt(sTipo);
      cbForn3.Checked := true;
    end
    else if sCampo = '4' then begin
      dfCampo4.text := sTitulo;
      rgTipoCampo4.ItemIndex := StrToInt(sTipo);
      cbForn4.Checked := true;
    end
    else if sCampo = '5' then begin
      dfCampo5.text := sTitulo;
      rgTipoCampo5.ItemIndex := StrToInt(sTipo);
      cbForn5.Checked := true;
    end
    else if sCampo = '6' then begin
      dfCampo6.text := sTitulo;
      rgTipoCampo6.ItemIndex := StrToInt(sTipo);
      cbForn6.Checked := true;
    end
    else if sCampo = '7' then begin
      dfCampo7.text := sTitulo;
      rgTipoCampo7.ItemIndex := StrToInt(sTipo);
      cbForn7.Checked := true;
    end
    else if sCampo = '8' then begin
      dfCampo8.text := sTitulo;
      rgTipoCampo8.ItemIndex := StrToInt(sTipo);
      cbForn8.Checked := true;
    end
    else if sCampo = '9' then begin
      dfCampo9.text := sTitulo;
      rgTipoCampo9.ItemIndex := StrToInt(sTipo);
      cbForn9.Checked := true;
    end
    else if sCampo = '10' then begin
      dfCampo10.text := sTitulo;
      rgTipoCampo10.ItemIndex := StrToInt(sTipo);
      cbForn10.Checked := true;
    end
  end;
  //
  for i := 0 to ContaStrings(sCamposFuncDef,';') do begin
    sCampo  := SeparaStrings(sCamposFuncDef,';',i);
    sTitulo := SeparaStrings(sCamposFuncTit,';',i);
    sTipo   := SeparaStrings(sCamposFuncTipo,';',i);
    if sCampo = '1' then begin
      dfCampo1.text := sTitulo;
      rgTipoCampo1.ItemIndex := StrToInt(sTipo);
      cbFunc1.Checked := true;
    end
    else if sCampo = '2' then begin
      dfCampo2.text := sTitulo;
      rgTipoCampo2.ItemIndex := StrToInt(sTipo);
      cbFunc2.Checked := true;
    end
    else if sCampo = '3' then begin
      dfCampo3.text := sTitulo;
      rgTipoCampo3.ItemIndex := StrToInt(sTipo);
      cbFunc3.Checked := true;
    end
    else if sCampo = '4' then begin
      dfCampo4.text := sTitulo;
      rgTipoCampo4.ItemIndex := StrToInt(sTipo);
      cbFunc4.Checked := true;
    end
    else if sCampo = '5' then begin
      dfCampo5.text := sTitulo;
      rgTipoCampo5.ItemIndex := StrToInt(sTipo);
      cbFunc5.Checked := true;
    end
    else if sCampo = '6' then begin
      dfCampo6.text := sTitulo;
      rgTipoCampo6.ItemIndex := StrToInt(sTipo);
      cbFunc6.Checked := true;
    end
    else if sCampo = '7' then begin
      dfCampo7.text := sTitulo;
      rgTipoCampo7.ItemIndex := StrToInt(sTipo);
      cbFunc7.Checked := true;
    end
    else if sCampo = '8' then begin
      dfCampo8.text := sTitulo;
      rgTipoCampo8.ItemIndex := StrToInt(sTipo);
      cbFunc8.Checked := true;
    end
    else if sCampo = '9' then begin
      dfCampo9.text := sTitulo;
      rgTipoCampo9.ItemIndex := StrToInt(sTipo);
      cbFunc9.Checked := true;
    end
    else if sCampo = '10' then begin
      dfCampo10.text := sTitulo;
      rgTipoCampo10.ItemIndex := StrToInt(sTipo);
      cbFunc10.Checked := true;
    end
  end;
  ShowModal;
end;

procedure TDlgDefinirCamposFav.TS_BitBtn1Click(Sender: TObject);
begin
  inherited;

  sCamposCliDef  := '';
  sCamposCliTit  := '';
  sCamposCliTipo := '';

  sCamposFornDef  := '';
  sCamposFornTit  := '';
  sCamposFornTipo := '';

  sCamposFuncDef  := '';
  sCamposFuncTit  := '';
  sCamposFuncTipo := '';

  if trim(dfCampo1.text) <> '' then begin
    if cbClientes1.checked then begin
      sCamposCliDef  := '1';
      sCamposCliTit  := dfCampo1.text;
      sCamposCliTipo := IntToStr(rgTipoCampo1.itemindex);
    end;
    if cbForn1.checked then begin
      sCamposFornDef  := '1';
      sCamposFornTit  := dfCampo1.text;
      sCamposFornTipo := IntToStr(rgTipoCampo1.itemindex);
    end;
    if cbFunc1.checked then begin
      sCamposFuncDef  := '1';
      sCamposFuncTit  := dfCampo1.text;
      sCamposFuncTipo := IntToStr(rgTipoCampo1.itemindex);
    end;
  end;
  if trim(dfCampo2.text) <> '' then begin
    if cbClientes2.checked then begin
      sCamposCliDef  := sCamposCliDef + ';2';
      sCamposCliTit  := sCamposCliTit + ';' + dfCampo2.text;
      sCamposCliTipo := sCamposCliTipo + ';' + IntToStr(rgTipoCampo2.itemindex);
    end;
    if cbForn2.checked then begin
      sCamposFornDef  := sCamposFornDef + ';2';
      sCamposFornTit  := sCamposFornTit + ';' + dfCampo2.text;
      sCamposFornTipo := sCamposFornTipo + ';' + IntToStr(rgTipoCampo2.itemindex);
    end;
    if cbFunc2.checked then begin
      sCamposFuncDef  := sCamposFuncDef + ';2';
      sCamposFuncTit  := sCamposFuncTit + ';' + dfCampo2.text;
      sCamposFuncTipo := sCamposFuncTipo + ';' + IntToStr(rgTipoCampo2.itemindex);
    end;
  end;
  if trim(dfCampo3.text) <> '' then begin
    if cbClientes3.checked then begin
      sCamposCliDef  := sCamposCliDef + ';3';
      sCamposCliTit  := sCamposCliTit + ';' + dfCampo3.text;
      sCamposCliTipo := sCamposCliTipo + ';' + IntToStr(rgTipoCampo3.itemindex);
    end;
    if cbForn3.checked then begin
      sCamposFornDef  := sCamposFornDef + ';3';
      sCamposFornTit  := sCamposFornTit + ';' + dfCampo3.text;
      sCamposFornTipo := sCamposFornTipo + ';' + IntToStr(rgTipoCampo3.itemindex);
    end;
    if cbFunc3.checked then begin
      sCamposFuncDef  := sCamposFuncDef + ';3';
      sCamposFuncTit  := sCamposFuncTit + ';' + dfCampo3.text;
      sCamposFuncTipo := sCamposFuncTipo + ';' + IntToStr(rgTipoCampo3.itemindex);
    end;
  end;
  if trim(dfCampo4.text) <> '' then begin
    if cbClientes4.checked then begin
      sCamposCliDef  := sCamposCliDef + ';4';
      sCamposCliTit  := sCamposCliTit + ';' + dfCampo4.text;
      sCamposCliTipo := sCamposCliTipo + ';' + IntToStr(rgTipoCampo4.itemindex);
    end;
    if cbForn4.checked then begin
      sCamposFornDef  := sCamposFornDef + ';4';
      sCamposFornTit  := sCamposFornTit + ';' + dfCampo4.text;
      sCamposFornTipo := sCamposFornTipo + ';' + IntToStr(rgTipoCampo4.itemindex);
    end;
    if cbFunc4.checked then begin
      sCamposFuncDef  := sCamposFuncDef + ';4';
      sCamposFuncTit  := sCamposFuncTit + ';' + dfCampo4.text;
      sCamposFuncTipo := sCamposFuncTipo + ';' + IntToStr(rgTipoCampo4.itemindex);
    end;
  end;
  if trim(dfCampo5.text) <> '' then begin
    if cbClientes5.checked then begin
      sCamposCliDef  := sCamposCliDef + ';5';
      sCamposCliTit  := sCamposCliTit + ';' + dfCampo5.text;
      sCamposCliTipo := sCamposCliTipo + ';' + IntToStr(rgTipoCampo5.itemindex);
    end;
    if cbForn5.checked then begin
      sCamposFornDef  := sCamposFornDef + ';5';
      sCamposFornTit  := sCamposFornTit + ';' + dfCampo5.text;
      sCamposFornTipo := sCamposFornTipo + ';' + IntToStr(rgTipoCampo5.itemindex);
    end;
    if cbFunc5.checked then begin
      sCamposFuncDef  := sCamposFuncDef + ';5';
      sCamposFuncTit  := sCamposFuncTit + ';' + dfCampo5.text;
      sCamposFuncTipo := sCamposFuncTipo + ';' + IntToStr(rgTipoCampo5.itemindex);
    end;
  end;
  if trim(dfCampo6.text) <> '' then begin
    if cbClientes6.checked then begin
      sCamposCliDef  := sCamposCliDef + ';6';
      sCamposCliTit  := sCamposCliTit + ';' + dfCampo6.text;
      sCamposCliTipo := sCamposCliTipo + ';' + IntToStr(rgTipoCampo6.itemindex);
    end;
    if cbForn6.checked then begin
      sCamposFornDef  := sCamposFornDef + ';6';
      sCamposFornTit  := sCamposFornTit + ';' + dfCampo6.text;
      sCamposFornTipo := sCamposFornTipo + ';' + IntToStr(rgTipoCampo6.itemindex);
    end;
    if cbFunc6.checked then begin
      sCamposFuncDef  := sCamposFuncDef + ';6';
      sCamposFuncTit  := sCamposFuncTit + ';' + dfCampo6.text;
      sCamposFuncTipo := sCamposFuncTipo + ';' + IntToStr(rgTipoCampo6.itemindex);
    end;
  end;
  if trim(dfCampo7.text) <> '' then begin
    if cbClientes7.checked then begin
      sCamposCliDef  := sCamposCliDef + ';7';
      sCamposCliTit  := sCamposCliTit + ';' + dfCampo7.text;
      sCamposCliTipo := sCamposCliTipo + ';' + IntToStr(rgTipoCampo7.itemindex);
    end;
    if cbForn7.checked then begin
      sCamposFornDef  := sCamposFornDef + ';7';
      sCamposFornTit  := sCamposFornTit + ';' + dfCampo7.text;
      sCamposFornTipo := sCamposFornTipo + ';' + IntToStr(rgTipoCampo7.itemindex);
    end;
    if cbFunc7.checked then begin
      sCamposFuncDef  := sCamposFuncDef + ';7';
      sCamposFuncTit  := sCamposFuncTit + ';' + dfCampo7.text;
      sCamposFuncTipo := sCamposFuncTipo + ';' + IntToStr(rgTipoCampo7.itemindex);
    end;
  end;
  if trim(dfCampo8.text) <> '' then begin
    if cbClientes8.checked then begin
      sCamposCliDef  := sCamposCliDef + ';8';
      sCamposCliTit  := sCamposCliTit + ';' + dfCampo8.text;
      sCamposCliTipo := sCamposCliTipo + ';' + IntToStr(rgTipoCampo8.itemindex);
    end;
    if cbForn8.checked then begin
      sCamposFornDef  := sCamposFornDef + ';8';
      sCamposFornTit  := sCamposFornTit + ';' + dfCampo8.text;
      sCamposFornTipo := sCamposFornTipo + ';' + IntToStr(rgTipoCampo8.itemindex);
    end;
    if cbFunc8.checked then begin
      sCamposFuncDef  := sCamposFuncDef + ';8';
      sCamposFuncTit  := sCamposFuncTit + ';' + dfCampo8.text;
      sCamposFuncTipo := sCamposFuncTipo + ';' + IntToStr(rgTipoCampo8.itemindex);
    end;
  end;
  if trim(dfCampo9.text) <> '' then begin
    if cbClientes9.checked then begin
      sCamposCliDef  := sCamposCliDef + ';9';
      sCamposCliTit  := sCamposCliTit + ';' + dfCampo9.text;
      sCamposCliTipo := sCamposCliTipo + ';' + IntToStr(rgTipoCampo9.itemindex);
    end;
    if cbForn9.checked then begin
      sCamposFornDef  := sCamposFornDef + ';9';
      sCamposFornTit  := sCamposFornTit + ';' + dfCampo9.text;
      sCamposFornTipo := sCamposFornTipo + ';' + IntToStr(rgTipoCampo9.itemindex);
    end;
    if cbFunc9.checked then begin
      sCamposFuncDef  := sCamposFuncDef + ';9';
      sCamposFuncTit  := sCamposFuncTit + ';' + dfCampo9.text;
      sCamposFuncTipo := sCamposFuncTipo + ';' + IntToStr(rgTipoCampo9.itemindex);
    end;
  end;
  if trim(dfCampo10.text) <> '' then begin
    if cbClientes10.checked then begin
      sCamposCliDef  := sCamposCliDef + ';10';
      sCamposCliTit  := sCamposCliTit + ';' + dfCampo10.text;
      sCamposCliTipo := sCamposCliTipo + ';' + IntToStr(rgTipoCampo10.itemindex);
    end;
    if cbForn10.checked then begin
      sCamposFornDef  := sCamposFornDef + ';10';
      sCamposFornTit  := sCamposFornTit + ';' + dfCampo10.text;
      sCamposFornTipo := sCamposFornTipo + ';' + IntToStr(rgTipoCampo10.itemindex);
    end;
    if cbFunc10.checked then begin
      sCamposFuncDef  := sCamposFuncDef + ';2';
      sCamposFuncTit  := sCamposFuncTit + ';' + dfCampo10.text;
      sCamposFuncTipo := sCamposFuncTipo + ';' + IntToStr(rgTipoCampo10.itemindex);
    end;
  end;

  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

  DMProjeto.SetParametro('CliCamposDefinidos',sCamposCliDef);
  DMProjeto.SetParametro('CliCamposTitulos',sCamposCliTit);
  DMProjeto.SetParametro('CliCamposTipos',sCamposCliTipo);

  DMProjeto.SetParametro('FornCamposDefinidos',sCamposFornDef);
  DMProjeto.SetParametro('FornCamposTitulos',sCamposFornTit);
  DMProjeto.SetParametro('FornCamposTipos',sCamposFornTipo);

  DMProjeto.SetParametro('FuncCamposDefinidos',sCamposFuncDef);
  DMProjeto.SetParametro('FuncCamposTitulos',sCamposFuncTit);
  DMProjeto.SetParametro('FuncCamposTipos',sCamposFuncTipo);
  
  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  close;
end;

procedure TDlgDefinirCamposFav.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  close;
end;

end.

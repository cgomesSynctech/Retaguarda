unit Dlg_CamposCustomizaveis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Frm_ModeloCadastros, StdCtrls, Mask, DBCtrls, TS_DBEdit, TS_Label,
  TS_LastDataObject, DlgMsg, Menus, TS_PopupMenu, ExtCtrls,
  TS_Bevel, Buttons, TS_SpeedButton, TS_BitBtn, TS_DBCheckBox,
  db, dxExEdtr, dxEdLib, dxDBELib, dxCntner, dxEditor,
  FormsComponent, TS_Image, dxfLabel, TS_MaxPanel, teCtrls,
  TS_EffectsPanel, TS_DBComboBox, Variants;

type
  TDlgCamposCustomizaveis = class(TFrmModeloCadastros)
    lblCampo1: TTS_Label;
    lblCampo2: TTS_Label;
    lblCampo3: TTS_Label;
    lblCampo4: TTS_Label;
    lblCampo5: TTS_Label;
    lblCampo6: TTS_Label;
    lblCampo7: TTS_Label;
    lblCampo8: TTS_Label;
    lblCampo9: TTS_Label;
    lblCampo10: TTS_Label;
    dfCampo1: TTS_DBEdit;
    dfCampo2: TTS_DBEdit;
    dfCampo3: TTS_DBEdit;
    dfCampo4: TTS_DBEdit;
    dfCampo5: TTS_DBEdit;
    dfCampo6: TTS_DBEdit;
    dfCampo7: TTS_DBEdit;
    dfCampo8: TTS_DBEdit;
    dfCampo9: TTS_DBEdit;
    dfCampo10: TTS_DBEdit;
    cbCampo1: TTS_DBCheckBox;
    cbCampo2: TTS_DBCheckBox;
    cbCampo3: TTS_DBCheckBox;
    cbCampo4: TTS_DBCheckBox;
    cbCampo5: TTS_DBCheckBox;
    cbCampo6: TTS_DBCheckBox;
    cbCampo7: TTS_DBCheckBox;
    cbCampo8: TTS_DBCheckBox;
    cbCampo9: TTS_DBCheckBox;
    cbCampo10: TTS_DBCheckBox;
    cmbCampo1: TTS_DBComboBox;
    cmbCampo2: TTS_DBComboBox;
    cmbCampo3: TTS_DBComboBox;
    cmbCampo4: TTS_DBComboBox;
    cmbCampo5: TTS_DBComboBox;
    cmbCampo6: TTS_DBComboBox;
    cmbCampo7: TTS_DBComboBox;
    cmbCampo8: TTS_DBComboBox;
    cmbCampo9: TTS_DBComboBox;
    cmbCampo10: TTS_DBComboBox;
    procedure btLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    sCamposDef,sCamposTit,sCamposTipo: string;
    procedure LerCamposDefinidos;
    procedure PopulaCampo(obj:TTS_DBComboBox;nCampo:integer);
  public
    { Public declarations }
  end;

var
  DlgCamposCustomizaveis: TDlgCamposCustomizaveis;

implementation
uses DM_Itens, Dlg_DefinirCampos, DM_Projeto, funcoes;

{$R *.DFM}

procedure TDlgCamposCustomizaveis.LerCamposDefinidos;
var i:integer;
    sCampo,sTitulo,sTipo: string;
begin

  sCamposDef  := DMProjeto.Parametro('ItensCamposDefinidos');
  sCamposTit  := DMProjeto.Parametro('ItensCamposTitulos');
  sCamposTipo := DMProjeto.Parametro('ItensCamposTipos');
  lblCampo1.visible := false;
  dfCampo1.visible := false;
  cbCampo1.visible := false;
  cmbCampo1.visible := false;
  lblCampo2.visible := false;
  dfCampo2.visible := false;
  cbCampo2.visible := false;
  cmbCampo2.visible := false;
  lblCampo3.visible := false;
  dfCampo3.visible := false;
  cbCampo3.visible := false;
  cmbCampo3.visible := false;
  lblCampo4.visible := false;
  dfCampo4.visible := false;
  cbCampo4.visible := false;
  cmbCampo4.visible := false;
  lblCampo5.visible := false;
  dfCampo5.visible := false;
  cbCampo5.visible := false;
  cmbCampo5.visible := false;
  lblCampo6.visible := false;
  dfCampo6.visible := false;
  cbCampo6.visible := false;
  cmbCampo6.visible := false;
  lblCampo7.visible := false;
  dfCampo7.visible := false;
  cbCampo7.visible := false;
  cmbCampo7.visible := false;
  lblCampo8.visible := false;
  dfCampo8.visible := false;
  cbCampo8.visible := false;
  cmbCampo8.visible := false;
  lblCampo9.visible := false;
  dfCampo9.visible := false;
  cbCampo9.visible := false;
  cmbCampo9.visible := false;
  lblCampo10.visible := false;
  dfCampo10.visible := false;
  cbCampo10.visible := false;
  cmbCampo10.visible := false;
  for i := 1 to ContaStrings(sCamposDef,';') do begin
    sCampo  := SeparaStrings(sCamposDef,';',i);
    sTitulo := SeparaStrings(sCamposTit,';',i);
    sTipo   := SeparaStrings(sCamposTipo,';',i);
    if sCampo = '1' then begin
      if sTipo = '0' then begin
        lblCampo1.visible := true;
        lblCampo1.caption := sTitulo;
        dfCampo1.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo1.visible := true;
        lblCampo1.visible := true;
        lblCampo1.caption := sTitulo;
        PopulaCampo(cmbCampo1,1);
      end
      else if sTipo = '2' then begin
        cbCampo1.visible := true;
        cbCampo1.caption := sTitulo;
        if DMItens.C_TabelaCampo01.IsNull or (DMItens.C_TabelaCampo01.value <> 'S') then begin
          DMItens.C_Tabela.edit;
          DMItens.C_TabelaCampo01.value := 'N';
          DMItens.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '2' then begin
      if sTipo = '0' then begin
        lblCampo2.visible := true;
        lblCampo2.caption := sTitulo;
        dfCampo2.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo2.visible := true;
        lblCampo2.visible := true;
        lblCampo2.caption := sTitulo;
        PopulaCampo(cmbCampo2,2);
      end
      else if sTipo = '2' then begin
        cbCampo2.visible := true;
        cbCampo2.caption := sTitulo;
        if DMItens.C_TabelaCampo02.IsNull or (DMItens.C_TabelaCampo02.value <> 'S') then begin
          DMItens.C_Tabela.edit;
          DMItens.C_TabelaCampo02.value := 'N';
          DMItens.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '3' then begin
      if sTipo = '0' then begin
        lblCampo3.visible := true;
        lblCampo3.caption := sTitulo;
        dfCampo3.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo3.visible := true;
        lblCampo3.visible := true;
        lblCampo3.caption := sTitulo;
        PopulaCampo(cmbCampo3,3);
      end
      else if sTipo = '2' then begin
        cbCampo3.visible := true;
        cbCampo3.caption := sTitulo;
        if DMItens.C_TabelaCampo03.IsNull or (DMItens.C_TabelaCampo03.value <> 'S') then begin
          DMItens.C_Tabela.edit;
          DMItens.C_TabelaCampo03.value := 'N';
          DMItens.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '4' then begin
      if sTipo = '0' then begin
        lblCampo4.visible := true;
        lblCampo4.caption := sTitulo;
        dfCampo4.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo4.visible := true;
        lblCampo4.visible := true;
        lblCampo4.caption := sTitulo;
        PopulaCampo(cmbCampo4,4);
      end
      else if sTipo = '2' then begin
        cbCampo4.visible := true;
        cbCampo4.caption := sTitulo;
        if DMItens.C_TabelaCampo04.IsNull or (DMItens.C_TabelaCampo04.value <> 'S') then begin
          DMItens.C_Tabela.edit;
          DMItens.C_TabelaCampo04.value := 'N';
          DMItens.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '5' then begin
      if sTipo = '0' then begin
        lblCampo5.visible := true;
        lblCampo5.caption := sTitulo;
        dfCampo5.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo5.visible := true;
        lblCampo5.visible := true;
        lblCampo5.caption := sTitulo;
        PopulaCampo(cmbCampo5,5);
      end
      else if sTipo = '2' then begin
        cbCampo5.visible := true;
        cbCampo5.caption := sTitulo;
        if DMItens.C_TabelaCampo05.IsNull or (DMItens.C_TabelaCampo05.value <> 'S') then begin
          DMItens.C_Tabela.edit;
          DMItens.C_TabelaCampo05.value := 'N';
          DMItens.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '6' then begin
      if sTipo = '0' then begin
        lblCampo6.visible := true;
        lblCampo6.caption := sTitulo;
        dfCampo6.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo6.visible := true;
        lblCampo6.visible := true;
        lblCampo6.caption := sTitulo;
        PopulaCampo(cmbCampo6,6);
      end
      else if sTipo = '2' then begin
        cbCampo6.visible := true;
        cbCampo6.caption := sTitulo;
        if DMItens.C_TabelaCampo06.IsNull or (DMItens.C_TabelaCampo06.value <> 'S') then begin
          DMItens.C_Tabela.edit;
          DMItens.C_TabelaCampo06.value := 'N';
          DMItens.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '7' then begin
      if sTipo = '0' then begin
        lblCampo7.visible := true;
        lblCampo7.caption := sTitulo;
        dfCampo7.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo7.visible := true;
        lblCampo7.visible := true;
        lblCampo7.caption := sTitulo;
        PopulaCampo(cmbCampo7,7);
      end
      else if sTipo = '2' then begin
        cbCampo7.visible := true;
        cbCampo7.caption := sTitulo;
        if DMItens.C_TabelaCampo07.IsNull or (DMItens.C_TabelaCampo07.value <> 'S') then begin
          DMItens.C_Tabela.edit;
          DMItens.C_TabelaCampo07.value := 'N';
          DMItens.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '8' then begin
      if sTipo = '0' then begin
        lblCampo8.visible := true;
        lblCampo8.caption := sTitulo;
        dfCampo8.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo8.visible := true;
        lblCampo8.visible := true;
        lblCampo8.caption := sTitulo;
        PopulaCampo(cmbCampo8,8);
      end
      else if sTipo = '2' then begin
        cbCampo8.visible := true;
        cbCampo8.caption := sTitulo;
        if DMItens.C_TabelaCampo08.IsNull or (DMItens.C_TabelaCampo08.value <> 'S') then begin
          DMItens.C_Tabela.edit;
          DMItens.C_TabelaCampo08.value := 'N';
          DMItens.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '9' then begin
      if sTipo = '0' then begin
        lblCampo9.visible := true;
        lblCampo9.caption := sTitulo;
        dfCampo9.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo9.visible := true;
        lblCampo9.visible := true;
        lblCampo9.caption := sTitulo;
        PopulaCampo(cmbCampo9,9);
      end
      else if sTipo = '2' then begin
        cbCampo9.visible := true;
        cbCampo9.caption := sTitulo;
        if DMItens.C_TabelaCampo09.IsNull or (DMItens.C_TabelaCampo09.value <> 'S') then begin
          DMItens.C_Tabela.edit;
          DMItens.C_TabelaCampo09.value := 'N';
          DMItens.C_Tabela.UpdateRecord;
        end;
      end;
    end
    else if sCampo = '10' then begin
      if sTipo = '0' then begin
        lblCampo10.visible := true;
        lblCampo10.caption := sTitulo;
        dfCampo10.visible := true;
      end
      else if sTipo = '1' then begin
        cmbCampo10.visible := true;
        lblCampo10.visible := true;
        lblCampo10.caption := sTitulo;
        PopulaCampo(cmbCampo10,10);
      end
      else if sTipo = '2' then begin
        cbCampo10.visible := true;
        cbCampo10.caption := sTitulo;
        if DMItens.C_TabelaCampo10.IsNull or (DMItens.C_TabelaCampo10.value <> 'S') then begin
          DMItens.C_Tabela.edit;
          DMItens.C_TabelaCampo10.value := 'N';
          DMItens.C_Tabela.UpdateRecord;
        end;
      end;
    end;
  end;
end;

procedure TDlgCamposCustomizaveis.btLimparClick(Sender: TObject);
begin
  inherited;
  DlgDefinirCampos := TDlgDefinirCampos.create(self);
  DlgDefinirCampos.free;
  
  LerCamposDefinidos;
end;

procedure TDlgCamposCustomizaveis.FormCreate(Sender: TObject);
begin
  inherited;
  LerCamposDefinidos
end;

procedure TDlgCamposCustomizaveis.btGravarClick(Sender: TObject);
begin
  inherited;
  if DMItens.C_Tabela.State in [dsEdit,dsInsert] then
    DMItens.C_Tabela.UpdateRecord;
  close;
end;

procedure TDlgCamposCustomizaveis.PopulaCampo;
var xCampo: string;
begin
  xCampo := 'campo'+AdicionarStr(IntToStr(nCampo),'0',2);
  TTS_DBComboBox(obj).Items.Clear;
  DMProjeto.Q_SQL.close;
  DMProjeto.Q_SQL.SQL.Text := 'select distinct '+xCampo+' from itens where '+xCampo+' is not null order by 1';
  DMProjeto.Q_SQL.open;

  while not DMProjeto.Q_SQL.eof do begin
    TTS_DBComboBox(obj).Items.add(DMProjeto.Q_SQL.fieldbyname(xCampo).asstring);
    DMProjeto.Q_SQL.next;
  end;
end;

end.

unit Dlg_MetaVR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, TS_ScrollBox, ExtCtrls, TS_Shape,
  FormsComponent, Placemnt, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label, TS_Image,
  TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, TS_Memo, DB, IBCustomDataSet,
  IBQuery, DM_Saidas, MMSystem;

type
  TDlgMetaVR = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    TS_Shape11: TTS_Shape;
    TS_Label1: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Shape2: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape5: TTS_Shape;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Shape6: TTS_Shape;
    lbValorDia: TTS_Label;
    lbValorMes: TTS_Label;
    lbFatDia: TTS_Label;
    lbFatMes: TTS_Label;
    lbSaldoDia: TTS_Label;
    lbSaldoMes: TTS_Label;
    TS_Panel2: TTS_Panel;
    TS_Label8: TTS_Label;
    lbEmpMes: TTS_Label;
    memoMes: TTS_Memo;
    TS_Panel3: TTS_Panel;
    TS_Label9: TTS_Label;
    lbEmpDia: TTS_Label;
    memoDia: TTS_Memo;
    lbVendedor: TTS_Label;
    Q_Metas: TIBQuery;
    Q_MetasVENDEDOR: TIntegerField;
    Q_MetasNOME: TIBStringField;
    Q_MetasMETAPERIODO: TIBBCDField;
    Q_MetasMETADIARIA: TIBBCDField;
    Q_MetasPEREMP: TIBBCDField;
    Q_MetasDIAEMP: TIBBCDField;
    Q_MetasDATAFINAL: TDateField;
    Q_MetasDATAINICIAL: TDateField;
    Q_MetasFATDIA: TFloatField;
    Q_MetasFATMES: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DM: TDMSaidas;
  end;

var
  DlgMetaVR: TDlgMetaVR;

implementation

{$R *.dfm}
uses DM_Projeto;
procedure TDlgMetaVR.FormShow(Sender: TObject);
begin
  inherited;
  Q_Metas.Close;
  Q_Metas.Open;
  if Q_Metas.RecordCount <= 0 then begin
    DlgMsg.ShowMsg(50,['Não existe meta de faturamento cadastrada para a data atual.']);
    Close;
  end;
  Q_Metas.First;
  while not Q_Metas.EOF do begin
    if Q_MetasVENDEDOR.Value = DM.C_TabelaVENDEDOR.Value  then begin
      lbVendedor.Caption := Q_MetasNOME.Value;
      lbValorDia.Caption := FormatCurr('###,###,##0.00',Q_MetasMETADIARIA.Value);
      lbValorMes.Caption := FormatCurr('###,###,##0.00',Q_MetasMETAPERIODO.Value);
      lbFatDia.Caption := FormatCurr('###,###,##0.00',Q_MetasFATDIA.Value);
      lbFatMes.Caption := FormatCurr('###,###,##0.00',Q_MetasFATMES.Value);
      lbSaldoDia.Caption := FormatCurr('###,###,##0.00',Q_MetasMETADIARIA.Value - Q_MetasFATDIA.Value);
      lbSaldoMes.Caption := FormatCurr('###,###,##0.00',Q_MetasMETAPERIODO.Value - Q_MetasFATMES.value);
    end
    else begin
      if Q_MetasFATDIA.Value >= Q_MetasMETADIARIA.Value then
        memoDIA.Lines.Add(Q_MetasNOME.Value + ' já atingiu a meta diária.');
      if Q_MetasFATMES.Value >= Q_MetasMETAPERIODO.Value then
        memoMES.Lines.Add(Q_MetasNOME.Value + ' já atingiu a meta do período.');
    end;
    Q_Metas.Next;
  end;
  DMProjeto.Q_SQL.Close;
  DMProjeto.Q_SQL.SQL.Text := 'select sum(total) as totdia from saidas where data = current_date and situacao = ''N'' and tipopadrao = 1';
  DMProjeto.Q_SQL.Open;
  if DMProjeto.Q_SQL.FieldByName('totdia').AsCurrency >= Q_MetasDIAEMP.Value then begin
    lbEmpDia.Caption := 'A Empresa já atingiu a meta diária.';
    lbEmpDia.Font.Color := clWindowText;
  end
  else begin
    lbEmpDia.Caption := 'A Empresa ainda não atingiu a meta diária';
    lbEmpDia.Font.Color := clRed;
  end;
  DMProjeto.Q_SQL2.Close;
  DMProjeto.Q_SQL2.SQL.Text := 'select sum(total) as totmes from saidas where data between :datai and :dataf and situacao = ''N'' and tipopadrao = 1';
  DMProjeto.Q_SQL2.ParamByName('datai').AsDateTime := Q_MetasDATAINICIAL.AsDateTime;
  DMProjeto.Q_SQL2.ParamByName('dataf').AsDateTime := Q_MetasDATAFINAL.AsDateTime;
  DMProjeto.Q_SQL2.Open;
  if DMProjeto.Q_SQL2.FieldByName('totmes').AsCurrency >= Q_MetasPEREMP.Value then begin
    lbEmpMes.Caption := 'A Empresa já atingiu a meta do período.';
    lbEmpMes.Font.Color := clWindowText;
  end
  else begin
    lbEmpMes.Caption := 'A Empresa ainda não atingiu a meta do período.';
    lbEmpMes.Font.Color := clRed;
  end;
  // Outra parte
  if Q_Metas.Locate('VENDEDOR',DM.C_TabelaVENDEDOR.Value,[]) then begin
    // sons
    if DMProjeto.Parametro('MetasSons') = 'G' then begin
      if (Q_MetasFATDIA.Value >= Q_MetasMETADIARIA.Value) and (Q_MetasFATMES.Value >= Q_MetasMETAPERIODO.Value) then begin
        SndPlaySound(Pchar(DMProjeto.SonsPath + 'mboth.wav'), SND_ASYNC);
      end
      else begin
        if (Q_MetasFATDIA.Value >= Q_MetasMETADIARIA.Value) then begin
          SndPlaySound(Pchar(DMProjeto.SonsPath + 'mdia.wav'), SND_ASYNC);
        end
        else begin
          if (Q_MetasFATMES.Value >= Q_MetasMETAPERIODO.Value)  then begin
            SndPlaySound(Pchar(DMProjeto.SonsPath + 'mper.wav'), SND_ASYNC);
          end
          else SndPlaySound(Pchar(DMProjeto.SonsPath + 'mnone.wav'), SND_ASYNC);
        end;
      end;
    end;
    if DMProjeto.Parametro('MetasSons') = 'S' then begin
      if (Q_MetasFATDIA.Value >= Q_MetasMETADIARIA.Value) and (Q_MetasFATMES.Value >= Q_MetasMETAPERIODO.Value) then begin
        SndPlaySound(Pchar(DMProjeto.SonsPath + 'mtboth.wav'), SND_ASYNC);
      end
      else begin
        if (Q_MetasFATDIA.Value >= Q_MetasMETADIARIA.Value) then begin
          SndPlaySound(Pchar(DMProjeto.SonsPath + 'mtdia.wav'), SND_ASYNC);
        end
        else begin
          if (Q_MetasFATMES.Value >= Q_MetasMETAPERIODO.Value)  then begin
            SndPlaySound(Pchar(DMProjeto.SonsPath + 'mtper.wav'), SND_ASYNC);
          end
          else SndPlaySound(Pchar(DMProjeto.SonsPath + 'mtnone.wav'), SND_ASYNC);
        end;
      end;
    end;
  end
  else begin
    lbVendedor.Caption := 'Meta de faturamento não cadastrada para esse vendedor.';
    lbValorDia.Caption := '';
    lbValorMes.Caption := '';
    lbFatDia.Caption := '';
    lbFatMes.Caption := '';
    lbSaldoDia.Caption := '';
    lbSaldoMes.Caption := '';
  end;
end;

procedure TDlgMetaVR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DM := nil;
end;

procedure TDlgMetaVR.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  ModalResult := -1;
end;

procedure TDlgMetaVR.btGravarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

end.

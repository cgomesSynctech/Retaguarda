unit Dlg_Calendario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Spin, Menus,
  Db, DBTables, Provider, DBClient, Buttons, TS_Edit,
  TS_ScrollBox, TS_Panel, IBCustomDataSet, IBQuery,
  Mask, DBCtrls, TS_DBEdit, TS_Label, TS_DBLookupComboBox, TS_DBComboBox,
  TS_PageControl, TS_SpeedButton, TS_Image, FORM_PADRAO,
  DlgMsg, TS_BitBtn, TS_LastDataObject, dxCntner, dxEditor,
  dxEdLib, dxDBELib, FRM_MODELOCADASTROS, FormsComponent, dxfLabel,
  TS_MaxPanel, TS_Bevel, teCtrls, TS_EffectsPanel, TS_PopupMenu, BTOdeum,
  Placemnt;

type
  Dia_Type = record
    Nome		:string;
    QuantCompromissos	:integer;
    Selecionado		:boolean;
    Compromissos	:string;
    DataExtenso		:string;
  end;

  TDlgCalendario = class(TFrmModeloCadastros)
    C_Compromissos: TClientDataSet;
    Q_CompromissosProvider: TDataSetProvider;
    Q_Compromissos: TIBQuery;
    C_AtualizaDia: TClientDataSet;
    Q_AtualizaDiaProvider: TDataSetProvider;
    Q_AtualizaDia: TIBQuery;
    lbDiaDaSemana: TTS_Label;
    lbData: TTS_Label;
    Img_Calendario: TTS_Image;
    lbDia: TTS_Label;
    lbHoje: TTS_Label;
    PC_Calendario: TTS_PageControl;
    TS_Calendario: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Lbl_Mes: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Mes12: TLabel;
    Mes11: TLabel;
    Mes10: TLabel;
    Mes09: TLabel;
    Mes08: TLabel;
    Mes07: TLabel;
    Mes06: TLabel;
    Mes05: TLabel;
    Mes04: TLabel;
    Mes03: TLabel;
    Mes02: TLabel;
    Mes01: TLabel;
    Shape_Focus: TShape;
    Pnl_Calendario: TPanel;
    Hoje: TShape;
    Selecao: TShape;
    Shape14: TShape;
    Shape13: TShape;
    Dia0101: TLabel;
    Dia0102: TLabel;
    Dia0103: TLabel;
    Dia0104: TLabel;
    Dia0105: TLabel;
    Dia0106: TLabel;
    Dia0107: TLabel;
    Dia0108: TLabel;
    Dia0109: TLabel;
    Dia0110: TLabel;
    Dia0111: TLabel;
    Dia0112: TLabel;
    Dia0113: TLabel;
    Dia0114: TLabel;
    Dia0115: TLabel;
    Dia0116: TLabel;
    Dia0117: TLabel;
    Dia0118: TLabel;
    Dia0119: TLabel;
    Dia0120: TLabel;
    Dia0121: TLabel;
    Dia0122: TLabel;
    Dia0123: TLabel;
    Dia0124: TLabel;
    Dia0125: TLabel;
    Dia0126: TLabel;
    Dia0127: TLabel;
    Dia0128: TLabel;
    Dia0129: TLabel;
    Dia0130: TLabel;
    Dia0131: TLabel;
    Dia0201: TLabel;
    Dia0202: TLabel;
    Dia0203: TLabel;
    Dia0204: TLabel;
    Dia0205: TLabel;
    Dia0206: TLabel;
    Dia0207: TLabel;
    Dia0208: TLabel;
    Dia0209: TLabel;
    Dia0210: TLabel;
    Dia0211: TLabel;
    Dia0212: TLabel;
    Dia0213: TLabel;
    Dia0214: TLabel;
    Dia0215: TLabel;
    Dia0216: TLabel;
    Dia0217: TLabel;
    Dia0218: TLabel;
    Dia0219: TLabel;
    Dia0220: TLabel;
    Dia0221: TLabel;
    Dia0222: TLabel;
    Dia0223: TLabel;
    Dia0224: TLabel;
    Dia0225: TLabel;
    Dia0226: TLabel;
    Dia0227: TLabel;
    Dia0228: TLabel;
    Dia0229: TLabel;
    Dia0301: TLabel;
    Dia0302: TLabel;
    Dia0303: TLabel;
    Dia0304: TLabel;
    Dia0305: TLabel;
    Dia0306: TLabel;
    Dia0307: TLabel;
    Dia0308: TLabel;
    Dia0309: TLabel;
    Dia0310: TLabel;
    Dia0311: TLabel;
    Dia0312: TLabel;
    Dia0313: TLabel;
    Dia0314: TLabel;
    Dia0315: TLabel;
    Dia0316: TLabel;
    Dia0317: TLabel;
    Dia0318: TLabel;
    Dia0319: TLabel;
    Dia0320: TLabel;
    Dia0321: TLabel;
    Dia0322: TLabel;
    Dia0323: TLabel;
    Dia0324: TLabel;
    Dia0325: TLabel;
    Dia0326: TLabel;
    Dia0327: TLabel;
    Dia0328: TLabel;
    Dia0329: TLabel;
    Dia0330: TLabel;
    Dia0331: TLabel;
    Dia0401: TLabel;
    Dia0402: TLabel;
    Dia0403: TLabel;
    Dia0404: TLabel;
    Dia0405: TLabel;
    Dia0406: TLabel;
    Dia0407: TLabel;
    Dia0408: TLabel;
    Dia0409: TLabel;
    Dia0410: TLabel;
    Dia0411: TLabel;
    Dia0412: TLabel;
    Dia0413: TLabel;
    Dia0414: TLabel;
    Dia0415: TLabel;
    Dia0416: TLabel;
    Dia0417: TLabel;
    Dia0418: TLabel;
    Dia0419: TLabel;
    Dia0420: TLabel;
    Dia0421: TLabel;
    Dia0422: TLabel;
    Dia0423: TLabel;
    Dia0424: TLabel;
    Dia0425: TLabel;
    Dia0426: TLabel;
    Dia0427: TLabel;
    Dia0428: TLabel;
    Dia0429: TLabel;
    Dia0430: TLabel;
    Dia0501: TLabel;
    Dia0502: TLabel;
    Dia0503: TLabel;
    Dia0504: TLabel;
    Dia0505: TLabel;
    Dia0506: TLabel;
    Dia0507: TLabel;
    Dia0508: TLabel;
    Dia0509: TLabel;
    Dia0510: TLabel;
    Dia0511: TLabel;
    Dia0512: TLabel;
    Dia0513: TLabel;
    Dia0514: TLabel;
    Dia0515: TLabel;
    Dia0516: TLabel;
    Dia0517: TLabel;
    Dia0518: TLabel;
    Dia0519: TLabel;
    Dia0520: TLabel;
    Dia0521: TLabel;
    Dia0522: TLabel;
    Dia0523: TLabel;
    Dia0524: TLabel;
    Dia0525: TLabel;
    Dia0526: TLabel;
    Dia0527: TLabel;
    Dia0528: TLabel;
    Dia0529: TLabel;
    Dia0530: TLabel;
    Dia0531: TLabel;
    Dia0601: TLabel;
    Dia0602: TLabel;
    Dia0603: TLabel;
    Dia0604: TLabel;
    Dia0605: TLabel;
    Dia0606: TLabel;
    Dia0607: TLabel;
    Dia0608: TLabel;
    Dia0609: TLabel;
    Dia0610: TLabel;
    Dia0611: TLabel;
    Dia0612: TLabel;
    Dia0613: TLabel;
    Dia0614: TLabel;
    Dia0615: TLabel;
    Dia0616: TLabel;
    Dia0617: TLabel;
    Dia0618: TLabel;
    Dia0619: TLabel;
    Dia0620: TLabel;
    Dia0621: TLabel;
    Dia0622: TLabel;
    Dia0623: TLabel;
    Dia0624: TLabel;
    Dia0625: TLabel;
    Dia0626: TLabel;
    Dia0627: TLabel;
    Dia0628: TLabel;
    Dia0629: TLabel;
    Dia0630: TLabel;
    Dia0701: TLabel;
    Dia0702: TLabel;
    Dia0703: TLabel;
    Dia0704: TLabel;
    Dia0705: TLabel;
    Dia0706: TLabel;
    Dia0707: TLabel;
    Dia0708: TLabel;
    Dia0709: TLabel;
    Dia0710: TLabel;
    Dia0711: TLabel;
    Dia0712: TLabel;
    Dia0713: TLabel;
    Dia0714: TLabel;
    Dia0715: TLabel;
    Dia0716: TLabel;
    Dia0717: TLabel;
    Dia0718: TLabel;
    Dia0719: TLabel;
    Dia0720: TLabel;
    Dia0721: TLabel;
    Dia0722: TLabel;
    Dia0723: TLabel;
    Dia0724: TLabel;
    Dia0725: TLabel;
    Dia0726: TLabel;
    Dia0727: TLabel;
    Dia0728: TLabel;
    Dia0729: TLabel;
    Dia0730: TLabel;
    Dia0731: TLabel;
    Dia0801: TLabel;
    Dia0802: TLabel;
    Dia0803: TLabel;
    Dia0804: TLabel;
    Dia0805: TLabel;
    Dia0806: TLabel;
    Dia0807: TLabel;
    Dia0808: TLabel;
    Dia0809: TLabel;
    Dia0810: TLabel;
    Dia0811: TLabel;
    Dia0812: TLabel;
    Dia0813: TLabel;
    Dia0814: TLabel;
    Dia0815: TLabel;
    Dia0816: TLabel;
    Dia0817: TLabel;
    Dia0818: TLabel;
    Dia0819: TLabel;
    Dia0820: TLabel;
    Dia0821: TLabel;
    Dia0822: TLabel;
    Dia0823: TLabel;
    Dia0824: TLabel;
    Dia0825: TLabel;
    Dia0826: TLabel;
    Dia0827: TLabel;
    Dia0828: TLabel;
    Dia0829: TLabel;
    Dia0830: TLabel;
    Dia0831: TLabel;
    Dia0901: TLabel;
    Dia0902: TLabel;
    Dia0903: TLabel;
    Dia0904: TLabel;
    Dia0905: TLabel;
    Dia0906: TLabel;
    Dia0907: TLabel;
    Dia0908: TLabel;
    Dia0909: TLabel;
    Dia0910: TLabel;
    Dia0911: TLabel;
    Dia0912: TLabel;
    Dia0913: TLabel;
    Dia0914: TLabel;
    Dia0915: TLabel;
    Dia0916: TLabel;
    Dia0917: TLabel;
    Dia0918: TLabel;
    Dia0919: TLabel;
    Dia0920: TLabel;
    Dia0921: TLabel;
    Dia0922: TLabel;
    Dia0923: TLabel;
    Dia0924: TLabel;
    Dia0925: TLabel;
    Dia0926: TLabel;
    Dia0927: TLabel;
    Dia0928: TLabel;
    Dia0929: TLabel;
    Dia0930: TLabel;
    Dia1001: TLabel;
    Dia1002: TLabel;
    Dia1003: TLabel;
    Dia1004: TLabel;
    Dia1005: TLabel;
    Dia1006: TLabel;
    Dia1007: TLabel;
    Dia1008: TLabel;
    Dia1009: TLabel;
    Dia1010: TLabel;
    Dia1011: TLabel;
    Dia1012: TLabel;
    Dia1013: TLabel;
    Dia1014: TLabel;
    Dia1015: TLabel;
    Dia1016: TLabel;
    Dia1017: TLabel;
    Dia1018: TLabel;
    Dia1019: TLabel;
    Dia1020: TLabel;
    Dia1021: TLabel;
    Dia1022: TLabel;
    Dia1023: TLabel;
    Dia1024: TLabel;
    Dia1025: TLabel;
    Dia1026: TLabel;
    Dia1027: TLabel;
    Dia1028: TLabel;
    Dia1029: TLabel;
    Dia1030: TLabel;
    Dia1031: TLabel;
    Dia1101: TLabel;
    Dia1102: TLabel;
    Dia1103: TLabel;
    Dia1104: TLabel;
    Dia1105: TLabel;
    Dia1106: TLabel;
    Dia1107: TLabel;
    Dia1108: TLabel;
    Dia1109: TLabel;
    Dia1110: TLabel;
    Dia1111: TLabel;
    Dia1112: TLabel;
    Dia1113: TLabel;
    Dia1114: TLabel;
    Dia1115: TLabel;
    Dia1116: TLabel;
    Dia1117: TLabel;
    Dia1118: TLabel;
    Dia1119: TLabel;
    Dia1120: TLabel;
    Dia1121: TLabel;
    Dia1122: TLabel;
    Dia1123: TLabel;
    Dia1124: TLabel;
    Dia1125: TLabel;
    Dia1126: TLabel;
    Dia1127: TLabel;
    Dia1128: TLabel;
    Dia1129: TLabel;
    Dia1130: TLabel;
    Dia1201: TLabel;
    Dia1202: TLabel;
    Dia1203: TLabel;
    Dia1204: TLabel;
    Dia1205: TLabel;
    Dia1206: TLabel;
    Dia1207: TLabel;
    Dia1208: TLabel;
    Dia1209: TLabel;
    Dia1210: TLabel;
    Dia1211: TLabel;
    Dia1212: TLabel;
    Dia1213: TLabel;
    Dia1214: TLabel;
    Dia1215: TLabel;
    Dia1216: TLabel;
    Dia1217: TLabel;
    Dia1218: TLabel;
    Dia1219: TLabel;
    Dia1220: TLabel;
    Dia1221: TLabel;
    Dia1222: TLabel;
    Dia1223: TLabel;
    Dia1224: TLabel;
    Dia1225: TLabel;
    Dia1226: TLabel;
    Dia1227: TLabel;
    Dia1228: TLabel;
    Dia1229: TLabel;
    Dia1230: TLabel;
    Dia1231: TLabel;
    Shape2: TShape;
    Shape1: TShape;
    Shape4: TShape;
    Shape6: TShape;
    Shape8: TShape;
    Shape10: TShape;
    Shape12: TShape;
    Shape9: TShape;
    Shape11: TShape;
    Shape7: TShape;
    Shape5: TShape;
    Shape3: TShape;
    Status: TAnimate;
    lbAno: TStaticText;
    btAnoAnterior: TTS_SpeedButton;
    btAnoPosterior: TTS_SpeedButton;
    lbUsuDestino: TStaticText;
    btFechar: TTS_SpeedButton;
    procedure btAnoAnteriorClick(Sender: TObject);
    procedure btAnoPosteriorClick(Sender: TObject);
    procedure Dia0101MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Dia0101Click(Sender: TObject);
    procedure PC_CalendarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PC_CalendarioEnter(Sender: TObject);
    procedure PC_CalendarioExit(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure Visualizartodososcompromissosdodia1Click(Sender: TObject);
    procedure Dia0201DblClick(Sender: TObject);
    procedure lbHojeClick(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure MostraDiaSelecionadoNoCalendario(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    Dias :array [1..12, 1..31] of Dia_Type;
    meses: array[1..12] of integer;
    cores: array[1..6] of TColor;

    DiaSelecionado, MesSelecionado, AnoSelecionado, MaiorCompromisso, DiaSelecao, MesSelecao, UsuarioDestino: integer;
    sNomeUsuDestino: string;
    procedure OrganizaFevereiro( Ano: integer );
    procedure AtualizaDia( Dia, Mes: integer );
    procedure Selecionar( Dia, Mes: integer; valor: boolean );
    procedure MudaStatus(espera: boolean);
  public
    { Public declarations }
    procedure AtualizaAno( d_Ano, d_Mes, d_Dia, Usuario: integer );
    procedure MudaValoresDoCalendario( d_Dia, d_Mes, d_Ano, Usuario: integer );
  end;

var
  DlgCalendario	:TDlgCalendario;

implementation

uses DM_Projeto, Frm_Compromissos, Dlg_CalendarioMes, MDI_Projeto, DM_Agenda;

{$R *.DFM}

procedure TDlgCalendario.AtualizaAno( d_Ano, d_Mes, d_Dia, Usuario: integer );
var dia, mes: integer;
    d, m, a: word;
    data_aux: string;
begin
  MaiorCompromisso := 0;
  AnoSelecionado := d_Ano;
  MesSelecionado := d_Mes;
  DiaSelecionado := d_Dia;
  UsuarioDestino := Usuario;
  OrganizaFevereiro(d_Ano);
  // Muda o caption do ano
  lbAno.Caption := 'Ano: ' + IntToStr(AnoSelecionado);
  // Atualiza o caption do label HOJE
  lbHoje.Caption := 'Hoje: ' + FormatDateTime('ddddd', Date);
  // Atualiza o usuário destino
  lbUsuDestino.Caption := ' '+sNomeUsuDestino;
  with C_Compromissos do begin
    Close;
    CommandText := 'Select c.COMPROMISSO, c.DATA, c.USUDESTINO, ca.DESCRICAO As CATEGORIA'+
    ' From COMPROMISSOS c Left Join CATEGORIAS ca On ca.CATEGORIA=c.CATEGORIA ' +
    ' Where c.UsuDestino = ' + IntToStr(Usuario) +
    ' And ca.Descricao <> ' + QuotedStr(DMProjeto.sNomeReservado) + // normal
    ' And c.DESATIVADO <> ' + QuotedStr('S') +
    ' Order By c.HORARIO';
    Open;
    for mes:=1 to 12 do begin
      for dia:=1 to meses[mes] do begin
        data_aux := FormatDateTime('ddddd', EncodeDate(AnoSelecionado, mes, dia));
        Filter := 'DATA = ' + QuotedStr(data_aux);
        Filtered := True;
        Dias[mes][dia].Nome := Format('Dia%2.2d%2.2d', [mes,dia]);
        Dias[mes][dia].QuantCompromissos := RecordCount;
        Dias[mes][dia].Selecionado := False;
        Dias[mes][dia].Compromissos := '';
        Dias[mes][dia].DataExtenso := DMAgenda.DataporExtenso( StrToDate(data_aux) );
        TLabel(Self.FindComponent(Dias[mes][dia].Nome)).Font.Color := cores[2];
        if RecordCount > MaiorCompromisso then
          MaiorCompromisso := RecordCount;
        Filtered := False;
        Filter := '';
      end;
    end;
    Close;
    Filtered := False;
    Filter := '';
  end;
  for mes:=1 to 12 do
    for dia:=1 to meses[mes] do
      TLabel(FindComponent(Dias[mes][dia].Nome)).Color
      := DMAgenda.CorQuant(Dias[mes][dia].QuantCompromissos, MaiorCompromisso);
  // Atualiza hoje
  DecodeDate(Date, a, m, d);
  if AnoSelecionado = a then begin
    lbDia.Caption := IntToStr(d);
    lbDiaDaSemana.Caption := DMAgenda.DiaDaSemana( DayOfWeek( Date ) );
    lbData.Caption := DMAgenda.DataPorExtenso( Date );
    Hoje.Top := TLabel(FindComponent(Format('Dia%2.2d%2.2d', [m, d]))).Top-1;
    Hoje.Left := TLabel(FindComponent(Format('Dia%2.2d%2.2d', [m, d]))).Left-1;
    Hoje.Visible := True;
  end else
    Hoje.Visible := False;
end;

procedure TDlgCalendario.MudaValoresDoCalendario( d_Dia, d_Mes, d_Ano, Usuario: integer );
begin
  UsuarioDestino := Usuario;
  DiaSelecionado := d_Dia;
  MesSelecionado := d_Mes;
  AnoSelecionado := d_Ano;
end;

procedure TDlgCalendario.AtualizaDia( Dia, Mes: integer );
var data_aux, data_aux2, compromissos, horario: string;
    i, QuantCompromissos: integer;
    CompromissoDoDia: boolean;
begin
  CompromissoDoDia := False;
  data_aux := FormatDateTime('mm/dd/yyyy', EncodeDate(AnoSelecionado, Mes, Dia));
  data_aux2 := FormatDateTime('ddddd', EncodeDate(AnoSelecionado, Mes, Dia));
  with C_AtualizaDia do begin
    Close;
    CommandText := 'Select c.COMPROMISSO, c.ASSUNTO, '+
    ' c.HORARIO, c.HORARIO_FINAL, ca.DESCRICAO As CATEGORIA '+
    ' From COMPROMISSOS c Left Join CATEGORIAS ca On ca.CATEGORIA = c.CATEGORIA '+
    ' Where c.UsuDestino = ' + IntToStr(UsuarioDestino) +
    ' And ca.Descricao <> ' + QuotedStr(DMProjeto.sNomeReservado) + // normal
    ' And c.DATA = ' + QuotedStr(data_aux)+
    ' And c.DESATIVADO <> ' + QuotedStr('S') +
    ' Order By c.HORARIO';
    Open;
    compromissos := '';
    QuantCompromissos := 0;
    for i:=1 to RecordCount do begin
      horario := DMAgenda.IntegerToHora(FieldByName('horario').AsInteger)+' às '+
        DMAgenda.IntegerToHora(FieldByName('horario_final').AsInteger);
      if (FieldByName('categoria').AsString = DMProjeto.sNomeReservado) then
        AppendStr(compromissos, horario + '- (RESERVADO) ' + FieldByName('assunto').AsString + #13)
      else AppendStr(compromissos, horario + '- ' + FieldByName('assunto').AsString + #13);
      Inc(QuantCompromissos);
      Next;
    end;
    Dias[Mes][Dia].Compromissos := compromissos;
    Dias[Mes][Dia].QuantCompromissos := QuantCompromissos;
    if QuantCompromissos > MaiorCompromisso then
      MaiorCompromisso := QuantCompromissos;
    TLabel(Self.FindComponent(Dias[Mes][Dia].Nome)).Color := DMAgenda.CorQuant(QuantCompromissos, MaiorCompromisso);
    Close;
  end;
end;

procedure TDlgCalendario.Selecionar( Dia, Mes: integer; valor: boolean );
begin
  Dias[Mes,Dia].Selecionado := valor;
  if valor then // se estiver selecionado
    with Dias[Mes,Dia] do begin
      if (QuantCompromissos > 0) then begin
        TLabel(FindComponent(Nome)).Font.Style := TLabel(FindComponent(Nome)).Font.Style + [fsBold];
        TLabel(FindComponent(Nome)).Font.Color := cores[1];
        TLabel(FindComponent(Nome)).Color := DMAgenda.CorQuant(QuantCompromissos, MaiorCompromisso);
      end else begin
        TLabel(FindComponent(Nome)).Font.Style := TLabel(FindComponent(Nome)).Font.Style - [fsBold];
        TLabel(FindComponent(Nome)).Font.Color := cores[2];
        TLabel(FindComponent(Nome)).Color := cores[1];
      end;
      lbDia.Caption := IntToStr(Dia);
      lbDiaDaSemana.Caption := DMAgenda.DiaDaSemana( DayOfWeek( EncodeDate(AnoSelecionado, Mes, Dia) ) );
      lbData.Caption := DMAgenda.DataPorExtenso( EncodeDate(AnoSelecionado, Mes, Dia) );
    end
  else begin
    TLabel(FindComponent(Dias[Mes,Dia].Nome)).Font.Style := TLabel(FindComponent(Dias[Mes,Dia].Nome)).Font.Style - [fsBold];
    TLabel(FindComponent(Dias[Mes,Dia].Nome)).Font.Color := cores[2];
    TLabel(FindComponent(Dias[Mes,Dia].Nome)).Color := DMAgenda.CorQuant(Dias[Mes,Dia].QuantCompromissos, MaiorCompromisso);
  end;
end;

procedure TDlgCalendario.OrganizaFevereiro( Ano: integer );
begin
  if (Ano mod 4=0) then begin
    meses[2] := 29;
    TLabel( FindComponent('Dia0229')).Visible := True;
  end else begin
    meses[2] := 28;
    TLabel( FindComponent('Dia0229')).Visible := False;
  end;
end;

procedure TDlgCalendario.btAnoAnteriorClick(Sender: TObject);
begin
  Dec(AnoSelecionado);
  MudaStatus(true);
  AtualizaAno( AnoSelecionado, MesSelecionado, DiaSelecionado, UsuarioDestino );
  MudaStatus(false);
end;

procedure TDlgCalendario.btAnoPosteriorClick(Sender: TObject);
begin
  Inc(AnoSelecionado);
  MudaStatus(true);
  AtualizaAno( AnoSelecionado, MesSelecionado, DiaSelecionado, UsuarioDestino );
  MudaStatus(false);
end;

procedure TDlgCalendario.Dia0101MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var Dia, Mes: integer;
begin
  if (Sender is TLabel) then begin
    // Muda a cor da fonte se não for o dia selecionado
    if (MesSelecao <> MesSelecionado) and (DiaSelecao <> DiaSelecionado) then
      TLabel(FindComponent(Format('Dia%2.2d%2.2d', [MesSelecao, DiaSelecao]))).Font.Color := cores[2];
    Dia := StrToInt( Trim( TLabel(Sender).Caption ) );
    Mes := StrToInt( copy( TLabel(Sender).Name, 4, 2 ) );
    DiaSelecao := Dia;
    MesSelecao := Mes;
    Selecao.Top := TLabel(Sender).Top-1;
    Selecao.Left := TLabel(Sender).Left-1;
    if (Dias[Mes][Dia].QuantCompromissos > 0) and (Dias[Mes][Dia].Compromissos = '') then
      AtualizaDia( Dia, Mes );
    TLabel(Sender).Hint := Dias[Mes][Dia].Compromissos;
    TLabel(Sender).ShowHint := True;
    // Atualiza os captions do dia selecionado pelo mouse
    lbDia.Caption := IntToStr(Dia);
    lbDiaDaSemana.Caption := DMAgenda.DiaDaSemana( DayOfWeek( EncodeDate(AnoSelecionado, Mes, Dia) ) );
    lbData.Caption := DMAgenda.DataPorExtenso( EncodeDate(AnoSelecionado, Mes, Dia) );
  end;
end;

procedure TDlgCalendario.Dia0101Click(Sender: TObject);
begin
  PC_Calendario.SetFocus;
  Selecionar( DiaSelecionado, MesSelecionado, false );
  DiaSelecionado := StrToInt( Trim( TLabel(Sender).Caption ) );
  MesSelecionado := StrToInt( copy( TLabel(Sender).Name, 4, 2 ) );
  Selecionar( DiaSelecionado, MesSelecionado, true );
end;

procedure TDlgCalendario.MudaStatus(espera: boolean);
begin
  Pnl_Calendario.Visible := not espera;
  pnNavigator.Visible := not espera;
  Status.Visible := espera;
  Status.Active := espera;
  Application.ProcessMessages;
end;

procedure TDlgCalendario.PC_CalendarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then begin
    if Shift = [ssCtrl, ssShift, ssAlt] then begin
      //
    end else
      with DMProjeto do begin
        SetParametrosForm( ['DlgCalendario', DiaSelecionado, MesSelecionado, AnoSelecionado, UsuarioDestino] );
        CriarForm('DLGDESCRICAOCOMPROMISSOS', Self, true);
      end;
  end
  else begin
    Selecionar( DiaSelecionado, MesSelecionado, false );
    if key = VK_HOME then begin // Home
      if (Shift = [ssCtrl]) then begin
        MesSelecionado := 1;
        DiaSelecionado := 1;
      end
      else
        DiaSelecionado := 1;
    end;
    if key = VK_END then begin // End
      if (Shift = [ssCtrl]) then begin
        MesSelecionado := 12;
        DiaSelecionado := meses[MesSelecionado];
      end
      else
        DiaSelecionado := meses[MesSelecionado];
    end;
    if key = VK_RIGHT then begin // Direita
      if DiaSelecionado >= meses[MesSelecionado] then
        DiaSelecionado := 1
      else
        Inc(DiaSelecionado);
    end;
    if key = VK_LEFT then begin // Esquerda
      if DiaSelecionado <= 1 then
        DiaSelecionado := meses[MesSelecionado]
      else
        Dec(DiaSelecionado);
    end;
    if key = VK_UP then begin // Cima
      if MesSelecionado <=1 then
        MesSelecionado := 12
      else begin
        Dec(MesSelecionado);
        if DiaSelecionado > meses[MesSelecionado] then
          DiaSelecionado := meses[MesSelecionado];
      end;
    end;
    if key = VK_DOWN then begin // Baixo
      if MesSelecionado >= 12 then
        MesSelecionado := 1
      else begin
        Inc(MesSelecionado);
        if DiaSelecionado > meses[MesSelecionado] then
          DiaSelecionado := meses[MesSelecionado];
      end;
    end;
    Selecionar( DiaSelecionado, MesSelecionado, true );
  end;
end;

procedure TDlgCalendario.PC_CalendarioEnter(Sender: TObject);
begin
  Shape_Focus.Visible := True;
end;

procedure TDlgCalendario.PC_CalendarioExit(Sender: TObject);
begin
  Shape_Focus.Visible := False;
end;

procedure TDlgCalendario.btFecharCadastroClick(Sender: TObject);
begin
  Close;
end;

procedure TDlgCalendario.Visualizartodososcompromissosdodia1Click(
  Sender: TObject);
begin
  with DMProjeto do begin
    SetParametrosForm( [DiaSelecionado, MesSelecionado, AnoSelecionado, UsuarioDestino] );
    CriarForm('DLGDESCRICAOCOMPROMISSOS', Self, true);
  end;
end;

procedure TDlgCalendario.Dia0201DblClick(Sender: TObject);
begin
  with DMProjeto do begin
    SetParametrosForm( ['DlgCalendario', DiaSelecionado, MesSelecionado, AnoSelecionado, UsuarioDestino] );
    CriarForm('DLGDESCRICAOCOMPROMISSOS', Self, true);
  end;
end;

procedure TDlgCalendario.lbHojeClick(Sender: TObject);
var d_ano, d_mes, d_dia: word;
begin
  Selecionar( DiaSelecionado,  MesSelecionado, false ); 
  DecodeDate(Date, d_ano, d_mes, d_dia);
  DiaSelecionado := d_dia;
  MesSelecionado := d_mes;
  if (AnoSelecionado <> d_ano) then begin
    MudaStatus(true);
    AtualizaAno( d_ano, d_mes, d_dia, UsuarioDestino );
    MudaStatus(false);
  end;
  Selecionar( DiaSelecionado,  MesSelecionado, true );
end;

procedure TDlgCalendario.FormsComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
	Meses[1] := 31;
  Meses[2] := 29;
  Meses[3] := 31;
  Meses[4] := 30;
  Meses[5] := 31;
  Meses[6] := 30;
  Meses[7] := 31;
  Meses[8] := 31;
  Meses[9] := 30;
  Meses[10] := 31;
  Meses[11] := 30;
  Meses[12] := 31;

  Cores[1] := $00FF8000;  // Cor Habilitada
  Cores[2] := $00F7F4F2;    // Cor Desabilitada
  Cores[3] := clGreen;    // Cor Selecionada pelo mouse
  Cores[4] := clRed;      // Cor Agendada
  Cores[5] := $00F0EDE6;   // Cor dos sábados e domingos
  Cores[6] := clGreen;      // Cor do dia de hoje

  DiaSelecionado := DMProjeto.GetParametrosForm(0);
  MesSelecionado := DMProjeto.GetParametrosForm(1);
  AnoSelecionado := DMProjeto.GetParametrosForm(2);
  UsuarioDestino := DMProjeto.GetParametrosForm(3);
  sNomeUsuDestino := DMProjeto.GetParametrosForm(4);
  // Muda o Dia da Selecao
  DiaSelecao := 1;
  MesSelecao := 1;
  // Muda a cor da seleção
  Selecao.Pen.Color := cores[3];
  // Muda a cor do dia de hoje
  Hoje.Pen.Color := cores[6];
  // Informações do MgHint

  MudaStatus(true);
  AtualizaAno( AnoSelecionado, MesSelecionado, DiaSelecionado, UsuarioDestino );
  Selecionar( DiaSelecionado, MesSelecionado, true );
  MudaStatus(false);
end;

procedure TDlgCalendario.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  if LastDataObject.TableName='COMPROMISSOS' then begin
    MudaStatus(true);
    AtualizaAno( AnoSelecionado, MesSelecionado, DiaSelecionado, UsuarioDestino );
    Selecionar( DiaSelecionado, MesSelecionado, true );
    MudaStatus(false);
  end;
end;

procedure TDlgCalendario.MostraDiaSelecionadoNoCalendario(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var dDataSelecionada: TDateTime;
begin
  dDataSelecionada := EncodeDate(AnoSelecionado,MesSelecionado,DiaSelecionado);
  lbDia.Caption := IntToStr(DiaSelecionado);
  lbDiaDaSemana.Caption := DMAgenda.DiaDaSemana( DayOfWeek( dDataSelecionada ) );
  lbData.Caption := DMAgenda.DataPorExtenso( dDataSelecionada );
end;

procedure TDlgCalendario.btFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.

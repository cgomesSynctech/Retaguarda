unit Frm_Checks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, dxCntner, dxEditor, dxEdLib, dxDBELib,
  TS_DBButtonEdit, TS_DBEditFavorecido, Placemnt, BTOdeum, FormComponent,
  ImgList, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls,
  TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar,
  dxTLClms, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, TS_DBMaskEdit, TS_DBEdit,
  TS_DBEditDate, TS_DBEditNumber, TS_DBImageEdit, DateUtils, DB, ZReport,
  ZRCtrls, dxDBTLCl, dxGrClms;

type
  TFrmChecks = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    dfCliente: TTS_DBEditFavorecido;
    TS_Label2: TTS_Label;
    dfBanco: TTS_DBEdit;
    TS_Label3: TTS_Label;
    TS_DBMaskEdit1: TTS_DBMaskEdit;
    TS_Label4: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    TS_Label5: TTS_Label;
    TS_DBMaskEdit2: TTS_DBMaskEdit;
    TS_Label6: TTS_Label;
    TS_DBEdit2: TTS_DBEdit;
    TS_Label7: TTS_Label;
    TS_DBEditNumber1: TTS_DBEditNumber;
    TS_Label8: TTS_Label;
    TS_DBEditDate1: TTS_DBEditDate;
    TS_Label9: TTS_Label;
    TS_DBImageEdit1: TTS_DBImageEdit;
    TS_Label10: TTS_Label;
    RelatorioCheck: TZReport;
    RelatorioCheckHeader: TZRBand;
    RelatorioCheckDetail: TZRBand;
    ZRLabel1: TZRLabel;
    ZRLabel2: TZRLabel;
    lbCodEstacao: TZRLabel;
    ZRLabel3: TZRLabel;
    ZRSystemLabel1: TZRSystemLabel;
    ZRLabel4: TZRLabel;
    ZRSystemLabel2: TZRSystemLabel;
    ZRLabel5: TZRLabel;
    ZRLabel6: TZRLabel;
    ZRLabel7: TZRLabel;
    zrvNOME: TZRField;
    zrvBANCO: TZRField;
    zrvCHEQUEINI: TZRField;
    zrvDVINI: TZRField;
    zrvCHEQUEFIM: TZRField;
    zrvDVFIM: TZRField;
    zrvVALORCHEQUEINI: TZRField;
    zrvDATACHEQUEINI: TZRField;
    zrvCONSULTA: TZRField;
    zrvDATACONSULTA: TZRField;
    zrvHORACONSULTA: TZRField;
    zrvNOMEBANCO: TZRField;
    zrvSTATUSBANCO: TZRField;
    zrvNOMERF: TZRField;
    zrvDATARF: TZRField;
    zrvSITUACAOCPF: TZRField;
    zrvREG02: TZRField;
    zrvR02MSG: TZRField;
    zrvREG04: TZRField;
    zrvR04QTD: TZRField;
    zrvR04DATAANTIGA: TZRField;
    zrvR04DATARECENTE: TZRField;
    zrvR04MODALIDADE: TZRField;
    zrvR04VALOR: TZRField;
    zrvR04ORIGEM: TZRField;
    zrvR04LOJA: TZRField;
    zrvREG06: TZRField;
    zrvR06MSG: TZRField;
    zrvREG08: TZRField;
    zrvR08DATARECENTE: TZRField;
    zrvR08MODALIDADE: TZRField;
    zrvR08AVALISTA: TZRField;
    zrvR08VALOR: TZRField;
    zrvR08CONTRATO: TZRField;
    zrvR08ORIGEM: TZRField;
    zrvREG10: TZRField;
    zrvR10TOTAL: TZRField;
    zrvR10DATAANTIGA: TZRField;
    zrvR10DATARECENTE: TZRField;
    zrvREG12: TZRField;
    zrvR12MSG: TZRField;
    zrvREG14: TZRField;
    zrvR14QUANTIDADE: TZRField;
    zrvR14DATARECENTE: TZRField;
    zrvR14BANCO: TZRField;
    zrvR14BANCONOME: TZRField;
    zrvR14AGENCIA: TZRField;
    zrvR14LOJA: TZRField;
    zrvREG16: TZRField;
    zrvR16MSG: TZRField;
    zrvREG18: TZRField;
    zrvR18QUANTIDADE: TZRField;
    zrvR18DATARECENTE: TZRField;
    zrvR18BANCO: TZRField;
    zrvR18AGENCIA: TZRField;
    zrvR18BANCONOME: TZRField;
    zrvREG20: TZRField;
    zrvR20MSG: TZRField;
    zrvREG22: TZRField;
    zrvR22BANCO: TZRField;
    zrvR22AGENCIA: TZRField;
    zrvR22CONTA: TZRField;
    zrvR22CHEQUEINI: TZRField;
    zrvR22CHEQUEFIM: TZRField;
    zrvR22MOTIVO: TZRField;
    zrvR22DATA: TZRField;
    zrvR22HORA: TZRField;
    zrvR22FONTE: TZRField;
    zrvREG24: TZRField;
    zrvR24MSG: TZRField;
    zrvREG26: TZRField;
    zrvR26BANCO: TZRField;
    zrvR26AGENCIA: TZRField;
    zrvR26CONTA: TZRField;
    zrvR26CHEQUEINI: TZRField;
    zrvR26CHEQUEFIM: TZRField;
    zrvR26MOTIVO: TZRField;
    zrvR26DATA: TZRField;
    zrvR26FONTE: TZRField;
    zrvREG28: TZRField;
    zrvR28MSG: TZRField;
    zrvCPF_CNPJ: TZRField;
    zrvPESSOA_FJ: TZRField;
    ZRLabel8: TZRLabel;
    ZRLabel9: TZRLabel;
    ZRLabel10: TZRLabel;
    ZRLabel11: TZRLabel;
    ZRLabel12: TZRLabel;
    ZRLabel13: TZRLabel;
    ZRLabel14: TZRLabel;
    ZRLabel15: TZRLabel;
    ZRLabel16: TZRLabel;
    ZRLabel17: TZRLabel;
    ZRLabel18: TZRLabel;
    ZRLabel19: TZRLabel;
    ZRLabel20: TZRLabel;
    ZRLabel21: TZRLabel;
    ZRLabel22: TZRLabel;
    ZRLabel23: TZRLabel;
    lbConsulta: TZRLabel;
    ZRLabel25: TZRLabel;
    ZRLabel26: TZRLabel;
    ZRLabel27: TZRLabel;
    ZRLabel28: TZRLabel;
    ZRLabel29: TZRLabel;
    ZRLabel30: TZRLabel;
    ZRLabel31: TZRLabel;
    ZRLabel32: TZRLabel;
    ZRLabel33: TZRLabel;
    lbStatusBanco: TZRLabel;
    ZRLabel35: TZRLabel;
    RelatorioCheckChild: TZRBand;
    ZRLabel37: TZRLabel;
    ZRLabel39: TZRLabel;
    ZRLabel41: TZRLabel;
    lbSitCPF: TZRLabel;
    ZRLabel40: TZRLabel;
    ZRLabel38: TZRLabel;
    ZRLabel36: TZRLabel;
    ZRLabel43: TZRLabel;
    BANDAREG02: TZRBand;
    ZRLabel45: TZRLabel;
    ZRLabel46: TZRLabel;
    ZRLabel44: TZRLabel;
    ZRLabel47: TZRLabel;
    BANDAREG04: TZRBand;
    ZRLabel48: TZRLabel;
    ZRLabel49: TZRLabel;
    ZRLabel51: TZRLabel;
    ZRLabel53: TZRLabel;
    ZRLabel55: TZRLabel;
    ZRLabel57: TZRLabel;
    ZRLabel50: TZRLabel;
    ZRLabel52: TZRLabel;
    ZRLabel54: TZRLabel;
    ZRLabel56: TZRLabel;
    ZRLabel58: TZRLabel;
    ZRLabel59: TZRLabel;
    BANDAREG06: TZRBand;
    ZRLabel60: TZRLabel;
    ZRLabel61: TZRLabel;
    ZRLabel62: TZRLabel;
    ZRLabel63: TZRLabel;
    BANDAREG08: TZRBand;
    ZRLabel64: TZRLabel;
    ZRLabel65: TZRLabel;
    ZRLabel66: TZRLabel;
    ZRLabel67: TZRLabel;
    ZRLabel68: TZRLabel;
    ZRLabel69: TZRLabel;
    ZRLabel70: TZRLabel;
    ZRLabel71: TZRLabel;
    ZRLabel72: TZRLabel;
    ZRLabel73: TZRLabel;
    ZRLabel74: TZRLabel;
    ZRLabel75: TZRLabel;
    ZRLabel76: TZRLabel;
    ZRLabel77: TZRLabel;
    BANDAREG10: TZRBand;
    ZRLabel78: TZRLabel;
    ZRLabel79: TZRLabel;
    ZRLabel80: TZRLabel;
    ZRLabel81: TZRLabel;
    ZRLabel82: TZRLabel;
    ZRLabel83: TZRLabel;
    ZRLabel84: TZRLabel;
    ZRLabel85: TZRLabel;
    BANDAREG12: TZRBand;
    ZRLabel86: TZRLabel;
    ZRLabel87: TZRLabel;
    ZRLabel88: TZRLabel;
    ZRLabel89: TZRLabel;
    BANDAREG14: TZRBand;
    ZRLabel90: TZRLabel;
    ZRLabel91: TZRLabel;
    ZRLabel92: TZRLabel;
    ZRLabel93: TZRLabel;
    ZRLabel94: TZRLabel;
    ZRLabel95: TZRLabel;
    ZRLabel96: TZRLabel;
    ZRLabel97: TZRLabel;
    ZRLabel98: TZRLabel;
    ZRLabel99: TZRLabel;
    ZRLabel100: TZRLabel;
    ZRLabel101: TZRLabel;
    ZRLabel102: TZRLabel;
    ZRLabel103: TZRLabel;
    BANDAREG16: TZRBand;
    ZRLabel104: TZRLabel;
    ZRLabel105: TZRLabel;
    ZRLabel106: TZRLabel;
    ZRLabel107: TZRLabel;
    BANDAREG18: TZRBand;
    ZRLabel108: TZRLabel;
    ZRLabel109: TZRLabel;
    ZRLabel110: TZRLabel;
    ZRLabel111: TZRLabel;
    ZRLabel112: TZRLabel;
    ZRLabel113: TZRLabel;
    ZRLabel114: TZRLabel;
    ZRLabel115: TZRLabel;
    ZRLabel116: TZRLabel;
    ZRLabel117: TZRLabel;
    ZRLabel118: TZRLabel;
    ZRLabel119: TZRLabel;
    ZRLabel120: TZRLabel;
    ZRLabel121: TZRLabel;
    BANDAREG20: TZRBand;
    ZRLabel122: TZRLabel;
    ZRLabel123: TZRLabel;
    ZRLabel124: TZRLabel;
    ZRLabel125: TZRLabel;
    BANDAREG22: TZRBand;
    ZRLabel126: TZRLabel;
    ZRLabel127: TZRLabel;
    ZRLabel128: TZRLabel;
    ZRLabel129: TZRLabel;
    ZRLabel130: TZRLabel;
    ZRLabel131: TZRLabel;
    ZRLabel132: TZRLabel;
    ZRLabel133: TZRLabel;
    ZRLabel134: TZRLabel;
    ZRLabel135: TZRLabel;
    ZRLabel136: TZRLabel;
    ZRLabel137: TZRLabel;
    ZRLabel138: TZRLabel;
    ZRLabel139: TZRLabel;
    ZRLabel140: TZRLabel;
    ZRLabel141: TZRLabel;
    ZRLabel142: TZRLabel;
    ZRLabel143: TZRLabel;
    ZRLabel144: TZRLabel;
    ZRLabel145: TZRLabel;
    BANDAREG24: TZRBand;
    ZRLabel146: TZRLabel;
    ZRLabel147: TZRLabel;
    ZRLabel148: TZRLabel;
    ZRLabel149: TZRLabel;
    BANDAREG26: TZRBand;
    ZRLabel150: TZRLabel;
    ZRLabel151: TZRLabel;
    ZRLabel152: TZRLabel;
    ZRLabel153: TZRLabel;
    ZRLabel154: TZRLabel;
    ZRLabel155: TZRLabel;
    ZRLabel156: TZRLabel;
    ZRLabel157: TZRLabel;
    ZRLabel158: TZRLabel;
    ZRLabel159: TZRLabel;
    ZRLabel160: TZRLabel;
    ZRLabel161: TZRLabel;
    ZRLabel162: TZRLabel;
    ZRLabel163: TZRLabel;
    ZRLabel164: TZRLabel;
    ZRLabel165: TZRLabel;
    ZRLabel166: TZRLabel;
    ZRLabel167: TZRLabel;
    BANDAREG28: TZRBand;
    ZRLabel168: TZRLabel;
    ZRLabel169: TZRLabel;
    ZRLabel170: TZRLabel;
    ZRLabel171: TZRLabel;
    GridCHECKEX: TdxDBGridMaskColumn;
    GridBANCO: TdxDBGridMaskColumn;
    GridCHEQUEINI: TdxDBGridMaskColumn;
    GridDVINI: TdxDBGridMaskColumn;
    GridCHEQUEFIM: TdxDBGridMaskColumn;
    GridDVFIM: TdxDBGridMaskColumn;
    GridVALORCHEQUEINI: TdxDBGridCurrencyColumn;
    GridDATACHEQUEINI: TdxDBGridDateColumn;
    GridNOME: TdxDBGridMaskColumn;
    ZRLabel24: TZRLabel;
    lbMsgGeral1: TZRLabel;
    lbMsgGeral2: TZRLabel;
    TS_Label11: TTS_Label;
    dfCPF: TTS_DBMaskEdit;
    zrvCPF: TZRField;
    procedure btGravarClick(Sender: TObject);
    procedure MudaEstado(est:string);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbConsultaBeforePrint(Sender: TObject; var DoPrint: Boolean);
    procedure lbStatusBancoBeforePrint(Sender: TObject;
      var DoPrint: Boolean);
    procedure lbSitCPFBeforePrint(Sender: TObject; var DoPrint: Boolean);
    procedure RelatorioCheckBeforePrint(Sender: TObject;
      var DoPrint: Boolean);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure dfClienteSelecionou(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure dfCPFEnter(Sender: TObject);
    procedure dfCPFExit(Sender: TObject);
  private
    { Private declarations }
    Estado, tiporeg:string;
    bSucesso: boolean;
    inicio: integer;
  public
    { Public declarations }
  end;

var
  FrmChecks: TFrmChecks;
  Arquivo: TextFile;

implementation

{$R *.dfm}
uses DM_Projeto, DM_Checks;
procedure TFrmChecks.btGravarClick(Sender: TObject);
var cpf_cnpj, pessoa, banco, chequeini, chequefim, valor,
    data, direq, diresp, pdv, estacao, filler, linha, msgerro: string;
    i,segundos,id:integer;
    Hora1,Hora2:TDateTime;
begin
  if DMProjeto.Parametro('CheckExpress') <> 'S' then begin
    DlgMsg.ShowMsg(50,['Sistema não está configurado para o Check Express.']);
    Exit;
  end;
  cpf_cnpj := Trim(DMChecks.C_TabelaCPF.AsString);
  if cpf_cnpj = '' then begin
    DlgMsg.ShowMsg(50,['Faltou informar o CPF/CNPJ!']);
    Exit;
  end;
  if length(trim(cpf_cnpj)) > 11 then pessoa := 'J' else pessoa := 'F';
  while length(cpf_cnpj) < 15 do cpf_cnpj := '0' + cpf_cnpj;
  banco := DMChecks.C_TabelaBanco.AsString;
  while length(banco) < 3 do banco := '0' + banco;
  if banco = '000' then begin
    DlgMsg.ShowMsg(50,['Número do banco incorreto.']);
    exit;
  end;
  chequeini := DMChecks.C_TabelaChequeIni.AsString + DMChecks.C_TabelaDVIni.AsString;
  while length(chequeini) < 7 do chequeini := '0' + chequeini;
  if chequeini = '0000000' then begin
    DlgMsg.ShowMsg(50,['Número do cheque inicial incorreto.']);
    Exit;
  end;
  chequefim := DMChecks.C_TabelaChequeFim.AsString + DMChecks.C_TabelaDVFim.AsString;
  while length(chequefim) < 7 do chequefim := '0' + chequefim;
  if chequefim = '0000000' then begin
    DlgMsg.ShowMsg(50,['Número do cheque final incorreto.']);
    Exit;
  end;
  valor := FormatFloat('0000000000000.00',DMChecks.C_TabelaValorChequeIni.AsCurrency);
  Delete(valor,Pos(',',valor),1);
  if valor = '000000000000000' then begin
    DlgMsg.ShowMsg(50,['Valor do cheque inicial incorreto.']);
    exit;
  end;
  DMChecks.Q_Sql.Close;
  DMChecks.Q_Sql.Sql.Text := 'select numeroecf from pdvs where maquina = ''' + DMProjeto.Maquina + '''';
  DMChecks.Q_Sql.Open;
  if DMChecks.Q_Sql.RecordCount > 0 then pdv := DMChecks.Q_SQL.FieldByName('numeroecf').AsString
  else begin
    DlgMsg.ShowMsg(50,['PDV não cadastrado!']);
    Exit;
  end;
  data := FormatDateTime('ddmmyyyy',DMChecks.C_tabelaDataChequeIni.AsDateTime);
  estacao := DMProjeto.Parametro('EstacaoCheck');
  while length(estacao) < 6 do estacao := estacao + 'X';
  filler := '';
  while length(filler) < 32 do filler := filler + '0';
  try
    segundos := StrToInt(DMProjeto.Parametro('TimeOutCheck'));
  except
    DlgMsg.ShowMsg(50,['Tempo de timeout do sistema definido incorretamente.']);
    Exit;
  end;
  direq := DMProjeto.Parametro('diretoriocheck') + 'in';
  diresp := DMProjeto.Parametro('diretoriocheck') + 'out';
  SetCurrentDir(diresp);
  DeleteFile('Cons'+pdv+'.out');
  SetCurrentDir(direq);
  AssignFile(Arquivo, 'Cons'+pdv+'.in');
  Rewrite(Arquivo);
  Write(Arquivo,'LI21'+estacao+pessoa+cpf_cnpj+banco+chequeini+chequefim+valor+data+DMChecks.C_TabelaConsulta.AsString+filler);
  CloseFile(Arquivo);
  SetCurrentDir(diresp);
  Hora1 := Time;
  Hora2 := Time;
  bSucesso := False;
  MudaEstado('Consulta');
  While (SecondsBetween(Hora2,Hora1) <= segundos) and (bSucesso = False) do begin
    Application.ProcessMessages;
    if FileExists('Cons'+pdv+'.out') then begin
      bSucesso := True;
      AssignFile(Arquivo,'Cons'+pdv+'.out');
      Reset(Arquivo);
      Readln(Arquivo,linha);
      CloseFile(Arquivo);
      if Copy(linha,1,3) = 'SEC' then begin
        if Copy(linha,4,3) = '000' then msgerro := 'NAO HA ERRO';
        if Copy(linha,4,3) = '001' then msgerro := 'CLIENTE NAO CADASTRADO';
        if Copy(linha,4,3) = '002' then msgerro := 'EXCESSO DE CONEXOES ATIVAS';
        if Copy(linha,4,3) = '003' then msgerro := 'NAO AUTORIZADO, IMPEDIDO';
        if Copy(linha,4,3) = '004' then msgerro := 'TRANSACAO NAO PERMITIDA, INVALIDA';
        if Copy(linha,4,3) = '005' then msgerro := 'DESCONEXAO GENERICA DE CANAL';
        if Copy(linha,4,3) = '006' then msgerro := 'QUEDA OU FALHA NO ACESSO AO PROVEDOR';
        if Copy(linha,4,3) = '007' then msgerro := 'DADO INVALIDO NO PROVEDOR';
        if Copy(linha,4,3) = '008' then msgerro := 'CONSULTA INCOMPLETA';
        if Copy(linha,4,3) = '009' then msgerro := 'REGISTRO COM FORMATO INVALIDO';
        if Copy(linha,4,3) = '010' then msgerro := 'TIME-OUT';
        DlgMsg.ShowMsg(6047,[msgerro]);
        SetCurrentDir(diresp);
        DeleteFile('Cons'+pdv+'.out');
        MudaEstado('Pesquisa');
        Exit;
      end;
      with DMChecks do begin
        if not (C_Tabela.State in [dsInsert,dsEdit]) then C_Tabela.Edit;
        C_TabelaDataConsulta.Value := EncodeDate(StrToInt(Copy(linha,71,4)),StrToInt(Copy(linha,69,2)),StrToInt(Copy(linha,67,2)));
        C_TabelaHoraConsulta.Value := EncodeTime(StrToInt(Copy(linha,75,2)),StrToInt(Copy(linha,77,2)),StrToInt(Copy(linha,79,2)),0);
        C_TabelaNomeBanco.Value := Copy(linha,101,12);
        C_TabelaStatusBanco.Value := Copy(linha,113,1);
        if Copy(linha,114,2) = '00' then begin
          C_TabelaNomeRF.Value := Copy(linha,116,68);
          C_TabelaDataRF.Value := EncodeDate(StrToInt(Copy(linha,188,4)),StrToInt(Copy(linha,186,2)),StrToInt(Copy(linha,184,2)));
          C_TabelaSituacaoCPF.Value := Copy(linha,192,2);
          if Copy(linha,194,2) = '02' then begin
            C_TabelaReg02.Value := 'S';
            C_TabelaR02MSG.Value := Copy(linha,196,40);
          end
          else begin
            inicio := 194;
            tiporeg := '02';
            while not (tiporeg = '99') do begin
              tiporeg := Copy(linha,inicio,2);
              if tiporeg = '04' then begin
                C_TabelaReg04.Value := 'S';
                C_TabelaR04QTD.Value := StrToInt(Copy(linha,inicio+2,5));
                C_TabelaR04DATAANTIGA.Value := EncodeDate(StrToInt(Copy(linha,inicio+9,4)),StrToInt(Copy(linha,inicio+7,2)),1);
                C_TabelaR04DATARECENTE.Value := EncodeDate(StrToInt(Copy(linha,inicio+15,4)),StrToInt(Copy(linha,inicio+13,2)),1);
                C_TabelaR04MODALIDADE.Value := Copy(linha,inicio+19,30);
                C_TabelaR04VALOR.Value := StrToCurr(Copy(linha,inicio+52,15))/100;
                C_TabelaR04ORIGEM.Value := Copy(linha,inicio+67,30);
                C_TabelaR04LOJA.Value := Copy(linha,inicio+97,4);
                inicio := inicio + 101;
              end;
              if tiporeg = '06' then begin
                C_TabelaREG06.Value := 'S';
                C_TabelaR06MSG.Value := Copy(linha,inicio+2,40);
                inicio := inicio + 42;
              end;
              if tiporeg = '08' then begin
                C_TabelaREG08.Value := 'S';
                C_TabelaR08DATARECENTE.Value := EncodeDate(StrToInt(Copy(linha,inicio+6,4)),StrToInt(Copy(linha,inicio+4,2)),StrToInt(Copy(linha,inicio+2,2)));
                C_TabelaR08MODALIDADE.Value := Copy(linha,inicio+10,30);
                C_TabelaR08AVALISTA.Value := Copy(linha,inicio+40,1);
                C_TabelaR08VALOR.Value := StrToCurr(Copy(linha,inicio+44,15))/100;
                C_TabelaR08CONTRATO.Value := Copy(linha,inicio+59,16);
                C_TabelaR08ORIGEM.Value := Copy(linha,inicio+75,30);
                inicio := inicio + 109;
              end;
              if tiporeg = '10' then begin
                C_TabelaREG10.Value := 'S';
                C_TabelaR10TOTAL.Value := StrToInt(Copy(linha,inicio+2,5));
                C_TabelaR10DATAANTIGA.Value := EncodeDate(StrToInt(Copy(linha,inicio+9,4)),StrToInt(Copy(linha,inicio+7,2)),1);
                C_TabelaR10DATARECENTE.Value := EncodeDate(StrToInt(Copy(linha,inicio+15,4)),StrToInt(Copy(linha,inicio+13,2)),1);
                inicio := inicio + 19;
              end;
              if tiporeg = '12' then begin
                C_TabelaREG12.Value := 'S';
                C_TabelaR12MSG.Value := Copy(linha,inicio+2,40);
                inicio := inicio + 42;
              end;
              if tiporeg = '14' then begin
                C_TabelaREG14.Value := 'S';
                C_TabelaR14QUANTIDADE.Value := StrToInt(Copy(linha,inicio+2,5));
                C_TabelaR14DATARECENTE.Value := EncodeDate(StrToInt(Copy(linha,inicio+11,4)),StrToInt(Copy(linha,inicio+9,2)),StrToInt(Copy(linha,inicio+7,2)));
                C_TabelaR14BANCO.Value := Copy(linha,inicio+15,3);
                C_TabelaR14BANCONOME.Value := Copy(linha,inicio+18,12);
                C_TabelaR14AGENCIA.Value := Copy(linha,inicio+30,4);
                C_TabelaR14LOJA.Value := Copy(linha,inicio+34,4);
                inicio := inicio + 38;
              end;
              if tiporeg = '16' then begin
                C_TabelaREG16.Value := 'S';
                C_TabelaR16MSG.Value := Copy(linha,inicio+2,40);
                inicio := inicio + 42;
              end;
              if tiporeg = '18' then begin
                C_TabelaREG18.Value := 'S';
                C_TabelaR18QUANTIDADE.Value := StrToInt(Copy(linha,inicio+2,5));
                C_TabelaR18DATARECENTE.Value := EncodeDate(StrToInt(Copy(linha,inicio+11,4)),StrToInt(Copy(linha,inicio+9,2)),StrToInt(Copy(linha,inicio+7,2)));
                C_TabelaR18BANCO.Value := Copy(linha,inicio+15,3);
                C_TabelaR18BANCONOME.Value := Copy(linha,inicio+18,12);
                C_TabelaR18AGENCIA.Value := Copy(linha,inicio+30,4);
                inicio := inicio + 34;
              end;
              if tiporeg = '20' then begin
                C_TabelaREG20.Value := 'S';
                C_TabelaR20MSG.Value := Copy(linha,inicio+2,40);
                inicio := inicio + 42;
              end;
              if tiporeg = '22' then begin
                C_TabelaREG22.Value := 'S';
                C_TabelaR22BANCO.Value := Copy(linha,inicio+2,3);
                C_TabelaR22AGENCIA.Value := Copy(linha,inicio+5,4);
                C_TabelaR22CONTA.Value := Copy(linha,inicio+9,10);
                C_TabelaR22CHEQUEINI.Value := Copy(linha,inicio+19,6);
                C_TabelaR22CHEQUEFIM.Value := Copy(linha,inicio+25,6);
                C_TabelaR22MOTIVO.Value := Copy(linha,inicio+31,12);
                C_TabelaR22DATA.Value := EncodeDate(StrToInt(Copy(linha,inicio+47,4)),StrToInt(Copy(linha,inicio+45,2)),StrToInt(Copy(linha,inicio+43,2)));
                C_TabelaR22HORA.Value := EncodeTime(StrToInt(Copy(linha,51,2)),StrToInt(Copy(linha,53,2)),0,0);
                C_TabelaR22FONTE.Value := Copy(linha,inicio+55,4);
                inicio := inicio + 59;
              end;
              if tiporeg = '24' then begin
                C_TabelaREG24.Value := 'S';
                C_TabelaR24MSG.Value := Copy(linha,inicio+2,40);
                inicio := inicio + 42;
              end;
              if tiporeg = '26' then begin
                C_TabelaREG26.Value := 'S';
                C_TabelaR26BANCO.Value := Copy(linha,inicio+2,3);
                C_TabelaR26AGENCIA.Value := Copy(linha,inicio+5,4);
                C_TabelaR26CONTA.Value := Copy(linha,inicio+9,10);
                C_TabelaR26CHEQUEINI.Value := Copy(linha,inicio+19,6);
                C_TabelaR26CHEQUEFIM.Value := Copy(linha,inicio+25,6);
                C_TabelaR26MOTIVO.Value := Copy(linha,inicio+31,12);
                C_TabelaR26DATA.Value := EncodeDate(StrToInt(Copy(linha,inicio+47,4)),StrToInt(Copy(linha,inicio+45,2)),StrToInt(Copy(linha,inicio+43,2)));
                C_TabelaR26FONTE.Value := Copy(linha,inicio+51,4);
                inicio := inicio + 55;
              end;
              if tiporeg = '28' then begin
                C_TabelaREG28.Value := 'S';
                C_TabelaR28MSG.Value := Copy(linha,inicio+2,40);
                inicio := inicio + 42;
              end;
            end;
          end;
        end
        else begin
          if Copy(linha,114,2) = '90' then begin
            msgerro := Trim(Copy(linha,119,40));
            DlgMsg.ShowMsg(6047,[msgerro]);
            if DlgMsg.ShowMsg(6046) = 200 then begin
              SetCurrentDir(diresp);
              DeleteFile('Cons'+pdv+'.out');
              MudaEstado('Pesquisa');
              Exit;
            end;
          end;
        end;
      end;
    end;
    Hora2 := Time;
  end;
  if not bSucesso then begin
    DlgMsg.ShowMsg(6047,['TIME-OUT.']);
    if DlgMsg.ShowMsg(6046) = 200 then begin
      SetCurrentDir(diresp);
      DeleteFile('Cons'+pdv+'.out');
      MudaEstado('Pesquisa');
      Exit;
    end;
  end;
  SetCurrentDir(diresp);
  DeleteFile('Cons'+pdv+'.out');
  MudaEstado('Pesquisa');
  inherited;
  if DlgMsg.ShowMsg(51,['Deseja visualizar o relatório da consulta?']) = 100 then begin
    DMChecks.C_Relatorio.Close;
    DMChecks.Q_Relatorio.Sql.Text := ' Select c.*, f.nome, f.cpf_cnpj, f.pessoa_fj from Checkexs c ' +
                                     ' left join favorecidos f on c.cliente = f.favorecido ' +
                                     ' where c.checkex = ' + IntToStr(DMChecks.id);
    DMChecks.C_Relatorio.Open;
    RelatorioCheck.Preview;
  end;
end;
procedure TFrmChecks.MudaEstado(est:string);
begin
  if est = 'Consulta' then begin
    Estado := 'Consulta';
    lbEstadoForm.Caption := 'Aguarde...';
    lbEstadoForm.Font.Color := clRed;
    lbEstadoForm.Font.Style := [fsBold];
    btLimpar.Enabled := False;
    btPesquisar.Enabled := False;
    btIr_Para.Enabled := False;
    btPrimeiroReg.Enabled := False;
    btPrevReg.Enabled := False;
    btProxReg.Enabled := False;
    btUltimoReg.Enabled := False;
  end
  else begin
    Estado := 'Pesquisa';
    lbEstadoForm.Caption := 'Inclusão / Pesquisa de Dados';
    lbEstadoForm.Font.Color := clWindowText;
    lbEstadoForm.Font.Style := [];
    btLimpar.Enabled := True;
    btPesquisar.Enabled := True;
    btIr_Para.Enabled := True;
    btPrimeiroReg.Enabled := True;
    btPrevReg.Enabled := True;
    btProxReg.Enabled := True;
    btUltimoReg.Enabled := True;
  end;
end;

procedure TFrmChecks.FormCreate(Sender: TObject);
begin
  inherited;
  Estado := 'Pesquisa';
end;

procedure TFrmChecks.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Estado = 'Consulta' then begin
    DlgMsg.ShowMsg(50,['O sistema está em processo de consulta. Aguarde finalização.']);
    Exit;
  end;
  inherited;
end;

procedure TFrmChecks.lbConsultaBeforePrint(Sender: TObject;
  var DoPrint: Boolean);
begin
  inherited;
  if DMChecks.C_RelatorioConsulta.Value = 'CH' then lbConsulta.Caption := 'PLUS';
  if DMChecks.C_RelatorioConsulta.Value = 'PF' then lbConsulta.Caption := 'DVB';
  if DMChecks.C_RelatorioConsulta.Value = 'CP' then lbConsulta.Caption := 'CHECKDIVIDAS';
end;

procedure TFrmChecks.lbStatusBancoBeforePrint(Sender: TObject;
  var DoPrint: Boolean);
begin
  inherited;
  if DMChecks.C_RelatorioStatusBanco.Value = '1' then lbStatusBanco.Caption := 'LIQUIDACAO';
  if DMChecks.C_RelatorioStatusBanco.Value = '2' then lbStatusBanco.Caption := 'NAO TRABALHA COM CONTA CORRENTE';
  if DMChecks.C_RelatorioStatusBanco.Value = '3' then lbStatusBanco.Caption := 'PARTICIPA DO RECHEQUE';
  if DMChecks.C_RelatorioStatusBanco.Value = '4' then lbStatusBanco.Caption := 'NAO PARTICIPA DO RECHEQUE';
end;

procedure TFrmChecks.lbSitCPFBeforePrint(Sender: TObject;
  var DoPrint: Boolean);
begin
  inherited;
  if DMChecks.C_RelatorioSituacaoCPF.Value = '02' then lbSitCPF.Caption := 'ATIVA';
  if DMChecks.C_RelatorioSituacaoCPF.Value = '06' then lbSitCPF.Caption := 'SUSPENSA';
  if DMChecks.C_RelatorioSituacaoCPF.Value = '09' then lbSitCPF.Caption := 'CANCELADA';
end;

procedure TFrmChecks.RelatorioCheckBeforePrint(Sender: TObject;
  var DoPrint: Boolean);
begin
  inherited;
  lbCodEstacao.Caption := DMProjeto.Parametro('EstacaoCheck');
  (* Visibilidade das Bandas *)
  if DMChecks.C_RelatorioREG02.Value <> 'S' then BANDAREG02.Visible := False else BANDAREG02.Visible := True;
  if DMChecks.C_RelatorioREG04.Value <> 'S' then BANDAREG04.Visible := False else BANDAREG04.Visible := True;
  if DMChecks.C_RelatorioREG06.Value <> 'S' then BANDAREG06.Visible := False else BANDAREG06.Visible := True;
  if DMChecks.C_RelatorioREG08.Value <> 'S' then BANDAREG08.Visible := False else BANDAREG08.Visible := True;
  if DMChecks.C_RelatorioREG10.Value <> 'S' then BANDAREG10.Visible := False else BANDAREG10.Visible := True;
  if DMChecks.C_RelatorioREG12.Value <> 'S' then BANDAREG12.Visible := False else BANDAREG12.Visible := True;
  if DMChecks.C_RelatorioREG14.Value <> 'S' then BANDAREG14.Visible := False else BANDAREG14.Visible := True;
  if DMChecks.C_RelatorioREG16.Value <> 'S' then BANDAREG16.Visible := False else BANDAREG16.Visible := True;
  if DMChecks.C_RelatorioREG18.Value <> 'S' then BANDAREG18.Visible := False else BANDAREG18.Visible := True;
  if DMChecks.C_RelatorioREG20.Value <> 'S' then BANDAREG20.Visible := False else BANDAREG20.Visible := True;
  if DMChecks.C_RelatorioREG22.Value <> 'S' then BANDAREG22.Visible := False else BANDAREG22.Visible := True;
  if DMChecks.C_RelatorioREG24.Value <> 'S' then BANDAREG24.Visible := False else BANDAREG24.Visible := True;
  if DMChecks.C_RelatorioREG26.Value <> 'S' then BANDAREG26.Visible := False else BANDAREG26.Visible := True;
  if DMChecks.C_RelatorioREG28.Value <> 'S' then BANDAREG28.Visible := False else BANDAREG28.Visible := True;
  (* Tratamento das Mensagens de Alerta *)
  if DMChecks.C_RelatorioREG02.Value = 'S' then
    lbMsgGeral1.Caption := 'NADA CONSTA PARA ESTE CHEQUE.'
  else begin
    if DMChecks.C_RelatorioREG22.Value = 'S' then begin
      lbMsgGeral1.Caption := 'ATENÇÃO: RECUSAR CHEQUE!!!';
      lbMsgGeral2.Caption := 'CHEQUE "' + DMChecks.C_RelatorioR22MOTIVO.Value +'" ' +
                              FormatDateTime('dd/mm/yyyy', DMChecks.C_RelatorioR22DATA.Value) +
                              ' AG: ' + DMChecks.C_RelatorioR22AGENCIA.Value + ' C/C: ' +
                              DMChecks.C_RelatorioR22CONTA.Value;
    end
    else begin
      lbMsgGeral1.Caption := 'ATENÇÃO: EXISTEM OCORRÊNCIAS PARA ESTE CPF.';
      lbMsgGeral2.Caption := 'POR FAVOR, VERIFIQUE O DETALHAMENTO ABAIXO.';
    end;
  end;
end;

procedure TFrmChecks.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  btComando1.Visible := DMChecks.bAlteracao;
end;

procedure TFrmChecks.btComando1Click(Sender: TObject);
begin
  inherited;
    DMChecks.C_Relatorio.Close;
    DMChecks.Q_Relatorio.Sql.Text := ' Select c.*, f.nome, f.cpf_cnpj, f.pessoa_fj from Checkexs c ' +
                                     ' left join favorecidos f on c.cliente = f.favorecido ' +
                                     ' where c.checkex = ' + IntToStr(DMChecks.C_TabelaCheckex.Value);
    DMChecks.C_Relatorio.Open;
    RelatorioCheck.Preview;
end;

procedure TFrmChecks.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if (LastDataObject.FormName = 'FRMCLIENTES') and (LastDataObject.TableName = 'FAVORECIDOS') then
    dfCliente.Id := LastDataObject.ObjectKey;
end;

procedure TFrmChecks.dfClienteSelecionou(Sender: TObject);
var qtd, cliente: integer;
    valor: currency;
begin
  inherited;
    cliente := dfCliente.Id;
    with DMProjeto.Q_Sql do begin
      close;
      Sql.Text := 'select cpf_cnpj from favorecidos where favorecido = ' + IntToStr(cliente);
      Open;
      DMChecks.C_TabelaCPF.Value := FieldByName('cpf_cnpj').AsString;
    end;
  DMProjeto.GetInformacoesChequesDev(dfCliente.Id,qtd,valor);
  if qtd > 0 then begin
    if DlgMsg.ShowMsg(51,['Esse cliente possui ' + IntToStr(qtd) + ' cheques devolvidos, totalizando ' +
                          FormatFloat('0.00',valor) + '. '+#13+'Deseja visualizar seu C.R.M.?']) = 100 then begin
        DMProjeto.SetParametrosForm([dfCliente.Id, 1]);
        DMProjeto.CriarForm('DlgSitCliente', Self, true);
    end;
  end
  else begin
    DMProjeto.GetInformacoesChequesAcer(dfCliente.Id,qtd,valor);
    if qtd > 0 then begin
      if DlgMsg.ShowMsg(51,['Esse cliente possui ' + IntToStr(qtd) + ' cheques devolvidos que foram acertados, totalizando ' +
                            FormatFloat('0.00',valor) + '. '+#13+'Deseja visualizar seu C.R.M.?']) = 100 then begin
          DMProjeto.SetParametrosForm([dfCliente.Id, 1]);
          DMProjeto.CriarForm('DlgSitCliente', Self, true);
      end;
    end;
  end;
end;

procedure TFrmChecks.btComando2Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([dfCliente.Id, 1]);
  DMProjeto.CriarForm('DlgSitCliente', Self, true);
end;


procedure TFrmChecks.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  if DMProjeto.QtdParametrosForm > 1 then begin
    DMChecks.C_TabelaCLIENTE.Value := DMProjeto.GetParametrosForm(1);
    dfCliente.Id := DMProjeto.GetParametrosForm(1);
    DMChecks.C_TabelaBANCO.Value := DMProjeto.GetParametrosForm(2);
    DMChecks.C_TabelaChequeIni.Value := FormatFloat('000000', DMProjeto.GetParametrosForm(3));
    DMChecks.C_TabelaChequeFim.Value := FormatFloat('000000', DMProjeto.GetParametrosForm(4));
    DMChecks.C_TabelaValorChequeIni.Value := DMProjeto.GetParametrosForm(5);
    DMChecks.C_TabelaDataChequeIni.Value := DMProjeto.GetParametrosForm(6);
    DMChecks.C_TabelaDVIni.Value := DMProjeto.GetParametrosForm(7);
    DMChecks.C_TabelaDVFim.Value := DMProjeto.GetParametrosForm(7);
    DMChecks.C_TabelaCPF.Value := DMProjeto.GetParametrosForm(8);
  end;
end;

procedure TFrmChecks.dfCPFEnter(Sender: TObject);
begin
  inherited;
  DMChecks.C_TabelaCPF.EditMask := '';
end;

procedure TFrmChecks.dfCPFExit(Sender: TObject);
begin
  inherited;
  if length(TTS_DBEdit(Sender).Text) = 11 then
    DMChecks.C_TabelaCPF.EditMask := '999.999.999-99;0; '
  else if length(TTS_DBEdit(Sender).Text) = 14 then
    DMChecks.C_TabelaCPF.EditMask := '99.999.999/9999-99;0; ';
end;

end.

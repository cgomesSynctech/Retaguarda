unit Dlg_GeracaoArqMagnetico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxEdLib, TS_CheckBox, dxCntner,
  dxEditor, TS_MaskEdit, StdCtrls, ExtCtrls, TS_RadioGroup, FormsComponent,
  BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, TS_Label,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, DB, IBCustomDataSet, IBQuery, Placemnt,
  dxfProgressBar, Math, TS_ImageEdit,  NMFtp, ComCtrls, TS_PageControl;

type
  TDlgGeracaoArqMagnetico = class(TFrmModeloCadastros)
    Q_NFSaidas: TIBQuery;
    Q_NFEntradas: TIBQuery;
    Q_NFSaidasItens: TIBQuery;
    Q_NFEntradasItens: TIBQuery;
    Q_GNRE: TIBQuery;
    Q_ECF: TIBQuery;
    Q_ECFDetalhe: TIBQuery;
    Q_VendasConsumidor: TIBQuery;
    Q_Fretes: TIBQuery;
    Q_NFProdutos: TIBQuery;
    Q_Empresas: TIBQuery;
    Q_LivrosMensais: TIBQuery;
    Q_TransfCreditos: TIBQuery;
    Q_LivrosAnuais: TIBQuery;
    SaveDialog: TSaveDialog;
    Q_Atualizar: TIBQuery;
    Q_Paraibasim: TIBQuery;
    Q_Inventario: TIBQuery;
    Q_SimplesNacional: TIBQuery;
    Q_Favorecidos: TIBQuery;
    Q_ECF60R: TIBQuery;
    Q_ECF61R: TIBQuery;
    Q_ECF60I: TIBQuery;
    Q_ECF60D: TIBQuery;
    pcSintegraSPED: TTS_PageControl;
    tsSintegra: TTS_TabSheet;
    tsSPED: TTS_TabSheet;
    TS_Label1: TTS_Label;
    TS_Bevel2: TTS_Bevel;
    lbPosicao: TdxfLabel;
    rgFinalidade: TTS_RadioGroup;
    dfMesAno: TTS_MaskEdit;
    cb50: TTS_CheckBox;
    cb51: TTS_CheckBox;
    cb53: TTS_CheckBox;
    cb54: TTS_CheckBox;
    cb55: TTS_CheckBox;
    cb60: TTS_CheckBox;
    cb61: TTS_CheckBox;
    cb70: TTS_CheckBox;
    cb75: TTS_CheckBox;
    cb88: TTS_CheckBox;
    cb8801: TTS_CheckBox;
    cb8802: TTS_CheckBox;
    cb8803: TTS_CheckBox;
    cb8804: TTS_CheckBox;
    cb8805: TTS_CheckBox;
    cb8806: TTS_CheckBox;
    Barra: TdxfProgressBar;
    cb8815: TTS_CheckBox;
    cb8816: TTS_CheckBox;
    cb8817: TTS_CheckBox;
    cb74: TTS_CheckBox;
    cb8818: TTS_CheckBox;
    rgTipo: TTS_RadioGroup;
    dfImportacao: TTS_ImageEdit;
    TS_Label2: TTS_Label;
    VersaoCOTEPE: TEdit;
    TS_Label3: TTS_Label;
    PerfilEmpresa: TEdit;
    Ind_Ativ: TComboBox;
    Q_Favorecidos_150: TIBQuery;
    Q_ItensComercializados_200: TIBQuery;
    Q_Unidades_190: TIBQuery;
    Q_VendasTalao_C350: TIBQuery;
    Q_Equipamentos_400: TIBQuery;
    Q_ReduzaoZ_405: TIBQuery;
    Q_VendasTalaoItens_C370: TIBQuery;
    Q_VendasTalao_C390: TIBQuery;
    Q_ReducaoTotalizadores_420: TIBQuery;
    Q_ItensCupom_470: TIBQuery;
    Q_Cupom_460: TIBQuery;
    TS_Label5: TTS_Label;
    TS_Label4: TTS_Label;
    dfMesAnoSPED: TTS_MaskEdit;
    TS_Bevel3: TTS_Bevel;
    TS_SpeedButton1: TTS_SpeedButton;
    sbSintegra: TTS_SpeedButton;
    dbSPED: TTS_SpeedButton;
    cbBloco_C: TTS_CheckBox;
    cbBloco_D: TTS_CheckBox;
    cbBloco_E: TTS_CheckBox;
    cbBloco_G: TTS_CheckBox;
    cbBloco_H: TTS_CheckBox;
    cbBloco_1: TTS_CheckBox;
    Q_Analitico_C490: TIBQuery;
    barraSPED: TdxfProgressBar;
    lbPossicaoSPED: TdxfLabel;
    procedure cb88Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure dfMesAnoSPEDExit(Sender: TObject);
    procedure dfMesAnoExit(Sender: TObject);
    procedure sbSintegraClick(Sender: TObject);
    procedure dbSPEDClick(Sender: TObject);
  private
    Arq: TextFile;
    dfDTInicio, dfDTFIM: TDateTime;
    function GerarSPED(): Boolean;
    function GerarSintegra(): Boolean;
    function ConverteValor(nValor: currency;nQuant:integer):string;
    function ConverteValor3(nValor: currency;nQuant:integer):string;
    procedure AtualizaBarras(nI: Integer; msg: String);
    procedure AtualizaBarrasSPED(nI: Integer; msg: String);
  public
    { Public declarations }
  end;

var
  DlgGeracaoArqMagnetico: TDlgGeracaoArqMagnetico;

implementation
uses DM_Projeto, funcoes, TDM_Projeto, dm_ECF;

{$R *.dfm}



function TDlgGeracaoArqMagnetico.GerarSPED(): Boolean;
var
    b0Reg0000,b0Reg0001,b0Reg0005,b0Reg0015,b0Reg0100,b0Reg0150,b0Reg0175,b0Reg0190,
    b0Reg0200,b0Reg0205,b0Reg0206,b0Reg0220,b0Reg0300,b0Reg0305,b0Reg0400,b0Reg0450,
    b0Reg0460,b0Reg0500,b0Reg0600,b0Reg0990: Integer;

    bCRegC001,bCRegC100,bCRegC105,bCRegC110,bCRegC111,bCRegC112,bCRegC113,bCRegC114,
    bCRegC115,bCRegC120,bCRegC130,bCRegC140,bCRegC141,bCRegC160,bCRegC165,bCRegC170,
    bCRegC171,bCRegC172,bCRegC173,bCRegC174,bCRegC175,bCRegC176,bCRegC177,bCRegC178,
    bCRegC179,bCRegC190,bCRegC195,bCRegC197,bCRegC300,bCRegC310,bCRegC320,bCRegC321,
    bCRegC350,bCRegC370,bCRegC390,bCRegC400,bCRegC405,bCRegC410,bCRegC420,bCRegC425,
    bCRegC460,bCRegC470,bCRegC490,bCRegC495,bCRegC500,bCRegC510,bCRegC590,bCRegC600,
    bCRegC601,bCRegC610,bCRegC690,bCRegC700,bCRegC790,bCRegC791,bCRegC990 : Integer;

    bDRegD100,bDRegD110,bDRegD120,bDRegD130,bDRegD140,bDRegD150,bDRegD160,bDRegD161,
    bDRegD162,bDRegD170,bDRegD180,bDRegD190,bDRegD300,bDRegD301,bDRegD310,bDRegD350,
    bDRegD355,bDRegD360,bDRegD365,bDRegD370,bDRegD390,bDRegD400,bDRegD410,bDRegD411,
    bDRegD420,bDRegD500,bDRegD510,bDRegD530,bDRegD590,bDRegD600,bDRegD610,bDRegD690,
    bDRegD695,bDRegD696,bDRegD697,bDRegD990,bDRegD001: Integer;

    bERegE001,bERegE100,bERegE110,bERegE111,bERegE112,bERegE113,bERegE115,bERegE116,
    bERegE200,bERegE210,bERegE220,bERegE230,bERegE240,bERegE250,bERegE500,bERegE510,
    bERegE520,bERegE530,bERegE990 : Integer;

    bGRegG001,bGRegG110,bGRegG125,bGRegG126,bGRegG130,bGRegG140,bGRegG990: Integer;

    bHRegH001,bHRegH005,bHRegH010,bHRegH990: Integer;

    b1Reg1001,b1Reg1100,b1Reg1105,b1Reg1110,b1Reg1200,b1Reg1210,b1Reg1300,b1Reg1310,
    b1Reg1320,b1Reg1350,b1Reg1360,b1Reg1370,b1Reg1400,b1Reg1500,b1Reg1510,b1Reg1600,
    b1Reg1700,b1Reg1710,b1Reg1800,b1Reg1900,b1Reg1910,b1Reg1920,b1Reg1921,b1Reg1922,
    b1Reg1923,b1Reg1925,b1Reg1926,b1Reg1990: Integer;

    b9Reg9001,b9Reg9900,b9Reg9990,b9Reg9999: Integer;

    Qtd_B0, Qtd_BC, Qtd_BD, Qtd_BE, Qtd_BG, Qtd_BH, Qtd_B1, Qtd_B9: Integer;

   sArq, sTexto: string;
   CupomInicio, CupomFIM: string;
   nAno,nMes,nDia: word;
   dDataI, dDataF, dData,dDataECF, sHora: TDateTime;
   nArq: Integer;
begin
  inherited;

  {Zerando os Contadores...}

    Qtd_B0:=0; Qtd_BC:=0; Qtd_BD:=0; Qtd_BE:=0; Qtd_BG:=0; Qtd_BH:=0; Qtd_B1:=0;

    b0Reg0000:=0; b0Reg0001:=0; b0Reg0005:=0; b0Reg0015:=0; b0Reg0100:=0; b0Reg0150:=0; b0Reg0175:=0; b0Reg0190:=0;
    b0Reg0200:=0; b0Reg0205:=0; b0Reg0206:=0; b0Reg0220:=0; b0Reg0300:=0; b0Reg0305:=0; b0Reg0400:=0; b0Reg0450:=0;
    b0Reg0460:=0; b0Reg0500:=0; b0Reg0600:=0; b0Reg0990:=0;

    bCRegC001:=0; bCRegC100:=0; bCRegC105:=0; bCRegC110:=0; bCRegC111:=0; bCRegC112:=0; bCRegC113:=0; bCRegC114:=0;
    bCRegC115:=0; bCRegC120:=0; bCRegC130:=0; bCRegC140:=0; bCRegC141:=0; bCRegC160:=0; bCRegC165:=0; bCRegC170:=0;
    bCRegC171:=0; bCRegC172:=0; bCRegC173:=0; bCRegC174:=0; bCRegC175:=0; bCRegC176:=0; bCRegC177:=0; bCRegC178:=0;
    bCRegC179:=0; bCRegC190:=0; bCRegC195:=0; bCRegC197:=0; bCRegC300:=0; bCRegC310:=0; bCRegC320:=0; bCRegC321:=0;
    bCRegC350:=0; bCRegC370:=0; bCRegC390:=0; bCRegC400:=0; bCRegC405:=0; bCRegC410:=0; bCRegC420:=0; bCRegC425:=0;
    bCRegC460:=0; bCRegC470:=0; bCRegC490:=0; bCRegC495:=0; bCRegC500:=0; bCRegC510:=0; bCRegC590:=0; bCRegC600:=0;
    bCRegC601:=0; bCRegC610:=0; bCRegC690:=0; bCRegC700:=0; bCRegC790:=0; bCRegC791:=0; bCRegC990 :=0;

    bDRegD100:=0; bDRegD110:=0; bDRegD120:=0; bDRegD130:=0; bDRegD140:=0; bDRegD150:=0; bDRegD160:=0; bDRegD161:=0;
    bDRegD162:=0; bDRegD170:=0; bDRegD180:=0; bDRegD190:=0; bDRegD300:=0; bDRegD301:=0; bDRegD310:=0; bDRegD350:=0;
    bDRegD355:=0; bDRegD360:=0; bDRegD365:=0; bDRegD370:=0; bDRegD390:=0; bDRegD400:=0; bDRegD410:=0; bDRegD411:=0;
    bDRegD420:=0; bDRegD500:=0; bDRegD510:=0; bDRegD530:=0; bDRegD590:=0; bDRegD600:=0; bDRegD610:=0; bDRegD690:=0;
    bDRegD695:=0; bDRegD696:=0; bDRegD697:=0; bDRegD990:=0; bDRegD001:=0;

    bERegE001:=0; bERegE100:=0; bERegE110:=0; bERegE111:=0; bERegE112:=0; bERegE113:=0; bERegE115:=0; bERegE116:=0;
    bERegE200:=0; bERegE210:=0; bERegE220:=0; bERegE230:=0; bERegE240:=0; bERegE250:=0; bERegE500:=0; bERegE510:=0;
    bERegE520:=0; bERegE530:=0; bERegE990:=0;

    bGRegG001:=0; bGRegG110:=0; bGRegG125:=0; bGRegG126:=0; bGRegG130:=0; bGRegG140:=0; bGRegG990:=0;

    bHRegH001:=0; bHRegH005:=0; bHRegH010:=0; bHRegH990:=0;

    b1Reg1001:=0; b1Reg1100:=0; b1Reg1105:=0; b1Reg1110:=0; b1Reg1200:=0; b1Reg1210:=0; b1Reg1300:=0; b1Reg1310:=0;
    b1Reg1320:=0; b1Reg1350:=0; b1Reg1360:=0; b1Reg1370:=0; b1Reg1400:=0; b1Reg1500:=0; b1Reg1510:=0; b1Reg1600:=0;
    b1Reg1700:=0; b1Reg1710:=0; b1Reg1800:=0; b1Reg1900:=0; b1Reg1910:=0; b1Reg1920:=0; b1Reg1921:=0; b1Reg1922:=0;
    b1Reg1923:=0; b1Reg1925:=0; b1Reg1926:=0; b1Reg1990:=0;

    b9Reg9001:=0; b9Reg9900:=0; b9Reg9990:=0; b9Reg9999:=0;


  {Bloco 0000}

  BarraSPED.Max := 8;
  AtualizaBarrasSPED(1,' Escrevendo Bloco 0 ');
  Result := False;
  sArq := ExtractFilePath(Application.ExeName) + 'SPED'+RestringirCarac(dfMesAno.text)+RestringirCarac(DMPRojeto.sCPF_CNPJEmpresa)+'.txt';
    application.ProcessMessages;
    shora:=Now;
    nDia := 1;
    nMes := StrToInt(copy(dfMesAno.text,1,2));
    nAno := StrToInt(copy(dfMesAno.text,4,4));
    Q_Empresas.close;
    Q_Empresas.open;
    dDataI := EncodeDate(nAno,nMes,nDia);
    dDataF := LastMonthDay(dDataI);
    try
      if not FileExists(sArq) then begin
        nArq := FileCreate(sArq);
        FileClose(nArq);
        AssignFile(Arq,sArq);
        System.Append(Arq);
      end
      else begin
        AssignFile(Arq,sArq);
        Rewrite(Arq);
      end;
//////////////////////////////////////////
// Registro Tipo 0000 Abertura do Arquivo Digital e Identificação
//////////////////////////////////////////
      sTexto :=
      '|0000|'+
      VersaoCOTEPE.Text + '|' +
      IntToStr(rgFinalidade.ItemIndex+1)+ '|' +
      FormatDateTime('ddmmyyyy',dDataI)+ '|' +
      FormatDateTime('ddmmyyyy',dDataF)+ '|' +
      Q_Empresas.FieldByName('Razao').asstring + '|' +
      Q_Empresas.FieldByName('CPF_CNPJ').asstring + '|'+
      '|'+ {CPF.}
      Q_Empresas.FieldByName('UF').asstring + '|' +
      RestringirCarac(Q_Empresas.FieldByName('Inscricao_est').asstring) + '|' +
      Q_Empresas.FieldByName('Municipio').asstring + '|' +
      Q_Empresas.FieldByName('Inscricao_MUN').asstring + '|' +
      Q_Empresas.FieldByName('SUFRAMA').asstring + '|' +
      PerfilEmpresa.Text + '|' +
      InttoStr(Ind_Ativ.ItemIndex) + '|'  ;
      Writeln(Arq,sTexto);
      Inc(b0Reg0000);
      //////////////////////////////////////////
      // Registro Tipo 0001  Abeetura do Bloco 0
      //////////////////////////////////////////
      sTexto := '|0001|0|';
      Writeln(Arq,sTexto);
      Inc(b0Reg0001);

      //////////////////////////////////////////
      // Registro Tipo 0005  Dados Complementares da Empresa
      //////////////////////////////////////////
      sTexto := '|0005|'+
      Q_Empresas.FieldByName('Nome').asstring + '|' +
      RestringirCarac(Q_Empresas.FieldByName('Cep').asstring) + '|' +
      Q_Empresas.FieldByName('Endereco').asstring + '|' +
      Q_Empresas.FieldByName('Nro').asstring + '|' +
      Q_Empresas.FieldByName('Complemento').asstring + '|' +
      Q_Empresas.FieldByName('Bairro').asstring + '|' +
      RestringirCarac(Q_Empresas.FieldByName('Fone1').asstring) + '|' +
      RestringirCarac(Q_Empresas.FieldByName('Fax').asstring) + '|' +
      Q_Empresas.FieldByName('email').asstring + '|' ;
      Writeln(Arq,sTexto);
      Inc(b0Reg0005);

      //////////////////////////////////////////
      // Registro Tipo 0100  Tabela de cadastro do Contabilista
      //////////////////////////////////////////
      sTexto := '|0100|'+
      Q_Empresas.FieldByName('Nome_Contador').asstring + '|'+
      Q_Empresas.FieldByName('CPF_CNPJ_Contador').asstring + '|' +
      Q_Empresas.FieldByName('CRC_Contador').asstring + '|' +
      '|' + //CNPJ do Contabilista
      Q_Empresas.FieldByName('CEP_Responsavel').asstring + '|' +
      Q_Empresas.FieldByName('Endereco_Responsavel').asstring + '|' +
      '|' + //numero do endereco do estabelecimento do contabilista
      '|' + // Complemento do endereco do contabilista
      Q_Empresas.FieldByName('Bairro_Responsavel').asstring + '|' +
      Q_Empresas.FieldByName('Fone_Responsavel').asstring + '|' +
      Q_Empresas.FieldByName('Fone_Contador').asstring + '|' +
      Q_Empresas.FieldByName('EMail_Contador').asstring + '|' +
      Q_Empresas.FieldByName('MUN_IBGE_CONTADOR').asstring + '|' ;
      Writeln(Arq,sTexto);
      Inc(b0Reg0100);


      //////////////////////////////////////////
      // Registro Tipo 150 Tabela de Cadastro de Paticipantes
      //////////////////////////////////////////


    with Q_Favorecidos_150 do Begin
    Close;
    parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
    parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
    Open;
       while not Eof do begin
          sTexto := '|0150|'+
          FieldByName('Favorecido').asstring + '|' +
          FieldByName('Razao').asstring + '|' +
          FieldByName('Pais').asstring + '|' +
          FieldByName('CNPJ').asstring + '|' +
          FieldByName('CPF').asstring + '|' +
          RestringirCarac(FieldByName('Inscricao_Est').asstring) + '|' +
          FieldByName('Municipio').asstring + '|' +
          FieldByName('Suframa').asstring + '|' +
          FieldByName('Endereco').asstring + '|' +
          FieldByName('nro').asstring + '|' +
          '|' + // Campo de Complemento, que nao é utilizado nos cadastros do sistema
          FieldByName('Bairro').asstring + '|' ;
          Writeln(Arq,sTexto);
          inc(b0Reg0150) ;
          Next;
       end;

    end;
    //////////////////////////////////////////
    // Registro Tipo 0190 Unidades de Medidas
    //////////////////////////////////////////
    with Q_Unidades_190 do Begin
      Close;
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      Open;
      while not Eof do begin
        Writeln(Arq,'|0190|'+FieldByName('Unidade').asstring + '|'+FieldByName('Descricao').asstring + '|') ;
        Inc(b0Reg0190);
        Next;
      end;
    end;
    //////////////////////////////////////////
    // Registro Tipo 0200 Tabela de identificacao do Item ( Produto e Serviço
    //////////////////////////////////////////
    with Q_ItensComercializados_200 do Begin
      Close;
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      Open;
      while not Eof do begin
        sTexto := '|0200|'+
        SoNumeros(FieldByName('codigo').asstring,14) + '|' +
        FieldByName('descricao').asstring + '|' +
        iif(FieldByName('codigobarras').IsNull, SoNumeros(FieldByName('codigo').asstring,14),FieldByName('codigobarras').AsString)  + '|' +
        '|' + // codigo anterior de utilizacao do item
        FieldByName('unidade').asstring + '|' +
        '00|' + // Codigo do tipo do item ( esta sendo gerado apenas para tipoitem = 1 ou seja produtos )
        FieldByName('clasfiscal').asstring + '|' +
        '|'+ // Codigo EX, conforme tabela TIPI , nao utilizada no sistema
        FieldByName('genero').asstring + '|' +
        '|' + // Codigo do Serviço, nao esta sendo gerado ainda
        FieldByName('aliqicms').asstring + '|' ;
        Writeln(Arq,sTexto);
        inc(b0Reg0200) ;
        Next;
       end;
    end;
    //////////////////////////////////////////
    // Encerramento do bloco 0 ...
    //////////////////////////////////////////
    AtualizaBarrasSPED(2,' Escrevendo Bloco C ');
    Inc(b0Reg0990);
    Qtd_B0 := b0Reg0000+b0Reg0001+b0Reg0005+b0Reg0015+b0Reg0100+b0Reg0150+b0Reg0175+
    b0Reg0190+b0Reg0200+b0Reg0205+b0Reg0206+b0Reg0220+b0Reg0300+b0Reg0305+b0Reg0400+
    b0Reg0450+b0Reg0460+b0Reg0500+b0Reg0600+b0Reg0990;
    Writeln(Arq,'|0990|'+ inttostr(Qtd_B0) + '|') ;

    //////////////////////////////////////////
// Abertura do Bloco C
    /////////////////////////////////////////
    if (cbBloco_C.Checked) Then Begin
      sTexto := '|C001|0|' ;
      Writeln(Arq,sTexto);
      inc(bCRegC001);
      //////////////////////////////////////////
      // Registro C350 : Nota fiscal de Venda a Consumidor ( codigo 02 ) , dentro dele esta tambem o 370 e 390
      //////////////////////////////////////////
      with Q_VendasTalao_C350 do begin
        Close;
        parambyname('Mes').AsInteger := nMes;
        parambyname('Ano').AsInteger := nAno;
        Open;
        while Not Eof do begin
            sTexto := '|C350|' +
            'D|' +
            '2|' + // Pelo select esta apenas pegando o movimento = 22 sera sempre nf do talao D1 e D2
            IntToStr(StrToInt(SoNumeros(FieldByName('numero').AsString,20))) + '|' +
            FormatDateTime('ddmmyyyy',FieldByName('data').AsDateTime) + '|' +
            FieldByName('cpf_cnpj').asstring + '|' +
            FieldByName('TotalItens').asstring + '|' +
            FieldByName('Total').asstring + '|' +
            FieldByName('Desconto').asstring + '|' +
            FieldByName('TotalPis').asstring + '|' +
            FieldByName('TotalCofins').asstring + '|' +
            '|' ; // Conta Contabil , que nao esta sendo tratado pelo sistema , verificar  com a contabilidade do cliente
            Writeln(Arq,sTexto);
            Inc(bCRegC350) ;
          //////////////////////////////////////////
          // Registro C370 : Itens da Nota fiscal de Venda a Consumidor ( codigo 02 )
          //////////////////////////////////////////
          with Q_VendasTalaoItens_C370 do begin
            Close;
            parambyname('Saida').AsInteger := Q_VendasTalao_C350.FieldByName('Saida').asinteger;
            Open;
            while Not Eof do begin
              sTexto := '|C370|' +
              FieldByName('sequencia').asstring + '|' +
              SoNumeros(FieldByName('codigo').asstring,14) + '|' +
              FieldByName('quantidade').asstring + '|' +
              FieldByName('unidade').asstring + '|' +
              FieldByName('TotalItem').asstring + '|' +
              {TOTAL DO DESCONTO DO ITEM  NAO COLOCADO POR JA SER DIGITADO COM DESCONTO}
              '|';
              Writeln(Arq,sTexto);
              Inc(bCRegC370);
              next;
            end;
         end;
         //////////////////////////////////////////
         // Registro C390 : Registro Analistico das Notas Fiscais de Vanda a Consumidor ( codigo 02 )
         //////////////////////////////////////////
         with Q_VendasTalao_C390 do begin
            Close;
            parambyname('Saida').AsInteger := Q_VendasTalao_C350.FieldByName('Saida').asinteger;
            Open;
            while Not Eof do begin
              sTexto := '|C390|' +
              SoNumeros(FieldByName('cst').asstring,3) + '|' +
              FieldByName('cfopcst').asstring + '|'   +
              FieldByName('aliqicms').asstring + '|'  +
              FieldByName('totalItem').asstring + '|' +
              FieldByName('totalBase').asstring + '|' +
              FieldByName('totalICMS').asstring + '|' +
              iif(FieldByName('VL_Red_BC').Value < 0, '0',FieldByName('VL_Red_BC').asstring) + '|' +
              '|'; {Código da observação do lançamento fiscal }
              Writeln(Arq,sTexto);
              inc(bCRegC390);
              next;
            end;
         end;
         next;
       end ; // passagem para a proxima nota .
      end;    // final do loop do  Q_VendasTalao_C350
      //////////////////////////////////////////
      // Registro C400 : Equipamentos de ECF ( codigo 02 e 2D )
      //////////////////////////////////////////
      with Q_Equipamentos_400 do begin
        Close;
        Open;
        while Not Eof do begin
           sTexto := '|C400|' +
                     '2D|' + // Codigo de modelo do documento de acordo com tabela 4.1.1 do Ato COTEPE
                     'ECF-IF|' + // Existe duvida nesse campo se é pra colocar o valor da tabela de codigos ou apenas o modelo
                     FieldByName('NROFabricacao').asstring + '|' +
                     FieldByName('NROOrdem').asstring + '|' ;
                     Writeln(Arq,sTexto);
                     Inc(bCRegC400);
           //////////////////////////////////////////
           // Registro C405 : Equipamentos de ECF ( codigo 02 e 2D )
           //////////////////////////////////////////
           with Q_ReduzaoZ_405 do begin
              Close;
              parambyname('NROFabricacao').AsString := Q_Equipamentos_400.FieldByName('NROFabricacao').AsString;
              parambyname('Ano').AsInteger := nAno;
              parambyname('Mes').AsInteger := nMes;
              Open;
              while Not Eof do begin
                 sTexto := '|C405|' +
                           FieldbyName('datamovimento').AsString +'|'+
                           SoNumeros(IntToStr(FieldbyName('CRO').AsInteger),3) +'|'+
                           FieldbyName('CRZ').asstring +'|'+
                           fieldbyName('COO').asstring +'|'+
                           FormatFloat('0.00',fieldByName('grandetotal').AsFloat) + '|' +
                           FormatFloat('0.00',fieldbyName('VendaBruta').AsFloat) + '|' ;
                 Writeln(Arq,sTexto);
                 Inc(bCRegC405);
                 if (fieldbyName('VendaBruta').AsFloat > 0) Then Begin
                     //////////////////////////////////////////
                     // Registro C420 : Totalizadores parciais da reduzao
                     //////////////////////////////////////////
                     with Q_ReducaoTotalizadores_420 do begin
                       Close;
                       parambyname('CRZ').AsInteger := Q_ReduzaoZ_405.FieldbyName('CRZ').AsInteger;
                       Open;
                       while Not Eof do begin
                          sTexto := '|C420|' +
                          FieldByName('totalizador').asstring + '|' +
                          FormatFloat('0.00',FieldByName('Valortotalizador').AsFloat) + '|' +
                          iif(Length(Trim(FieldByName('totalizador').asstring)) = 2,'',Copy(FieldByName('totalizador').asstring,1,2)) + '|' +
                          iif(Length(Trim(FieldByName('totalizador').asstring)) = 2,'',Copy(FieldByName('totalizador').asstring,3,1)) + '|' ;
                          Writeln(Arq,sTexto);
                          Inc(bCRegC420);
                          next;
                        end;
                      end;
                      //////////////////////////////////////////
                      // Registro C460 : Documento Fiscal Emitido Por ECF
                      //////////////////////////////////////////
                      with Q_Cupom_460 do begin
                         Close;
                         parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
                         parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
                         Open;
                         while Not Eof do begin
                            sTexto := '|C460|' +
                            '2D|' +
                            '00|' +
                            SoNumeros(FieldByName('Numero').asstring,6) + '|' +
                            FormatDateTime('ddmmyyyy',FieldByName('Data').AsDateTime) + '|' +
                            FormatFloat('0.00',FieldByName('Total').AsFloat) + '|' +
                            '0,00|' +
                            '0,00|' +
                            FieldByName('cpf_cnpj').AsString+'|' +
                            FieldByName('nome').AsString+'|' ;
                            writeln(Arq,sTexto);
                            Inc(bCRegC460);
                            //////////////////////////////////////////
                            // Registro C470 : Itens dos Cupom
                            //////////////////////////////////////////
                            with Q_ItensCupom_470 do begin
                              Close;
                              parambyname('saida').AsInteger := Q_Cupom_460.FieldByName('Saida').asinteger;
                              Open;
                              while Not Eof do begin
                                  sTexto := '|C470|' +
                                  SoNumeros(FieldByName('codigo').asstring,14) + '|' +
                                  FieldByName('quantidade').asstring + '|' +
                                  FieldByName('qtdCancel').asstring + '|' +
                                  FieldByName('unidade').asstring + '|' +
                                  FormatFloat('0.00',fieldByName('Preco').AsFloat) + '|' +
                                  SoNumeros(FieldByName('cst').asstring,3) + '|' +
                                  FieldByName('cfopcst').asstring + '|' +
                                  FormatFloat('0.00',fieldByName('AliqICMS').AsFloat) + '|' +
                                  '0|0|';
                                  writeln(arq,sTexto);
                                  Inc(bCRegC470);
                                  next;
                              end; // while 470
                           end;  // with 470
                           next ;
                         end ; // while 460
                      end ; // with 460
                      //////////////////////////////////////////
                     // Registro C490 : Nivel 4.
                     //////////////////////////////////////////
                     with Q_Analitico_C490 do begin
                       Close;
                       parambyname('CRZ').AsInteger := Q_ReduzaoZ_405.FieldbyName('CRZ').AsInteger;
                       Open;
                       while Not Eof do begin
                         sTexto := '|C490|' +
                         SoNumeros(FieldByName('cst').asstring,3) + '|' +
                         FieldByName('CFOPCST').AsString + '|' +
                         FormatFloat('0.00',fieldByName('Aliqicms').AsFloat) + '|' +
                         FormatFloat('0.00',FieldByName('Valor').AsFloat) + '|' +
                         FormatFloat('0.00',FieldByName('BCalc').AsFloat) + '|' +
                         FormatFloat('0.00',FieldByName('ICMS').AsFloat) + '|' +
                         {Código da observação do lançamento fiscal (campo 02 do Registro 0460}'|';
                         Writeln(Arq,sTexto);
                         Inc(bCRegC490);
                         next;
                       end;
                     end;
                  End;
                  next;
              end; // while 405
           end; // with 405
           next;
        end; //while 400
      end; // with 400
      Inc(bCRegC990);
      Qtd_BC := bCRegC001+bCRegC100+bCRegC105+bCRegC110+bCRegC111+bCRegC112+bCRegC113+
      bCRegC114+bCRegC115+bCRegC120+bCRegC130+bCRegC140+bCRegC141+bCRegC160+bCRegC165+
      bCRegC170+bCRegC171+bCRegC172+bCRegC173+bCRegC174+bCRegC175+bCRegC176+bCRegC177+
      bCRegC178+bCRegC179+bCRegC190+bCRegC195+bCRegC197+bCRegC300+bCRegC310+bCRegC320+
      bCRegC321+bCRegC350+bCRegC370+bCRegC390+bCRegC400+bCRegC405+bCRegC410+bCRegC420+
      bCRegC425+bCRegC460+bCRegC470+bCRegC490+bCRegC495+bCRegC500+bCRegC510+bCRegC590+
      bCRegC600+bCRegC601+bCRegC610+bCRegC690+bCRegC700+bCRegC790+bCRegC791+bCRegC990;
      Writeln(Arq,'|C990|'+ IntToStr(Qtd_BC) + '|') ;
    End; {If (cbBlock_C.Checked) }
    AtualizaBarrasSPED(3,' Escrevendo Bloco D ');
    //////////////////////////////////////////
    // Abertura do Bloco D    Nao é feito ainda nenhum arquivo
    //////////////////////////////////////////
    if (cbBloco_D.Checked) Then Begin
      Writeln(Arq,'|D001|1|');
      Inc(bDRegD001);
      Inc(bDRegD990);
      Qtd_BD :=  bDRegD100+ bDRegD110+ bDRegD120+ bDRegD130+ bDRegD140+ bDRegD150+
      bDRegD160+ bDRegD161+ bDRegD162+ bDRegD170+ bDRegD180+ bDRegD190+ bDRegD300+
      bDRegD301+ bDRegD310+ bDRegD350+ bDRegD355+ bDRegD360+ bDRegD365+ bDRegD370+
      bDRegD390+ bDRegD400+ bDRegD410+ bDRegD411+ bDRegD420+ bDRegD500+ bDRegD510+
      bDRegD530+ bDRegD590+ bDRegD600+ bDRegD610+ bDRegD690+ bDRegD695+ bDRegD696+
      bDRegD697+ bDRegD990+ bDRegD001;
      Writeln(Arq,'|D990|' + IntToStr(Qtd_BD) + '|') ;
    End; {if (cbBloco_D)}
    AtualizaBarrasSPED(4,' Escrevendo Bloco E ');
    //////////////////////////////////////////
    // Abertura do Bloco E
    //////////////////////////////////////////
    if (cbBloco_E.Checked) Then Begin
      Writeln(Arq,'|E001|0|');
      Inc(bERegE001);
      // Bloco E100 Periodo de Apuracao do ICMS
      Writeln(Arq,'|E100|' + FormatDateTime('ddmmyyyy',dDataI)+ '|'+ FormatDateTime('ddmmyyyy',dDataF) + '|') ;
      Inc(bERegE100);
      // Bloco E110 Periodo de Apuracao do ICMS
      //
      // Bloco E116 Periodo de Apuracao do ICMS
      //
      Inc(bERegE990);
      Qtd_BE :=  bERegE001+ bERegE100+ bERegE110+ bERegE111+ bERegE112+ bERegE113+ bERegE115+ bERegE116+
      bERegE200+ bERegE210+ bERegE220+ bERegE230+ bERegE240+ bERegE250+ bERegE500+ bERegE510+ bERegE520+
      bERegE530+ bERegE990;
      Writeln(Arq,'|E990|'+ IntToStr(Qtd_BE) + '|') ;
    End; {if (cbBloco_E.Checked) Then Begin}

    AtualizaBarrasSPED(5,' Escrevendo Bloco G ');
    //////////////////////////////////////////
    // Abertura do Bloco G    Nao é feito ainda nenhum arquivo
    //////////////////////////////////////////
    if (cbBloco_G.Checked) Then Begin
      Writeln(Arq,'|G001|1|') ;
      Inc(bGRegG001);
      Inc(bGRegG990);
      Qtd_BG := bGRegG001+bGRegG110+bGRegG125+bGRegG126+bGRegG130+bGRegG140+bGRegG990;
      Writeln(Arq,'|G990|' + IntToStr(Qtd_BG) + '|');
    End; {if (cbBloco_G.Checked) Then Begin}

    AtualizaBarrasSPED(6,' Escrevendo Bloco H ');
    //////////////////////////////////////////
    // Abertura do Bloco H    Nao é feito ainda nenhum arquivo
    //////////////////////////////////////////
    if (cbBloco_H.Checked) Then Begin
      Writeln(Arq,'|H001|1|') ;
      Inc(bHRegH001);
      Inc(bHRegH990);
      Qtd_BH := bHRegH001+bHRegH005+bHRegH010+bHRegH990;
      Writeln(Arq,'|H990|' + IntToStr(Qtd_BH) + '|');
    End; {if (cbBloco_H.Checked) Then Begin}
    AtualizaBarrasSPED(7,' Escrevendo Bloco 1 ');
    //////////////////////////////////////////
    // Abertura do Bloco 1000    Nao é feito ainda nenhum arquivo
    //////////////////////////////////////////
    if (cbBloco_1.Checked) Then Begin
      Writeln(Arq,'|1001|1|') ;
      Inc(b1Reg1001);
      Inc(b1Reg1990);
      Qtd_B1 :=  b1Reg1001+ b1Reg1100+ b1Reg1105+ b1Reg1110+ b1Reg1200+ b1Reg1210+ b1Reg1300+
      b1Reg1310+ b1Reg1320+ b1Reg1350+ b1Reg1360+ b1Reg1370+ b1Reg1400+ b1Reg1500+ b1Reg1510+
      b1Reg1600+ b1Reg1700+ b1Reg1710+ b1Reg1800+ b1Reg1900+ b1Reg1910+ b1Reg1920+ b1Reg1921+
      b1Reg1922+ b1Reg1923+ b1Reg1925+ b1Reg1926+ b1Reg1990;
      Writeln(Arq,'|1990|'+ IntToStr(Qtd_B1) + '|');
    End; {if (cbBloco_1.Checked) Then Begin}

    AtualizaBarrasSPED(8,' Escrevendo Bloco 9 - Totalizadores ');
    //////////////////////////////////////////
    // Abertura do Bloco 9000   Totalizadores de linhas
    //////////////////////////////////////////
    b9Reg9900 := 2;
    b9Reg9990 := 1;
    b9Reg9999 := 1;
    Writeln(Arq,'|9001|0|');
    Inc(b9Reg9001);

    if (b0Reg0000 > 0 ) Then Begin
       Inc(b9Reg9900);
          Writeln(Arq,'|9900|' + '0000|' + IntToStr(b0Reg0000) + '|' );
    End;
    if (b0Reg0001 > 0 ) Then Begin
       Inc(b9Reg9900);
          Writeln(Arq,'|9900|' + '0001|' + IntToStr(b0Reg0001) + '|' );
    End;
    if (b0Reg0005 > 0 ) Then Begin
       Inc(b9Reg9900);
          Writeln(Arq,'|9900|' + '0005|' + IntToStr(b0Reg0005) + '|' );
    End;
    if (b0Reg0015 > 0 ) Then Begin
       Inc(b9Reg9900);
          Writeln(Arq,'|9900|' + '0015|' + IntToStr(b0Reg0015) + '|' );
    End;
    if (b0Reg0100 > 0 ) Then Begin
       Inc(b9Reg9900);
          Writeln(Arq,'|9900|' + '0100|' + IntToStr(b0Reg0100) + '|' );
    End;

    if (b0Reg0150 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0150|' + IntToStr(b0Reg0150) + '|' );
    End;
    if (b0Reg0175 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0175|' + IntToStr(b0Reg0175) + '|' );
    End; 
    if (b0Reg0190 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0190|' + IntToStr(b0Reg0190) + '|' );
    End;

    if (b0Reg0200 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0200|' + IntToStr(b0Reg0200) + '|' ); 
    End; 
    if (b0Reg0205 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0205|' + IntToStr(b0Reg0205) + '|' ); 
    End;
    if (b0Reg0206 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0206|' + IntToStr(b0Reg0206) + '|' );
    End;
    if (b0Reg0220 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0220|' + IntToStr(b0Reg0220) + '|' ); 
    End; 
    if (b0Reg0300 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0300|' + IntToStr(b0Reg0300) + '|' );
    End; 
    if (b0Reg0305 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0305|' + IntToStr(b0Reg0305) + '|' ); 
    End;
    if (b0Reg0400 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0400|' + IntToStr(b0Reg0400) + '|' ); 
    End; 
    if (b0Reg0450 > 0 ) Then Begin
       Inc(b9Reg9900);
          Writeln(Arq,'|9900|' + '0450|' + IntToStr(b0Reg0450) + '|' );

    End;
    if (b0Reg0460 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0460|' + IntToStr(b0Reg0460) + '|' );
    End;
    if (b0Reg0500 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0500|' + IntToStr(b0Reg0500) + '|' ); 
    End; 
    if (b0Reg0600 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0600|' + IntToStr(b0Reg0600) + '|' ); 
    End; 

    if (b0Reg0990 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '0990|' + IntToStr(b0Reg0990) + '|' );
    End;

    if (bCRegC001 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C001|' + IntToStr(bCRegC001) + '|' );
    End; 
    if (bCRegC100 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C100|' + IntToStr(bCRegC100) + '|' ); 
    End; 
    if (bCRegC105 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C105|' + IntToStr(bCRegC105 ) + '|' );
    End; 
    if (bCRegC110 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C110|' + IntToStr(bCRegC110) + '|' ); 
    End; 
    if (bCRegC111 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C111|' + IntToStr(bCRegC111) + '|' ); 
    End; 
    if (bCRegC112 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C112|' + IntToStr(bCRegC112) + '|' );
    End;
    if (bCRegC113 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C113|' + IntToStr(bCRegC113) + '|' );
    End;

    if (bCRegC114 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C114|' + IntToStr(bCRegC114) + '|' );
    End;

    if (bCRegC115 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C115|' + IntToStr(bCRegC115) + '|' );
    End;

    if (bCRegC120 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C120|' + IntToStr(bCRegC120) + '|' );
    End;

    if (bCRegC130 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C130|' + IntToStr(bCRegC130) + '|' );
    End;

    if (bCRegC140 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C140|' + IntToStr(bCRegC140) + '|' );
    End;

    if (bCRegC141 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C141|' + IntToStr(bCRegC141) + '|' );
    End;

    if (bCRegC160 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C160|' + IntToStr(bCRegC160) + '|' );
    End;

    if (bCRegC165 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C165|' + IntToStr(bCRegC165) + '|' );
    End;

    if (bCRegC170 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C170|' + IntToStr(bCRegC170) + '|' );
    End;

    if (bCRegC171 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C171|' + IntToStr(bCRegC171) + '|' );
    End;

    if (bCRegC172 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C172|' + IntToStr(bCRegC172) + '|' );
    End;

    if (bCRegC173 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C173|' + IntToStr(bCRegC173) + '|' );
    End;

    if (bCRegC174 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C174|' + IntToStr(bCRegC174) + '|' );
    End;

    if (bCRegC175 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C175|' + IntToStr(bCRegC175) + '|' );
    End;

    if (bCRegC176 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C176|' + IntToStr(bCRegC176) + '|' );
    End;

    if (bCRegC177 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C177|' + IntToStr(bCRegC177) + '|' );
    End;

    if (bCRegC178 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C178|' + IntToStr(bCRegC178) + '|' );
    End;

    if (bCRegC179 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C179|' + IntToStr(bCRegC179) + '|' );
    End;

    if (bCRegC190 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C190|' + IntToStr(bCRegC190) + '|' );
    End;

    if (bCRegC195 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C195|' + IntToStr(bCRegC195) + '|' );
    End;

    if (bCRegC197 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C197|' + IntToStr(bCRegC197) + '|' );
    End;

    if (bCRegC300 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C300|' + IntToStr(bCRegC300) + '|' );
    End;

    if (bCRegC310 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C310|' + IntToStr(bCRegC310) + '|' );
    End;

    if (bCRegC320 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C320|' + IntToStr(bCRegC320) + '|' );
    End;

    if (bCRegC321 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C321|' + IntToStr(bCRegC321) + '|' );

    End;

    if (bCRegC350 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C350|' + IntToStr(bCRegC350) + '|' );
    End;

    if (bCRegC370 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C370|' + IntToStr(bCRegC370) + '|' );
    End;

    if (bCRegC390 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C390|' + IntToStr(bCRegC390) + '|' );
    End;

    if (bCRegC400 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C400|' + IntToStr(bCRegC400) + '|' );
    End;

    if (bCRegC405 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C405|' + IntToStr(bCRegC405) + '|' );
    End;

    if (bCRegC410 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C410|' + IntToStr(bCRegC410) + '|' );
    End;

    if (bCRegC420 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C420|' + IntToStr(bCRegC420) + '|' );
    End;

    if (bCRegC425 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C425|' + IntToStr(bCRegC425) + '|' );
    End;

    if (bCRegC460 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C460|' + IntToStr(bCRegC460) + '|' );
    End;

    if (bCRegC470 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C470|' + IntToStr(bCRegC470) + '|' );
    End;

    if (bCRegC490 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C490|' + IntToStr(bCRegC490) + '|' );
    End;

    if (bCRegC495 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C495|' + IntToStr(bCRegC495) + '|' );
    End;

    if (bCRegC500 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C500|' + IntToStr(bCRegC500) + '|' );
    End;

    if (bCRegC510 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C510|' + IntToStr(bCRegC510) + '|' );
    End;

    if (bCRegC590 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C590|' + IntToStr(bCRegC590) + '|' );
    End;

    if (bCRegC600 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C600|' + IntToStr(bCRegC600) + '|' );
    End;

    if (bCRegC601 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C601|' + IntToStr(bCRegC601) + '|' );
    End;

    if (bCRegC610 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C610|' + IntToStr(bCRegC610) + '|' );
    End;

    if (bCRegC690 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C690|' + IntToStr(bCRegC690) + '|' );
    End;

    if (bCRegC700 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C700|' + IntToStr(bCRegC700) + '|' );
    End;

    if (bCRegC790 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C790|' + IntToStr(bCRegC790) + '|' );
    End;

    if (bCRegC791 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C791|' + IntToStr(bCRegC791) + '|' );
    End;

    if (bCRegC990 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'C990|' + IntToStr(bCRegC990) + '|' );
    End;

    if (bDRegD001 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D001|' + IntToStr(bDRegD001) + '|' );
    End;

    if (bDRegD100 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D100|' + IntToStr(bDRegD100) + '|' );
    End;

    if (bDRegD110 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D110|' + IntToStr(bDRegD110) + '|' );
    End;

    if (bDRegD120 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D120|' + IntToStr(bDRegD120) + '|' );
    End;

    if (bDRegD130 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D130|' + IntToStr(bDRegD130) + '|' );
    End;

    if (bDRegD140 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D140|' + IntToStr(bDRegD140) + '|' );
    End;

    if (bDRegD150 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D150|' + IntToStr(bDRegD150) + '|' );
    End;

    if (bDRegD160 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D160|' + IntToStr(bDRegD160 ) + '|' );
    End;

    if (bDRegD161 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D161|' + IntToStr(bDRegD161 ) + '|' );

    End;

    if (bDRegD162 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D162|' + IntToStr(bDRegD162) + '|' );
    End;

    if (bDRegD170 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D170|' + IntToStr(bDRegD170) + '|' );
    End;

    if (bDRegD180 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D180|' + IntToStr(bDRegD180) + '|' );
    End;

    if (bDRegD190 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D190|' + IntToStr(bDRegD190) + '|' );
    End;

    if (bDRegD300 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D300|' + IntToStr(bDRegD300) + '|' );
    End;

    if (bDRegD301 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D301|' + IntToStr(bDRegD301) + '|' );
    End;

    if (bDRegD310 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D310|' + IntToStr(bDRegD310) + '|' );
    End;

    if (bDRegD350 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D350|' + IntToStr(bDRegD350) + '|' );
    End;

    if (bDRegD355 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D355|' + IntToStr(bDRegD355) + '|' );
    End;

    if (bDRegD360 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D360|' + IntToStr(bDRegD360) + '|' );
    End;

    if (bDRegD365 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D365|' + IntToStr(bDRegD365) + '|' );
    End;

    if (bDRegD370 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D370|' + IntToStr(bDRegD370 ) + '|' );
    End;

    if (bDRegD390 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D390|' + IntToStr(bDRegD390) + '|' );
    End;

    if (bDRegD400 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D400|' + IntToStr(bDRegD400) + '|' );
    End;

    if (bDRegD410 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D410|' + IntToStr(bDRegD410) + '|' );
    End;

    if (bDRegD411 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D411|' + IntToStr(bDRegD411) + '|' );
    End;

    if (bDRegD420 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D420|' + IntToStr(bDRegD420) + '|' );
    End;

    if (bDRegD500 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D500|' + IntToStr(bDRegD500) + '|' );
    End;

    if (bDRegD510 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D510|' + IntToStr(bDRegD510) + '|' );
    End;

    if (bDRegD530 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D530|' + IntToStr(bDRegD530) + '|' );
    End;

    if (bDRegD590 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D590|' + IntToStr(bDRegD590) + '|' );
    End;

    if (bDRegD600 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D600|' + IntToStr(bDRegD600) + '|' );
    End;

    if (bDRegD610 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D610|' + IntToStr(bDRegD610) + '|' );
    End;

    if (bDRegD690 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D690|' + IntToStr(bDRegD690) + '|' );
    End;

    if (bDRegD695 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D695|' + IntToStr(bDRegD695) + '|' );
    End;

    if (bDRegD696 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D696|' + IntToStr(bDRegD696) + '|' );
    End;

    if (bDRegD697 > 0 ) Then Begin  
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D697|' + IntToStr(bDRegD697) + '|' );
    End;

    if (bDRegD990 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'D990|' + IntToStr(bDRegD990) + '|' );
    End;

    if (bERegE001 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E001|' + IntToStr(bERegE001) + '|' );
    End;

    if (bERegE100 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E100|' + IntToStr(bERegE100) + '|' );
    End;

    if (bERegE110 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E110|' + IntToStr(bERegE110) + '|' );
    End;

    if (bERegE111 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E111|' + IntToStr(bERegE111) + '|' );
    End;

    if (bERegE112 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E112|' + IntToStr(bERegE112) + '|' );
    End;

    if (bERegE113 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E113|' + IntToStr(bERegE113) + '|' );
    End;

    if (bERegE115 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E115|' + IntToStr(bERegE115) + '|' );
    End;

    if (bERegE116 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E116|' + IntToStr(bERegE116) + '|' );
    End;

    if (bERegE200 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E200|' + IntToStr(bERegE200) + '|' );
    End;

    if (bERegE210 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E210|' + IntToStr(bERegE210) + '|' );
    End;

    if (bERegE220 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E220|' + IntToStr(bERegE220) + '|' );
    End;

    if (bERegE230 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E230|' + IntToStr(bERegE230) + '|' );
    End;

    if (bERegE240 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E240|' + IntToStr(bERegE240) + '|' );
    End;

    if (bERegE250 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E250|' + IntToStr(bERegE250) + '|' );
    End;

    if (bERegE500 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E500|' + IntToStr(bERegE500) + '|' );
    End;

    if (bERegE510 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E510|' + IntToStr(bERegE510) + '|' );
    End;

    if (bERegE520 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E520|' + IntToStr(bERegE520) + '|' );
    End;

    if (bERegE530 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E530|' + IntToStr(bERegE530) + '|' );
    End;

    if (bERegE990 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'E990|' + IntToStr(bERegE990) + '|' );
    End;

    if (bGRegG001 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'G001|' + IntToStr(bGRegG001) + '|' );
    End;

    if (bGRegG110 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'G110|' + IntToStr(bGRegG110) + '|' );
    End;

    if (bGRegG125 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'G125|' + IntToStr(bGRegG125 ) + '|' );
    End;

    if (bGRegG126 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'G126|' + IntToStr(bGRegG126) + '|' );
    End;

    if (bGRegG130 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'G130|' + IntToStr(bGRegG130) + '|' );
    End;

    if (bGRegG140 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'G140|' + IntToStr(bGRegG140) + '|' );
    End;

    if (bGRegG990 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'G990|' + IntToStr(bGRegG990) + '|' );
    End;

    if (bHRegH001 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'H001|' + IntToStr(bHRegH001) + '|' );
    End;

    if (bHRegH005 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'H005|' + IntToStr(bHRegH005) + '|' );
    End;

    if (bHRegH010 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'H010|' + IntToStr(bHRegH010) + '|' );
    End;

    if (bHRegH990 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + 'H990|' + IntToStr(bHRegH990) + '|' );

    End;


    if (b1Reg1001 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1001|' + IntToStr(b1Reg1001) + '|' );
    End;

    if (b1Reg1100 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1100|' + IntToStr(b1Reg1100) + '|' );
    End;

    if (b1Reg1105 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1105|' + IntToStr(b1Reg1105) + '|' );
    End;

    if (b1Reg1110 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1110|' + IntToStr(b1Reg1110) + '|' );
    End;

    if (b1Reg1200 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1200|' + IntToStr(b1Reg1200) + '|' );
    End;

    if (b1Reg1210 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1210|' + IntToStr(b1Reg1210) + '|' );
    End;

    if (b1Reg1300 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1300|' + IntToStr(b1Reg1300) + '|' );
    End;

    if (b1Reg1310 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1310|' + IntToStr(b1Reg1310) + '|' );
    End;


    if (b1Reg1320 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1320|' + IntToStr(b1Reg1320) + '|' );
    End;

    if (b1Reg1350 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1350|' + IntToStr(b1Reg1350) + '|' );
    End;

    if (b1Reg1360 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1360|' + IntToStr(b1Reg1360) + '|' );
    End;

    if (b1Reg1370 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1370|' + IntToStr(b1Reg1370) + '|' );
    End;

    if (b1Reg1400 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1400|' + IntToStr(b1Reg1400) + '|' );
    End;

    if (b1Reg1500 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1500|' + IntToStr(b1Reg1500 ) + '|' );
    End;

    if (b1Reg1510 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1510|' + IntToStr(b1Reg1510) + '|' );
    End;

    if (b1Reg1600 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1600|' + IntToStr(b1Reg1600) + '|' );
    End;


    if (b1Reg1700 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1700|' + IntToStr(b1Reg1700) + '|' );
    End;

    if (b1Reg1710 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1710|' + IntToStr(b1Reg1710) + '|' );
    End;

    if (b1Reg1800 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1800|' + IntToStr(b1Reg1800) + '|' );
    End;

    if (b1Reg1900 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1900|' + IntToStr(b1Reg1900) + '|' );
    End;

    if (b1Reg1910 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1910|' + IntToStr(b1Reg1910) + '|' );
    End;

    if (b1Reg1920 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1920|' + IntToStr(b1Reg1920) + '|' );
    End;

    if (b1Reg1921 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1921|' + IntToStr(b1Reg1921) + '|' );
    End;

    if (b1Reg1922 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1922|' + IntToStr(b1Reg1922) + '|' );
    End;

    if (b1Reg1923 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1923|' + IntToStr(b1Reg1923) + '|' );
    End;

    if (b1Reg1925 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1925|' + IntToStr(b1Reg1925) + '|' );
    End;

    if (b1Reg1926 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1926|' + IntToStr(b1Reg1926) + '|' );
    End;

    if (b1Reg1990 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '1990|' + IntToStr(b1Reg1990) + '|' );
    End;

    if (b9Reg9001 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '9001|' + IntToStr(b9Reg9001) + '|' );
    End;


    if (b9Reg9900 > 0 ) Then Begin
       Inc(b9Reg9900);
       Writeln(Arq,'|9900|' + '9900|' + IntToStr(b9Reg9900) + '|' );
    End;

    Writeln(Arq,'|9900|' + '9990|1|' );
    Writeln(Arq,'|9900|' + '9999|1|' );
    Qtd_B9 := b9Reg9001+b9Reg9900+b9Reg9990+b9Reg9999;
    Writeln(Arq,'|9990|' + IntToStr(Qtd_B9) + '|' );
    Writeln(Arq,'|9999|' + IntToStr(Qtd_B0+Qtd_BC+Qtd_BD+Qtd_BE+Qtd_BG+Qtd_BH+Qtd_B1+Qtd_B9) + '|' );
    CloseFile(Arq);
    if (MessageDlg('Deseja assinar digitalmente este arquivo?', mtConfirmation, [mbYes,mbNo], 0) = mrYes) then
      dmECF.ECF1.AssinarAquivo(sArq);
    AtualizaBarrasSPED(0,'' );      
    Application.MessageBox(PChar('Arquivos Gerados com Sucesso em: '+sArq),'Aviso',mb_ok);
  except
    On e:Exception do begin
      ShowMessage('Erro: '+e.message);
      DMProjeto.GeraLog('LivrosFiscais',e.message);
      CloseFile(Arq);
    end;
  end;
End;


procedure TDlgGeracaoArqMagnetico.AtualizaBarrasSPED(nI: Integer; msg: String);
Begin
  BarraSPED.Position := nI;
  BarraSPED.Refresh;
  lbPossicaoSPED.Caption := msg;
  Application.ProcessMessages;
End;


procedure TDlgGeracaoArqMagnetico.AtualizaBarras(nI: Integer; msg: String);
Begin
  Barra.Position := nI;
  Barra.Refresh;
  lbPosicao.Caption := msg;
  Application.ProcessMessages;
End;


function TDlgGeracaoArqMagnetico.ConverteValor;
begin
  if nValor <= 0 then
    Result := AdicionarStr('0','0',nQuant)
  else
    Result := FormatCurr(AdicionarStr('0','0',nQuant),nValor*100);
end;

function TDlgGeracaoArqMagnetico.ConverteValor3;
begin
  if nValor <= 0 then
    Result := AdicionarStr('0','0',nQuant)
  else
    Result := FormatCurr(AdicionarStr('0','0',nQuant),nValor*1000);
end;

procedure TDlgGeracaoArqMagnetico.cb88Click(Sender: TObject);

begin
  inherited;
  cb8801.checked := cb88.checked;
  cb8802.checked := cb88.checked;
  cb8803.checked := cb88.checked;
  cb8804.checked := cb88.checked;
  cb8805.checked := cb88.checked;
  cb8806.checked := cb88.checked;
  cb8815.checked := cb88.checked;
  cb8816.checked := cb88.checked;
end;

procedure TDlgGeracaoArqMagnetico.btLimparClick(Sender: TObject);
begin
  inherited;
  GerarSPED();
end;

procedure TDlgGeracaoArqMagnetico.FormShow(Sender: TObject);
begin
  inherited;
  dfMesAno.SetFocus;
  dfMesAno.SelectAll;
end;

procedure TDlgGeracaoArqMagnetico.FormsComponentBeforeLoadKey(
  Sendet: TObject; var Where: String);
var nAno,nMes,nDia: word;
begin
  inherited;
  pcSintegraSPED.ActivePageIndex := 0;
  if DMProjeto.QtdParametrosForm > 1 then begin
    dfDTInicio  := DMProjeto.GetParametrosForm(0);
    dfDTFIM     := DMProjeto.GetParametrosForm(1);
  end;
  decodedate(dfDTInicio,nAno,nMes,nDia);
//  nMes:=nMes - 1;
//  If nMes = 0 Then Begin
//    nMes := 12;
//    nAno := nAno -1;
//  End;
  dfMesAno.Text := AdicionarStr(IntToStr(nMes),'0',2)+'/'+AdicionarStr(IntToStr(nAno),'0',4);
  dfMesAnoSPED.Text := dfMesAno.Text;
end;

procedure TDlgGeracaoArqMagnetico.dfMesAnoSPEDExit(Sender: TObject);
begin
  inherited;
  dfMesAno.Text := dfMesAnoSPED.Text;
end;

procedure TDlgGeracaoArqMagnetico.dfMesAnoExit(Sender: TObject);
begin
  inherited;
  dfMesAnoSPED.Text := dfMesAno.Text;
end;

function TDlgGeracaoArqMagnetico.GerarSintegra(): Boolean;
var sArq, sTexto, sTipoGIM, sModalidade, d: string;
    sSituacao,sInscricao,sNota,sSerie,sUF,sCPF_CGC,sNotaX,sModeloECF,sSituacaoTrib, CupomInicio, CupomFIM: string;
    nAno,nMes,nDia: word;
    dDataI, dDataF, dData,dDataECF: TDateTime;
    nValorOutras,nValortotalCFOP, nValorTotal,nDesconto,nIsentas,nBaseCalculo,nValorICMS,nICMS,nBaseSubst,nValorOutrasICMS,nAliqICMS: currency;
    nNota,nSeq,nArq, nReg50,nReg51,nReg53,nReg54,nReg55,nReg60, nReg61,nReg70,nReg74,nReg75,nReg88: integer;
    sCodProduto,sReg50,sReg51,sReg53,sReg54,sReg55,sReg60,sReg61,sReg70,sReg74,sReg75,sReg88: string;
    shora:Tdatetime;
    XnValortotalCFOP,XnValorOutras, XnValorTotal,XnDesconto,XnIsentas,XnBaseCalculo,XnValorICMS,XnICMS,XnBaseSubst,XnValorOutrasICMS,XnAliqICMS: currency;
    nSimplesNacional_09,nSimplesNacional_10,nSimplesNacional_11,nSimplesNacional_14,nSimplesNacional_15,nSimplesNacional_18: Currency;
begin
  inherited;
  Result := false;
  sArq := ExtractFilePath(Application.ExeName) + 'GIM'+RestringirCarac(dfMesAno.text)+RestringirCarac(DMPRojeto.sCPF_CNPJEmpresa)+'.txt';
  application.ProcessMessages;
  shora:=Now;
  nReg50 := 0 ; nReg51 := 0 ; nReg53 := 0 ; nReg54 := 0 ; nReg55 := 0 ; nReg60 := 0; nReg61 := 0 ; nReg70 := 0 ; nReg74 := 0;nReg75 := 0; nReg88 := 0;
  nDia := 1;
  nMes := StrToInt(copy(dfMesAno.text,1,2));
  nAno := StrToInt(copy(dfMesAno.text,4,4));
  Q_Empresas.close;
  Q_Empresas.open;
  Q_LivrosMensais.close;
  Q_LivrosMensais.params[0].asinteger := nMes;
  Q_LivrosMensais.params[1].asinteger := nAno;
  Q_LivrosMensais.open;

  Q_TransfCreditos.close;
  Q_TransfCreditos.params[0].asinteger := nMes;
  Q_TransfCreditos.params[1].asinteger := nAno;
  Q_TransfCreditos.open;

  Q_LivrosAnuais.close;
  Q_LivrosAnuais.params[0].asinteger := nAno;
  Q_LivrosAnuais.open;

  if Not (Q_Empresas.Active) Then
    Q_Empresas.Active := True;



  dDataI := EncodeDate(nAno,nMes,nDia);
  d := dateTostr(dDataI);
  dDataF := Now;
  if rgFinalidade.itemindex = 0 then
    sTipoGIM := 'N'
  else
    sTipoGIM := 'R';
  try
    if not FileExists(sArq) then begin
      nArq := FileCreate(sArq);
      FileClose(nArq);
      AssignFile(Arq,sArq);
      System.Append(Arq);
    end
    else begin
      AssignFile(Arq,sArq);
      Rewrite(Arq);
    end;
    //////////////////////////////////////////
    // Registro Tipo 10
    //////////////////////////////////////////
    sTexto :=
    '10'+
    AdicionarStr(Q_Empresas.FieldByName('CPF_CNPJ').asstring,'0',14)+
    PreencherStr(RestringirCarac(Q_Empresas.FieldByName('Inscricao_est').asstring),' ',14)+
    PreencherStr(copy(Q_Empresas.FieldByName('Razao').asstring,1,35),' ',35)+
    PreencherStr(Q_Empresas.FieldByName('Cidade').asstring,' ',30)+
    PreencherStr(Q_Empresas.FieldByName('UF').asstring,' ',2)+
    PreencherStr(copy(RestringirCarac(Q_Empresas.FieldByName('Fax').asstring),1,10),' ',10)+
    FormatDateTime('yyyymmdd',dDataI)+
    FormatDateTime('yyyymmdd',dDataF)+
    '3'+  {Pode ser 1,2 ou 3}
    '3'+
    IntToStr(rgFinalidade.ItemIndex+1);
    Writeln(Arq,sTexto);
    AtualizaBarras(7,' Escrevendo Livro Tipo 11');
    //////////////////////////////////////////
    // Registro Tipo 11
    //////////////////////////////////////////
    sTexto :=
    '11'+
    PreencherStr(copy(Q_Empresas.FieldByName('Endereco').asstring,1,34),' ',34)+
    AdicionarStr(Q_Empresas.FieldByName('Numero').asstring,'0',5)+
    PreencherStr(copy(Q_Empresas.FieldByName('Complemento').asstring,1,22),' ',22)+
    PreencherStr(copy(Q_Empresas.FieldByName('Bairro').asstring,1,15),' ',15)+
    PreencherStr(RestringirCarac(Q_Empresas.FieldByName('Cep').asstring),' ',8)+
    PreencherStr(Copy(  iif(Q_Empresas.FieldByName('Contato').IsNull,Q_Empresas.FieldByName('Nome').asstring,Q_Empresas.FieldByName('Contato').asstring),1,28),' ',28)+
    AdicionarStr(copy(SoNumeros(Q_Empresas.FieldByName('Fone1').asstring,12),1,12),'0',12);
    Writeln(Arq,sTexto);
    AtualizaBarras(8,' Escrevendo Livro Tipo 50 Saidas ');
    //////////////////////////////////////////
    // Registro Tipo 12 Exportação de dados dos Favorecidos para a DIGICON
    //////////////////////////////////////////
    if (dfImportacao.Text = '1') then with Q_Favorecidos do Begin
      Close;
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      Open;
      while not Eof do begin
        sTexto := '12'+
                  AdicionarStr(FieldByName('CPF_CNPJ').asstring,'0',14)+
                  PreencherStr(RestringirCarac(FieldByName('Inscricao_est').asstring),' ',14)+
                  PreencherStr(Copy(FieldByName('Razao').asstring,1,45),' ',45)+
                  PreencherStr(Copy(FieldByName('Cidade').asstring,1,35),' ',35)+
                  PreencherStr(Copy(FieldByName('UF').asstring,1,02),' ',02)+
                  PreencherStr(Copy(FieldByName('TIPO').asstring,1,01),' ',01);
        Writeln(Arq,sTexto);
        Next;
      end;

    end;

    //////////////////////////////////////////
    // Registro Tipo 50 Saidas
    //////////////////////////////////////////
    if cb50.Checked and (rgTipo.ItemIndex in [0,2]) then with Q_NFSaidas do begin
      close;
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      open;
      while not eof do begin
        sSituacao := 'N';
        sInscricao := PreencherStr(copy(RestringirCarac(FieldByName('Inscricao_est').asstring),1,14),' ',14);
        sCPF_CGC   := FieldByName('CPF_CNPJ').asstring;
        if (length(sCPF_CGC) <= 11) then begin
          sInscricao := PreencherStr('ISENTO',' ',14);
//            sCPF_CGC   := PreencherStr('0','0',14);
        end
        else if ((length(sCPF_CGC) = 14) and
                (trim(sInscricao) = '')) or (pos(copy(trim(sInscricao),1,1),'0123456789') = 0) then
          sInscricao := PreencherStr('ISENTO',' ',14);
        if FieldByName('Situacao').asstring = 'C' then
          sSituacao := 'S';

        nAliqICMS := FieldByName('AliqICMSVenda').asCurrency;
        nIsentas := FieldByName('ValorIsentas').asCurrency;
        nBaseCalculo := FieldByName('BaseCalcICMS').asCurrency;
        nValorICMS := FieldByName('ValorICMS').asCurrency;
        nValorOutrasICMS := FieldByName('outrasdespesas').asCurrency;
        nValortotalCFOP  := FieldByName('Total').asCurrency;

        if (FieldByName('Cst').AsString = '00') then
           nBaseCalculo  := nValortotalCFOP;


        if FieldByName('ContabilizaICMS').asstring = 'N' then begin
          nIsentas := FieldByName('Total').asCurrency;
          nBaseCalculo := 0;
          nValorICMS := 0;
          nAliqICMS    := 0;
        end;
        //Para PARAIBASIM Com devolucoes ou transferencia.
        if (Pos(Q_Empresas.FieldByName('TIPOEMPRESA').AsString,'EM')>0)
          and (Pos(FieldByName('CFOPNota').asstring,'5102*5101*6102*6101') < 1) then begin
          nValorOutrasICMS := FieldByName('Total').asCurrency;
          nIsentas     := 0;
          nBaseCalculo := 0;
          nValorICMS   := 0;
          nAliqICMS    := 0;
        end;
        if (Q_Empresas.FieldByName('TIPOEMPRESA').AsString = 'S') Then begin
          nAliqICMS := 0;
          nIsentas := 0;
          nBaseCalculo := 0;
          nValorICMS := 0;
          nValorOutrasICMS := FieldByName('Total').asCurrency;
          nValortotalCFOP  := FieldByName('Total').asCurrency;
        end;
        if ((sSituacao = 'S') or (FieldByName('TipoPadrao').Value = 8)) then begin
          nValortotalCFOP := 0;
          nValorOutrasICMS := 0;
          nIsentas     := 0;
          nBaseCalculo := 0;
          nValorICMS   := 0;
          nAliqICMS    := 0;
        end;
        sTexto :=
        '50'+
        AdicionarStr(sCPF_CGC,'0',14)+
        sInscricao+
        FormatDateTime('yyyymmdd',FieldByName('Data').asDateTime)+
        PreencherStr(FieldByName('UFDestino').asstring,' ',2)+
        Copy(FieldByName('Modelo').asstring,1,2)+
        PreencherStr(FieldByName('SerieNota').asstring,' ',3)+
        PreencherStr(direita(FieldByName('Numero').asstring,6),' ',6)+
        PreencherStr(FieldByName('CFOPCST').asstring,' ',4)+
        'P'+
        ConverteValor(nValortotalCFOP,13)+
        ConverteValor(nBaseCalculo,13)+
        ConverteValor(nValorICMS,13)+
        ConverteValor(nIsentas,13)+
        ConverteValor(nValorOutrasICMS,13)+
        ConverteValor(nAliqICMS,4)+
        sSituacao;
        Writeln(Arq,sTexto);
        inc(nReg50);
        next;
      end;
    end;
    //////////////////////////////////////////
    // Registro Tipo 50 Entradas
    //////////////////////////////////////////
    AtualizaBarras(9,' Escrevendo Livro Tipo 50 Entradas ');
    if cb50.Checked and (rgTipo.ItemIndex in [0,1]) then with Q_NFEntradas do begin
      close;
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      open;
      while not eof do begin
        sSituacao := 'N';
        sInscricao := PreencherStr(copy(RestringirCarac(FieldByName('Inscricao_est').asstring),1,14),' ',14);
        sCPF_CGC   := FieldByName('CPF_CNPJ').asstring;
        if length(sCPF_CGC) <= 11 then begin
          sInscricao := PreencherStr('ISENTO',' ',14);
        end
        else if ((length(sCPF_CGC) = 14) and (trim(sInscricao) = '')) or (pos(copy(trim(sInscricao),1,1),'0123456789') = 0) then
          sInscricao := PreencherStr('ISENTO',' ',14);

        if FieldByName('Situacao').asstring = 'C' then
          sSituacao := 'S';


        nValorOutrasICMS := FieldByName('outrasdespesas').asCurrency;
        nValortotalCFOP  := FieldByName('Total').asCurrency;
        nAliqICMS := FieldByName('AliqICMSCOMPRA').asCurrency;
        nIsentas := FieldByName('ValorIsentas').asCurrency;
        nBaseCalculo := FieldByName('BaseCalcICMS').asCurrency;
        nValorICMS := FieldByName('ValorICMS').asCurrency;
        if FieldByName('ContabilizaICMS').asstring = 'N' then begin
          nIsentas := FieldByName('Total').asCurrency;
          nBaseCalculo := 0;
          nValorICMS := 0;
        end;

        if ((Q_Empresas.FieldByName('TIPOEMPRESA').AsString = 'S') or (FieldByName('FONTE').AsString = 'S')) Then begin
          //nAliqICMS := 0;
          nIsentas := 0;
          nBaseCalculo := 0;
          nValorICMS := 0;
          nValorOutrasICMS := FieldByName('Total').asCurrency;
          nValortotalCFOP  := FieldByName('Total').asCurrency;
          nAliqICMS := 0;
        end;
        sTexto :=
        '50'+
        AdicionarStr(sCPF_CGC,'0',14)+
        sInscricao+
        FormatDateTime('yyyymmdd',FieldByName('Data').asDateTime)+
        PreencherStr(FieldByName('UFOrigem').asstring,' ',2)+
        PreencherStr(FieldByName('Modelo').asstring,' ',2) +
        iif(FieldByName('SerieNota').asstring = 'U','   ',PreencherStr(FieldByName('SerieNota').asstring,' ',3))+
        PreencherStr(direita(FieldByName('Numero').asstring,6),' ',6)+
        PreencherStr(FieldByName('CFOPENTRADA').asstring,' ',4)+
        'T'+
        ConverteValor(nValortotalCFOP,13)+
        ConverteValor(nBaseCalculo,13)+
        ConverteValor(nValorICMS,13)+
        ConverteValor(nIsentas,13)+
        ConverteValor(nValorOutrasICMS,13)+
        ConverteValor(nAliqICMS,4)+
        sSituacao;
        Writeln(Arq,sTexto);
        inc(nReg50);
        next;
      end;
    end;
    AtualizaBarras(10,' Escrevendo Livro Tipo 51 Saidas ');
    //////////////////////////////////////////
    // Registro Tipo 51 Saidas
    //////////////////////////////////////////
    if cb51.Checked and (rgTipo.ItemIndex in [0,2]) and (Q_Empresas.fieldbyname('contribipi').asstring = 'S') then with Q_NFSaidas do begin
      close;
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      open;
      while not eof do begin
        if FieldByName('ValorIPI').ascurrency > 0 then begin
          sSituacao := 'N';
          sInscricao := PreencherStr(copy(RestringirCarac(FieldByName('Inscricao_est').asstring),1,14),' ',14);
          sCPF_CGC   := FieldByName('CPF_CNPJ').asstring;
          if (length(sCPF_CGC) <= 11) then begin
            sInscricao := PreencherStr('ISENTO',' ',14);
//              sCPF_CGC   := PreencherStr('0','0',14);
          end
          else if ((length(sCPF_CGC) = 14) and (trim(sInscricao) = '')) or (pos(copy(trim(sInscricao),1,1),'0123456789') = 0) then
            sInscricao := PreencherStr('ISENTO',' ',14);
          if FieldByName('Situacao').asstring = 'C' then
            sSituacao := 'S';

          sTexto :=
          '51'+
          AdicionarStr(sCPF_CGC,'0',14)+
          sInscricao+
          FormatDateTime('yyyymmdd',FieldByName('Data').asDateTime)+
          PreencherStr(FieldByName('UFDestino').asstring,' ',2)+
          PreencherStr(FieldByName('SerieNota').asstring,' ',3)+
          PreencherStr(direita(FieldByName('Numero').asstring,6),' ',6)+
          PreencherStr(FieldByName('CFOPNota').asstring,' ',4)+
          ConverteValor(FieldByName('Total').asCurrency,13)+
          ConverteValor(FieldByName('ValorIPI').asCurrency,13)+
          ConverteValor(FieldByName('ValorIsentasIPI').asCurrency,13)+
          ConverteValor(FieldByName('ValorOutrasIPI').asCurrency,13)+
          PreencherStr(' ',' ',20)+
          sSituacao;
          Writeln(Arq,sTexto);
          inc(nReg51);
        end;
        next;
      end;
    end;
    AtualizaBarras(11,' Escrevendo Livro Tipo 51 Entradas ');
    //////////////////////////////////////////
    // Registro Tipo 51 Entradas
    //////////////////////////////////////////
    if cb51.Checked and (rgTipo.ItemIndex in [0,1]) and (Q_Empresas.fieldbyname('contribipi').asstring = 'S') then with Q_NFEntradas do begin
      close;
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      open;
      while not eof do begin
        if FieldByName('ValorIPI').ascurrency > 0 then begin
          sSituacao := 'N';
          sInscricao := PreencherStr(copy(RestringirCarac(FieldByName('Inscricao_est').asstring),1,14),' ',14);
          sCPF_CGC   := FieldByName('CPF_CNPJ').asstring;
          if (length(sCPF_CGC) <= 11) then begin
            sInscricao := PreencherStr('ISENTO',' ',14);
//              sCPF_CGC   := PreencherStr('0','0',14);
          end
          else if ((length(sCPF_CGC) = 14) and (trim(sInscricao) = '')) or (pos(copy(trim(sInscricao),1,1),'0123456789') = 0) then
            sInscricao := PreencherStr('ISENTO',' ',14);
          if FieldByName('Situacao').asstring = 'C' then
            sSituacao := 'S';

          sTexto :=
          '51'+
          AdicionarStr(sCPF_CGC,'0',14)+
          sInscricao+
          FormatDateTime('yyyymmdd',FieldByName('Data').asDateTime)+
          PreencherStr(FieldByName('UFOrigem').asstring,' ',2)+
          PreencherStr(FieldByName('SerieNota').asstring,' ',3)+
          PreencherStr(direita(FieldByName('Numero').asstring,6),' ',6)+
          PreencherStr(FieldByName('CFOPEntrada').asstring,' ',4)+
          ConverteValor(truncar(FieldByName('Total').asCurrency,2),13)+
          ConverteValor(truncar(FieldByName('ValorIPI').asCurrency,2),13)+
          ConverteValor(FieldByName('ValorIsentasIPI').asCurrency,13)+
          ConverteValor(FieldByName('ValorOutrasIPI').asCurrency,13)+
          PreencherStr(' ',' ',20)+
          sSituacao;
          Writeln(Arq,sTexto);
          inc(nReg51);
        end;
        next;
      end;
    end;
    AtualizaBarras(12,' Escrevendo Livro Tipo 53 Saidas ');
    //////////////////////////////////////////
    // Registro Tipo 53 Saidas
    //////////////////////////////////////////
    if cb53.Checked and (rgTipo.ItemIndex in [0,2]) then with Q_NFSaidas do begin
      close;
      Sql.Text :=  ' Select f.cpf_cnpj, f.inscricao_est, s.data, '+
                   '        s.ufdestino, s.serienota, s.numero, '+
                   '        s.cfopnota, s.total, s.basecalcicms, '+
                   '        s.basecalcicms, s.valoricms, s.situacao, '+
                   '        s.aliqicmsvenda, s.valorisentas, s.valoroutrasicms, '+
                   '        s.contabilizaicms, s.valorseguro, s.frete, s.outrasdespesas, '+
                   '        s.tipopadrao, s.modelo, s.valoricmssubst, s.basecalcsubst '+
                   ' from Saidas s '+
                   '   INNER join favorecidos f on s.favorecido = f.favorecido '+
                   ' where s.numero is not null '+
                   ' and s.numero > '''' '+
                   ' and s.tipomovimento in (select x.tipomovimento from tiposmovimento x where x.livrofiscal = ''S'') '+
                   ' and Extract(month from s.data) = :Mes '+
                   ' and Extract(year from s.data) = :Ano '+
                   ' and s.possuiicms = ''S'' '+
                   ' and s.situacao = ''N'' '+
                   ' and S.fonte =''S'' '+
                   ' and s.serienota <> ''ECF'' '+
                   ' and s.cfopnota is not null '+
                   ' order by s.data, s.numero ' ;
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      open;
      while not eof do begin
        if FieldByName('ValorICMSSubst').ascurrency > 0 then begin
          sSituacao := 'N';
          sInscricao := PreencherStr(copy(RestringirCarac(FieldByName('Inscricao_est').asstring),1,14),' ',14);
          sCPF_CGC   := FieldByName('CPF_CNPJ').asstring;
          if (length(sCPF_CGC) <= 11) then begin
            sInscricao := PreencherStr('ISENTO',' ',14);
//              sCPF_CGC   := PreencherStr('0','0',14);
          end
          else if ((length(sCPF_CGC) = 14) and (trim(sInscricao) = '')) or (pos(copy(trim(sInscricao),1,1),'0123456789') = 0) then
            sInscricao := PreencherStr('ISENTO',' ',14);
          if FieldByName('Situacao').asstring = 'C' then
            sSituacao := 'S';
          sTexto :=
          '53'+
          AdicionarStr(sCPF_CGC,'0',14)+
          sInscricao+
          FormatDateTime('yyyymmdd',FieldByName('Data').asDateTime)+
          PreencherStr(FieldByName('UFDestino').asstring,' ',2)+
          Copy(FieldByName('Modelo').asstring,1,2)+
          iif(FieldByName('SerieNota').asstring = 'U','   ',PreencherStr(FieldByName('SerieNota').asstring,' ',3))+
          PreencherStr(direita(FieldByName('Numero').asstring,6),' ',6)+
          PreencherStr(FieldByName('CFOPNota').asstring,' ',4)+
          'P'+
          ConverteValor(truncar(FieldByName('BaseCalcSubst').asCurrency,2),13)+
          ConverteValor(FieldByName('ValorICMSSubst').asCurrency,13)+
          ConverteValor(FieldByName('Frete').asCurrency+FieldByName('ValorSeguro').asCurrency+FieldByName('OutrasDespesas').asCurrency,13)+
          sSituacao+
          PreencherStr(' ',' ',30);
          Writeln(Arq,sTexto);
          inc(nReg53);
        end;
        next;
      end;
    end;
    AtualizaBarras(13,' Escrevendo Livro Tipo 54 Saidas ');
    /////////////////////////////////////////////
    // Registro Tipo 54 Saidas
    /////////////////////////////////////////////
    if cb54.Checked and (rgTipo.ItemIndex in [0,2]) then with Q_NFSaidasItens do begin
      close;
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      open;
      nSeq:=0;
      while not eof do begin
        nNota := FieldByName('Saida').asInteger;
        Inc(nSeq);
        sInscricao := PreencherStr(copy(RestringirCarac(FieldByName('Inscricao_est').asstring),1,14),' ',14);
        sCPF_CGC   := FieldByName('CPF_CNPJ').asstring;
        if length(sCPF_CGC) <= 11 then
         begin
          sInscricao := PreencherStr('ISENTO',' ',14);
//            sCPF_CGC   := PreencherStr('0','0',14);
         end
        else
         if ((length(sCPF_CGC) = 14) and (trim(sInscricao) = '')) or (pos(copy(trim(sInscricao),1,1),'0123456789') = 0) then
          sInscricao := PreencherStr('ISENTO',' ',14);

        nAliqICMS := FieldByName('AliqICMS').asCurrency;
        nBaseCalculo := FieldByName('BaseCalcICMSProd').asCurrency;
        nBaseSubst := FieldByName('BaseCalcSubstProd').asCurrency;
        if (Q_Empresas.FieldByName('TIPOEMPRESA').AsString = 'S') Then begin
          nAliqICMS := 0;
          nBaseCalculo := 0;
          nBaseSubst := 0;
        end;

        if (FieldByName('TipoPadrao').Value = 5) Then
           nValorTotal := Truncar(((FieldByName('Quantidade').asFloat * (FieldByName('Preco').asfloat)) ),2)
        else
           nValorTotal := Truncar(((FieldByName('Quantidade').asFloat * (FieldByName('precotabela').asfloat)) + (FieldByName('Quantidade').asFloat * FieldByName('desconto').asfloat)),2);


        sTexto :=
        '54'+
        AdicionarStr(sCPF_CGC,'0',14)+
        copy(FieldByName('Modelo').asstring,1,2)+
        iif(FieldByName('SerieNota').asstring = 'U','   ',PreencherStr(FieldByName('SerieNota').asstring,' ',3))+
        PreencherStr(direita(FieldByName('Numero').asstring,6),' ',6)+
        PreencherStr(FieldByName('CFOPCST').asstring,' ',4)+
        AdicionarStr(  '0' + FieldByName('cst').asstring   ,'0',3)+
        AdicionarStr(IntToStr(nSeq),'0',3)+
        PreencherStr(direita(RestringirCarac(FieldByName('Codigo').asstring),14),' ',14)+
        ConverteValor3(FieldByName('Quantidade').asFloat,11)+
        ConverteValor(nValorTotal,12)+
        ConverteValor(FieldByName('desconto').ascurrency,12)+
        ConverteValor(nBaseCalculo,12)+
        ConverteValor(nBaseSubst,12)+
        ConverteValor(FieldByName('ValorIPIProd').asCurrency,12)+
        iif(Pos(Q_Empresas.FieldByName('TIPOEMPRESA').AsString,'EM')>0,ConverteValor(0,4),ConverteValor(nAliqICMS,4));
        Writeln(Arq,sTexto);
        inc(nReg54);
        next;
        If nNota <> FieldByName('Saida').asInteger Then
          nSeq:=0;
      end;
    end;
    AtualizaBarras(14,' Escrevendo Livro Tipo 54 Entradas ');
    /////////////////////////////////////////////////
    // Registro Tipo 54 Entradas
    /////////////////////////////////////////////////
    if cb54.Checked and (rgTipo.ItemIndex in [0,1]) then with Q_NFEntradasItens do begin
      close;
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      open;
      nSeq:=0;
      while not eof do begin
        nNota := FieldByName('Entrada').asInteger;
        Inc(nSeq);
        sInscricao := PreencherStr(copy(RestringirCarac(FieldByName('Inscricao_est').asstring),1,14),' ',14);
        sCPF_CGC   := FieldByName('CPF_CNPJ').asstring;
        if length(sCPF_CGC) <= 11 then begin
          sInscricao := PreencherStr('ISENTO',' ',14);
//            sCPF_CGC   := PreencherStr('0','0',14);
        end
        else if ((length(sCPF_CGC) = 14) and (trim(sInscricao) = '')) or (pos(copy(trim(sInscricao),1,1),'0123456789') = 0) then
          sInscricao := PreencherStr('ISENTO',' ',14);

        nAliqICMS := FieldByName('AliqICMS').asCurrency;
        nBaseCalculo := FieldByName('BaseCalcICMSProd').asCurrency;
        nBaseSubst := FieldByName('BaseCalcSubstProd').asCurrency;
        if (Q_Empresas.FieldByName('TIPOEMPRESA').AsString = 'S') Then begin
          //nAliqICMS := 0;
          nBaseCalculo := 0;
          nBaseSubst := 0;
        end;

        nValorTotal := Truncar(FieldByName('Quantidade').asFloat * (FieldByName('Preco').asfloat + FieldByName('desconto').asfloat),2);

        if ((Q_Empresas.FieldByName('TIPOEMPRESA').AsString = 'S') or (FieldByName('FONTE').AsString = 'S')) Then begin
          //nAliqICMS := 0;
          nIsentas := 0;
          nBaseCalculo := 0;
          nValorICMS := 0;
          nValorOutrasICMS := 0;
          nValortotalCFOP  := 0;
          nAliqICMS := 0;
        end;
        sTexto :=
        '54'+
        AdicionarStr(sCPF_CGC,'0',14)+
        AdicionarStr(FieldByName('Modelo').AsString,'0',2)+
        iif(FieldByName('SerieNota').asstring = 'U','   ',PreencherStr(FieldByName('SerieNota').asstring,' ',3))+
        PreencherStr(direita(FieldByName('Numero').asstring,6),' ',6)+
        PreencherStr(FieldByName('CFOPENTRADA').asstring,' ',4)+
        AdicionarStr( '0' + FieldByName('cst').asstring  ,'0',3)+
        AdicionarStr(IntToStr(nSeq),'0',3)+
        PreencherStr(direita(RestringirCarac(FieldByName('Codigo').asstring),14),' ',14)+
        ConverteValor3(FieldByName('Quantidade').asFloat,11)+
        ConverteValor(nValorTotal,12)+
        ConverteValor(FieldByName('desconto').ascurrency,12)+
        ConverteValor(nBaseCalculo,12)+
        ConverteValor(nBaseSubst,12)+
        ConverteValor(FieldByName('ValorIPIProd').asCurrency,12)+
        iif(Pos(Q_Empresas.FieldByName('TIPOEMPRESA').AsString,'EM')>0,ConverteValor(0,4),ConverteValor(nAliqICMS,4));
        Writeln(Arq,sTexto);
        inc(nReg54);
        next;
        If nNota <> FieldByName('Entrada').asInteger Then
          nSeq:=0;
      end;
    end;
    AtualizaBarras(15,' Escrevendo Livro Tipo 55 - GNR ');
     //////////////////////////////////////////
    // Registro Tipo 55 - GNR
    //////////////////////////////////////////
    if cb55.Checked then with Q_GNRE do begin
      close;
      parambyname('mes').Asinteger := nMes;
      parambyname('ano').Asinteger := nAno;
      open;

      while not eof do begin
        sInscricao := PreencherStr(copy(RestringirCarac(FieldByName('Inscricao').asstring),1,14),' ',14);
        sCPF_CGC   := FieldByName('CNPJ').asstring;
        if (length(sCPF_CGC) <= 11) then begin
          sInscricao := PreencherStr('ISENTO',' ',14);
//            sCPF_CGC   := PreencherStr('0','0',14);
        end
        else if ((length(sCPF_CGC) = 14) and (trim(sInscricao) = '')) or (pos(copy(trim(sInscricao),1,1),'0123456789') = 0) then
          sInscricao := PreencherStr('ISENTO',' ',14);

        sTexto :=
        '55'+
        AdicionarStr(sCPF_CGC,'0',14)+
        sInscricao+
        FormatDateTime('yyyymmdd',FieldByName('DataPagto').asDateTime)+
        PreencherStr(FieldByName('UF_Substituto').asstring,' ',2)+
        PreencherStr(FieldByName('UF_Favorecida').asstring,' ',2)+
        FieldByName('BancoGNRE').asstring+
        FieldByName('AgenciaGNRE').asstring+
        AdicionarStr(FieldByName('NumeroAutentGNRE').asstring,'0',12)+
        ConverteValor(FieldByName('ValorGNRE').asCurrency,13)+
        FormatDateTime('yyyymmdd',FieldByName('DataVencimento').asDateTime)+
        RestringirCarac(FieldByName('MesAno').asstring)+
        PreencherStr(FieldByName('NumeroConvenio').asstring,' ',30)+
        PreencherStr(' ',' ',8);
        Writeln(Arq,sTexto);
        inc(nReg55);
        next;
      end;
    end;
    AtualizaBarras(16,' Escrevendo Livro Tipo 60');
    //////////////////////////////////////////
    // Registro Tipo 60
    //////////////////////////////////////////
    if cb60.Checked and (rgTipo.ItemIndex in [0,2]) then with Q_ECF do begin
      close;
      parambyname('mes').Asinteger := nMes;
      parambyname('ano').Asinteger := nAno;
      open;
      while not eof do begin
        sTexto :=
        '60'+
        'M'+
        FieldByName('DATAEMISSAO').AsString+
        PreencherStr(FieldByName('NUMEROSERIE').asstring,' ',20)+
        AdicionarStr(FieldByName('NUMEROORDEM').asstring,'0',3)+
        FieldByName('MODELO').asstring+
        FieldByName('COOINICIO').asstring+
        FieldByName('COOFIM').asstring+
        FieldByName('CRZ').asstring+
        FieldByName('CRO').asstring+
        ConverteValor(FieldByName('VENDABRUTA').asCurrency,16)+
        ConverteValor(FieldByName('TOTALIZADOR').asCurrency,16)+
        PreencherStr(' ',' ',37);
        Writeln(Arq,sTexto);
        inc(nReg60);
        with Q_ECFDetalhe do begin
          close;
          parambyname('NUMEROSERIE').AsString := Q_ECF.FieldByName('NUMEROSERIE').AsString;
          parambyname('CRZ').AsString := Q_ECF.FieldByName('CRZ').AsString;
          open;
          while not eof do begin
            sSituacaoTrib := SoNumeros(FieldByName('SITUACAO_ALIQ').AsString,4);
            if sSituacaoTrib <> '0000' then Begin
              XnBaseCalculo := XnBaseCalculo + FieldByName('VALORACUMULADO').AsFloat;
            End;
            sTexto :=
            '60'+
            'A'+
            FieldByName('DATAEMISSAO').AsString+
            PreencherStr(FieldByName('NUMEROSERIE').asstring,' ',20)+
            FieldByName('SITUACAO_ALIQ').AsString+
            ConverteValor(FieldByName('VALORACUMULADO').AsFloat,12)+
            PreencherStr(' ',' ',79);
            Writeln(Arq,sTexto);
            inc(nReg60);
            next;
          end;
          with Q_ECF60D do begin
            close;
            parambyname('NUMEROSERIE').AsString := Q_ECF.FieldByName('NUMEROSERIE').AsString;
            parambyname('DATAEMISSAO').AsString := Q_ECF.FieldByName('DATAEMISSAO').AsString;
            open;
            while not eof do begin
              sTexto :=
              '60'+
              'D'+
              FieldByName('DATAEMISSAO').AsString+
              PreencherStr(FieldByName('NUMEROSERIE').asstring,' ',20)+
              PreencherStr(FieldByName('Codigo').asstring,' ',14)+
              ConverteValor3(FieldByName('Quantidade').AsFloat,13)+
              ConverteValor(FieldByName('VALOR').AsFloat,16)+
              ConverteValor(FieldByName('baseICMS').AsFloat,16)+
              FieldByName('SITUACAO_ALIQ').AsString+
              ConverteValor(FieldByName('ValorICMS').AsFloat,13)+
              PreencherStr(' ',' ',19);
              Writeln(Arq,sTexto);
              inc(nReg60);
              next;
            end;
          End;

          with Q_ECF60I do begin
            close;
            ParamByName('COOINICIO').AsString   := Q_ECF.FieldByName('COOINICIO').asstring;
            ParamByName('COOFIM').AsString      := Q_ECF.FieldByName('COOFIM').asstring;
            parambyname('NUMEROSERIE').AsString := Q_ECF.FieldByName('NUMEROSERIE').AsString;
            open;
            while not eof do begin
              sTexto :=
              '60'+
              'I'+
              FieldByName('DATAEMISSAO').AsString+
              PreencherStr(FieldByName('NUMEROSERIE').asstring,' ',20)+
              Q_ECF.FieldByName('MODELO').asstring+
              SoNumeros(FieldByName('COO').AsString,6)+
              SoNumeros(FieldByName('NUMEROORDEM').AsString,3)+
              PreencherStr(FieldByName('Codigo').asstring,' ',14)+
              ConverteValor3(FieldByName('Quantidade').AsFloat,13)+
              ConverteValor(FieldByName('Valor').AsFloat,13)+
              ConverteValor(FieldByName('baseICMS').AsFloat,12)+
              FieldByName('SITUACAO_ALIQ').AsString+
              ConverteValor(FieldByName('ValorICMS').AsFloat,12)+
              PreencherStr(' ',' ',16);
              Writeln(Arq,sTexto);
              inc(nReg60);
              next;
            end;
          End;
        end;
        next;
      end;
      With Q_ECF60R do Begin
        Close;
        parambyname('NUMEROSERIE').AsString := Q_ECF.FieldByName('NUMEROSERIE').AsString;
        parambyname('mes').Asinteger := nMes;
        parambyname('ano').Asinteger := nAno;
        open;
        while not eof do begin
          sTexto :=
          '60'+
          'R'+
          Copy(FieldByName('DATAEMISSAO').AsString,5,2) + Copy(FieldByName('DATAEMISSAO').AsString,1,4)+
          PreencherStr(FieldByName('Codigo').asstring,' ',14)+
          ConverteValor(FieldByName('QUANTIDADE').AsFloat,13)+
          ConverteValor(FieldByName('VALOR').AsFloat,16)+
          ConverteValor(FieldByName('baseICMS').AsFloat,16)+
          FieldByName('SITUACAO_ALIQ').AsString+
          PreencherStr(' ',' ',54);
          Writeln(Arq,sTexto);
          inc(nReg60);
          next;
       end;
      End;
    end;
    AtualizaBarras(17,' Escrevendo Livro Tipo 61 Saidas ');
    //////////////////////////////////////////
    // Registro Tipo 61 Saidas
    //////////////////////////////////////////
    if cb61.Checked and (rgTipo.ItemIndex in [0,2]) then with Q_VendasConsumidor do begin
      close;
      parambyname('dDataI').AsDateTime := trunc(dDataI);
      parambyname('dDataF').AsDateTime := trunc(dDataF);
      open;
      while not eof do begin
        sTexto :=
        '61'+
        PreencherStr(' ',' ',14)+
        PreencherStr(' ',' ',14)+
        FormatDateTime('yyyymmdd',FieldByName('Data').asDateTime)+
        //AdicionarStr(Trim(FieldByName('Modelo').asstring),'0',2)+
        //iif(FieldByName('SerieNota').asstring = 'U','   ',PreencherStr(FieldByName('SerieNota').asstring,' ',3))+
        '02U'+ {Modelo/Serie}
        '  '+
        PreencherStr(direita(FieldByName('OrdemInicial').asstring,6),' ',6)+
        PreencherStr(direita(FieldByName('OrdemFinal').asstring,6),' ',6)+
        ConverteValor(truncar(FieldByName('ValorTotal').asCurrency,2),13)+
        ConverteValor(FieldByName('TotalBaseCalcICMS').asCurrency,13)+
        ConverteValor(FieldByName('TotalValorICMS').asCurrency,12)+
        ConverteValor(FieldByName('TotalIsentas').asCurrency,13)+
        ConverteValor(truncar(FieldByName('TotalOutras').asCurrency,2),13)+
        ConverteValor(FieldByName('AliqICMS').asCurrency,4)+
        ' ';
        Writeln(Arq,sTexto);
        inc(nReg61);
        next;
      end;
    end;
    AtualizaBarras(18,' Escrevendo Livro Tipo 70 Fretes Entrada ');
    //////////////////////////////////////////
    // Registro Tipo 70 Entradas Fretes
    //////////////////////////////////////////
    if cb70.Checked and (rgTipo.ItemIndex in [0,1]) then with Q_Fretes do begin
      close;
      parambyname('mes').Asinteger := nMes;
      parambyname('ano').Asinteger := nAno;
      open;
      while not eof do begin
        sSituacao := 'N';
        sInscricao := PreencherStr(copy(RestringirCarac(FieldByName('Inscricao_est').asstring),1,14),' ',14);
        sCPF_CGC   := FieldByName('CPF_CNPJ').asstring;
        if length(sCPF_CGC) <= 11 then begin
          sInscricao := PreencherStr('ISENTO',' ',14);
//            sCPF_CGC   := PreencherStr('0','0',14);
        end
        else if ((length(sCPF_CGC) = 14) and (trim(sInscricao) = '')) or (pos(copy(trim(sInscricao),1,1),'0123456789') = 0) then
          sInscricao := PreencherStr('ISENTO',' ',14);
        sModalidade:='1';
        If FieldByName('Cif_Fob').asstring = 'F' Then
           sModalidade:='2';
        if FieldByName('Situacao').asstring = 'C' then
          sSituacao := 'S';
        nAliqICMS := FieldByName('AliqICMSCompra').asCurrency;
        nIsentas := FieldByName('ValorIsentas').asCurrency;
        nBaseCalculo := FieldByName('BaseCalcICMS').asCurrency;
        nValorICMS := FieldByName('ValorICMS').asCurrency;
        if FieldByName('ContabilizaICMS').asstring = 'N' then begin
          nIsentas := FieldByName('Total').asCurrency;
          nBaseCalculo := 0;
          nValorICMS := 0;
        end;
        sTexto :=
        '70'+
        AdicionarStr(sCPF_CGC,'0',14)+
        sInscricao+
        FormatDateTime('yyyymmdd',FieldByName('Data').asDateTime)+
        PreencherStr(FieldByName('UFOrigem').asstring,' ',2)+
        Copy(FieldByName('Modelo').asstring,1,2)+
        iif(FieldByName('SerieNota').asstring = 'U','   ',PreencherStr(FieldByName('SerieNota').asstring,' ',3))+
        SoNumeros(FieldByName('Numero').asstring,6)+
        PreencherStr(FieldByName('CFOPEntrada').asstring,' ',4)+
        ConverteValor(truncar(FieldByName('Total').asCurrency,2),13)+
        ConverteValor(nBaseCalculo,14)+
        ConverteValor(nValorICMS,14)+
        ConverteValor(nIsentas,14)+
        ConverteValor(truncar(FieldByName('ValorOutrasICMS').asCurrency,2),14)+
        sModalidade+
        sSituacao;
        Writeln(Arq,sTexto);
        inc(nReg70);
        next;
      end;
    end;
    AtualizaBarras(20,' Escrevendo Livro Tipo 74 - Inventario ');
    //////////////////////////////////////////
    // Registro Tipo 74 Inventario
    //////////////////////////////////////////
    if cb74.Checked and (rgTipo.ItemIndex in [0,1]) then with Q_Inventario do  begin
      close;
      parambyname('mes').Asinteger := nMes;
      parambyname('ano').Asinteger := nAno;
      open;
      while not eof do begin
        sTexto :=  fieldByName('Tipo').AsString+
          FormatDateTime('YYYYMMDD',fieldByName('data').AsDateTime)+
          PreencherStr(RestringirCarac(FieldByName('Codigo').asstring),' ',14)+
          ConverteValor3(fieldByName('estoque').AsFloat,13)+
          ConverteValor(fieldByName('ValorBruto').AsFloat,13)+
          '1'+
          AdicionarStr(Q_Empresas.FieldByName('CPF_CNPJ').asstring,'0',14)+
          PreencherStr(' ',' ',14)+
          PreencherStr(Q_Empresas.FieldByName('UF').asstring,' ',2)+
          PreencherStr(' ',' ',45);
          Writeln(Arq,sTexto);
          inc(nReg74);
          next;
      End; //while not eof ....
    end; //if cb74.Checked ....


    //////////////////////////////////////////
    // Registro Tipo 75 Produtos
    //////////////////////////////////////////
    if cb75.Checked then with Q_NFProdutos do begin
      close;
      parambyname('DATAINICIO').AsString := FormatDateTime('yyyymmdd',trunc(dDataI));
      parambyname('DATAFINAL').AsString  := FormatDateTime('yyyymmdd',trunc(dDataF));
      open;
      while not eof do begin
        sTexto :=
        '75'+
        FieldByName('DATAINICIO').asstring+
        FieldByName('DATAFINAL').asstring+
        PreencherStr(FieldByName('Codigo').asstring,' ',14)+
        PreencherStr(' ',' ',8)+
        PreencherStr(FieldByName('Descricao').asstring,' ',53)+
        PreencherStr(FieldByName('unidade').asstring,' ',6)+
        FieldByName('Aliqipi').asstring+
        FieldByName('Aliqicms').asstring+
        FieldByName('reducao').asstring+
        FieldByName('BASECALCICMS').asstring;

        Writeln(Arq,sTexto);
        inc(nReg75);
        next;
      end;
    end;
    AtualizaBarras(21 ,' Escrevendo Livro Tipo 88 Gim 1');
    //////////////////////////////////////////
    // Registro Tipo 88 GIM
    //////////////////////////////////////////
    if cb8801.Checked then with Q_LivrosMensais do begin
      sTexto :=
      '88'+
      '01'+
      PreencherStr(copy(RestringirCarac(Q_Empresas.FieldByName('Inscricao_est').asstring),1,9),' ',9)+
      FormatDateTime('yyyymm',trunc(dDataI))+
      sTipoGim+
      ConverteValor(FieldByName('CreditoEntradas').ascurrency,13)+
      ConverteValor(FieldByName('CreditoAtivo').ascurrency,13)+
      ConverteValor(FieldByName('CreditoTransf').ascurrency,13)+
      ConverteValor(FieldByName('ICMSAntecipadoJR').ascurrency,13)+
      ConverteValor(FieldByName('ICMSAntecipadoAR').ascurrency,13)+
      ConverteValor(FieldByName('OutrosCreditos').ascurrency,13)+
      ConverteValor(FieldByName('EstornoDebitos').ascurrency,13)+
      ConverteValor(FieldByName('SaldoMesAnterior').ascurrency,13)+
      '  ';
      Writeln(Arq,sTexto);
      inc(nReg88);
    end;
    AtualizaBarras(22,' Escrevendo Livro Tipo 88 Gim 2');
    if cb8802.Checked then with Q_LivrosMensais do begin
      sTexto :=
      '88'+
      '02'+
      PreencherStr(copy(RestringirCarac(Q_Empresas.FieldByName('Inscricao_est').asstring),1,9),' ',9)+
      FormatDateTime('yyyymm',trunc(dDataI))+
      sTipoGim+
      ConverteValor(FieldByName('DebitoSaidas').ascurrency,13)+
      ConverteValor(FieldByName('TransfCreditoAcum').ascurrency,13)+
      ConverteValor(FieldByName('OutrosDebitos').ascurrency,13)+
      ConverteValor(FieldByName('EstornoCreditos').ascurrency,13)+
      ConverteValor(FieldByName('SubstEntradasJR').ascurrency,13)+
      ConverteValor(FieldByName('SubstEntradasAR').ascurrency,13)+
      ConverteValor(FieldByName('ICMSSubstSaidas').ascurrency,13)+
      ConverteValor(FieldByName('ICMSRetidoFonte').ascurrency,13)+
      '  ';
      Writeln(Arq,sTexto);
      inc(nReg88);
    end;
    AtualizaBarras(23,' Escrevendo Livro Tipo 88 Gim 3');
    if cb8803.checked then with Q_TransfCreditos do begin
      first;
      while not eof do begin
        sTexto :=
        '88'+
        '03'+
        PreencherStr(copy(RestringirCarac(Q_Empresas.FieldByName('Inscricao_est').asstring),1,9),' ',9)+
        FormatDateTime('yyyymm',trunc(dDataI))+
        PreencherStr(copy(RestringirCarac(FieldByName('Inscricao').asstring),1,9),' ',9)+
        FieldByName('Natureza').asstring+
        ConverteValor(FieldByName('Valor').ascurrency,13)+
        PreencherStr(' ',' ',84);
        Writeln(Arq,sTexto);
        inc(nReg88);
        next;
      end;
    end;
    AtualizaBarras(24,' Escrevendo Livro Tipo 88 Gim 4');
    if cb8804.checked then with Q_LivrosMensais do begin
      sTexto :=
      '88'+
      '04'+
      PreencherStr(copy(RestringirCarac(Q_Empresas.FieldByName('Inscricao_est').asstring),1,9),' ',9)+
      FormatDateTime('yyyymm',trunc(dDataI))+
      sTipoGim+
      ConverteValor(FieldByName('DifAliquotaRecolher').ascurrency,13)+
      ConverteValor(FieldByName('ImpostoRetidoUFs').ascurrency,13)+
      PreencherStr(copy(Q_Empresas.FieldByName('Email').asstring,1,40),' ',40)+
      FormatDateTime('yyyymmdd',Q_Empresas.FieldByName('datainicio').asdatetime)+
      PreencherStr('6.0',' ',4)+
      iif(Pos(Q_Empresas.FieldByName('TIPOEMPRESA').AsString,'EM')>0,'7','1')+
      PreencherStr(' ',' ',27);
      Writeln(Arq,sTexto);
      inc(nReg88);
    end;
    AtualizaBarras(25,' Escrevendo Livro Tipo 88 Gim 5');
    if cb8805.checked then begin
      sTexto :=
      '88'+
      '05'+
      PreencherStr(Q_Empresas.FieldByName('CPF_CNPJ_Contador').asstring,' ',14)+
      PreencherStr(Q_Empresas.FieldByName('CRC_Contador').asstring,' ',10)+
      PreencherStr(Q_Empresas.FieldByName('Nome_Contador').asstring,' ',40)+
      PreencherStr(SoNumeros(Q_Empresas.FieldByName('Fone_Contador').asstring,12),' ',12)+
      PreencherStr(Q_Empresas.FieldByName('Email_Contador').asstring,' ',40)+
      '      ';
      Writeln(Arq,sTexto);
      inc(nReg88);
    end;
    AtualizaBarras(26,' Escrevendo Livro Tipo 88 Gim 6');
    if cb8806.checked then with Q_LivrosAnuais do begin
      sTexto :=
      '88'+
      '06'+
      PreencherStr(copy(RestringirCarac(Q_Empresas.FieldByName('Inscricao_est').asstring),1,9),' ',9)+
      FormatDateTime('yyyy',trunc(dDataI))+
      sTipoGIM+
      ConverteValor(FieldByName('EstoqueTrib').ascurrency,13)+
      ConverteValor(FieldByName('EstoqueNaoTrib').ascurrency,13)+
      ConverteValor(FieldByName('EstoqueSubstTrib').ascurrency,13)+
      ConverteValor(FieldByName('SaldoCaixa').ascurrency,13)+
      ConverteValor(FieldByName('SaldoBanco').ascurrency,13)+
      ConverteValor(FieldByName('DespesasFolhaPagto').ascurrency,13)+
      ConverteValor(FieldByName('OutrosImpostos').ascurrency,13)+
      ConverteValor(FieldByName('DespesasGerais').ascurrency,13)+
      '    ';
      Writeln(Arq,sTexto);
      inc(nReg88);
    end;
    if cb8815.checked then with Q_LivrosMensais do begin
      sTexto :=
      '88'+
      '15'+
      ConverteValor(FieldByName('OUTROSREGESPECIAL').ascurrency,13)+
      ConverteValor(FieldByName('TARE').ascurrency,13)+
      ConverteValor(FieldByName('PREVISAORICMS').ascurrency,13)+
      ConverteValor(FieldByName('FAIN').ascurrency,13)+
      PreencherStr(' ','0',13)+ {Cheque Habitação}
      PreencherStr(' ','0',13)+ {Cheque Educação}
      PreencherStr(' ','0',13)+ {Gol de Placa}
      PreencherStr(' ','0',13)+ {Fic}
      PreencherStr(' ',' ',18); {Brancos}
      Writeln(Arq,sTexto);
      inc(nReg88);
    end;
    if cb8816.checked then with Q_LivrosMensais do begin
      sTexto :=
      '88'+
      '16'+
      ConverteValor(FieldByName('FUNCEPICMSNORMAL').ascurrency,13)+
      ConverteValor(FieldByName('FUNCEPSUBSAIDASESTADO').ascurrency,13)+
      ConverteValor(FieldByName('FUNCEPSUBENTRADAS').ascurrency,13)+
      ConverteValor(FieldByName('FUNCEPREGIMEFONTE').ascurrency,13)+
      ConverteValor(FieldByName('FUNCEPDIFALIQUOTA').ascurrency,13)+
      PreencherStr(' ',' ',57);
      Writeln(Arq,sTexto);
      inc(nReg88);
    end;
    if cb8817.checked then with Q_Paraibasim do begin
       dDataF := EncodeDate(trunc(StrToInt(Copy(dfMesAno.Text,4,4))),trunc(StrToInt(Copy(dfMesAno.Text,1,2))),1);
       dDataF := LastMonthDay(dDataF);
       dDataI := dDataF - 180;
       close;
       parambyname('DataI').AsDateTime := dDataI;
       parambyname('DataF').AsDateTime := dDataF;
       parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
       parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
       open;
      sTexto :=
      '88'+
      '17'+
      ConverteValor(XnBaseCalculo,9)+
      ConverteValor(FieldByName('CAMPO4').ascurrency,9)+
      ConverteValor(XnBaseCalculo,9)+
      FieldByName('CAMPO6').AsString+
      ConverteValor((XnBaseCalculo * 0.01) ,9)+
      ConverteValor(FieldByName('CAMPO8').ascurrency,9)+
      ConverteValor(FieldByName('CAMPO9').ascurrency,9)+
      ConverteValor(FieldByName('CAMPO10').ascurrency,9)+
      ConverteValor(FieldByName('CAMPO14').ascurrency,9)+
      ConverteValor((XnBaseCalculo * 0.01),9)+
      ConverteValor(FieldByName('CAMPO16').ascurrency,9)+
      ConverteValor(FieldByName('CAMPO17').ascurrency,9)+
      ConverteValor(Q_LivrosMensais.FieldByName('ICMSSubstSaidas').ascurrency,9)+
      ConverteValor(Q_LivrosMensais.FieldByName('ICMSRetidoFonte').ascurrency,9)+
      PreencherStr('',' ',3);
      Writeln(Arq,sTexto);
      inc(nReg88);
    end;

    if cb8818.checked then with Q_SimplesNacional do begin
      Close;
      Sql.Text := 'select coalesce( sum(s.basecalcsubst), 0)  '+
                  ' from saidasitens i inner join saidas s on s.saida = i.saida '+
                  ' where s.numero is not null '+
                  ' and s.numero > '''' '+
                  ' and s.tipomovimento in (select x.tipomovimento from tiposmovimento x where x.livrofiscal = ''S'') '+
                  ' and s.possuiicms = ''S'' '+
                  ' and i.cfopnota is not null '+
                  ' and ((i.cst = ''10'') or (i.cst = ''60'')) '+
                  ' and Extract(month from s.data) = :Mes '+
                  ' And Extract(year from s.data) = :Ano ';
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      open;
      nSimplesNacional_09 := Fields[0].Value;
      Close;
      Sql.Text := 'select coalesce( sum(e.basecalcsubst), 0) from Entradas e '+
                  '    inner join entradasitens i on i.entrada = e.entrada '+
                  'where e.tipomovimento in (select x.tipomovimento from tiposmovimento x where x.livrofiscal = ''S'') '+
                  'and e.situacao = ''N'' '+
                  'and e.numero > '''' '+
                  'and e.numero is not null '+
                  'and i.cst = ''01'' '+
                  'and extract(month from e.data) = :mes '+
                  'and extract(year from e.data) = :ano ';
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      open;
      nSimplesNacional_10 := Fields[0].Value;
      nSimplesNacional_11 := 0.00;
      Close;
      Sql.Text := 'select coalesce( sum(s.Total), 0) from saidasitens i '+
                  '  inner join saidas s on s.saida = i.saida '+
                  'where s.numero is not null '+
                  'and s.numero > '''' '+
                  'and s.tipomovimento in (select x.tipomovimento from tiposmovimento x where x.livrofiscal = ''S'') '+
                  'and s.possuiicms = ''S'' '+
                  'and s.cfopnota is not null  '+
                  'and Extract(month from s.data) = :Mes '+
                  'And Extract(year from s.data) = :Ano ';
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      open;
      nSimplesNacional_14 := Fields[0].Value;
      Close;
      Sql.Text := 'select coalesce( sum(e.total), 0)'+
                  ' From Entradas e '+ 
                  'where e.tipomovimento in (select x.tipomovimento from tiposmovimento x where x.livrofiscal = ''S'') '+
                  'and e.situacao = ''N'' '+
                  'and e.numero > '''' '+
                  'and e.numero is not null '+
                  'and extract(month from e.data) = :mes '+
                  'and extract(year from e.data) = :ano ';
      parambyname('Mes').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,1,2)));
      parambyname('Ano').AsInteger := trunc(StrToInt(Copy(dfMesAno.Text,4,4)));
      open;
      nSimplesNacional_15 := Fields[0].Value;
      try
        nSimplesNacional_18 := nSimplesNacional_14 * ((Q_LivrosMensais.FieldByName('SIMPLESNACIONAL_16').Value)/100);
      Except
        nSimplesNacional_18 := 0.00;
      end;

      sTexto :=
      '88'+
      '18'+
      PreencherStr(copy(RestringirCarac(Q_Empresas.FieldByName('Inscricao_est').asstring),1,09),' ',09)+
      FormatDateTime('yyyymm',dDataI)+
      sTipoGIM+
      ConverteValor(Q_LivrosMensais.FieldByName('SIMPLESNACIONAL_06').ascurrency,9)+
      ConverteValor(Q_LivrosMensais.FieldByName('SIMPLESNACIONAL_07').ascurrency,9)+
      ConverteValor(Q_LivrosMensais.FieldByName('SIMPLESNACIONAL_08').ascurrency,9)+
      ConverteValor(nSimplesNacional_09,9)+
      ConverteValor(nSimplesNacional_10,9)+
      ConverteValor(nSimplesNacional_11,9)+
      ConverteValor(Q_LivrosMensais.FieldByName('SIMPLESNACIONAL_12').ascurrency,9)+
      '3'+
      ConverteValor(nSimplesNacional_14,9)+
      ConverteValor(nSimplesNacional_15,9)+
      ConverteValor(Q_LivrosMensais.FieldByName('SIMPLESNACIONAL_16').ascurrency,3)+
      ConverteValor(Q_LivrosMensais.FieldByName('SIMPLESNACIONAL_17').ascurrency,9)+
      ConverteValor(nSimplesNacional_18,9)+
      iif(Copy(AdicionarStr(Q_Empresas.FieldByName('CPF_CNPJ').asstring,'0',14),12,1) = '1','1','2')+
      PreencherStr('',' ',2);
      Writeln(Arq,sTexto);
      inc(nReg88);
    end;

    sReg50 := '';
    if nReg50 > 0 then
      sReg50 := '50'+AdicionarStr(IntToStr(nReg50),'0',8);

    sReg51 := '';
    if nReg51 > 0 then
      sReg51 := '51'+AdicionarStr(IntToStr(nReg51),'0',8);

    sReg53 := '';
    if nReg53 > 0 then
      sReg53 := '53'+AdicionarStr(IntToStr(nReg53),'0',8);

    sReg54 := '';
    if nReg54 > 0 then
      sReg54 := '54'+AdicionarStr(IntToStr(nReg54),'0',8);

    sReg55 := '';
    if nReg55 > 0 then
      sReg55 := '55'+AdicionarStr(IntToStr(nReg55),'0',8);

    sReg60 := '';
    if nReg60 > 0 then
      sReg60 := '60'+AdicionarStr(IntToStr(nReg60),'0',8);

    sReg61 := '';
    if nReg61 > 0 then
      sReg61 := '61'+AdicionarStr(IntToStr(nReg61),'0',8);

    sReg70 := '';
    if nReg70 > 0 then
      sReg70 := '70'+AdicionarStr(IntToStr(nReg70),'0',8);

    sReg74 := '';
    if nReg74 > 0 then
      sReg74 := '74'+AdicionarStr(IntToStr(nReg74),'0',8);

    sReg75 := '';
    if nReg75 > 0 then
      sReg75 := '75'+AdicionarStr(IntToStr(nReg75),'0',8);

    sReg88 := '';
    if nReg88 > 0 then
      sReg88 := '88'+AdicionarStr(IntToStr(nReg88),'0',8);

    sTexto :=
    '90'+
    Q_Empresas.FieldByName('CPF_CNPJ').asstring+
    PreencherStr(RestringirCarac(Copy(Q_Empresas.FieldByName('Inscricao_est').asstring,1,14)),' ',14)+
    sReg50+
    sReg51+
    sReg53+
    sReg54+
    sReg55+
    sReg60+
    sReg61+
    sReg70+
    sReg74+
    sReg75+
    sReg88+
    '99'+
    AdicionarStr(IntToStr(1+1+nReg50+nReg51+nReg53+nReg54+nReg55+nReg60+nReg61+nReg70+nReg74+nReg75+nReg88+1),'0',8);
    sTexto := PreencherStr(sTexto,' ',125)+'1';
    Writeln(Arq,sTexto);
    CloseFile(Arq);
    dmECF.ECF1.AssinarAquivo(sArq);
    AtualizaBarras(27, 'Fim do Processamento');
    Application.MessageBox(PChar('Arquivos Gerados com Sucesso em: '+sArq+#13+
                                 'Tempo Decorrido: '+timetostr(now-shora)+' Horas'),'Aviso',mb_ok);
    AtualizaBarras(0,'' );
  except
    On e:Exception do begin
      ShowMessage('Erro: '+e.message);
      DMProjeto.GeraLog('LivrosFiscais',e.message);
      CloseFile(Arq);
    end;
  end;
End;



procedure TDlgGeracaoArqMagnetico.sbSintegraClick(Sender: TObject);
begin
  inherited;
  GerarSintegra();
end;

procedure TDlgGeracaoArqMagnetico.dbSPEDClick(Sender: TObject);
begin
  inherited;
  GerarSPED();
end;

end.

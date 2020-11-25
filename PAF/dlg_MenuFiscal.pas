unit dlg_MenuFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, ComCtrls, TS_PageControl, TS_RadioGroup,
  dxEdLib, TS_Edit, dxCntner, dxEditor, dxExEdtr, TS_DateTimePicker, IBQuery,
  DB, IBCustomDataSet,ECF;

type
  TdlgMenuFiscal = class(TFrmModeloCadastros)
    pnCriterios: TTS_Panel;
    TS_Panel1: TTS_Panel;
    sbLX: TTS_SpeedButton;
    sbDAVEmitidos: TTS_SpeedButton;
    sbEncerrantes: TTS_SpeedButton;
    sbLMFC: TTS_SpeedButton;
    sbTransfMesas: TTS_SpeedButton;
    sbLMSF: TTS_SpeedButton;
    sbMesasAbertas: TTS_SpeedButton;
    sbEspelhoMFD: TTS_SpeedButton;
    sbManifestofiscalviagens: TTS_SpeedButton;
    sbArqMFD: TTS_SpeedButton;
    sbTabProd: TTS_SpeedButton;
    sbLeituradoMovimentoDiario: TTS_SpeedButton;
    sbEstoque: TTS_SpeedButton;
    sbIdentificacaoPAFECF: TTS_SpeedButton;
    TS_SpeedButton14: TTS_SpeedButton;
    TS_SpeedButton15: TTS_SpeedButton;
    sbMovimentoPorECF: TTS_SpeedButton;
    sbVendasnoPeriodo: TTS_SpeedButton;
    sbMeiosPagto: TTS_SpeedButton;
    sbTabIndiceTecnicoProducao: TTS_SpeedButton;
    rgCriterio: TTS_RadioGroup;
    pcWhere: TTS_PageControl;
    tsCriterio: TTS_TabSheet;
    tsCRZ: TTS_TabSheet;
    tsCOO: TTS_TabSheet;
    dtInicio: TTS_DateTimePicker;
    dtFim: TTS_DateTimePicker;
    rgEnviarPara: TTS_RadioGroup;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    dfCRZInicio: TTS_Edit;
    dfCRZFIM: TTS_Edit;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    dfCOOInicio: TTS_Edit;
    TS_Label6: TTS_Label;
    dfCOOFim: TTS_Edit;
    sdParaArquivo: TSaveDialog;
    Q_SQL: TIBQuery;
    anmMenuFiscal: TAnimate;
    procedure rgCriterioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbLXClick(Sender: TObject);
    procedure sbLMFCClick(Sender: TObject);
    procedure sbLMSFClick(Sender: TObject);
    procedure sbEspelhoMFDClick(Sender: TObject);
    procedure sbArqMFDClick(Sender: TObject);
    procedure sbTabProdClick(Sender: TObject);
    procedure sbEstoqueClick(Sender: TObject);
    procedure sbMovimentoPorECFClick(Sender: TObject);
    procedure sbMeiosPagtoClick(Sender: TObject);
    procedure sbDAVEmitidosClick(Sender: TObject);
    procedure sbEncerrantesClick(Sender: TObject);
    procedure sbTransfMesasClick(Sender: TObject);
    procedure sbMesasAbertasClick(Sender: TObject);
    procedure sbManifestofiscalviagensClick(Sender: TObject);
    procedure sbLeituradoMovimentoDiarioClick(Sender: TObject);
    procedure sbIdentificacaoPAFECFClick(Sender: TObject);
    procedure sbVendasnoPeriodoClick(Sender: TObject);
    procedure sbTabIndiceTecnicoProducaoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    CaminhoArquivo: String;
    arquivo: TextFile;
    function ID_Estabelecimento(sigla: String): string;

    procedure gerarEstoque();
    Procedure gerarTABProdutos();
    Procedure iDentificacaoPAFECF();
    Procedure SetGerarEmArquivo();
    procedure GravarEM(NomeArquivo: String);
  public
    { Public declarations }
  end;

var
  dlgMenuFiscal: TdlgMenuFiscal;

implementation

uses DM_Projeto, DM_Ecf, TDM_Projeto, Funcoes, MD5, Dlg_GeracaoArqMagnetico;

{$R *.dfm}

Procedure TdlgMenuFiscal.iDentificacaoPAFECF();
Var
  i: Integer;
  arquivo: TextFile;
  linha: string;
Begin
  try
    anmMenuFiscal.Visible := True;
    anmMenuFiscal.Active  := True;
    AssignFile(arquivo,CaminhoArquivo);
    ReWrite(arquivo);
    Writeln(arquivo,'IDENTIFICACAO DO PAF-ECF');
    Writeln(arquivo,' ');
    Writeln(arquivo,' ');
    Writeln(arquivo,'IPB0012011');
    Writeln(arquivo,DMProjeto.PAFCampos.CNPJ_Desenv);
    Writeln(arquivo,DMProjeto.PAFCampos.RAZAO_Desenv);
    Writeln(arquivo,'AV. JULIA FREIRE, 617 CEP:58040-040');
    Writeln(arquivo,'(83)3244-1422');
    Writeln(arquivo,'MARCOS ANTUNES');
    Writeln(arquivo,DMProjeto.PAFCampos.Systema);
    Writeln(arquivo,DMProjeto.PAFCampos.Versao);
    Writeln(arquivo,'SYNCLOJA.EXE');
    Writeln(arquivo,DMProjeto.PAFCampos.MD5_Exe);
    Writeln(arquivo,DMProjeto.PAFCampos.NroFabricacao_ECF);
    CloseFile(arquivo);
    if (rgEnviarPara.ItemIndex = 0) Then Begin
       DMECF.ECF1.ImprimirArquivo(CaminhoArquivo)
    End else Begin
        dmECF.ECF1.AssinarAquivo(CaminhoArquivo)
    End;
    anmMenuFiscal.Visible := False;
    anmMenuFiscal.Active  := False;
  Except
    On E:Exception do begin
      anmMenuFiscal.Visible := False;
      anmMenuFiscal.Active  := False;
      Raise Exception.Create('Não foi possível gerar identificação do PAF-ECF!!!'+ #13+e.Message);
    End;
  End;
End;


Procedure TdlgMenuFiscal.SetGerarEmArquivo();
Begin
  rgEnviarPara.ItemIndex := 1;
End;

procedure TdlgMenuFiscal.gerarEstoque();
Var
  i: Integer;
  arquivo: TextFile;
  linha, sEstoque: string;
Begin
  try
    anmMenuFiscal.Visible := True;
    anmMenuFiscal.Active  := True;
    AssignFile(arquivo,CaminhoArquivo);
    ReWrite(arquivo);
    Writeln(arquivo,ID_Estabelecimento('E1'));
    With Q_SQL do Begin
       Close;
       Sql.Text := 'SELECT i.item, i.codigo, i.descricao, i.unidade, coalesce(i.Estoque, 0) as Estoque, format(i.data_hora_alteracao,''YYYYMMDD'') as data_hora_alteracao '+
                   ' from itens i where i.desativado = ''N'' Order by i.Codigo';
       Open;
       i:=0;
       While not eof do Begin
//          if (DMProjeto.VerificaMD5Itens(FieldByName('Item').AsInteger)) Then
            if (FieldByName('estoque').AsFloat < 0) Then
                sEstoque  :=  '-'+SoNumeros(FloatToStr(FieldByName('estoque').AsFloat * -1),9)
            Else
                sEstoque  := '+'+SoNumeros(FieldByName('estoque').AsString,9);

            linha := 'E2'
                    +PreencherStr(Copy(Trim(DMProjeto.sCPF_CNPJEmpresa),1,14),' ',14)
                    +PreencherStr(Copy(Trim(FieldByName('codigo').Asstring),1,14),' ',14)
                    +PreencherStr(Copy(Trim(FieldByName('descricao').Asstring),1,50),' ',50)
                    +PreencherStr(Copy(Trim(FieldByName('unidade').Asstring),1,06),' ',06)
                    +sEstoque
                    +SoNumeros(FieldByName('data_hora_alteracao').AsString,8);
//          Else
//            linha := 'E2'
//                    +PreencherStr(Copy(Trim(DMProjeto.sCPF_CNPJEmpresa),1,14),' ',14)
//                    +PreencherStr(Copy(Trim(FieldByName('codigo').Asstring),1,14),' ',14)
//                    +PreencherStr(Copy(Trim(FieldByName('descricao').Asstring),1,50),' ',50)
//                    +PreencherStr(' ','?',06)
//                    +FloatToStrF(FieldByName('estoque').AsFloat, ffNumber , 9,2)
//                    +SoNumeros(FieldByName('data_hora_alteracao').AsString,8);

          WriteLn(arquivo,linha);
          inc(i);
          Next;
       End;
       WriteLn(arquivo, 'E9'
                        +PreencherStr(Copy(Trim(DMProjeto.sCPF_CNPJEmpresa),1,14),' ',14)
                        +PreencherStr(Copy(Trim(DMProjeto.sInscricaoEstEmpresa),1,14),' ',14)
                        +SoNumeros(IntToStr(i),6));

    End;
    CloseFile(arquivo);
    anmMenuFiscal.Visible := False;
    anmMenuFiscal.Active  := False;
  Except
    On E:Exception do Begin
      anmMenuFiscal.Visible := False;
      anmMenuFiscal.Active  := False;
      Raise Exception.Create('Não foi possível gerar registro Estoque!!!'+ #13+e.Message);
    End;
  End;
End;



procedure TdlgMenuFiscal.gerarTABProdutos();
Var
  i: Integer;
  arquivo: TextFile;
  linha: string;
  aliqICMS: String;
Begin
  try
    anmMenuFiscal.Visible := True;
    anmMenuFiscal.Active  := True;
    AssignFile(arquivo,CaminhoArquivo);
    ReWrite(arquivo);
    Writeln(arquivo,ID_Estabelecimento('P1'));
    With Q_SQL do Begin
       Close;
       Sql.Text := ' SELECT i.codigo, i.descricao, i.unidade, i.ippt, i.iat, i.situacaoecf, i.aliqicms, p.preco from itens i '+
               ' inner join produtospreco p on i.item = p.item and i.unidade = p.unidade and p.tabelapreco = 0 '+
               ' where desativado = ''N'' and p.preco > 0 '+
               ' Order by i.codigo';
       Open;
       i:=0;
       While not eof do Begin
          aliqICMS := '0000';
          if ((FieldByName('situacaoecf').Asstring  = 'T') Or (FieldByName('situacaoecf').Asstring = 'F') Or (FieldByName('situacaoecf').Asstring = 'S')) Then
             aliqICMS := SoNumeros(FieldByName('aliqicms').Value,4);
          linha := 'P2'
                  +PreencherStr(Copy(Trim(DMProjeto.sCPF_CNPJEmpresa),1,14),' ',14)
                  +PreencherStr(Copy(Trim(FieldByName('codigo').Asstring),1,14),' ',14)
                  +PreencherStr(Copy(Trim(FieldByName('descricao').Asstring),1,50),' ',50)
                  +PreencherStr(Copy(Trim(FieldByName('unidade').Asstring),1,06),' ',06)
                  +PreencherStr(FieldByName('iat').Asstring,'T',01)
                  +PreencherStr(FieldByName('ippt').Asstring,'T',01)
                  +FieldByName('situacaoecf').Asstring
                  +aliqICMS
                  +SoNumeros(FieldByName('preco').Value * 100, 12);
          WriteLn(arquivo,linha);
          inc(i);
          Next;
       End;
       WriteLn(arquivo, 'P9'
                        +PreencherStr(Copy(Trim(DMProjeto.sCPF_CNPJEmpresa),1,14),' ',14)
                        +PreencherStr(Copy(Trim(DMProjeto.sInscricaoEstEmpresa),1,14),' ',14)
                        +SoNumeros(IntToStr(i),6));

    End;
    CloseFile(arquivo);
    anmMenuFiscal.Visible := False;
    anmMenuFiscal.Active  := False;
  Except
    anmMenuFiscal.Visible := False;
    anmMenuFiscal.Active  := False;
    Raise Exception.Create('Não foi possível gerar registro P2!!!');
  End;
End;


function TdlgMenuFiscal.ID_Estabelecimento(sigla: String): string;
Begin
  Result := sigla
            +SoNumeros(DMProjeto.sCPF_CNPJEmpresa,14)
            +SoNumeros(DMProjeto.sInscricaoEstEmpresa,14)
            +SoNumeros(DMProjeto.sInscricaoMunEmpresa,14)
            +PreencherStr(Copy(Trim(DMProjeto.sRazaoEmpresa),1,50),' ',50);
End;


procedure TdlgMenuFiscal.rgCriterioClick(Sender: TObject);
begin
  inherited;
  pcWhere.ActivePageIndex := rgCriterio.ItemIndex;
end;

procedure TdlgMenuFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  pcWhere.ActivePageIndex := rgCriterio.ItemIndex;
  dtInicio.Date := Now;
  dtFim.Date := Now;
end;

procedure TdlgMenuFiscal.sbLXClick(Sender: TObject);
begin
  inherited;
  anmMenuFiscal.Visible := True;
  anmMenuFiscal.Active  := True;
  Try
    if (rgEnviarPara.ItemIndex = 0) Then Begin
       dmECF.ECF1.LeituraX('IMPRESSORA');
    End else Begin
     ShowMessage('Não Suportado!');
     Exit;
    End;
    anmMenuFiscal.Visible := False;
    anmMenuFiscal.Active  := False;
    Application.MessageBox(pChar('Leitura X Emitida com Sucesso!'+#13),'Aviso',mb_ok);
  Except
    anmMenuFiscal.Visible := False;
    anmMenuFiscal.Active  := False;
    raise Exception.Create('Não foi possível gerar Leitura X!!!');
  end;

end;

Procedure TdlgMenuFiscal.GravarEM(NomeArquivo: String);
Begin
  CaminhoArquivo := '';
  CaminhoArquivo := ExtractFilePath(Application.ExeName) + NomeArquivo;
End;


procedure TdlgMenuFiscal.sbLMFCClick(Sender: TObject);
Var sTipo: String;
    sValor01: String;
    sValor02: String;
begin
  inherited;
  Try
    {Definindo o Tipo de Filtro}
    anmMenuFiscal.Visible := True;
    anmMenuFiscal.Active  := True;
    Application.ProcessMessages;
    if (rgCriterio.ItemIndex = 0) Then Begin
      sTipo := 'D';
      sValor01 := FormatDateTime('dd/mm/yyyy', dtInicio.Date);
      sValor02 := FormatDateTime('dd/mm/yyyy', dtFim.Date);
    End Else if (rgCriterio.ItemIndex = 1) Then Begin
      sTipo := 'R';
      sValor01 := dfCRZInicio.Text;
      sValor02 := dfCRZFIM.Text;
    End else Begin
      Application.MessageBox(pChar('Criterio de Filtro Inválido Para Esta Operação.'),'Aviso',mb_ok);
      Exit;
    End;
    if (rgEnviarPara.ItemIndex = 0) Then Begin
       dmECF.ECF1.MemoriaFiscal(sTipo,sValor01,sValor02,True,False);
       Application.MessageBox(pChar('LMFC Emitida com Sucesso!'),'Aviso',mb_ok);

    End else Begin
      DeleteFile('LMFC.TXT');
      GravarEM('LMFC.TXT');
      dmECF.ECF1.MemoriaFiscal(sTipo,sValor01,sValor02,True,True);
      dmECF.ECF1.AssinarAquivo('E:\Temp\RETORNO.TXT');
      MoveFile(pChar('E:\Temp\RETORNO.TXT'),pChar(CaminhoArquivo));
    anmMenuFiscal.Visible := false;
    anmMenuFiscal.Active  := false;
    Application.MessageBox(pChar('LMFC Emitida com Sucesso!'+#13+'Arq. Salvo em: '+CaminhoArquivo),'Aviso',mb_ok);
    End;

  Except
    anmMenuFiscal.Visible := False;
    anmMenuFiscal.Active  := False;
    raise Exception.Create('Não foi possível gerar LMFC!!!');
  end;

end;

procedure TdlgMenuFiscal.sbLMSFClick(Sender: TObject);
Var sTipo: String;
    sValor01: String;
    sValor02: String;
begin
  inherited;
  Try
    {Definindo o Tipo de Filtro}
    anmMenuFiscal.Visible := True;
    anmMenuFiscal.Active  := True;
    Application.ProcessMessages;
    if (rgCriterio.ItemIndex = 0) Then Begin
      sTipo := 'D';
      sValor01 := FormatDateTime('dd/mm/yyyy', dtInicio.Date);
      sValor02 := FormatDateTime('dd/mm/yyyy', dtFim.Date);
    End Else if (rgCriterio.ItemIndex = 1) Then Begin
      sTipo := 'R';
      sValor01 := dfCRZInicio.Text;
      sValor02 := dfCRZFIM.Text;
    End else Begin
      Application.MessageBox(pChar('Criterio de Filtro Inválido Para Esta Operação.'),'Aviso',mb_ok);
      Exit;
    End;
    if (rgEnviarPara.ItemIndex = 0) Then Begin
       dmECF.ECF1.MemoriaFiscal(sTipo,sValor01,sValor02,False,False);
       Application.MessageBox(pChar('LMFS Emitida com Sucesso!'),'Aviso',mb_ok);
    End else Begin
      DeleteFile('LMFS.TXT');
      GravarEM('LMFS.TXT');
      dmECF.ECF1.MemoriaFiscal(sTipo,sValor01,sValor02,False,True);
      dmECF.ECF1.AssinarAquivo('E:\Temp\RETORNO.TXT');
      MoveFile(pChar('E:\Temp\RETORNO.TXT'),pChar(CaminhoArquivo));
      anmMenuFiscal.Visible := false;
      anmMenuFiscal.Active  := false;
      Application.MessageBox(pChar('LMFS Emitida com Sucesso!'+#13+'Arq. Salvo em: '+CaminhoArquivo),'Aviso',mb_ok);
    End;

  Except
    anmMenuFiscal.Visible := False;
    anmMenuFiscal.Active  := False;
    raise Exception.Create('Não foi possível gerar LMFS!!!');
  end;
end;

procedure TdlgMenuFiscal.sbEspelhoMFDClick(Sender: TObject);
Var sTipo: String;
    sValor01: String;
    sValor02: String;
begin
  inherited;
  Try
    anmMenuFiscal.Visible := True;
    anmMenuFiscal.Active  := True;
    {Definindo o Tipo de Filtro}
    if (rgCriterio.ItemIndex = 0) Then Begin
      sTipo := 'D';
      sValor01 := FormatDateTime('dd/mm/yyyy', dtInicio.Date);
      sValor02 := FormatDateTime('dd/mm/yyyy', dtFim.Date);
    End Else if (rgCriterio.ItemIndex = 2) Then Begin
      sTipo := 'C';
      sValor01 := dfCOOInicio.Text;
      sValor02 := dfCOOFIM.Text;
    End else Begin
      Application.MessageBox(pChar('Criterio de Filtro Inválido Para Esta Operação.'),'Aviso',mb_ok);
      Exit;
    End;
    SetGerarEmArquivo();
    DeleteFile('ESPELHOMFD.TXT');
    GravarEM('ESPELHOMFD.TXT');
    dmECF.ECF1.EspelhoMFD(Trim(sValor01),Trim(sValor02),sTipo);
    dmECF.ECF1.AssinarAquivo('E:\Temp\RETORNO.TXT');
    MoveFile(pChar('E:\Temp\RETORNO.TXT'),pChar(CaminhoArquivo));
    anmMenuFiscal.Visible := false;
    anmMenuFiscal.Active  := false;
    Application.MessageBox(pChar('Espelho MFD Emitido com Sucesso!'+#13+'Arq. Salvo em: '+CaminhoArquivo),'Aviso',mb_ok);
  Except
    anmMenuFiscal.Visible := False;
    anmMenuFiscal.Active  := False;
    raise Exception.Create('Não foi possível gerar o Espelho MFD!!!');
  end;
end;

procedure TdlgMenuFiscal.sbArqMFDClick(Sender: TObject);
Var sTipo: String;
    sValor01: String;
    sValor02: String;
    dataI, dataF : String;
begin
  inherited;
  Try
    anmMenuFiscal.Visible := True;
    anmMenuFiscal.Active  := True;
    {Definindo o Tipo de Filtro}
    if (rgCriterio.ItemIndex = 0) Then Begin
       sTipo := 'D';
      sValor01 := FormatDateTime('ddmmyyyy', dtInicio.Date);
      sValor02 := FormatDateTime('ddmmyyyy', dtFim.Date);
    End Else if (rgCriterio.ItemIndex = 2) Then Begin
      sTipo := 'R';
      sValor01 := dfCOOInicio.Text;
      sValor02 := dfCOOFIM.Text;
    End else Begin
      Application.MessageBox(pChar('Criterio de Filtro Inválido Para Esta Operação.'),'Aviso',mb_ok);
      Exit;
    End;
    DeleteFile('ARQMFD.TXT');
    SetGerarEmArquivo();
    GravarEM('ARQMFD.TXT');
    dmECF.ECF1.ArqMFD(Trim(sValor01),Trim(sValor02),ExtractFilePath(Application.ExeName),(sTipo='D'));
    dmECF.ECF1.AssinarAquivo(ExtractFilePath(Application.ExeName) + 'ATOCOTEPE_DARUMA.TXT');
    MoveFile(pChar(ExtractFilePath(Application.ExeName)+'ATOCOTEPE_DARUMA.TXT'),pChar(CaminhoArquivo));
    //dmECF.ECF1.GetModeloAtocotepe(CaminhoArquivo);
    anmMenuFiscal.Visible := false;
    anmMenuFiscal.Active  := false;
    Application.MessageBox(pChar('Arquivo MFD Emitido com Sucesso!'+#13+'Arq. Salvo em: '+CaminhoArquivo),'Aviso',mb_ok);
  Except
    on E : Exception do Begin
       anmMenuFiscal.Visible := false;
       anmMenuFiscal.Active  := false;
       Application.MessageBox(pChar(e.Message),'Erro',mb_ok);
    End;
  end;
end;

procedure TdlgMenuFiscal.sbTabProdClick(Sender: TObject);
begin
  inherited;
  //
  Try
    SetGerarEmArquivo();
    GravarEM('TABPRODUTOS.TXT');
    gerarTABProdutos();
    dmECF.ECF1.AssinarAquivo(CaminhoArquivo);
    Application.MessageBox(pChar('Tabela de produtos gerada com sucesso!'+#13+'Arq. Salvo em: '+CaminhoArquivo),'Aviso',mb_ok);
  Except
    on E : Exception do
       Application.MessageBox(pChar(e.Message),'Erro',mb_ok);
  end;



end;

procedure TdlgMenuFiscal.sbEstoqueClick(Sender: TObject);
begin
  inherited;
  Try
    SetGerarEmArquivo();
    GravarEM('ESTOQUE.TXT');
    gerarEstoque();
    dmECF.ECF1.AssinarAquivo(CaminhoArquivo);
    Application.MessageBox(pChar('Tabela de produtos gerada com sucesso!'+#13+'Arq. Salvo em: '+CaminhoArquivo),'Aviso',mb_ok);
  Except
    on E : Exception do
       Application.MessageBox(pChar(e.Message),'Erro',mb_ok);
  end;


end;

procedure TdlgMenuFiscal.sbMovimentoPorECFClick(Sender: TObject);
Begin
  try
    anmMenuFiscal.Visible := True;
    anmMenuFiscal.Active  := True;
    //GravarEM('080805'+  Copy(DMProjeto.PAFCampos.NroFabricacao_ECF,7,14) + FormatDateTime('DDMMYYYY',dtFim.Date) +'.TXT');
    GravarEM('MOVIMENTOECF.TXT');
    DMProjeto.GerarMovimentoPorECF(dtInicio.Date, dtFim.Date);
    anmMenuFiscal.Visible := false;
    anmMenuFiscal.Active  := false;
    //Application.MessageBox(pChar('Informações do ECF gerada com sucesso!'+#13+'Arq. Salvo em: '+ExtractFilePath(Application.ExeName)),'Aviso',mb_ok);  
    Application.MessageBox(pChar('Informações do ECF gerada com sucesso!'+#13+'Arq. Salvo em: '+CaminhoArquivo),'Aviso',mb_ok);


  Except
    on E : Exception do Begin
       anmMenuFiscal.Visible := false;
       anmMenuFiscal.Active  := false;
       Application.MessageBox(pChar(e.Message),'Erro',mb_ok);
    End;
  end;
end;







procedure TdlgMenuFiscal.sbMeiosPagtoClick(Sender: TObject);
Var linha: String;
    total: Currency;
    texto: String;
begin
  inherited;
  Try
    //SetGerarEmArquivo();
    anmMenuFiscal.Visible := True;
    anmMenuFiscal.Active  := True;
    GravarEM('MEIOSPGTO.TXT');
    AssignFile(arquivo,CaminhoArquivo);
    ReWrite(arquivo);
    total:=0;
    With Q_SQL do Begin
       Close;
       Sql.Text := 'Select Z.datamovimento, z7.meiopgto as Descricao, sum(z7.valor) as Valor '+
                   ' From reducaoz_r07 z7  inner join reducaoz z on z.crz = z7.crz '+
                   ' where (z.datamovimento >= :Inicio and z.datamovimento <= :Fim) '+
                   ' group by Z.datamovimento, z7.meiopgto '+
                   ' ORDER BY Z.datamovimento,z7.meiopgto ';

       Params[0].AsString := FormatDateTime('ddmmyyyy',dtInicio.Date);
       Params[1].AsString := FormatDateTime('ddmmyyyy',dtFim.Date);
       Open;
       Writeln(arquivo,'===============================================');
       Writeln(arquivo,'           Meios de Pagamento                  ');
       Writeln(arquivo,'===============================================');
       Writeln(arquivo,'Periodo: '+DateToStr(dtInicio.Date)+' e '+DateToStr(dtFim.Date));
       Writeln(arquivo,'===============================================');
       Writeln(arquivo,'Data         Descrição                 Valor R$');
       Writeln(arquivo,'-----------------------------------------------');
       While not eof do Begin
            linha := PreencherStr(Copy(FieldByName('datamovimento').AsString,1,09),' ' ,09)+
                     PreencherStr(Copy(FieldByName('Descricao').AsString,1,20),' ' ,20)+
                     AdicionarStr(FloatToStrF(fieldByName('valor').AsFloat, ffCurrency,8,2),' ',16);
          Writeln(arquivo,linha);
          Next;
       End;
       Close;
       Sql.Text := 'Select z7.meiopgto as Descricao, sum(z7.valor) as Valor From reducaoz_r07 z7 '+
                   ' inner join reducaoz z on z.crz = z7.crz '+
                   'where (z.datamovimento >= :Inicio and z.datamovimento <= :Fim) group by z7.meiopgto';
       Params[0].AsString := FormatDateTime('ddmmyyyy',dtInicio.Date);
       Params[1].AsString := FormatDateTime('ddmmyyyy',dtFim.Date);
       Open;
       Writeln(arquivo,'=================TOTALIZACAO===================');
       Writeln(arquivo,'Descrição                       Valor R$       ');
       Writeln(arquivo,'-----------------------------------------------');
       While not eof do Begin
          linha := PreencherStr(Copy(FieldByName('Descricao').AsString,1,32),' ' ,22)+
                   AdicionarStr(FloatToStrF(fieldByName('valor').AsFloat, ffCurrency,8,2),' ',16);
                   Writeln(arquivo,linha);
          total := total + fieldByName('valor').AsFloat;
          Next;
       End;
       Writeln(arquivo,'-----------------------------------------------');
       Writeln(arquivo,'     Total Geral: '+FloatToStrF(total, ffCurrency,8,2));

    End;
    CloseFile(arquivo);
    if (rgEnviarPara.ItemIndex = 0) then
       DMECF.ECF1.ImprimirArquivo(CaminhoArquivo)
    Else
       dmECF.ECF1.AssinarAquivo(CaminhoArquivo);
    anmMenuFiscal.Visible := false;
    anmMenuFiscal.Active  := false;
    Application.MessageBox(pChar('Tabela de Formas PGTO gerada com sucesso!'+#13+'Arq. Salvo em: '+CaminhoArquivo),'Aviso',mb_ok);
  Except
    on E : Exception do
       Application.MessageBox(pChar(e.Message),'Erro',mb_ok);
  end;




end;

procedure TdlgMenuFiscal.sbDAVEmitidosClick(Sender: TObject);
begin
  inherited;
  GravarEM('DAVEMITIDOS.TXT');
end;

procedure TdlgMenuFiscal.sbEncerrantesClick(Sender: TObject);
begin
  inherited;
  GravarEM('ENCERRANTES');
end;

procedure TdlgMenuFiscal.sbTransfMesasClick(Sender: TObject);
begin
  inherited;
  GravarEM('TRANSFMESAS.TXT');
end;

procedure TdlgMenuFiscal.sbMesasAbertasClick(Sender: TObject);
begin
  inherited;
  GravarEM('MESASABERTAS.TXT');
end;

procedure TdlgMenuFiscal.sbManifestofiscalviagensClick(Sender: TObject);
begin
  inherited;
  GravarEM('MANIFESTOFISCALVIAGEM.TXT');
end;

procedure TdlgMenuFiscal.sbLeituradoMovimentoDiarioClick(Sender: TObject);
begin
  inherited;
  GravarEM('LEITURAMOVIMENTODIARIO.TXT');
end;

procedure TdlgMenuFiscal.sbIdentificacaoPAFECFClick(Sender: TObject);
begin
  inherited;
  Try
    GravarEM('IDENTIFICACAOPAF.TXT');
    iDentificacaoPAFECF();
    dmECF.ECF1.AssinarAquivo(CaminhoArquivo);
    Application.MessageBox(pChar('Identificação do PAF-ECF gerada com sucesso!'+#13+'Arq. Salvo em: '+CaminhoArquivo),'Aviso',mb_ok);
  Except
    on E : Exception do
       Application.MessageBox(pChar(e.Message),'Erro',mb_ok);
  end;

end;

procedure TdlgMenuFiscal.sbVendasnoPeriodoClick(Sender: TObject);
Var tipo: Word;
begin
  inherited;
  //GravarEM('VENDASNOPERIODO.TXT');
  DMProjeto.SetParametrosForm([dtInicio.Date,dtFim.Date]);
  DMProjeto.CriarForm('DlgGeracaoArqMagnetico', Self, true)
end;

procedure TdlgMenuFiscal.sbTabIndiceTecnicoProducaoClick(Sender: TObject);
begin
  inherited;
  GravarEM('TABINDICETECNICOPRODUCAO.TXT');
end;

procedure TdlgMenuFiscal.Button1Click(Sender: TObject);
var DataInicial, DataFinal: string;

begin
        DataInicial:= DateToStr(dtInicio.Date);
        DataFinal:= DateToStr(dtFim.Date);
        dmECF.ECF1.GetTesteBotton(DataInicial,DataFinal);
end;


end.

unit FuncoesPAF;



interface

uses SysUtils, Classes, RegAuxiliar, MD5, Sintegra, RegReducaoZ, RegErro;

const
  fCNPJ_Desenv     = '01976704000167';
  fIE_Desenv       = '161167691     ';
  fIM_Desenv       = '711519        ';
  fRAZAO_Desenv    = 'SYNCTECH SOLUCOES EM INFORMATICA LTDA  ';
  fSystema         = 'SYNCLOJA                               ';
  fVersao          = '6.0.60   ';
  fAss_Expoente    = '25                                     ';
  fAss_Publica     = 'B8092E0BB5B3DA7F36AFE0A1213D18DE6255BD576DFE98C2761024A2F20D02BD'+
                     'B3712448CB7C967290648F1403205B431192CE39A77330D9142E3578962704D9'+
                     '07FF82C3EDC59E5F292AE438A760CE21FAAB67BFE0796CA4D1BD042673B7E50A'+
                     '0178C8379860E5E4563F89707C4E2FF75BECE610222CC239C8B17F1BEE8FE1F7';
  fAss_Privada     = 'F4730C8CD52B909435DC2C2CF958E8950B20EB26A92D3C9F26D0BD7B77E08A4C'+
                     'F0F266D7DB918824F1BDF03889FBB8ADDB233C3512AF0BE32F1AEAAAF71EB4B1'+
                     'C0BB589730FC78BC8D05D5E245888BC54EEE29BCCAA5D56776BCD6F12DC5BDD5'+
                     '4F04F435ABEB4C57251A24C7DA4E74A6C2E12174718041DAA028E67BD7BACB27';

  fChave           = '09zxmcn8765EFGHI321qawsedRSTU, :;rftgy4hujikolpvbABCDJ.KLMNOPQVXZ';
  fVersaoPAF       = '1.4';

  fArquivoAuxiliar = 'ArquivoAuxiliar.TXT';
  fAutenticacaoEXE = 'AutenticacaoEXE.txt';

{Funções}
Function Crypt(Action, Src: String): String;
function ValidarPAF(gt_Impressora: Currency; gt_Arquivo: Currency;fab_Impressora: String; fab_Arquivo: String): TValidaPAF;


{Arquivo Auxiliar}
function CriarArquivoAuxiliar(regAux: TCamposPAF; path: string): Boolean;
function LerArquivoAuxiliar(path: string): TCamposPAF;
function AtualizaArquivoAuxiliar(camposPAF: TCamposPAF; path: string): Boolean;

{MD5}
function RetornarMD5Arquivo(path: string): String;

{Arquivo Autenticação}
function CriarArquivoAutenticacao(s: String): Boolean;
function RetornaMD5ArquivoAutenticacao(path: string): string;
function RetornaMD5SYNCLOJA(path: string): string;

{Retorno Chaves-PAF}
function GetChavePrivada(): string;
function GetChavePublic(): string;


implementation

uses
  Dialogs,funcoes;

function GetChavePrivada(): string;
Begin
 Result := fAss_Privada;
End;

function GetChavePublic(): string;
Begin
 Result := fAss_Publica;
End;

function ValidarPAF(gt_Impressora: Currency; gt_Arquivo: Currency;fab_Impressora: String; fab_Arquivo: String): TValidaPAF;
Var retorno : TValidaPAF;

Begin
   Try
       retorno.CodigoErro :=  0;
       if (gt_Impressora <> gt_Arquivo) Then Begin
          retorno.MsgErro:='O grande total do Arquivo Auxiliar diverge do Grande Total da Impressora Fiscal!!!';
          retorno.CodigoErro :=  1;
       End else if (Copy(Trim(fab_impressora),1,20) <> Trim(fab_Arquivo)) Then Begin
          retorno.MsgErro:='O numero de série no Arquivo Auxiliar diverge do numero de série da impressora fiscal!!!';
          retorno.CodigoErro :=  1;
       End;
       Result := retorno;
   Except
       raise Exception.Create('Erro ao Validar Arquivo Auxiliar do PAF!!!');
   End;

End;



function RetornaMD5ArquivoAutenticacao(path: string): string;
Begin
  Try
    Result := RetornarMD5Arquivo(path + 'AutenticacaoEXE.txt');
  Except
    raise Exception.Create('Não foi possível gerar MD5 do arquivo de autenticação!!!');
  end
End;



function CriarArquivoAutenticacao(s: String): Boolean ;
var ArqTexto, aMD5 : String;
    F: TStringList;
    camposPAF: TCamposPAF;
begin
  Result := True;
  try
    f := TStringList.Create();
    ArqTexto := ExtractFilePath(s) + fAutenticacaoEXE;
    aMD5 := RetornarMD5Arquivo(s);

    if FileExists(ArqTexto) then
       DeleteFile(ArqTexto);

    f.Add( ExtractFileName( s ) + ' - ' + aMD5);
    f.SaveToFile(ArqTexto);
//    camposPAF := LerArquivoAuxiliar(ExtractFilePath(s));
//    AtualizaArquivoAuxiliar(camposPAF,ExtractFilePath(s));
  Except
    Result := False;
  end;
end;

function RetornarMD5Arquivo(path: string): String;
begin
  Result := '';
  try
    Result := MD5Print(MD5File(path));
  Except
    raise Exception.Create('Não foi possível gerar MD5 do arquivo!!!');
    //MessageDlg(pchar(e.message), mtWarning, [mbOK], 0);
  end
end;

function RetornaMD5SYNCLOJA( path: String ): string;
Begin
  Try
    Result := RetornarMD5Arquivo(path + 'syncloja.exe');
  Except
    raise Exception.Create('Não foi possível gerar MD5 do Syncloja!!!');
  end
End;



function AtualizaArquivoAuxiliar(camposPAF: TCamposPAF; path: string): Boolean;
Var arq: TStringList;
Begin
  try
    arq := TStringList.Create();
    arq.Add(  Crypt('C',fCNPJ_Desenv ) );
    arq.Add(  Crypt('C',fIE_Desenv ) );
    arq.Add(  Crypt('C',fIM_Desenv ) );
    arq.Add(  Crypt('C',fRAZAO_Desenv ) );
    arq.Add(  Crypt('C',fSystema ) );
    arq.Add(  Crypt('C',fVersao ) );
    arq.Add(  Crypt('C',camposPAF.NroFabricacao_ECF ) );
    arq.Add(  Crypt('C',camposPAF.Ultimo_COO ) );
    arq.Add(  Crypt('C',camposPAF.GrandeTotal ) );
    arq.Add(  Crypt('C',camposPAF.NroECF ) );
    arq.Add(  Crypt('C',camposPAF.MFDAdicional ) );
    arq.Add(  Crypt('C',camposPAF.ProximaZ ) );
    arq.Add(  Crypt('C',camposPAF.TipoECF ) );
    arq.Add(  Crypt('C',camposPAF.MarcaECF ) );
    arq.Add(  Crypt('C',camposPAF.ModeloECF ) );
    arq.Add(  Crypt('C',camposPAF.VersaoSB ) );
    arq.Add(  Crypt('C',camposPAF.DataInstalacaoSB) );
    arq.Add(  Crypt('C',camposPAF.HoraInstalacaoSB ) );
    arq.Add(  Crypt('C',camposPAF.NumeroSeqECF ) );
    arq.Add(  Crypt('C',camposPAF.CNPJ_Usuario ) );
    arq.Add(  Crypt('C',camposPAF.IE_Usuario)  );
    arq.Add(  Crypt('C',RetornaMD5SYNCLOJA(path) ) );
    arq.Add(  Crypt('C',fAss_Expoente ) );
    arq.Add(  Crypt('C',fAss_Publica ) );
    arq.Add(  Crypt('C',fVersaoPAF ) );
    arq.Add(  Crypt('C',RetornaMD5ArquivoAutenticacao(path)) );
    arq.Text :=  (arq.Text);
    arq.SaveToFile(path + fArquivoAuxiliar);
    Result := true
  Except
    raise Exception.Create('Não foi possível Atualizar arquivo auxiliar!!!');
  End;

End;

function LerArquivoAuxiliar(path: String): TCamposPAF;
Var camposPAF: TCamposPAF;
    arq: TStringList;
    i:Currency;
Begin
  try
    if (FileExists(path + fArquivoAuxiliar)) Then Begin
      arq := TStringList.Create();
      arq.LoadFromFile(path + fArquivoAuxiliar);
     // arq.Text := Des (arq.Text);
      camposPAF.CNPJ_Desenv :=  (  Crypt('D',  arq.Strings[0]));
      camposPAF.IE_Desenv :=  (  Crypt('D',  arq.Strings[1]));
      camposPAF.IM_Desenv :=  (  Crypt('D',  arq.Strings[2]));
      camposPAF.RAZAO_Desenv :=  (  Crypt('D',  arq.Strings[3]));
      camposPAF.Systema :=  (  Crypt('D',  arq.Strings[4]));
      camposPAF.Versao :=  (  Crypt('D',  arq.Strings[5]));
      camposPAF.NroFabricacao_ECF :=  (  Crypt('D',  arq.Strings[6]));
      camposPAF.Ultimo_COO :=  (  Crypt('D',  arq.Strings[7]));
      camposPAF.GrandeTotal :=  (  Crypt('D',  arq.Strings[8]));
      camposPAF.NroECF :=  (  Crypt('D',  arq.Strings[9]));
      camposPAF.MFDAdicional :=  (  Crypt('D',  arq.Strings[10]));
      camposPAF.ProximaZ :=  (  Crypt('D',  arq.Strings[11]));
      camposPAF.TipoECF :=  (  Crypt('D',  arq.Strings[12]));
      camposPAF.MarcaECF :=  (  Crypt('D',  arq.Strings[13]));
      camposPAF.ModeloECF :=  (  Crypt('D',  arq.Strings[14]));
      camposPAF.VersaoSB :=  (  Crypt('D',  arq.Strings[15]));
      camposPAF.DataInstalacaoSB:=  (  Crypt('D',  arq.Strings[16]));
      camposPAF.HoraInstalacaoSB :=  (  Crypt('D',  arq.Strings[17]));
      camposPAF.NumeroSeqECF :=  (  Crypt('D',  arq.Strings[18]));
      camposPAF.CNPJ_Usuario :=  (  Crypt('D',  arq.Strings[19]));
      camposPAF.IE_Usuario :=  (  Crypt('D',  arq.Strings[20]));
      camposPAF.MD5_Exe :=  (  Crypt('D',  arq.Strings[21]));
      camposPAF.Ass_Expoente :=  (  Crypt('D',  arq.Strings[22]));
      camposPAF.Ass_Publica :=  (  Crypt('D',  arq.Strings[23]));
      camposPAF.VersaoPAF :=  (  Crypt('D',  arq.Strings[24]));
      camposPAF.MD5_ArqAutenticacao :=  (  Crypt('D',  arq.Strings[25]));
    End else Begin
      camposPAF.CNPJ_Desenv := '';
      camposPAF.IE_Desenv := '';
      camposPAF.IM_Desenv := '';
      camposPAF.RAZAO_Desenv := '';
      camposPAF.Systema := '';
      camposPAF.Versao := '';
      camposPAF.NroFabricacao_ECF := '';
      camposPAF.Ultimo_COO := '';
      camposPAF.GrandeTotal := '';
      camposPAF.NroECF := '';
      camposPAF.MFDAdicional := '';
      camposPAF.ProximaZ := '';
      camposPAF.TipoECF := '';
      camposPAF.MarcaECF := '';
      camposPAF.ModeloECF := '';
      camposPAF.VersaoSB := '';
      camposPAF.DataInstalacaoSB:= '';
      camposPAF.HoraInstalacaoSB := '';
      camposPAF.NumeroSeqECF := '';
      camposPAF.CNPJ_Usuario := '';
      camposPAF.IE_Usuario := '';
      camposPAF.MD5_Exe := '';
      camposPAF.Ass_Expoente := '';
      camposPAF.Ass_Publica := '';
      camposPAF.VersaoPAF := '';
      camposPAF.MD5_ArqAutenticacao := '';
    End;
    try
      i := StrToCurr(camposPAF.GrandeTotal) / 1.00;
    Except
      camposPAF.GrandeTotal := '000000000000000000';
    End;
    Result := camposPAF;
  Except On E:Exception do
    raise Exception.Create('Não foi possível Ler arquivo auxiliar!!!'+#13+E.Message);
  End;

End;

{Criar arquivo Auxiliar PAF onde vamos guardar o GT e Séria para Critica de Inicio e Abertura de tela de venda de CEF}
function CriarArquivoAuxiliar(regAux: TCamposPAF; path: string): Boolean;
Var
    arq: TStringList;
    texto :String;
Begin
  try

    arq := TStringList.Create();
    arq.Add(  Crypt('C',(fCNPJ_Desenv ) ) );
    arq.Add(  Crypt('C',(fIE_Desenv ) ) );
    arq.Add(  Crypt('C',(fIM_Desenv ) ) );
    arq.Add(  Crypt('C',(fRAZAO_Desenv ) ) );
    arq.Add(  Crypt('C',(fSystema ) ) );
    arq.Add(  Crypt('C',(fVersao ) ) );
    arq.Add(  Crypt('C',(regAux.NroFabricacao_ECF ) ) );
    arq.Add(  Crypt('C',(regAux.Ultimo_COO ) ) );
    arq.Add(  Crypt('C',(regAux.GrandeTotal ) ) );
    arq.Add(  Crypt('C',(regAux.NroECF ) ) );
    arq.Add(  Crypt('C',(regAux.MFDAdicional ) ) );
    arq.Add(  Crypt('C',(regAux.ProximaZ ) ) );
    arq.Add(  Crypt('C',(regAux.TipoECF ) ) );
    arq.Add(  Crypt('C',(regAux.MarcaECF ) ) );
    arq.Add(  Crypt('C',(regAux.ModeloECF ) ) );
    arq.Add(  Crypt('C',(regAux.VersaoSB ) ) );
    arq.Add(  Crypt('C',(regAux.DataInstalacaoSB) ) );
    arq.Add(  Crypt('C',(regAux.HoraInstalacaoSB ) ) );
    arq.Add(  Crypt('C',(regAux.NumeroSeqECF ) ) );
    arq.Add(  Crypt('C',(regAux.CNPJ_Usuario ) ) );
    arq.Add(  Crypt('C',(regAux.IE_Usuario)  ) );
    arq.Add(  Crypt('C',(RetornaMD5SYNCLOJA(path) ) ) );
    arq.Add(  Crypt('C',(fAss_Expoente ) ) );
    arq.Add(  Crypt('C',(fAss_Publica ) ) );
    arq.Add(  Crypt('C',(fVersaoPAF ) ) );
    arq.Add(  Crypt('C',(RetornaMD5ArquivoAutenticacao(path)) ) );
    arq.SaveToFile(path + fArquivoAuxiliar);
    Result := true;
  Except
    on E:Exception do
     raise Exception.Create('Erro ao Criar Arquivo Auxiliar.'+#13+e.Message);
  End;
End;

Function Crypt(Action, Src: String): String;
var KeyLen : Integer;
  KeyPos : Integer;
  OffSet : Integer;
  Dest, Key : String;
  SrcPos : Integer;
  SrcAsc : Integer;
  TmpSrcAsc : Integer;
  Range : Integer;
begin
  Result:= Src;
  Exit;
//  if (Src = '') Then  begin
//    Result:= '';
//    Exit;
//  end;
//  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
//  Dest := '';
//  KeyLen := Length(Key);
//  KeyPos := 0;
//  SrcPos := 0;
//  SrcAsc := 0;
//  Range := 256;
//  if (Action = UpperCase('C')) then
//  begin
//    Randomize;
//    OffSet := Random(Range);
//    Dest := Format('%1.2x',[OffSet]);
//    for SrcPos := 1 to Length(Src) do
//    begin
//      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
//      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
//      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
//      Dest := Dest + Format('%1.2x',[SrcAsc]);
//      OffSet := SrcAsc;
//    end;
//  end
//  Else if (Action = UpperCase('D')) then begin
//    OffSet := StrToInt('$'+ copy(Src,1,2));
//    SrcPos := 3;
//    repeat
//      SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
//      if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
//      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
//      if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
//      else TmpSrcAsc := TmpSrcAsc - OffSet;
//      Dest := Dest + Chr(TmpSrcAsc);
//      OffSet := SrcAsc;
//      SrcPos := SrcPos + 2;
//    until (SrcPos >= Length(Src));
//  end;
//  Result:= Dest;
end;





end.

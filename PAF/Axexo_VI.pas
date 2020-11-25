unit Axexo_VI;
interface
type
    TRel_R01 = record
      NumeroFabricacao: String;
      MFAdicional: String;
      TipoECF: String;
      MarcaECF: String;
      ModeloECF: String;
      VersaoSB: String;
      DataInstalacao: String;
      HoraInstalacao: String;
      NroSequencialECF: String;
      CNPJUsuario: String;
      InscEstUsuario: String;
      CNPJDesenv: String;
      IE_Desenv: string;
      IM_Desenv: string;
      RAZAO_Desenv: string;
      Systema: string;
      Versao: string;
      DataInicial: String;
      DataFinal: String;
      VersaoERPAF: String;
    End;
    TRel_R02 = record
      CRZ: String;
      NROFabricacao: String;
      MFAdicional: String;
      ModeloECF: String;
      NROOrdem: String;
      COO: String;
      CRO: String;
      DataMovimento: String;
      DataEmissao: String;
      HoraEmissao: String;
      VendaBrutaDiaria: Currency;
      DescontoISS: String;
    End;
    TRel_R03 = record
      TipoTotalizador: String;
      Totalizador: String;
      ValorTotalizador: Currency;
    End;


implementation
end.

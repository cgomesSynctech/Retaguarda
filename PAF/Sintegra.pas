unit Sintegra;
interface
type
    TReg_60A = record
      DataEmissao: string;
      NumeroSerie: String;
      CRZ: String;
      Situacao_Aliq: String;
      ValorAcumulado: Currency;
    End;
    TReg_60D = record
      DataEmissao: string;
      NumeroSerie: String;
      Codigo: String;
      Quantidade: Double;
      Valor: Currency;
      BaseICMS: Currency;
      Situacao_Aliq: String;
      ValorICMS: Currency;
    End;
    TReg_60I = record
      DataEmissao: string;
      NumeroSerie: String;
      Modelo: String;
      COO: String;
      NumeroOrdem: String;
      Codigo: String;
      Quantidade: Double;
      Valor: Currency;
      BaseICMS: Currency;
      Situacao_Aliq: String;
      ValorICMS: Currency;
    End;
    TReg_60M = record
      DataEmissao: string;
      NumeroSerie: String;
      NumeroOrdem: String;
      Modelo: String;
      COOInicio: String;
      COOFim: String;
      CRZ: String;
      CRO: String;
      VendaBruta: Currency;
      Totalizador: Currency;
    End;  
    TReg_60R = record
      DataEmissao: string;
      NumeroSerie: String;
      Codigo: String;
      Quantidade: Double;
      Valor: Currency;
      BaseICMS: Currency;
      Situacao_Aliq: String;
      ValorICMS: Currency;
    End;
implementation
end.
 
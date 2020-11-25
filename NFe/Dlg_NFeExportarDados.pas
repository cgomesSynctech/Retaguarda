unit Dlg_NFeExportarDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxExEdtr, dxEdLib, TS_CheckBox, DB,
  DBTables, IBCustomDataSet, IBQuery, dxfProgressBar, dxEditor,
  TS_DateTimePicker;

type
  TDlgNFeExportarDados = class(TFrmModeloCadastros)
    cbEmitente: TTS_CheckBox;
    cbClientes: TTS_CheckBox;
    cbTransportadoras: TTS_CheckBox;
    cbProdutos: TTS_CheckBox;
    Q_Export: TIBQuery;
    lbPosicao: TdxfLabel;
    Barra: TdxfProgressBar;
    dData: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgNFeExportarDados: TDlgNFeExportarDados;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TDlgNFeExportarDados.btGravarClick(Sender: TObject);
Var ArqDestino: TStringList;
  sQtd: String;
  LOCALE_SDECIMAL: Char;
begin
  inherited;
  Try
      LOCALE_SDECIMAL := DecimalSeparator;
      DecimalSeparator := '.';
      Barra.Max := 4;
      Barra.Position := 0;
      if (cbEmitente.Checked) then Begin
         ArqDestino:= TStringList.Create;
         lbPosicao.Caption := 'Emitente...';
         Application.ProcessMessages;
         with Q_Export do  begin
             Close;
             Sql.Text := 'SELECT ''EMITENTE|1'' AS EMITENTE, '+
             '  ''A|1.01'' AS LAYOUT, '+
             '  ''C|''||CASE WHEN F.pessoa_fj = ''F'' THEN  ''CPF|'' ELSE ''CNPJ|'' END||f.cpf_cnpj as CPF_CNPJ, '+
             '  ''|''||Substr(f.razao,1,60) as Razao, '+
             '  ''|''||Substr(f.nome,1,60) as Fantasia, '+
             '  ''|''||f.inscricao_est as Insc_Est, '+
             '  ''|''||e.inscricao_est_sub as Insc_Est_Sub, '+
             '  ''|''||f.inscricao_Mun as Insc_Mun, '+
             '  ''|''||Substr(c.codigo,1,7) as CNAE, '+
             '  ''|''||Substr(f.endereco,1,60) as Logradouro, '+
             '  ''|''||e.numero as Numero , '+
             '  ''|''||Substr(e.complemento,1,60) as Complemento, '+
             '  ''|''||Substr(f.Bairro,1,60) as Bairro, '+
             '  ''|''||m.municipio as Municipio, '+
             '  ''|''||Substr(m.descricao,1,60) as Municipio, '+
             '  ''|''||Substr(f.UF,1,02) as UF, '+
             '  ''|''||Substr(f.CEP,1,08) as CEP, '+
             '  ''|1058'' as CodPais, '+
             '  ''|BRASIL'' as NomePais, '+
             '  ''|''||Substr(f.fone1,1,10) as Fone '+
             ' FROM FAVORECIDOS F INNER JOIN EMPRESAS E ON E.favorecido = F.favorecido '+
             ' INNER JOIN cnaes C ON C.cnae = E.cnae '+
             ' INNER JOIN MUNICIPIOS M ON M.municipio = F.municipio '+
             ' WHERE F.favorecido = -1 ';
             Open;
             ArqDestino.Clear;
             ArqDestino.Add(Funcoes.RetiraAcentos(Fields[00].asString));
             ArqDestino.Add(Funcoes.RetiraAcentos(Fields[01].asString));
             ArqDestino.Add(Funcoes.RetiraAcentos(Fields[02].asString)+
                            Funcoes.RetiraAcentos(Fields[03].asString)+
                            Funcoes.RetiraAcentos(Fields[04].asString)+
                            Funcoes.RetiraAcentos(Fields[05].asString)+
                            Funcoes.RetiraAcentos(Fields[06].asString)+
                            Funcoes.RetiraAcentos(Fields[07].asString)+
                            Funcoes.RetiraAcentos(Fields[08].asString)+
                            Funcoes.RetiraAcentos(Fields[09].asString)+
                            Funcoes.RetiraAcentos(Fields[10].asString)+
                            Funcoes.RetiraAcentos(Fields[11].asString)+
                            Funcoes.RetiraAcentos(Fields[12].asString)+
                            Funcoes.RetiraAcentos(Fields[13].asString)+
                            Funcoes.RetiraAcentos(Fields[14].asString)+
                            Funcoes.RetiraAcentos(Fields[15].asString)+
                            Funcoes.RetiraAcentos(Fields[16].asString)+
                            Funcoes.RetiraAcentos(Fields[17].asString)+
                            Funcoes.RetiraAcentos(Fields[18].asString)+
                            Funcoes.RetiraAcentos(Fields[19].asString));
             ArqDestino.SaveToFile(DMProjeto.ProgPath+'\NFe\EMITENTE.TXT');
             ArqDestino.Free;
             Barra.Position := 1;
         End;
      End;
    {Exportação dos Clientes}
      if (cbClientes.Checked) then Begin
         ArqDestino:= TStringList.Create;
         lbPosicao.Caption := 'Clientes...';
         Application.ProcessMessages;
         with Q_Export do  begin
             Close;
             Sql.Text := 'Select Count(*) from favorecidos x INNER JOIN MUNICIPIOS M ON M.municipio = x.municipio where x.TipoFavorecido = 1 and x.desativado = ''N'' and ((x.cpf_cnpj <> '''' ) and (x.cpf_cnpj is not null)) and (x.datacadastro >= :data) ';
             ParamByName('Data').AsDateTime := dData.Date;
             Open;
             sQtd := Fields[0].AsString;
             Close;
             Sql.Text := 'SELECT ''CLIENTE|'+sQtd+'''  AS EMITENTE, '+
             '  ''A|1.01'' AS LAYOUT, '+
             '  ''E|''||CASE WHEN F.pessoa_fj = ''F'' THEN  ''CPF|'' ELSE ''CNPJ|'' END AS CODCPF_CNPJ, '+
             '  f.cpf_cnpj as CPF_CNPJ, '+
             '  Substr(f.razao,1,60) as Razao, '+
             '  f.inscricao_est as Insc_Est, '+
             '  f.suframa as Suframa, '+
             '  Substr(f.endereco,1,60) as Logradouro, '+
             '  f.NRO as Numero , '+
             '  '' ''  as Complemento, '+
             '  Substr(f.Bairro,1,60) as Bairro, '+
             '  m.municipio as Municipio, '+
             '  Substr(m.descricao,1,60) as Municipio, '+
             '  Substr(f.UF,1,02) as UF, '+
             '  f.CEP as CEP, '+
             '  ''1058'' as CodPais, '+
             '  ''BRASIL'' as NomePais, '+
             '  f.fone1 as Fone '+
             ' FROM FAVORECIDOS F INNER JOIN MUNICIPIOS M ON M.municipio = F.municipio '+
             ' WHERE (F.TipoFavorecido = 1) and (f.desativado = ''N'') and ((f.cpf_cnpj <> '''' ) and (f.cpf_cnpj is not null)) and (f.datacadastro >= :data) ';
             ParamByName('Data').AsDateTime := dData.Date;
             Open;
             ArqDestino.Clear;
             ArqDestino.Add(Funcoes.RetiraAcentos(Fields[00].asString));
             While not eof do Begin

                 ArqDestino.Add(Funcoes.RetiraAcentos(Fields[01].asString));
                 ArqDestino.Add(Trim(Funcoes.RetiraAcentos(Fields[02].asString))+
                                Trim(SoLetrasNumeros(Fields[03].asString))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[04].asString)))+'|'+
                                Trim(Copy(SoLetrasNumeros(Fields[05].asString),1,14))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[06].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[07].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[08].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[09].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[10].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[11].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[12].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[13].asString)))+'|'+
                                Trim(Copy(SoNumeros(Fields[14].asString,0),1,8))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[15].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[16].asString)))+'|'+
                                Trim(Copy(SoNumeros(Fields[17].asString,0),1,10)+'|'));
                 Next;
             End;
             ArqDestino.SaveTofILE(DMProjeto.ProgPath+'NFe\CLIENTE.TXT');
             ArqDestino.Free;
             Barra.Position := 2;
         End;
      End;
    {Exportação das Transportadoras}
      if (cbTransportadoras.Checked) then Begin
         ArqDestino:= TStringList.Create;
         lbPosicao.Caption := 'Transportadoras...';
         Application.ProcessMessages;
         with Q_Export do  begin
             Close;
             Sql.Text := 'SELECT ''TRANSPORTADORA|''||(Select Count(*) from favorecidos x where x.TipoFavorecido = 2 and x.tipoempresa = ''T'' and x.desativado = ''N'' and ((x.cpf_cnpj <> '''' ) and (x.cpf_cnpj is not null)) and (f.datacadastro >= :data)) ||''|''  AS EMITENTE, '+
             '  ''A|1.01'' AS LAYOUT, '+
             '  ''X|''||CASE WHEN F.pessoa_fj = ''F'' THEN  ''CPF|'' ELSE ''CNPJ|'' END AS CODCPF_CNPJ, '+
             '  f.cpf_cnpj as CPF_CNPJ, '+
             '  Substr(f.razao,1,60) as Razao, '+
             '  f.inscricao_est as Insc_Est, '+
             '  Substr(f.endereco,1,60) as Logradouro, '+
             '  f.CIDADE as Cidade, '+
             '  Substr(f.UF,1,02) as UF '+
             ' FROM FAVORECIDOS F INNER JOIN MUNICIPIOS M ON M.municipio = F.municipio '+
             ' WHERE (F.TipoFavorecido = 2) and f.tipoempresa = ''T'' and (f.desativado = ''N'') and ((f.cpf_cnpj <> '''' ) and (f.cpf_cnpj is not null)) and (f.datacadastro >= :data) ';
             Open;
             ParamByName('Data').AsDateTime := dData.Date;
             ArqDestino.Clear;
             ArqDestino.Add(Funcoes.RetiraAcentos(Fields[00].asString));
             While not eof do Begin
                 ArqDestino.Add(Funcoes.RetiraAcentos(Fields[01].asString));
                 ArqDestino.Add(Trim(Funcoes.RetiraAcentos(Fields[02].asString))+
                                Trim(SoLetrasNumeros(Fields[03].asString))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[04].asString)))+'|'+
                                Trim(Copy(SoNumeros(Fields[05].asString,0),1,14))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[06].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[07].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[08].asString)))+'|');
                 Next;
             End;
             ArqDestino.SaveTofILE(DMProjeto.ProgPath+'NFe\TRANSPORTADORA.TXT');
             ArqDestino.Free;
             Barra.Position := 3;
         End;
      End;
     {Exportação dos Itens}
     if (cbProdutos.Checked) then Begin
         ArqDestino:= TStringList.Create;
         lbPosicao.Caption := 'Produtos...';
         Application.ProcessMessages;
         with Q_Export do  begin
            Close;
            Sql.Text := 'select Count(*) from itens i where (i.tipoitem = 1) and (i.desativado = ''N'') and (i.codigo is not Null) and (i.DataCadastro >= :Data)';
            ParamByName('Data').AsDateTime := dData.Date;
            Open;
            sQtd := Fields[0].AsString;
            Close;
            Sql.Text := 'SELECT ''PRODUTO|'+sQtd+'''  AS EMITENTE, '+
                        '  ''A|1.01'' AS LAYOUT, '+
                        ' i.codigo, '+
                        ' i.descricao, '+
                        ' i.codigobarras, '+
                        ' '' '' as NCM, '+
                        ' '' '' as EX_TIPI, '+
                        ' i.genero, '+
                        ' i.unidade, '+
                        ' i.fatorundvenda, '+
                        ' '' '' as EANTrib, '+
                        ' i.unidade, '+
                        ' i.fatorundvenda, '+
                        ' i.cst, '+
                        ' i.origemmercadoria, '+
                        ' i.modalidadebcicms, '+
                        ' i.aliqicms, '+
                        ' i.reducaocst, '+
                        ' i.modalidadebcicmsst, '+
                        ' i.reducaocst, '+
                        ' i.tva '+
                        ' from itens i where (i.tipoitem = 1) and (i.desativado = ''N'') and (i.codigo is not Null) and (i.DataCadastro >= :Data)';
            ParamByName('Data').AsDateTime := dData.Date;
            Open;
            ArqDestino.Clear;
            ArqDestino.Add(Funcoes.RetiraAcentos(Fields[00].asString));
            While not eof do Begin
                 ArqDestino.Add(Funcoes.RetiraAcentos(Fields[01].asString));
                 ArqDestino.Add('I|'+
                                Trim(Fields[02].asString)+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[03].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[04].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[05].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[06].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[07].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[08].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[09].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[10].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[11].asString)))+'|'+
                                Trim(SoLetrasNumeros(Funcoes.RetiraAcentos(Fields[12].asString))));
                 ArqDestino.Add('M|0|1');
                 ArqDestino.Add('N|'+
                                Trim(Fields[13].asString)+'|'+
                                Trim(Fields[14].asString)+'|'+
                                iif(Pos(Fields[13].asString,'60') > 0,'|',Trim(Fields[15].asString)+'|')+
                                iif(Pos(Fields[13].asString,'00*10*20*51*70*90') > 0 ,FormatFloat('0.00',Fields[16].Value)+'|','|')+
                                iif(Pos(Fields[13].asString,'20*30*51*70*90')> 0 ,FormatFloat('0.00',Fields[17].Value)+'|','|')+
                                iif(Pos(Fields[13].asString,'10*70*90')> 0 ,Fields[18].AsString+'|','|')+
                                iif(Pos(Fields[13].asString,'10*30*70*90')> 0 ,FormatFloat('0.00',Fields[19].Value)+'|','|')+
                                iif(Pos(Fields[13].asString,'10*70*90')> 0 ,FormatFloat('0.00',Fields[20].Value)+'|','|'));
                 Next;

            End;
        End;
        ArqDestino.SaveTofILE(DMProjeto.ProgPath+'NFe\PRODUTO.TXT');
        ArqDestino.Free;
      End;


      Barra.Position := 4;
      Application.MessageBox('Exportação Realizada Com Êxito','Aviso',mb_ok);
      Barra.Position := 0;
      lbPosicao.Caption := '';
      DecimalSeparator := LOCALE_SDECIMAL;
   Except
     on e:Exception do
      Application.MessageBox(pChar('Erro ao Realizar a Exportação:'+#13+e.Message),'Erro',mb_ok);
   End;

end;

end.

unit Dlg_GerarArquivoPirelli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TS_DateTimePicker;

type
  TDlgGerarArquivoPirelli = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    dtData1: TTS_DateTimePicker;
    dtData2: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    tipoRelatorio: String;
  public
    { Public declarations }
  end;

var
  DlgGerarArquivoPirelli: TDlgGerarArquivoPirelli;

implementation

uses DM_Projeto,funcoes, DB, IBQuery;

{$R *.dfm}


procedure TDlgGerarArquivoPirelli.btGravarClick(Sender: TObject);
Var
  NomeDoArquivo,sTexto,inicialNome: string;
  Arquivo: TextFile;
  codPirelliBrasilInterno,tipoArquivo : String;
  Sequencia : Integer;
begin
  inherited;
  Sequencia := DMProjeto.GEN_ID('gen_sequencia_relatorio_pneumix',true);
  CodPirelliBrasilInterno := 'I20580';
  inicialNome := iif(tipoRelatorio = 'estoque','IR_','SO_');
  tipoArquivo := iif(tipoRelatorio = 'estoque','35 ','351');
  NomeDoArquivo :=  ExtractFilePath(application.ExeName) + inicialNome + DMProjeto.sNomeEmpresa + '_' + CodPirelliBrasilInterno + FormatDateTime('YYYYMMDDhhmmss', now )+'.txt';
  AssignFile(Arquivo, NomeDoArquivo);
  if FileExists(NomeDoArquivo) then
	  Append(arquivo) { se existir, apenas adiciona linhas }
  else
  	ReWrite(arquivo); { cria um novo se não existir }
  try
  	sTexto := 'A0'+ PreencherStr(DMProjeto.sCodigoDaRevenda,' ',20) +
              CodPirelliBrasilInterno + tipoArquivo + funcoes.SoNumeros(IntToStr(Sequencia),17) +
              FormatDateTime('YYYYMMDD', now ) + '610';
    DMProjeto.SetGenerator('gen_sequencia_relatorio_pneumix',Sequencia+1);
  	WriteLn(arquivo, sTexto);
    sTexto := 'B0'+ PreencherStr(DMProjeto.sCPF_CNPJEmpresa,' ',17) + PreencherStr(DMProjeto.sNomeEmpresa,' ',35) +
              PreencherStr(DMProjeto.sEnderecoEmpresa,' ',35) + PreencherStr(DMProjeto.sCidadeEmpresa,' ',35) +
              PreencherStr(RestringirCarac(DMProjeto.sCEPEmpresa),' ',17) + 'BR';
    WriteLn(arquivo, sTexto);

    if tipoRelatorio = 'estoque' then
    begin
        sTexto := 'B1'+ PreencherStr('ESTOQUE PROPRIO',' ',17);
        WriteLn(arquivo, sTexto);

        with  DMProjeto.Q_Auxiliar do
        begin
          Close;
          SQL.Text := 'select i.codigo,i.referencia,i.codigobarras,i.descricao,i.estoque,i.unidade from itens i';
          open;
          while not eof do
            begin
            sTexto := 'C0'+ PreencherStr(Fieldbyname('codigo').AsString,' ',17) +  PreencherStr(copy(Fieldbyname('referencia').AsString,1,17),' ' ,17) +
                      PreencherStr(Fieldbyname('codigobarras').AsString,' ',17) +  PreencherStr(copy(Fieldbyname('descricao').AsString,1,35),' ',35)  +
                      SoNumeros(Fieldbyname('estoque').AsString,10) +  PreencherStr(Fieldbyname('unidade').AsString,' ',3);
            WriteLn(arquivo, sTexto);

                ;
               next;
            end;
        end;
    end else if  tipoRelatorio = 'vendas' then
     with  DMProjeto.Q_Auxiliar do
        begin
          Close;
          SQL.Text := 'select i.codigo as coditem,i.referencia,i.codigobarras,i.descricao,i.estoque,i.unidade,s.dataentrega, '+
          's.numero,s.data,f.cpf_cnpj,f.codigo,f.nome,f.endereco,f.cidade,f.cep '+
          'from Saidas s   inner join SaidasItens si on si.saida = s.saida inner join Itens i on i.item = si.item '+
          'left join Favorecidos f on f.favorecido = s.favorecido '+
          'left join Favorecidos v on v.favorecido = s.vendedor '+
          'left join favorecidos m on m.favorecido = s.medico '+
          'left join Favorecidos fn on fn.favorecido = i.ultimofornecedor '+
          'left join Fabricantes fb on fb.fabricante = i.fabricante '+
          'left join Grupos gi on gi.grupo = i.grupo '+
          'left join gruposcomissoes gc on gc.grupocomissao = i.grupocomissao '+
          'left Join TIPOTRIBUTACAOFEDERAL tf on si.IDTRIBFEDERAL = tf.IDTRIBFEDERAL '+
          'WHERE S.data > :DATA1 and S.data < :DATA2 AND  S.modelo = ''55'';';
           parambyname('data1').AsDateTime  := dtData1.Date;
           parambyname('data2').AsDateTime  := dtData2.Date;
          open;
          while not eof do
            begin
            sTexto := 'C0'+ PreencherStr(Fieldbyname('coditem').AsString,' ',17) +  PreencherStr(copy(Fieldbyname('referencia').AsString,1,17),' ' ,17) +
                      PreencherStr(Fieldbyname('codigobarras').AsString,' ',17) +  PreencherStr(copy(Fieldbyname('descricao').AsString,1,35),' ',35)  +
                      SoNumeros(Fieldbyname('estoque').AsString,10) +  PreencherStr(Fieldbyname('unidade').AsString,' ',3) + PreencherStr(' ',' ',17) +
                      FormatDateTime('YYYYMMDD',Fieldbyname('dataentrega').AsDateTime) +'IV'+ PreencherStr(Fieldbyname('numero').AsString,' ',17)  +
                      FormatDateTime('YYYYMMDD',Fieldbyname('data').AsDateTime) + PreencherStr(Fieldbyname('cpf_cnpj').AsString, ' ',17) +
                      PreencherStr(Fieldbyname('codigo').AsString,' ',17) + PreencherStr(copy(Fieldbyname('nome').AsString,1,35),' ',35) +
                      PreencherStr(copy(Fieldbyname('endereco').AsString,1,35),' ',35) +
                      PreencherStr(copy(Fieldbyname('cidade').AsString,1,35),' ',35) +
                      PreencherStr(RestringirCarac(Fieldbyname('cep').AsString),' ',17)  + 'BR';
            WriteLn(arquivo, sTexto);
            next;
            end;
        end;
    begin

    end;

    sTexto := 'Z0'+ PreencherStr(DMProjeto.sCodigoDaRevenda,' ',20) +
              CodPirelliBrasilInterno + tipoArquivo + funcoes.SoNumeros(IntToStr(Sequencia),17) +
              FormatDateTime('YYYYMMDD', now ) + '610';
  	WriteLn(arquivo, sTexto);
  finally
	  CloseFile(arquivo)
  end;
end;

procedure TDlgGerarArquivoPirelli.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
    if DMProjeto.ExisteParametrosForm then begin
  	tipoRelatorio	:= DMProjeto.GetParametrosForm( 0 );
    DMProjeto.LimparParametrosForm;
  end;
end;

procedure TDlgGerarArquivoPirelli.FormShow(Sender: TObject);
var nDia,nMes,nAno: word;
begin
  inherited;
  DecodeDate(now,nAno,nMes,nDia);
  dtData1.Date := StrToDateTime('01/'+FloatToStr(nMes)+'/'+FloatToStr(nAno));
  dtData2.Date := DMProjeto.getDataServidor;
end;

end.

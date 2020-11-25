unit Dlg_ProjetoAccera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, ComCtrls, Mask, ToolEdit, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, TS_DateTimePicker;

type
  TDlgProjetoAccera = class(TFrmModeloCadastros)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cbCadProdutos: TCheckBox;
    Label3: TLabel;
    dirSalvamento: TDirectoryEdit;
    cbCadSite: TCheckBox;
    cbPosEstoque: TCheckBox;
    cbVendas: TCheckBox;
    dtData2: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    dtData1: TTS_DateTimePicker;
    TS_Label1: TTS_Label;
    cbClientes: TCheckBox;
    pnlProgresso: TPanel;
    pbProgresso: TProgressBar;
    lblProgresso: TLabel;
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure geraCadProd;
    procedure geraCadSite;
    procedure geraPosEstq;
    procedure geraVendas;
    procedure geraPdvs;

    procedure SalvaParametros;
    function Validado: boolean;
  public
    { Public declarations }
  end;

var
  DlgProjetoAccera: TDlgProjetoAccera;

implementation

uses DM_Projeto, Funcoes, TDM_Projeto;

{$R *.dfm}

procedure TDlgProjetoAccera.btGravarClick(Sender: TObject);
var
  countArquivos: integer;
begin
  inherited;
  if (PageControl1.ActivePageIndex = 1) then
    SalvaParametros
  else
  begin
    if(trim(dirSalvamento.Text) ='') then
    begin
      MessageDlg('Local de salvamento não foi informado!', mtWarning, [mbOk],0);
      PageControl1.ActivePageIndex := 1;
      exit;
    end;
    countArquivos := 0;
    if (cbCadProdutos.Checked) then inc(countArquivos);
    if (cbCadSite.Checked) then inc(countArquivos);
    if (cbPosEstoque.Checked) then inc(countArquivos);
    if (cbVendas.Checked) then inc(countArquivos);
    if (cbClientes.Checked) then inc(countArquivos);
    try
      pbProgresso.Max := countArquivos+1;
      pbProgresso.Position := 0;
      pnlProgresso.Visible := true;
      if (cbCadProdutos.Checked) then
      begin
        pbProgresso.Position := pbProgresso.Position + 1;
        lblProgresso.Caption := 'Gerando arquivos '+inttostr(pbProgresso.Position)+'/'+inttostr(countArquivos)+' (Cadastro de Produtos...)';
        Application.ProcessMessages;
        geraCadProd;
      end;

      if (cbCadSite.Checked) then
      begin
        pbProgresso.Position := pbProgresso.Position + 1;
        lblProgresso.Caption := 'Gerando arquivos '+inttostr(pbProgresso.Position)+'/'+inttostr(countArquivos)+' (Cadastro de CDs/Lojas...)';
        Application.ProcessMessages;
        geraCadSite;
      end;

      if (cbPosEstoque.Checked) then
      begin
        pbProgresso.Position := pbProgresso.Position + 1;
        lblProgresso.Caption := 'Gerando arquivos '+inttostr(pbProgresso.Position)+'/'+inttostr(countArquivos)+' (Posição do Estoque...)';
        Application.ProcessMessages;
        geraPosEstq;
      end;  

      if (cbVendas.Checked) then
      begin
        pbProgresso.Position := pbProgresso.Position + 1;
        lblProgresso.Caption := 'Gerando arquivos '+inttostr(pbProgresso.Position)+'/'+inttostr(countArquivos)+' (Vendas...)';
        Application.ProcessMessages;
        geraVendas;
      end;
      if (cbClientes.Checked) then
      begin
        pbProgresso.Position := pbProgresso.Position + 1;
        lblProgresso.Caption := 'Gerando arquivos '+inttostr(pbProgresso.Position)+'/'+inttostr(countArquivos)+' (Cadastro de Clientes...)';
        Application.ProcessMessages;
        geraPdvs;
      end;
      
      MessageDlg('Arquivo(s) gerado(s) com sucesso!', mtInformation, [mbOk],0);
    finally
      pnlProgresso.Visible := false;
    end;
  end;
end;

procedure TDlgProjetoAccera.geraCadProd;
var
  NomeDoArquivo, sTexto: string;
  Arquivo : TFileStream;
begin
  if(Copy(dirSalvamento.Text,length(dirSalvamento.Text)-1,1) <> '\') then
    dirSalvamento.Text := dirSalvamento.Text + '\';
  NomeDoArquivo := dirSalvamento.Text + 'ACC_CADPROD_' + FormatDateTime('YYYYMMDD', now) + '.txt';

  if FileExists(NomeDoArquivo) then
    DeleteFile(NomeDoArquivo);

  Arquivo:= TFileStream.Create(NomeDoArquivo, fmCreate);
  try

    sTexto := 'H;' + DMProjeto.sCPF_CNPJEmpresa + ';' + FormatDateTime('YYYYMMDD', now)+#13#10;

    with DMProjeto.Q_Auxiliar do
    begin
      Close;
      SQL.Text := 'select f.cpf_cnpj, f.razao, case when strlen(i.codigobarras) > 12 then i.codigobarras else i.codigo end as codigo, i.referencia , i.codigobarras, i.descricao, i.estoque,i.unidade, i.grupo, g.descricaogrupo, ' +
        'i.fatorundvenda, i.desativado, i.datacadastro  from itens i inner join grupos g on g.grupo = i.grupo '+
        'inner join favorecidos f on f.favorecido = i.fornecpreferencia '+
        'where trim(i.referencia) <> '''' and i.referencia SIMILAR TO ''[0-9]+'' and i.fornecpreferencia <> -9 and i.desativado <> ''S''';
      open;
      first;
      while not eof do
      begin
        sTexto := sTexto+'V;'+Fieldbyname('cpf_cnpj').AsString+';'+
          Fieldbyname('razao').AsString+';' +
          Fieldbyname('codigo').AsString + ';' +
          Fieldbyname('descricao').AsString + ';' +
          Fieldbyname('grupo').AsString + ';' +
          Fieldbyname('descricaogrupo').AsString + ';' +
          ';;;;E;' + Fieldbyname('referencia').AsString + ';' +
          Fieldbyname('unidade').AsString + ';UN;' +
          inttostr(1000 * Fieldbyname('fatorundvenda').Asinteger) + ';' +
          iif(Fieldbyname('desativado').AsString = 'S', 'I', 'A') + ';'+
          FormatDateTime('YYYYMMDD', Fieldbyname('datacadastro').AsDateTime)+#13#10;
          next;
      end;
    end;
    sTexto := sTexto+'E';
    Arquivo.WriteBuffer(Pointer(sTexto)^, Length(sTexto));
  finally
    Arquivo.free;
  end;
end;

procedure TDlgProjetoAccera.geraCadSite;
var
  NomeDoArquivo: string;
  Arquivo : TFileStream;
  sTexto: string;
begin
  if(Copy(dirSalvamento.Text,length(dirSalvamento.Text)-1,1) <> '\') then
    dirSalvamento.Text := dirSalvamento.Text + '\';
  NomeDoArquivo := dirSalvamento.Text + 'ACC_CADSITE_' + FormatDateTime('YYYYMMDD', now) + '.txt';

  if FileExists(NomeDoArquivo) then
    DeleteFile(NomeDoArquivo);

  Arquivo:= TFileStream.Create(NomeDoArquivo, fmCreate);
  try
    sTexto := 'H;' + DMProjeto.sCPF_CNPJEmpresa + ';' + FormatDateTime('YYYYMMDD', now)+#13#10;

        sTexto := sTexto + 'V;'+DMProjeto.sCPF_CNPJEmpresa+';'+
          DMProjeto.sRazaoEmpresa+';' +
          DMProjeto.sUFEmpresa + ';' +
          DMProjeto.sCidadeEmpresa + ';' +
          DMProjeto.sBairroEmpresa + ';' +
          StringReplace(DMProjeto.sCEPEmpresa,'-','',[rfReplaceAll]) + ';A'+#13#10;

    sTexto := sTexto + 'E';
    Arquivo.WriteBuffer(Pointer(sTexto)^, Length(sTexto));
  finally
    Arquivo.Free;
  end;
end;

procedure TDlgProjetoAccera.geraPosEstq;
var
  NomeDoArquivo, sTexto: string;
  Arquivo : TFileStream;
begin
  if(Copy(dirSalvamento.Text,length(dirSalvamento.Text)-1,1) <> '\') then
    dirSalvamento.Text := dirSalvamento.Text + '\';
  NomeDoArquivo := dirSalvamento.Text + 'ACC_POSESTQ_' + FormatDateTime('YYYYMMDD', now) + '.txt';

  if FileExists(NomeDoArquivo) then
    DeleteFile(NomeDoArquivo);

  Arquivo:= TFileStream.Create(NomeDoArquivo, fmCreate);
  try

    sTexto := 'H;' + DMProjeto.sCPF_CNPJEmpresa +';'+ FormatDateTime('YYYYMMDD', dtData2.Date)+ ';' + FormatDateTime('YYYYMMDD', now)+#13#10;

    with DMProjeto.Q_Auxiliar do
    begin
      Close;
      SQL.Text := 'select f.cpf_cnpj, i.codigo,i.referencia,i.codigobarras,i.descricao,i.estoque,i.unidade, i.grupo, g.descricaogrupo, ' +
        'i.fatorundvenda, i.desativado, i.datacadastro  from itens i inner join grupos g on g.grupo = i.grupo '+
        'inner join favorecidos f on f.favorecido = i.fornecpreferencia '+
        'where trim(i.referencia) <> '''' and referencia SIMILAR TO ''[0-9]+'' and i.fornecpreferencia <> -9 and i.desativado <> ''S''';
      open;
      first;
      while not eof do
      begin
        sTexto := sTexto+'V;'+DMProjeto.sCPF_CNPJEmpresa+';'+
          Fieldbyname('cpf_cnpj').AsString+';'+
          trim(Fieldbyname('referencia').AsString)+';'+
          ';;'+
          inttostr(1000 * Fieldbyname('estoque').Asinteger) + ';H;' +
          FormatDateTime('YYYYMMDD', dtData2.Date)+#13#10;
          next;
      end;
    end;
    sTexto := sTexto+'E';
    Arquivo.WriteBuffer(Pointer(sTexto)^, Length(sTexto));
  finally
    Arquivo.free;
  end;
end;

procedure TDlgProjetoAccera.geraVendas;
var
  NomeDoArquivo, sTexto, sTipoMovimento: string;
  Arquivo : TFileStream;
begin
  if(Copy(dirSalvamento.Text,length(dirSalvamento.Text)-1,1) <> '\') then
    dirSalvamento.Text := dirSalvamento.Text + '\';
  NomeDoArquivo := dirSalvamento.Text + 'ACC_SELLOUT_' + FormatDateTime('YYYYMMDD', now) + '.txt';

  if FileExists(NomeDoArquivo) then
    DeleteFile(NomeDoArquivo);

  Arquivo:= TFileStream.Create(NomeDoArquivo, fmCreate);
  try

    sTexto := 'H;' + DMProjeto.sCPF_CNPJEmpresa + ';' + FormatDateTime('YYYYMMDD', dtData1.Date)+';'+ FormatDateTime('YYYYMMDD', dtData2.Date)+#13#10;

    with DMProjeto.Q_Auxiliar do
    begin
      Close;
      SQL.Text := 'select fp.cpf_cnpj as cpf_cnpj1, i.codigo as coditem,i.referencia,i.codigobarras,i.descricao,i.estoque,i.unidade,s.dataentrega,s.vendedor, v.nome as nomeVendedor, '+
          's.numero,s.data, coalesce(f.cpf_cnpj, '+'00000000000'+') as cpf_cnpj2,f.codigo,f.nome,f.endereco,f.cidade, coalesce(f.cep,'+'58040000'+') as cep, s.tipomovimento, sum(si.quantidade) as quantidade,sum(si.preco) as preco, s.situacao '+
          'from Saidas s inner join SaidasItens si on si.saida = s.saida inner join Itens i on i.item = si.item '+
          'inner join favorecidos fp on fp.favorecido = i.fornecpreferencia '+
          'left join Favorecidos f on f.favorecido = s.favorecido '+
          'left join Favorecidos v on v.favorecido = s.vendedor '+
          'left join favorecidos m on m.favorecido = s.medico '+
          'left join Favorecidos fn on fn.favorecido = i.ultimofornecedor '+
          'left join Fabricantes fb on fb.fabricante = i.fabricante '+
          'left join Grupos gi on gi.grupo = i.grupo '+
          'left join gruposcomissoes gc on gc.grupocomissao = i.grupocomissao '+
          'left Join TIPOTRIBUTACAOFEDERAL tf on si.IDTRIBFEDERAL = tf.IDTRIBFEDERAL '+
          'WHERE S.data between :DATA1 and :DATA2 AND s.tipomovimento in (1,483415) and gi.grupo between 16198 and 16205 and s.situacao <> ''C'' '+
          'group by fp.cpf_cnpj, i.codigo ,i.referencia, i.codigobarras, i.descricao ,i.estoque, i.unidade,s.dataentrega, s.vendedor, v.nome, '+
          's.numero, s.data, coalesce(f.cpf_cnpj,'+'00000000000'+'), f.codigo, f.nome, f.endereco, f.cidade, coalesce(f.cep,'+'58040000'+'), s.tipomovimento, s.situacao;';
           parambyname('data1').AsDateTime  := dtData1.Date;
           parambyname('data2').AsDateTime  := dtData2.Date;
          // Alteração da condição do select em 2019.10.30
          //'WHERE S.data > :DATA1 and S.data < :DATA2 AND  S.modelo = ''55'' and trim(i.referencia) <> '''' '+
          //'and i.referencia SIMILAR TO ''[0-9]+'' and f.cpf_cnpj <> '''' and i.fornecpreferencia <> -9 and i.desativado <> ''S'';';
      open;
      first;
      while not eof do
      begin
        if(Fieldbyname('situacao').AsString = 'C')then
          sTipoMovimento := 'C'
        else
           sTipoMovimento := 'V';
          //if (Fieldbyname('tipomovimento').Asinteger = 1) then
          //  sTipoMovimento := 'V'
          //else sTipoMovimento := 'DV';

          sTexto := sTexto+ 'V;'+DMProjeto.sCPF_CNPJEmpresa+';'+
          Fieldbyname('cpf_cnpj1').AsString+';'+
          trim(Fieldbyname('referencia').AsString)+';'+
          ';;'+
          inttostr(1000 * Fieldbyname('quantidade').Asinteger)+';'+
          CurrToStr(100 * strtocurr(formatFloat('0.00',Fieldbyname('preco').AsCurrency)))+';BRL;'+
          Fieldbyname('numero').AsString+';'+
          FormatDateTime('YYYYMMDD', Fieldbyname('data').AsDateTime)+';'+
          sTipoMovimento+';;'+
          iif(length(trim(Fieldbyname('cpf_cnpj2').AsString)) = 11 , '1', '2')+';'+
          Fieldbyname('cpf_cnpj2').AsString+';'+
          Fieldbyname('nome').AsString+';'+
          stringreplace(stringreplace(Fieldbyname('cep').AsString,'-','',[rfReplaceAll]),' ','',[rfReplaceAll])+';;'+
          Fieldbyname('vendedor').AsString+'-'+Fieldbyname('nomeVendedor').AsString+';;'+#13#10;
          next;
      end;
    end;
    sTexto := sTexto+'E';
    Arquivo.WriteBuffer(Pointer(sTexto)^, Length(sTexto));
  finally
    Arquivo.free;
  end;
end;

procedure TDlgProjetoAccera.geraPdvs;
var
  NomeDoArquivo, sTexto: string;
  Arquivo : TFileStream;
  cep, endereco, bairro, cidade, uf, cpfcnpj: string;
begin
  if(Copy(dirSalvamento.Text,length(dirSalvamento.Text)-1,1) <> '\') then
    dirSalvamento.Text := dirSalvamento.Text + '\';
  NomeDoArquivo := dirSalvamento.Text + 'ACC_PDVS_' + FormatDateTime('YYYYMMDD', now) + '.txt';

  if FileExists(NomeDoArquivo) then
    DeleteFile(NomeDoArquivo);

  Arquivo:= TFileStream.Create(NomeDoArquivo, fmCreate);
  try

    sTexto := 'H;' + DMProjeto.sCPF_CNPJEmpresa + ';' + FormatDateTime('YYYYMMDD', now)+#13#10;

    with DMProjeto.Q_Auxiliar do
    begin
      Close;
      SQL.Text := 'select f.*, v.nome as nomeVendedor from Favorecidos f left join Favorecidos v on f.vendedor = v.favorecido '+
                  'where f.tipofavorecido = 1 and f.favorecido > 1 and (f.cpf_cnpj <> '''' '+
                  'and f.cpf_cnpj is not null) and char_length(replace(replace(replace(replace(f.cpf_cnpj,''/'',''''),''-'',''''),'' '',''''),''.'',''''))  in (11,14) '+
                  'and char_length(replace(f.cep,''-'','''')) = 8  and (f.razao <> '''' and f.razao is not null)';
      open;
      first;
      while not eof do
      begin
        cep := trim(StringReplace(Fieldbyname('cep').AsString,'-','',[rfReplaceAll]));
        if cep = '' then
          cep :=  StringReplace(DMProjeto.sCEPEmpresa,'-','',[rfReplaceAll]);
        endereco :=  trim(Fieldbyname('endereco').AsString);
        if endereco = '' then
          endereco := DMProjeto.sEnderecoEmpresa;
        bairro := trim(Fieldbyname('bairro').AsString);
        if bairro = '' then
          bairro := DMProjeto.sBairroEmpresa;
        cidade := trim(Fieldbyname('cidade').AsString);
        if cidade = '' then
          cidade := DMProjeto.sCidadeEmpresa;
        uf := trim(Fieldbyname('uf').AsString);
        if uf = '' then
          uf := DMProjeto.sUFEmpresa;

        cpfcnpj := trim(StringReplace(StringReplace(StringReplace(StringReplace(Fieldbyname('cpf_cnpj').AsString,'/','',[rfReplaceAll]),' ','',[rfReplaceAll]),'-','',[rfReplaceAll]),'.','',[rfReplaceAll]));
        if cpfcnpj = '' then
          cpfcnpj := StringReplace(StringReplace(StringReplace(StringReplace(DMProjeto.sCPF_CNPJEmpresa,'/','',[rfReplaceAll]),' ','',[rfReplaceAll]),'-','',[rfReplaceAll]),'.','',[rfReplaceAll]);

        sTexto := sTexto+'V;'+cpfcnpj+';'+
          StringReplace(Fieldbyname('razao').AsString,';','',[rfReplaceAll])+';'+
          StringReplace(Fieldbyname('nome').AsString,';','',[rfReplaceAll])+';BRA;;'+
          uf+';'+
          cidade+';'+
          bairro+';'+
          StringReplace(endereco,';','',[rfReplaceAll])+';;;'+
          Fieldbyname('vendedor').AsString+'-'+Fieldbyname('nomeVendedor').AsString+';'+
          FormatDateTime('YYYYMMDD', Fieldbyname('datacadastro').AsDateTime)+';'+
          StringReplace(cep,'-','',[rfReplaceAll])+';;'+
          iif(Fieldbyname('desativado').AsString = 'S', 'I', 'A')+#13#10;
          next;
      end;
    end;
    sTexto := sTexto+'E';
    Arquivo.WriteBuffer(Pointer(sTexto)^, Length(sTexto));
  finally
    Arquivo.free;
  end;
end;

procedure TDlgProjetoAccera.SalvaParametros;
begin
  if not Validado then Exit;
  DMProjeto.SetParametro('AcceraCaminho',dirSalvamento.Text);
  MessageDlg('Configurações salva com sucesso!', mtInformation, [mbOk],0);
end;

function TDlgProjetoAccera.Validado: boolean;
begin
  Result := false;
  if trim(dirSalvamento.Text) = '' then
  begin
    MessageDlg('O Local de Salvamento não foi informado!', mtWarning, [mbOk],0);
    dirSalvamento.SetFocus;
    exit;
  end;

  if not DirectoryExists(dirSalvamento.Text) then
  begin
    MessageDlg('O Local de Salvamento não existe!', mtWarning, [mbOk],0);
    dirSalvamento.SetFocus;
    exit;
  end;

  Result :=  true;
end;

procedure TDlgProjetoAccera.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  dirSalvamento.Text := DMProjeto.Parametro('AcceraCaminho');

  dtData1.Date := now;
  dtData2.Date := now;  
end;

end.


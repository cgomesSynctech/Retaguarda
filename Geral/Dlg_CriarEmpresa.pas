unit Dlg_CriarEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxCntner, dxEditor, dxEdLib, TS_Edit,
  ComCtrls, TS_PageControl, FormsComponent, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, dxExEdtr, TS_CheckBox, TS_ComboBox, TS_RadioButton,
  dxfProgressBar, IBDatabase, DB, IBCustomDataSet, IBQuery, IBSQL, BTOdeum,
  Placemnt;

type
  TDlgCriarEmpresa = class(TFrmModeloCadastros)
    pgPrincipal: TTS_PageControl;
    tsIntroducao: TTS_TabSheet;
    tsInformacao: TTS_TabSheet;
    tsAproveitar: TTS_TabSheet;
    tsFinal: TTS_TabSheet;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    EditNome: TTS_Edit;
    EditEndereco: TTS_Edit;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    EditCidade: TTS_Edit;
    EditEstado: TTS_Edit;
    TS_Label8: TTS_Label;
    EditZIP: TTS_Edit;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    EditEmail: TTS_Edit;
    EditSite: TTS_Edit;
    TS_Label11: TTS_Label;
    EditEIN: TTS_Edit;
    TS_Label12: TTS_Label;
    rgSim: TTS_RadioButton;
    rgNao: TTS_RadioButton;
    lbEmpresas: TTS_Label;
    cmbEmpresas: TTS_ComboBox;
    tsAproveitarOQue: TTS_TabSheet;
    TS_Label14: TTS_Label;
    ckbUsuarios: TTS_CheckBox;
    ckbPerfis: TTS_CheckBox;
    ckbConfiguracao: TTS_CheckBox;
    ckbClientes: TTS_CheckBox;
    ckbFornecedores: TTS_CheckBox;
    ckbContas: TTS_CheckBox;
    ckbItens: TTS_CheckBox;
    TS_Label13: TTS_Label;
    TS_Label15: TTS_Label;
    btIniciar: TTS_SpeedButton;
    Barra: TdxfProgressBar;
    lbInfo: TTS_Label;
    DBNovaEmpresa: TIBDatabase;
    IBTNovaEmpresa: TIBTransaction;
    DBEmpresa: TIBDatabase;
    IBTEmpresa: TIBTransaction;
    IBSQL2: TIBSQL;
    IBSQL1: TIBSQL;
    edArquivo: TTS_Edit;
    TS_Label16: TTS_Label;
    lbUsuario: TTS_Label;
    lbSenha: TTS_Label;
    edUsuario: TTS_Edit;
    edSenha: TTS_Edit;
    Q_SQL: TIBQuery;
    procedure btGravarClick(Sender: TObject);
    procedure rgSimClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure pgPrincipalChange(Sender: TObject);
    procedure btIniciarClick(Sender: TObject);
    procedure EditNomeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    slProgramAls : TStringList;
    procedure Transfere(Origem, Destino: TIBSQL);
    function ExtractCaminhoArquivo(sArquivo: string): string;
    procedure Conectar;
    procedure Disconectar;
  public
    { Public declarations }
    sDestino : string;
  end;

var
  DlgCriarEmpresa: TDlgCriarEmpresa;

implementation

uses TDM_Projeto, funcoes, DM_Projeto;

{$R *.dfm}

procedure TDlgCriarEmpresa.btGravarClick(Sender: TObject);
var sSenhaCorreta : string;
begin
  inherited;
  with pgPrincipal do begin
    if ActivePage = tsIntroducao then begin
    	btLimpar.Enabled := false;
      NextPage;
		end else if ActivePage = tsInformacao then begin
  		if Trim(EditNome.Text) = '' then begin
    		DlgMsg.ShowMsg(929,['o nome da nova empresa']);
      	Exit;
    	end;
  		if Trim(EdArquivo.Text) = '' then begin
    		DlgMsg.ShowMsg(929,['o nome do arquivo da base de dados']);
      	Exit;
    	end;
    	NextPage;
      btLimpar.Enabled := true;
  	end else if ActivePage = tsAproveitar then begin
    	if rgSim.Checked then begin
      	if cmbEmpresas.Text = '' then begin
    			DlgMsg.ShowMsg(929,['a empresa existente']);
          cmbEmpresas.SetFocus;
      		Exit;
        end;
      	if edUsuario.Text = '' then begin
    			DlgMsg.ShowMsg(929,['o usuário administrador']);
          edUsuario.SetFocus;
      		Exit;
        end;
      	if edSenha.Text = '' then begin
    			DlgMsg.ShowMsg(929,['a senha']);
          edSenha.SetFocus;
      		Exit;
        end;
        Conectar;
        with Q_SQL do begin
        	close;
          sql.text := 'select usuario, loginpass, perfil from usuarios '+
          						'where loginname = :usuario';
          parambyname('usuario').AsString := UpperCase(edUsuario.Text);
          open;
          if fieldbyname('perfil').AsInteger <> 1 then begin
             ShowMessage('Este usuário não tem perfil de administrador.');
             Close;
             Exit;
          end;
          criptografia(trim(UpperCase(edSenha.Text)),'','',sSenhaCorreta);
          if fieldbyname('LoginPass').AsString <> sSenhaCorreta then begin
             ShowMessage('Senha Incorreta!');
             Close;
             Exit;
          end;
        end;
        Disconectar;
      	NextPage;
      end else
      	SetPage(tsFinal);
		end else if ActivePage = tsAproveitarOQue then begin
      btGravar.Enabled := false;
    	NextPage;
    end else if ActivePage = tsFinal then begin
      btGravar.Enabled := false;
    end;
  end;
end;

procedure TDlgCriarEmpresa.rgSimClick(Sender: TObject);
begin
  inherited;
	lbEmpresas.Enabled := rgSim.Checked;
  cmbEmpresas.Enabled := rgSim.Checked;
  lbUsuario.Enabled := rgSim.Checked;
  edUsuario.Enabled := rgSim.Checked;
  lbSenha.Enabled := rgSim.Checked;
  edSenha.Enabled := rgSim.Checked;
end;

procedure TDlgCriarEmpresa.btLimparClick(Sender: TObject);
begin
  inherited;
	with pgPrincipal do begin
  	if ActivePage = tsFinal then begin
    	if rgSim.Checked then
      	NextPage( false )
      else
      	SetPage( tsAproveitar );
    end else
    	NextPage( false );
    btGravar.Enabled := true;
  end;
end;

procedure TDlgCriarEmpresa.FormsComponentBeforeClearParams(
  Sender: TObject);
var i : integer;
begin
  inherited;
  //if not DMProjeto.C_Mensagens.Active then
  	//DMProjeto.CarregaMensagens;
	pgPrincipal.ActivePage := tsIntroducao;
  slProgramAls := TStringList.Create;
  with slProgramAls do begin
  	LoadFromFile(ExtractFilePath(Application.ExeName)+'program.als');
    cmbEmpresas.Items.Clear;
    for i:=0 to Count-1 do begin
    	if SeparaStrings(slProgramAls[i],';',2)='' then
      	cmbEmpresas.Items.Add( SeparaStrings(slProgramAls[i],';',1) )
      else
      	cmbEmpresas.Items.Add( SeparaStrings(slProgramAls[i],';',2) );
      if pos('*',slProgramAls[i]) > 0 then
      	cmbEmpresas.ItemIndex := i;
    end;
    if cmbEmpresas.ItemIndex = -1 then {Nenhuma empresa é padrão}
    	cmbEmpresas.ItemIndex := 0;
  end;
end;

procedure TDlgCriarEmpresa.pgPrincipalChange(Sender: TObject);
begin
  inherited;
  if pgPrincipal.ActivePage.canfocus then
  	ActiveControl := FindNextControl( pgPrincipal.ActivePage, true, true, false );
end;

function TDlgCriarEmpresa.ExtractCaminhoArquivo(sArquivo : string) : string;
begin
  if pos(' ',trim(sArquivo))<=0 then
  	result := sArquivo
  else
  	result := ExtractShortPathName(sArquivo);
end;

procedure TDlgCriarEmpresa.Disconectar;
begin
  	with DBEmpresa do begin
      DefaultTransaction.Commit;
  		if Connected then
  			Connected := false;
    end;
end;

procedure TDlgCriarEmpresa.Conectar;
begin
  	with DBEmpresa do begin
  		if Connected then
  			Connected := false;
  		DatabaseName:= getCaminhoCompleto( cmbEmpresas.ItemIndex );
    	Params.Clear;
   		Params.Add('user_name='+DMProject.sUserMestre);
    	Params.Add('password='+DMProject.sPassMestre);
  		Connected 	:= true;
  		if not DefaultTransaction.InTransaction then
				DefaultTransaction.StartTransaction;
  	end;
end;


procedure TDlgCriarEmpresa.btIniciarClick(Sender: TObject);
var i : integer;
		sComando, sServidor, sCaminho: string;
    FileHandle : integer;
begin
  inherited;
{
  if not fileexists(ExtractFilePath(Application.ExeName)+'EmptySyncLoja.gbk') then begin
  	ShowMessage('Arquivo "EmptySyncLoja.gbk" não foi encontrado.');
    Exit;
  end;
}
  btIniciar.Enabled := false;
  {Criar uma cópia de EmptySyncLoja.gdb, restaurando o arquivo EmptySyncLoja.gbk}
  sCaminho := getCaminhoCompleto( DMProject.IndiceAlias );

  sDestino := Copy(sCaminho,1,posDireita(sCaminho,'\'))+edArquivo.Text;

  FileHandle := 0;
  if not FileExists(sDestino) then
   	FileHandle := FileCreate(sDestino);
  sDestino := ExtractCaminhoArquivo(sDestino);
  if FileHandle <> 0 then
   	FileClose(FileHandle);
  DeleteFile(sDestino);

  if pos(UpperCase(edArquivo.Text),Uppercase(slProgramAls.text)) > 0 then begin
  	ShowMessage('Este nome de arquivo já existe, informe outro nome de arquivo.');
    Exit;
  end;

  {Criando a cópia}
  Barra.Position := 0;
  Barra.Visible  := true;
  Barra.Position := Barra.Position + 1;
  lbInfo.Caption := 'Efetuando um backup da base modelo...';
  sServidor := getServidor( DMProject.IndiceAlias );
	sComando 	:= ExtractFilePath(Application.ExeName)+
              'gbak -b -l -user '+DMProject.sUserMestre+' -password '+DMProject.sPassMestre+' '+iif(sServidor='','',' -se ')+
              sServidor+iif(sServidor='','',iif(pos('\\',sServidor)>0,'\',':'))+iif(sServidor='','','service_mgr ')+
              ExtractFilePath(ExtractShortPathName(Application.ExeName))+'EmptySyncLoja.fdb '+
              ExtractFilePath(ExtractShortPathName(Application.ExeName))+'EmptySyncLoja.gbk ';
	ExecutePrograma(PChar(sComando));

  lbInfo.Caption := 'Criando uma cópia da base de dados vazia...';
  Application.ProcessMessages;
  ExecutePrograma(PChar(ExtractFilePath(ExtractShortPathName(Application.ExeName))+'gbak -r -user '+DMProject.sUserMestre+' -password '+DMProject.sPassMestre+' '+ExtractCaminhoArquivo(ExtractFilePath(Application.ExeName))+'EmptySyncLoja.gbk '+sDestino));
  Barra.Position := Barra.Position + 1;
  {Atualizando arquivo de configuração}
  lbInfo.Caption := 'Atualizando arquivo de configuração...';
  slProgramAls.Add( sDestino+';'+editNome.Text+';' );
  slProgramAls.SaveToFile(ExtractFilePath(Application.ExeName)+'Program.als');
  Barra.Position := Barra.Position + 1;
  {Atualizando os dados da empresa}
  lbInfo.Caption := 'Atualizando dados da nova empresa...';
  with DBNovaEmpresa do begin
  	if Connected then
  		Connected := false;
  	DataBaseName := sDestino;
    Params.Clear;
   	Params.Add('user_name='+DMProject.sUserMestre);
    Params.Add('password='+DMProject.sPassMestre);
    Connected := true;
    DefaultTransaction.StartTransaction;
	end;
  with IBSQL2 do begin
  	close;
    sql.text := 'Update Favorecidos '+
    						'Set nome = :nome, '+
                'endereco = :endereco, '+
                'cidade = :cidade, '+
                'uf = :uf, '+
                'CPF_CNPJ = :CPF_CNPJ, '+
                'Email = :Email, '+
                'Site = :Site, '+
                'Cep = :Zip '+
                'Where favorecido = -1';
    parambyname('nome').asString 		:= EditNome.Text;
    parambyname('endereco').asString:= EditEndereco.Text;
    parambyname('cidade').asString 	:= EditCidade.Text;
    parambyname('uf').asString 			:= EditEstado.Text;
    parambyname('CPF_CNPJ').asString 		:= EditEIN.Text;
    parambyname('email').asString 	:= EditEmail.Text;
    parambyname('site').asString 		:= EditSite.Text;
    parambyname('zip').asString 		:= EditZip.Text;
    ExecQuery;
  end;
  Barra.Position := Barra.Position + 1;
  DBNovaEmpresa.DefaultTransaction.CommitRetaining;

  if rgSim.Checked then begin
    Conectar;
    try
	  {Clientes}
    if ckbClientes.Checked then begin

      lbInfo.Caption 	:= 'Cadastro de Clientes...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Favorecido, Codigo, Nome, Razao, Endereco, Cidade, Bairro, UF, '+
                     		 'Cep, CaixaPostal, Pais, Fone1, Fone2, Fax, Celular, Contato, '+
                     		 'Email, TipoFavorecido, TipoAtividade, PlanoPagamento, '+
                     		 'Vendedor, LimiteCredito, CPF_CNPJ, TabelaPreco, '+
                     		 'Desativado, Exigivel1099, TipoEntrega, DataCadastro, Site, '+
                     		 'Obs, Importacao, Situacao, Cargo, Logotipo, JurosFactory, '+
                     		 'TaxasFactory, FloatingFactory, Memo_Check, Credito, Conta, '+
                     		 'Numero_Revenda, Tipo_Func, DataNasc, Campo01, Campo02, Campo03, '+
                     		 'Campo04, Campo05, Campo06, Campo07, Campo08, Campo09, Campo10, '+
                     		 'Comissao, IsVendedor, ContaPagamento, ContaDespesas, UltCompra, '+
                     		 'UltValorCompra, Periodicidade, DataAdimissao, DataDemissao, '+
                     		 'DataAumento, AgruparPorItem, Relacionamento, DescricaoRelac, '+
                     		 'InicioSemana, DiasPeriodo, Qualidade, Zona, GrupoCliente, '+
                     		 'GrauRelac, UltimoPgto, UltimoValorPago, INSCRICAO_EST,BAIRRO,RG,PESSOA_FJ,FONTE,INDICADOPELOFAV,TIPOEMPRESA,RESTRICOES,DTMODIFICACAO,SUBSTITUTOTRIB,CIDADE_CH,STATUSIMS,STATUSITX,CRM '+
                         'from favorecidos where tipofavorecido = 1 and favorecido > 1';
  		IBSQL2.Sql.Text := 'Insert into favorecidos ('+
  									 		 'Favorecido, Codigo, Nome, Razao, Endereco, Cidade, Bairro, UF, '+
                     		 'Cep, CaixaPostal, Pais, Fone1, Fone2, Fax, Celular, Contato, '+
                     		 'Email, TipoFavorecido, TipoAtividade, PlanoPagamento, '+
                     		 'Vendedor, LimiteCredito, CPF_CNPJ, TabelaPreco, '+
                     		 'Desativado, Exigivel1099, TipoEntrega, DataCadastro, Site, '+
                     		 'Obs, Importacao, Situacao, Cargo, Logotipo, JurosFactory, '+
                     		 'TaxasFactory, FloatingFactory, Memo_Check, Credito, Conta, '+
                     		 'Numero_Revenda, Tipo_Func, DataNasc, Campo01, Campo02, Campo03, '+
                     		 'Campo04, Campo05, Campo06, Campo07, Campo08, Campo09, Campo10, '+
                     		 'Comissao, IsVendedor, ContaPagamento, ContaDespesas, UltCompra, '+
                     		 'UltValorCompra, Periodicidade, DataAdimissao, DataDemissao, '+
                     		 'DataAumento, AgruparPorItem, Relacionamento, DescricaoRelac, '+
                     		 'InicioSemana, DiasPeriodo, Qualidade, Zona, GrupoCliente, '+
                     		 'GrauRelac, UltimoPgto, UltimoValorPago, INSCRICAO_EST,BAIRRO,RG,PESSOA_FJ,FONTE,INDICADOPELOFAV,TIPOEMPRESA,RESTRICOES,DTMODIFICACAO,SUBSTITUTOTRIB,CIDADE_CH,STATUSIMS,STATUSITX,CRM) '+
                     		 'Values ('+
  									 		 ':Favorecido, :Codigo, :Nome, :Razao, :Endereco, :Cidade, :Bairro, :UF, '+
                     		 ':Cep, :CaixaPostal, :Pais, :Fone1, :Fone2, :Fax, :Celular, :Contato, '+
                     		 ':Email, :TipoFavorecido, :TipoAtividade, :PlanoPagamento, '+
                     		 ':Vendedor, :LimiteCredito, :CPF_CNPJ, :TabelaPreco, '+
                     		 ':Desativado, :Exigivel1099, :TipoEntrega, :DataCadastro, :Site, '+
                     		 ':Obs, :Importacao, :Situacao, :Cargo, :Logotipo, :JurosFactory, '+
                     		 ':TaxasFactory, :FloatingFactory, :Memo_Check, :Credito, :Conta, '+
                     		 ':Numero_Revenda, :Tipo_Func, :DataNasc, :Campo01, :Campo02, :Campo03, '+
                     		 ':Campo04, :Campo05, :Campo06, :Campo07, :Campo08, :Campo09, :Campo10, '+
                     		 ':Comissao, :IsVendedor, :ContaPagamento, :ContaDespesas, :UltCompra, '+
                     		 ':UltValorCompra, :Periodicidade, :DataAdimissao, :DataDemissao, '+
                     		 ':DataAumento, :AgruparPorItem, :Relacionamento, :DescricaoRelac, '+
                     		 ':InicioSemana, :DiasPeriodo, :Qualidade, :Zona, :GrupoCliente, '+
                     		 ':GrauRelac, :UltimoPgto, :UltimoValorPago, :INSCRICAO_EST,:BAIRRO,:RG,:PESSOA_FJ,:FONTE,:INDICADOPELOFAV,:TIPOEMPRESA,:RESTRICOES,:DTMODIFICACAO,:SUBSTITUTOTRIB,:CIDADE_CH,:STATUSIMS,:STATUSITX,:CRM)';
      Transfere( IBSQL1, IBSQL2 );
    end;
    Barra.Position := 5;
	  {Fornecedores}
    if ckbFornecedores.Checked then begin

      lbInfo.Caption 	:= 'Cadastro de Fornecedores...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Favorecido, Codigo, Nome, Razao, Endereco, Bairro, Cidade, UF, '+
                     		 'Cep, CaixaPostal, Pais, Fone1, Fone2, Fax, Celular, Contato, '+
                     		 'Email, TipoFavorecido, TipoAtividade, PlanoPagamento, '+
                     		 'Vendedor, LimiteCredito, CPF_CNPJ, TabelaPreco, '+
                     		 'Desativado, Exigivel1099, TipoEntrega, DataCadastro, Site, '+
                     		 'Obs, Importacao, Situacao, Cargo, Logotipo, JurosFactory, '+
                     		 'TaxasFactory, FloatingFactory, Memo_Check, Credito, Conta, '+
                     		 'Numero_Revenda, Tipo_Func, DataNasc, Campo01, Campo02, Campo03, '+
                     		 'Campo04, Campo05, Campo06, Campo07, Campo08, Campo09, Campo10, '+
                     		 'Comissao, IsVendedor, ContaPagamento, ContaDespesas, UltCompra, '+
                     		 'UltValorCompra, Periodicidade, DataAdimissao, DataDemissao, '+
                     		 'DataAumento, AgruparPorItem, Relacionamento, DescricaoRelac, '+
                     		 'InicioSemana, DiasPeriodo, Qualidade, Zona, GrupoCliente, '+
                     		 'GrauRelac, UltimoPgto, UltimoValorPago, INSCRICAO_EST,BAIRRO,RG,PESSOA_FJ,FONTE,INDICADOPELOFAV,TIPOEMPRESA,RESTRICOES,DTMODIFICACAO,SUBSTITUTOTRIB,CIDADE_CH,STATUSIMS,STATUSITX,CRM '+
                         'from favorecidos where tipofavorecido = 2 and favorecido > 10 and favorecido <> 1901';
  		IBSQL2.Sql.Text := 'Insert into favorecidos ('+
  									 		 'Favorecido, Codigo, Nome, Razao, Endereco, Bairro, Cidade, UF, '+
                     		 'Cep, CaixaPostal, Pais, Fone1, Fone2, Fax, Celular, Contato, '+
                     		 'Email, TipoFavorecido, TipoAtividade, PlanoPagamento, '+
                     		 'Vendedor, LimiteCredito, CPF_CNPJ, TabelaPreco, '+
                     		 'Desativado, Exigivel1099, TipoEntrega, DataCadastro, Site, '+
                     		 'Obs, Importacao, Situacao, Cargo, Logotipo, JurosFactory, '+
                     		 'TaxasFactory, FloatingFactory, Memo_Check, Credito, Conta, '+
                     		 'Numero_Revenda, Tipo_Func, DataNasc, Campo01, Campo02, Campo03, '+
                     		 'Campo04, Campo05, Campo06, Campo07, Campo08, Campo09, Campo10, '+
                     		 'Comissao, IsVendedor, ContaPagamento, ContaDespesas, UltCompra, '+
                     		 'UltValorCompra, Periodicidade, DataAdimissao, DataDemissao, '+
                     		 'DataAumento, AgruparPorItem, Relacionamento, DescricaoRelac, '+
                     		 'InicioSemana, DiasPeriodo, Qualidade, Zona, GrupoCliente, '+
                     		 'GrauRelac, UltimoPgto, UltimoValorPago, INSCRICAO_EST,BAIRRO,RG,PESSOA_FJ,FONTE,INDICADOPELOFAV,TIPOEMPRESA,RESTRICOES,DTMODIFICACAO,SUBSTITUTOTRIB,CIDADE_CH,STATUSIMS,STATUSITX,CRM) '+
                     		 'Values ('+
  									 		 ':Favorecido, :Codigo, :Nome, :Razao, :Endereco, :Bairro, :Cidade, :UF, '+
                     		 ':Cep, :CaixaPostal, :Pais, :Fone1, :Fone2, :Fax, :Celular, :Contato, '+
                     		 ':Email, :TipoFavorecido, :TipoAtividade, :PlanoPagamento, '+
                     		 ':Vendedor, :LimiteCredito, :CPF_CNPJ, :TabelaPreco, '+
                     		 ':Desativado, :Exigivel1099, :TipoEntrega, :DataCadastro, :Site, '+
                     		 ':Obs, :Importacao, :Situacao, :Cargo, :Logotipo, :JurosFactory, '+
                     		 ':TaxasFactory, :FloatingFactory, :Memo_Check, :Credito, :Conta, '+
                     		 ':Numero_Revenda, :Tipo_Func, :DataNasc, :Campo01, :Campo02, :Campo03, '+
                     		 ':Campo04, :Campo05, :Campo06, :Campo07, :Campo08, :Campo09, :Campo10, '+
                     		 ':Comissao, :IsVendedor, :ContaPagamento, :ContaDespesas, :UltCompra, '+
                     		 ':UltValorCompra, :Periodicidade, :DataAdimissao, :DataDemissao, '+
                     		 ':DataAumento, :AgruparPorItem, :Relacionamento, :DescricaoRelac, '+
                     		 ':InicioSemana, :DiasPeriodo, :Qualidade, :Zona, :GrupoCliente, '+
                     		 ':GrauRelac, :UltimoPgto, :UltimoValorPago, :INSCRICAO_EST,:BAIRRO,:RG,:PESSOA_FJ,:FONTE,:INDICADOPELOFAV,:TIPOEMPRESA,:RESTRICOES,:DTMODIFICACAO,:SUBSTITUTOTRIB,:CIDADE_CH,:STATUSIMS,:STATUSITX,:CRM)';
			Transfere( IBSQL1, IBSQL2 );
    end;
    Barra.Position := 6;
    {Itens}
    if ckbItens.Checked then begin
      {ProdutosPreco}
      lbInfo.Caption 	:= 'Cadastro de Produtos Preço...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select ProdutoPreco, Item, TabelaPreco, Preco, PrecoManual, TipoUpdate, Unidade, ID_AltPreco, Hora_AltPreco, PrecoPromocao from ProdutosPreco';
  		IBSQL2.Sql.Text := 'Insert into ProdutosPreco ('+
                         'ProdutoPreco, Item, TabelaPreco, Preco, PrecoManual, TipoUpdate, Unidade, ID_AltPreco, Hora_AltPreco, PrecoPromocao ) '+
                         'Values ('+
                         ':ProdutoPreco, :Item, :TabelaPreco, :Preco, :PrecoManual, :TipoUpdate, :Unidade, :ID_AltPreco, :Hora_AltPreco, :PrecoPromocao )';
      Transfere( IBSQL1, IBSQL2 );

      lbInfo.Caption 	:= 'Cadastro de Itens...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Item, TipoItem, Codigo, DescricaoCompra, Grupo, '+
                         'Descricao, Taxavel, CustoMedio, UltimoFornecedor, '+
                         'QtdeMinimo, QtdeMaximo, PontoPedido, Percentual, '+
                         'AplicarAntesTax, Unidade, Localizacao, Desativado, '+
                         'Estoque, Importacao, Comissao, DescontoMaximo, '+
                         'TaxIncluso, Conta_Venda, Conta_Custo, Conta_Invent, '+
                         'Fabricante, Balanco, Campo01, Campo02, Campo03, Campo04, '+
                         'Campo05, Campo06, Campo07, Campo08, Campo09, Campo10, '+
                         'PrecoCompra, CustoContabil, IsItemCompra, PTaxIncluso, '+
                         'CustoDespesas, Foto, Promocao, FatorLucro, HasChildren, '+
                         'Referencia, SemLucro, Pri_CustoMedio, Pri_CustoContabil, '+
                         'Pri_PrecoCompra, DataCadastro, CustoProduto, ControleValidade, '+
                         'TempoMedioValidade, FornecPreferencia, Revenda, UltimaCompra, '+
                         'CompensaCusto, COMLUCRO,UNIDADEENTRADA,UNIDADECARGA,UNIDADEVAREJO,ULTQTDECOMPRA,'+
                         'UNIDADEMINIMA,FATORUNDVENDA,FATORUNDCOMPRA,ULTIMAVENDA,ESTOQUECONSIGSAIDA,'+
                         'ESTOQUECONSIGENTRADA,ABC,DESCRICAOCOMPLEMENTAR,DESCRICAOTECNICA,CST,REDUCAOCST,'+
                         'IPICOMPRA,IPIVENDA,PESOBRUTO,PESOLIQUIDO,ALIQICMS,SITUACAOECF,TVA,TVAFONTE,CLASFISCAL,'+
                         'LEITURAATUAL,LEITURAMAXIMA '+
                         'from Itens';
  		IBSQL2.Sql.Text := 'Insert into Itens ('+
                         'Item, TipoItem, Codigo, DescricaoCompra, Grupo, '+
                         'Descricao, Taxavel, CustoMedio, UltimoFornecedor, '+
                         'QtdeMinimo, QtdeMaximo, PontoPedido, Percentual, '+
                         'AplicarAntesTax, Unidade, Localizacao, Desativado, '+
                         'Estoque, Importacao, Comissao, DescontoMaximo, '+
                         'TaxIncluso, Conta_Venda, Conta_Custo, Conta_Invent, '+
                         'Fabricante, Balanco, Campo01, Campo02, Campo03, Campo04, '+
                         'Campo05, Campo06, Campo07, Campo08, Campo09, Campo10, '+
                         'PrecoCompra, CustoContabil, IsItemCompra, PTaxIncluso, '+
                         'CustoDespesas, Foto, Promocao, FatorLucro, HasChildren, '+
                         'Referencia, SemLucro, Pri_CustoMedio, Pri_CustoContabil, '+
                         'Pri_PrecoCompra, DataCadastro, CustoProduto, ControleValidade, '+
                         'TempoMedioValidade, FornecPreferencia, Revenda, UltimaCompra, '+
                         'CompensaCusto, COMLUCRO,UNIDADEENTRADA,UNIDADECARGA,UNIDADEVAREJO,'+
                         'ULTQTDECOMPRA,UNIDADEMINIMA,FATORUNDVENDA,FATORUNDCOMPRA,ULTIMAVENDA,'+
                         'ESTOQUECONSIGSAIDA,ESTOQUECONSIGENTRADA,ABC,DESCRICAOCOMPLEMENTAR,'+
                         'DESCRICAOTECNICA,CST,REDUCAOCST,IPICOMPRA,IPIVENDA,PESOBRUTO,PESOLIQUIDO,'+
                         'ALIQICMS,SITUACAOECF,TVA,TVAFONTE,CLASFISCAL,LEITURAATUAL,LEITURAMAXIMA '+
                         ') '+
                         'Values ('+
                         ':Item, :TipoItem, :Codigo, :DescricaoCompra, :Grupo, '+
                         ':Descricao, :Taxavel, :CustoMedio, :UltimoFornecedor, '+
                         ':QtdeMinimo, :QtdeMaximo, :PontoPedido, :Percentual, '+
                         ':AplicarAntesTax, :Unidade, :Localizacao, :Desativado, '+
                         ':Estoque, :Importacao, :Comissao, :DescontoMaximo, '+
                         ':TaxIncluso, :Conta_Venda, :Conta_Custo, :Conta_Invent, '+
                         ':Fabricante, :Balanco, :Campo01, :Campo02, :Campo03, :Campo04, '+
                         ':Campo05, :Campo06, :Campo07, :Campo08, :Campo09, :Campo10, '+
                         ':PrecoCompra, :CustoContabil, :IsItemCompra, :PTaxIncluso, '+
                         ':CustoDespesas, :Foto, :Promocao, :FatorLucro, :HasChildren, '+
                         ':Referencia, :SemLucro, :Pri_CustoMedio, :Pri_CustoContabil, '+
                         ':Pri_PrecoCompra, :DataCadastro, :CustoProduto, :ControleValidade, '+
                         ':TempoMedioValidade, :FornecPreferencia, :Revenda, :UltimaCompra, '+
                         ':CompensaCusto, :COMLUCRO,:UNIDADEENTRADA,:UNIDADECARGA,:UNIDADEVAREJO,'+
                         ':ULTQTDECOMPRA,:UNIDADEMINIMA,:FATORUNDVENDA,:FATORUNDCOMPRA,:ULTIMAVENDA,'+
                         ':ESTOQUECONSIGSAIDA,:ESTOQUECONSIGENTRADA,:ABC,:DESCRICAOCOMPLEMENTAR,:DESCRICAOTECNICA,'+
                         ':CST,:REDUCAOCST,:IPICOMPRA,:IPIVENDA,:PESOBRUTO,:PESOLIQUIDO,:ALIQICMS,:SITUACAOECF,'+
                         ':TVA,:TVAFONTE,:CLASFISCAL,:LEITURAATUAL,:LEITURAMAXIMA '+
                         ') ';
      Transfere( IBSQL1, IBSQL2 );
      {itensfilhos}
      lbInfo.Caption 	:= 'Cadastro de SubItens...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select IDFilho, Item, SubItem, Quantidade from ItensFilhos';
  		IBSQL2.Sql.Text := 'Insert into ItensFilhos ('+
      									 'IDFilho, Item, SubItem, Quantidade) '+
                         'Values ('+
                         ':IDFilho, :Item, :SubItem, :Quantidade) ';
			Transfere( IBSQL1, IBSQL2 );
      {itensforn}
      lbInfo.Caption 	:= 'Cadastro de Itens Fornecedor...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select ItemForn, Item, Fornecedor, CodigoForn, PrecoCompra from ItensForn';
  		IBSQL2.Sql.Text := 'Insert into ItensForn ('+
      									 'ItemForn, Item, Fornecedor, CodigoForn, PrecoCompra) '+
                         'Values ('+
                         ':ItemForn, :Item, :Fornecedor, :CodigoForn, :PrecoCompra)';
      Transfere( IBSQL1, IBSQL2 );
      {itenslotes}
      (*
      lbInfo.Caption 	:= 'Cadastro de Itens Lotes...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select EntradaItem, Entrada, Item, DataEntrada, QtdeEntrada, NumeroLote, Validade, QtdeAtual from ItensLotes';
  		IBSQL2.Sql.Text := 'Insert into ItensLotes ('+
      									 'EntradaItem, Entrada, Item, DataEntrada, QtdeEntrada, NumeroLote, Validade, QtdeAtual) '+
                         'Values ('+
                         ':EntradaItem, :Entrada, :Item, :DataEntrada, :QtdeEntrada, :NumeroLote, :Validade, :QtdeAtual) ';
      Transfere( IBSQL1, IBSQL2 );

      {itenslotessaidas}
      lbInfo.Caption 	:= 'Cadastro de Itens Lotes Saidas...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select SaidaItem, Entradaitem, Saida, Quantidade, Item from ItensLotesSaidas';
  		IBSQL2.Sql.Text := 'Insert into ItensLotesSaidas ('+
      									 'SaidaItem, Entradaitem, Saida, Quantidade, Item) '+
                         'Values ('+
                         ':SaidaItem, :Entradaitem, :Saida, :Quantidade, :Item) ';
      Transfere( IBSQL1, IBSQL2 );
      *)
      {TabelasPreco}
      lbInfo.Caption 	:= 'Cadastro de Tabelas Preço...';
  		Barra.Position := Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select TabelaPreco, Descricao, Percentual, Desativado, Baseada from TabelasPreco';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from TabelasPreco';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into TabelasPreco ('+
                         'TabelaPreco, Descricao, Percentual, Desativado, Baseada) '+
                         'Values ('+
                         ':TabelaPreco, :Descricao, :Percentual, :Desativado, :Baseada)';
      Transfere( IBSQL1, IBSQL2 );
      {Unidades}
      lbInfo.Caption 	:= 'Cadastro de Unidades...';
  		Barra.Position := Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Unidade, Descricao, Inteira from Unidades';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'delete from Unidades';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into Unidades ('+
                         'Unidade, Descricao, Inteira) '+
                         'Values ('+
                         ':Unidade, :Descricao, :Inteira)';
      Transfere( IBSQL1, IBSQL2 );
      {Unidades}
      lbInfo.Caption 	:= 'Cadastro de ItensUnidades...';
  		Barra.Position := Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select ItemUnidade, Item, Fator, Unidade from ItensUnidades';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'delete from ItensUnidades';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into ItensUnidades ('+
                         'ItemUnidade, Item, Fator, Unidade) '+
                         'Values ('+
                         ':ItemUnidade, :Item, :Fator, :Unidade)';
      Transfere( IBSQL1, IBSQL2 );
      {Unidades Relac}
      {
      lbInfo.Caption 	:= 'Cadastro de Relacionamentos de Unidades...';
  		Barra.Position := Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select UnidadeRelac, Unidade1, Unidade2, Relac_U1_U2 from UnidadesRelac';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'delete from UnidadesRelac';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into UnidadesRelac ('+
                         'UnidadeRelac, Unidade1, Unidade2, Relac_U1_U2) '+
                         'Values ('+
                         ':UnidadeRelac, :Unidade1, :Unidade2, :Relac_U1_U2)';
      Transfere( IBSQL1, IBSQL2 );
      }
      {Fabricantes}
      lbInfo.Caption 	:= 'Cadastro de Fabricantes...';
  		Barra.Position := Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Fabricante, Descricao, Codigo from Fabricantes';
  		IBSQL2.Sql.Text := 'Insert into Fabricantes ('+
                         'Fabricante, Descricao, Codigo) '+
                         'Values ('+
                         ':Fabricante, :Descricao, :Codigo)';
      Transfere( IBSQL1, IBSQL2 );
      {Grupos}
      lbInfo.Caption 	:= 'Cadastro de Grupos...';
  		Barra.Position := Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Grupo, Codigo, DescricaoGrupo, TipoItem, Importacao, '+
                         'Foto, DescontoMaximo, Comissao, TaxIncluso, PTaxIncluso, '+
                         'CustoDespesas, FatorLucro, Taxavel from Grupos';
  		IBSQL2.Sql.Text := 'Insert into Grupos ('+
                         'Grupo, Codigo, DescricaoGrupo, TipoItem, Importacao, '+
                         'Foto, DescontoMaximo, Comissao, TaxIncluso, PTaxIncluso, '+
                         'CustoDespesas, FatorLucro, Taxavel) '+
                         'Values ('+
                         ':Grupo, :Codigo, :DescricaoGrupo, :TipoItem, :Importacao, '+
                         ':Foto, :DescontoMaximo, :Comissao, :TaxIncluso, :PTaxIncluso, '+
                         ':CustoDespesas, :FatorLucro, :Taxavel) ';
      Transfere( IBSQL1, IBSQL2 );
    end;
    Barra.Position := 16;
    {Contas}
    if ckbContas.Checked then begin

      lbInfo.Caption 	:= 'Cadastro de Contas...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Conta, Descricao, Banco, NumConta, Agencia, SaldoInicial, '+
                         'Desativado, TipoConta, Gerente, NumChequeBase, DataSaldoInicial, '+
                         'Situacao, MovimentoCorrente, ContaPadrao, LimiteCredito, '+
                         'ContaPai, Obs, CodigoReduzido, CodigoConta, DataConciliacao, '+
                         'SaldoConciliacao, UsuarioCaixa, Saldo, Nivel, Sintetico from Contas';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from Contas';
      IBSQL2.ExecQuery;
      IBSQL2.Close;
  		IBSQL2.Sql.Text := 'Insert into Contas ('+
                         'Conta, Descricao, Banco, NumConta, Agencia, SaldoInicial, '+
                         'Desativado, TipoConta, Gerente, NumChequeBase, DataSaldoInicial, '+
                         'Situacao, MovimentoCorrente, ContaPadrao, LimiteCredito, '+
                         'ContaPai, Obs, CodigoReduzido, CodigoConta, DataConciliacao, '+
                         'SaldoConciliacao, UsuarioCaixa, Saldo, Nivel, Sintetico) '+
                         'Values ('+
                         ':Conta, :Descricao, :Banco, :NumConta, :Agencia, :SaldoInicial, '+
                         ':Desativado, :TipoConta, :Gerente, :NumChequeBase, :DataSaldoInicial, '+
                         ':Situacao, :MovimentoCorrente, :ContaPadrao, :LimiteCredito, '+
                         ':ContaPai, :Obs, :CodigoReduzido, :CodigoConta, :DataConciliacao, '+
                         ':SaldoConciliacao, :UsuarioCaixa, :Saldo, :Nivel, :Sintetico) ';
      Transfere( IBSQL1, IBSQL2 );
      {ContasPadrão}
  		Barra.Position := Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select ID, Conta from ContasPadrao';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from ContasPadrao';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into ContasPadrao ('+
                         'ID, Conta) '+
                         'Values ('+
                         ':ID, :Conta) ';
      Transfere( IBSQL1, IBSQL2 );
      {Bancos}
  		Barra.Position := Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Favorecido, Codigo, Nome, Razao, Endereco, Bairro, Cidade, UF, '+
                     		 'Cep, CaixaPostal, Pais, Fone1, Fone2, Fax, Celular, Contato, '+
                     		 'Email, TipoFavorecido, TipoAtividade, PlanoPagamento, '+
                     		 'Vendedor, LimiteCredito, CPF_CNPJ, TabelaPreco, '+
                     		 'Desativado, Exigivel1099, TipoEntrega, DataCadastro, Site, '+
                     		 'Obs, Importacao, Situacao, Cargo, Logotipo, JurosFactory, '+
                     		 'TaxasFactory, FloatingFactory, Memo_Check, Credito, Conta, '+
                     		 'Numero_Revenda, Tipo_Func, DataNasc, Campo01, Campo02, Campo03, '+
                     		 'Campo04, Campo05, Campo06, Campo07, Campo08, Campo09, Campo10, '+
                     		 'Comissao, IsVendedor, ContaPagamento, ContaDespesas, UltCompra, '+
                     		 'UltValorCompra, Periodicidade, DataAdimissao, DataDemissao, '+
                     		 'DataAumento, AgruparPorItem, Relacionamento, DescricaoRelac, '+
                     		 'InicioSemana, DiasPeriodo, Qualidade, Zona, GrupoCliente, '+
                     		 'GrauRelac, UltimoPgto, UltimoValorPago from Favorecidos where tipofavorecido = 4';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from Favorecidos where tipofavorecido = 4';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into favorecidos ('+
  									 		 'Favorecido, Codigo, Nome, Razao, Endereco, Bairro, Cidade, UF, '+
                     		 'Cep, CaixaPostal, Pais, Fone1, Fone2, Fax, Celular, Contato, '+
                     		 'Email, TipoFavorecido, TipoAtividade, PlanoPagamento, '+
                     		 'Vendedor, LimiteCredito, CPF_CNPJ, TabelaPreco, '+
                     		 'Desativado, Exigivel1099, TipoEntrega, DataCadastro, Site, '+
                     		 'Obs, Importacao, Situacao, Cargo, Logotipo, JurosFactory, '+
                     		 'TaxasFactory, FloatingFactory, Memo_Check, Credito, Conta, '+
                     		 'Numero_Revenda, Tipo_Func, DataNasc, Campo01, Campo02, Campo03, '+
                     		 'Campo04, Campo05, Campo06, Campo07, Campo08, Campo09, Campo10, '+
                     		 'Comissao, IsVendedor, ContaPagamento, ContaDespesas, UltCompra, '+
                     		 'UltValorCompra, Periodicidade, DataAdimissao, DataDemissao, '+
                     		 'DataAumento, AgruparPorItem, Relacionamento, DescricaoRelac, '+
                     		 'InicioSemana, DiasPeriodo, Qualidade, Zona, GrupoCliente, '+
                     		 'GrauRelac, UltimoPgto, UltimoValorPago) '+
                     		 'Values ('+
  									 		 ':Favorecido, :Codigo, :Nome, :Razao, :Endereco, :Bairro, :Cidade, :UF, '+
                     		 ':Cep, :CaixaPostal, :Pais, :Fone1, :Fone2, :Fax, :Celular, :Contato, '+
                     		 ':Email, :TipoFavorecido, :TipoAtividade, :PlanoPagamento, '+
                     		 ':Vendedor, :LimiteCredito, :CPF_CNPJ, :TabelaPreco, '+
                     		 ':Desativado, :Exigivel1099, :TipoEntrega, :DataCadastro, :Site, '+
                     		 ':Obs, :Importacao, :Situacao, :Cargo, :Logotipo, :JurosFactory, '+
                     		 ':TaxasFactory, :FloatingFactory, :Memo_Check, :Credito, :Conta, '+
                     		 ':Numero_Revenda, :Tipo_Func, :DataNasc, :Campo01, :Campo02, :Campo03, '+
                     		 ':Campo04, :Campo05, :Campo06, :Campo07, :Campo08, :Campo09, :Campo10, '+
                     		 ':Comissao, :IsVendedor, :ContaPagamento, :ContaDespesas, :UltCompra, '+
                     		 ':UltValorCompra, :Periodicidade, :DataAdimissao, :DataDemissao, '+
                     		 ':DataAumento, :AgruparPorItem, :Relacionamento, :DescricaoRelac, '+
                     		 ':InicioSemana, :DiasPeriodo, :Qualidade, :Zona, :GrupoCliente, '+
                     		 ':GrauRelac, :UltimoPgto, :UltimoValorPago)';
      Transfere( IBSQL1, IBSQL2 );
    end;
    Barra.Position := 19;
    {Usuarios}
    if ckbUsuarios.Checked then begin

      lbInfo.Caption 	:= 'Cadastro de Usuários...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Usuario, Perfil, LoginName, LoginPass, Idioma, '+
                         'Intervalo_Minutos, Hora_Ini, Hora_Fim, Recados_Timer, '+
                         'Email, Desativado, Formato_Hora, DescontoMaximo, '+
                         'Logotipo, Funcionario from Usuarios';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from Usuarios';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into Usuarios ('+
                         'Usuario, Perfil, LoginName, LoginPass, Idioma, '+
                         'Intervalo_Minutos, Hora_Ini, Hora_Fim, Recados_Timer, '+
                         'Email, Desativado, Formato_Hora, DescontoMaximo, '+
                         'Logotipo, Funcionario) '+
                         'Values ('+
                         ':Usuario, :Perfil, :LoginName, :LoginPass, :Idioma, '+
                         ':Intervalo_Minutos, :Hora_Ini, :Hora_Fim, :Recados_Timer, '+
                         ':Email, :Desativado, :Formato_Hora, :DescontoMaximo, '+
                         ':Logotipo, :Funcionario) ';
      Transfere( IBSQL1, IBSQL2 );
      {Funcionários}
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Favorecido, Codigo, Nome, Razao, Endereco, Bairro, Cidade, UF, '+
                     		 'Cep, CaixaPostal, Pais, Fone1, Fone2, Fax, Celular, Contato, '+
                     		 'Email, TipoFavorecido, TipoAtividade, PlanoPagamento, '+
                     		 'Vendedor, LimiteCredito, CPF_CNPJ, TabelaPreco, '+
                     		 'Desativado, Exigivel1099, TipoEntrega, DataCadastro, Site, '+
                     		 'Obs, Importacao, Situacao, Cargo, Logotipo, JurosFactory, '+
                     		 'TaxasFactory, FloatingFactory, Memo_Check, Credito, Conta, '+
                     		 'Numero_Revenda, Tipo_Func, DataNasc, Campo01, Campo02, Campo03, '+
                     		 'Campo04, Campo05, Campo06, Campo07, Campo08, Campo09, Campo10, '+
                     		 'Comissao, IsVendedor, ContaPagamento, ContaDespesas, UltCompra, '+
                     		 'UltValorCompra, Periodicidade, DataAdimissao, DataDemissao, '+
                     		 'DataAumento, AgruparPorItem, Relacionamento, DescricaoRelac, '+
                     		 'InicioSemana, DiasPeriodo, Qualidade, Zona, GrupoCliente, '+
                     		 'GrauRelac, UltimoPgto, UltimoValorPago from Favorecidos where tipofavorecido = 3';
  		IBSQL2.Sql.Text := 'Insert into favorecidos ('+
  									 		 'Favorecido, Codigo, Nome, Razao, Endereco, Bairro, Cidade, UF, '+
                     		 'Cep, CaixaPostal, Pais, Fone1, Fone2, Fax, Celular, Contato, '+
                     		 'Email, TipoFavorecido, TipoAtividade, PlanoPagamento, '+
                     		 'Vendedor, LimiteCredito, CPF_CNPJ, TabelaPreco, '+
                     		 'Desativado, Exigivel1099, TipoEntrega, DataCadastro, Site, '+
                     		 'Obs, Importacao, Situacao, Cargo, Logotipo, JurosFactory, '+
                     		 'TaxasFactory, FloatingFactory, Memo_Check, Credito, Conta, '+
                     		 'Numero_Revenda, Tipo_Func, DataNasc, Campo01, Campo02, Campo03, '+
                     		 'Campo04, Campo05, Campo06, Campo07, Campo08, Campo09, Campo10, '+
                     		 'Comissao, IsVendedor, ContaPagamento, ContaDespesas, UltCompra, '+
                     		 'UltValorCompra, Periodicidade, DataAdimissao, DataDemissao, '+
                     		 'DataAumento, AgruparPorItem, Relacionamento, DescricaoRelac, '+
                     		 'InicioSemana, DiasPeriodo, Qualidade, Zona, GrupoCliente, '+
                     		 'GrauRelac, UltimoPgto, UltimoValorPago) '+
                     		 'Values ('+
  									 		 ':Favorecido, :Codigo, :Nome, :Razao, :Endereco, :Bairro, :Cidade, :UF, '+
                     		 ':Cep, :CaixaPostal, :Pais, :Fone1, :Fone2, :Fax, :Celular, :Contato, '+
                     		 ':Email, :TipoFavorecido, :TipoAtividade, :PlanoPagamento, '+
                     		 ':Vendedor, :LimiteCredito, :CPF_CNPJ, :TabelaPreco, '+
                     		 ':Desativado, :Exigivel1099, :TipoEntrega, :DataCadastro, :Site, '+
                     		 ':Obs, :Importacao, :Situacao, :Cargo, :Logotipo, :JurosFactory, '+
                     		 ':TaxasFactory, :FloatingFactory, :Memo_Check, :Credito, :Conta, '+
                     		 ':Numero_Revenda, :Tipo_Func, :DataNasc, :Campo01, :Campo02, :Campo03, '+
                     		 ':Campo04, :Campo05, :Campo06, :Campo07, :Campo08, :Campo09, :Campo10, '+
                     		 ':Comissao, :IsVendedor, :ContaPagamento, :ContaDespesas, :UltCompra, '+
                     		 ':UltValorCompra, :Periodicidade, :DataAdimissao, :DataDemissao, '+
                     		 ':DataAumento, :AgruparPorItem, :Relacionamento, :DescricaoRelac, '+
                     		 ':InicioSemana, :DiasPeriodo, :Qualidade, :Zona, :GrupoCliente, '+
                     		 ':GrauRelac, :UltimoPgto, :UltimoValorPago)';
      Transfere( IBSQL1, IBSQL2 );
    end;
    Barra.Position := 21;
    {Perfis e Permissões}
    if ckbPerfis.Checked then begin

      {Perfis}
      lbInfo.Caption 	:= 'Informações de Permissões...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Perfil, Descricao, Inicializacao, Importacao from Perfis';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from Perfis';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into Perfis ('+
                         'Perfil, Descricao, Inicializacao, Importacao) '+
                         'Values ('+
                         ':Perfil, :Descricao, :Inicializacao, :Importacao) ';
      Transfere( IBSQL1, IBSQL2 );
      {Permissões}
  		Barra.Position := Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Permissao, Sigla, Descricao, Importacao from Permissoes';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from Permissoes';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into Permissoes ('+
                         'Permissao, Sigla, Descricao, Importacao) '+
                         'Values ('+
                         ':Permissao, :Sigla, :Descricao, :Importacao) ';
      Transfere( IBSQL1, IBSQL2 );
      {PermissoesObjeto}
  		Barra.Position := Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select PermissaoObjeto, Objeto, Permissao, Importacao from PermissoesObjeto';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from PermissoesObjeto';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into PermissoesObjeto ('+
                         'PermissaoObjeto, Objeto, Permissao, Importacao) '+
                         'Values ('+
                         ':PermissaoObjeto, :Objeto, :Permissao, :Importacao) ';
      Transfere( IBSQL1, IBSQL2 );
      {LimitacoesMenu}
  		Barra.Position := Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select LimitacaoMenu, Perfil, Objeto, Menu, Senha, Iniciar, Permissoes from LimitacoesMenu';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from LimitacoesMenu';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into LimitacoesMenu ('+
                         'LimitacaoMenu, Perfil, Objeto, Menu, Senha, Iniciar, Permissoes) '+
                         'Values ('+
                         ':LimitacaoMenu, :Perfil, :Objeto, :Menu, :Senha, :Iniciar, :Permissoes) ';
       Transfere( IBSQL1, IBSQL2 );
    end;
    Barra.Position := 25;
    {Parametros/Configuração do Sistema}
    if ckbConfiguracao.Checked then begin

      {Parametros}
      lbInfo.Caption 	:= 'Cadastro de Configurações...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Parametro, Categoria, Valor, Dominio, ControleInterno, '+
                         'Label, Descricao, Tipo, Importacao, Forms, Categoria1, '+
                         'Categoria2, Categoria3, Label1, Label2, Label3, '+
                         'Descricao1, Descricao2, Descricao3, Dominio1, '+
                         'Dominio2, Dominio3 from Parametros';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from Parametros';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into Parametros ('+
                         'Parametro, Categoria, Valor, Dominio, ControleInterno, '+
                         'Label, Descricao, Tipo, Importacao, Forms, Categoria1, '+
                         'Categoria2, Categoria3, Label1, Label2, Label3, '+
                         'Descricao1, Descricao2, Descricao3, Dominio1, '+
                         'Dominio2, Dominio3) '+
                         'Values ('+
                         ':Parametro, :Categoria, :Valor, :Dominio, :ControleInterno, '+
                         ':Label, :Descricao, :Tipo, :Importacao, :Forms, :Categoria1, '+
                         ':Categoria2, :Categoria3, :Label1, :Label2, :Label3, '+
                         ':Descricao1, :Descricao2, :Descricao3, :Dominio1, '+
                         ':Dominio2, :Dominio3)';
      Transfere( IBSQL1, IBSQL2 );
      {Cabecalho}
      lbInfo.Caption 	:= 'Cadastro de Cabeçalho...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select ID, Esquerdo, Direito, Logotipo from Cabecalho';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from Cabecalho';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into Cabecalho ('+
                         'ID, Esquerdo, Direito, Logotipo) '+
                         'Values ('+
                         ':ID, :Esquerdo, :Direito, :Logotipo) ';
      Transfere( IBSQL1, IBSQL2 );
    end;
    Barra.Position 		:= 27;
    if ckbClientes.Checked or ckbFornecedores.Checked or ckbUsuarios.Checked then begin
      {GruposClientes}
      lbInfo.Caption 	:= 'Cadastro de Grupos de Favorecidos...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select GrupoCliente, Descricao from GruposCliente';
  		IBSQL2.Sql.Text := 'Insert into GruposCliente ('+
      									 'GrupoCliente, Descricao) '+
                         'Values ('+
                         ':GrupoCliente, :Descricao) ';
      Transfere( IBSQL1, IBSQL2 );
      {Cargos}
      lbInfo.Caption 	:= 'Cadastro de Cargos...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Cargo, Descricao, Codigo from Cargos';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'delete from cargos';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into Cargos ('+
      									 'Cargo, Descricao, Codigo) '+
                         'Values ('+
                         ':Cargo, :Descricao, :Codigo) ';
      Transfere( IBSQL1, IBSQL2 );

      {FavorecidosEntrega}
      lbInfo.Caption 	:= 'Cadastro de Endereços de Entrega...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Entrega, Favorecido, EnderecoEntrega, CidadeEntrega, '+
                         'UFEntrega, CepEntrega, PaisEntrega, Descricao, FoneEntrega from FavorecidosEntrega';
  		IBSQL2.Sql.Text := 'Insert into FavorecidosEntrega ('+
      									 'Entrega, Favorecido, EnderecoEntrega, CidadeEntrega, '+
                         'UFEntrega, CepEntrega, PaisEntrega, Descricao, FoneEntrega) '+
                         'Values ('+
      									 ':Entrega, :Favorecido, :EnderecoEntrega, :CidadeEntrega, '+
                         ':UFEntrega, :CepEntrega, :PaisEntrega, :Descricao, :FoneEntrega) ';
      Transfere( IBSQL1, IBSQL2 );
      {GrauParentescos}
      lbInfo.Caption 	:= 'Cadastro de Grau Parentescos...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select GrauParentesco, Descricao from GrauParentescos';
  		IBSQL2.Sql.Text := 'Insert into GrauParentescos ('+
      									 'GrauParentesco, Descricao) '+
                         'Values ('+
      									 ':GrauParentesco, :Descricao) ';
      Transfere( IBSQL1, IBSQL2 );
      {GrauRelacionamentos}
      lbInfo.Caption 	:= 'Cadastro de Relacionamentos...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Grau, Descricao from GrauRelacionamentos';
  		IBSQL2.Sql.Text := 'Insert into GrauRelacionamentos ('+
      									 'Grau, Descricao) '+
                         'Values ('+
      									 ':Grau, :Descricao) ';
      Transfere( IBSQL1, IBSQL2 );
      {Paises}
      lbInfo.Caption 	:= 'Cadastro de Países...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Pais, Descricao from Paises';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from Paises';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into Paises ('+
      									 'Pais, Descricao) '+
                         'Values ('+
      									 ':Pais, :Descricao) ';
      Transfere( IBSQL1, IBSQL2 );
      {Qualidades}
      lbInfo.Caption 	:= 'Cadastro de Qualidades...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Qualidade, Descricao from Qualidades';
  		IBSQL2.Sql.Text := 'Insert into Qualidades ('+
      									 'Qualidade, Descricao) '+
                         'Values ('+
      									 ':Qualidade, :Descricao) ';
      Transfere( IBSQL1, IBSQL2 );
      {TiposAtividade}
      lbInfo.Caption 	:= 'Cadastro de Tipos de Atividade...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select TipoAtividade, Descricao, TipoFavorecido from TiposAtividade';
  		IBSQL2.Sql.Text := 'Insert into TiposAtividade ('+
      									 'TipoAtividade, Descricao, TipoFavorecido) '+
                         'Values ('+
      									 ':TipoAtividade, :Descricao, :TipoFavorecido)';
      Transfere( IBSQL1, IBSQL2 );
      {TiposBusiness}
      lbInfo.Caption 	:= 'Cadastro de Tipos de Business...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select TipoBusiness, Descricao from TiposBusiness';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from TiposBusiness';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into TiposBusiness ('+
      									 'TipoBusiness, Descricao) '+
                         'Values ('+
      									 ':TipoBusiness, :Descricao)';
      Transfere( IBSQL1, IBSQL2 );
      {TiposEntrega}
      lbInfo.Caption 	:= 'Cadastro de Tipos de Entrega...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select TipoEntrega, Descricao from TiposEntrega';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'Delete from TiposEntrega';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into TiposEntrega ('+
      									 'TipoEntrega, Descricao) '+
                         'Values ('+
      									 ':TipoEntrega, :Descricao)';
      Transfere( IBSQL1, IBSQL2 );
      {UFS}
      {
      lbInfo.Caption 	:= 'Cadastros de Estados...';
  		Barra.Position 	:= Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select UF, Descricao from UFS';
      IBSQL2.Close;
      IBSQL2.Sql.Text := 'delete from UFS';
      IBSQL2.ExecQuery;
  		IBSQL2.Sql.Text := 'Insert into UFS ('+
      									 'UF, Descricao) '+
                         'Values ('+
      									 ':UF, :Descricao)';
      Transfere( IBSQL1, IBSQL2 );
      }
      {Zonas}
      lbInfo.Caption := 'Cadastro de Zonas...';
  		Barra.Position := Barra.Position + 1;
  		IBSQL1.Sql.Text := 'Select Zona, Descricao from Zonas';
  		IBSQL2.Sql.Text := 'Insert into Zonas ('+
      									 'Zona, Descricao) '+
                         'Values ('+
      									 ':Zona, :Descricao)';
      Transfere( IBSQL1, IBSQL2 );
    end;
    Barra.Position := 39;
    {Atualizações}
    {Zerando os créditos dos favorecidos}
    lbInfo.Caption := 'Zerando créditos de favorecidos...';
    Barra.Position := Barra.Position + 1;
    with IBSQL2 do begin
    	close;
      sql.text := 'update favorecidos '+
      						'set credito = 0 ';
      execquery;
    end;
    {Zerando os saldos das contas}
    lbInfo.Caption := 'Zerando os saldos das contas...';
    Barra.Position := Barra.Position + 1;
    with IBSQL2 do begin
    	close;
      sql.text := 'update contas '+
      						'set saldo = 0, saldoinicial = 0 ';
      execquery;
    end;
    {Zerando os estoques}
    Barra.Position := Barra.Position + 1;
    lbInfo.Caption := 'Zerando itens de estoque...';
    with IBSQL2 do begin
    	close;
      sql.text := 'update itens '+
      						'set estoque = 0 ';
      execquery;
    end;
    {Gravando os dados}
    lbInfo.Caption := 'Gravando as informações...';
    Barra.Position := Barra.Position + 1;
  	IBSQL2.Transaction.CommitRetaining;
    Barra.Position := Barra.Position + 1;
    except
      on E:Exception do begin
        DlgMsg.ShowMsg( 2, e.message, '' );
	    	IBSQL2.Transaction.RollBack;
      end;
    end;
  end;
  DMProject.SetParametrosForm([EditNome.Text,sDestino]);
  Barra.Position := 44;
  lbInfo.Caption := 'Empresa criada com Sucesso!';
end;

procedure TDlgCriarEmpresa.Transfere( Origem, Destino : TIBSQL );
var RawOutput : TIBOutputRawFile;
  	RawInput : TIBInputRawFile;
begin
	RawOutput:= TIBOutputRawFile.Create;
  try
    try
  	  RawOutput.FileName := 'DataFile.RAW';
      Origem.BatchOutput(RawOutput);
    except
      on E:Exception do
        ShowMessage(E.Message);
    end;
  finally
    RawOutput.Free;
  end;
  RawInput := TIBInputRawFile.Create;
  try
    try
      RawInput.FileName := 'DataFile.RAW';
      Destino.BatchInput(RawInput);
    except
      on E:Exception do
        ShowMessage(E.Message);
    end;
  finally
    RawInput.Free;
  end;
  if fileexists('DataFile.RAW') then
     DeleteFile('DataFile.RAW');
end;

procedure TDlgCriarEmpresa.EditNomeChange(Sender: TObject);
begin
  inherited;
	edArquivo.Text := Copy(RetiraAcentos(PrimeiraPalavra(editNome.Text)),1,8)+'.gdb';
end;

procedure TDlgCriarEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  caption := ' ';
end;

end.


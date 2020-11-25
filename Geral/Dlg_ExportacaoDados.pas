unit Dlg_ExportacaoDados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, dxCntner, dxExEdtr, dxEdLib, TS_CheckBox,
  FormsComponent, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, Db, IBCustomDataSet, IBQuery, TS_RadioGroup,
  BTOdeum, Placemnt;

type
  TDlgExportacaoDados = class(TFrmModeloCadastros)
    cbParametros: TTS_CheckBox;
    cbClientes: TTS_CheckBox;
    cbFornecedores: TTS_CheckBox;
    cbFuncionarios: TTS_CheckBox;
    cbItens: TTS_CheckBox;
    SaveDialog: TSaveDialog;
    Q_Parametros: TIBQuery;
    Q_Custos: TIBQuery;
    Q_Favorecidos: TIBQuery;
    rgTipoItem: TTS_RadioGroup;
    Q_Itens: TIBQuery;
    Q_Grupos: TIBQuery;
    Q_Fabricantes: TIBQuery;
    cbEstoqueZero: TTS_CheckBox;
    procedure btGravarClick(Sender: TObject);
    procedure cbItensChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgExportacaoDados: TDlgExportacaoDados;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDlgExportacaoDados.btGravarClick(Sender: TObject);
var Arq: TextFile;
    nArq: integer;
    sTexto: string;
    nEstoque: real;
begin
  inherited;
  if cbParametros.checked then begin
    SaveDialog.FileName := 'parametros.txt';
    if SaveDialog.Execute then begin
      if not FileExists(SaveDialog.FileName) then begin
        nArq := FileCreate(SaveDialog.FileName);
        FileClose(nArq);
      end;
      AssignFile(Arq,SaveDialog.FileName);
      Rewrite(Arq);
      Q_Parametros.SQL.text := 'select * from parametros';
      Q_Parametros.open;
      while not Q_Parametros.eof do begin
        sTexto := Q_Parametros.FieldByName('parametro').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('valor').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('categoria').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('dominio').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('controleinterno').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('label').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('tipo').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('forms').asstring+'|';

        sTexto := sTexto + Q_Parametros.FieldByName('categoria1').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('categoria2').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('categoria3').asstring+'|';

        sTexto := sTexto + Q_Parametros.FieldByName('dominio1').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('dominio2').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('dominio3').asstring+'|';

        sTexto := sTexto + Q_Parametros.FieldByName('label1').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('label2').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('label3').asstring+'|';

        sTexto := sTexto + Q_Parametros.FieldByName('descricao1').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('descricao2').asstring+'|';
        sTexto := sTexto + Q_Parametros.FieldByName('descricao3').asstring;

        Writeln(Arq,sTexto);
        Q_Parametros.next;
      end;
      Q_Custos.open;
      Writeln(Arq,'**********');
      Writeln(Arq,'DespesasFixas='+FloatToStr(Q_Custos.FieldByName('despesasfixas').asfloat));
      Writeln(Arq,'MaiorComissao='+FloatToStr(Q_Custos.FieldByName('MaiorComissao').asfloat));
      Writeln(Arq,'LucroPadrao='+FloatToStr(Q_Custos.FieldByName('lucropadrao').asfloat));
      Writeln(Arq,'EncargosCartoes='+FloatToStr(Q_Custos.FieldByName('EncargosCartoes').asfloat));
      CloseFile(Arq);
    end;
    DlgMsg.ShowMsg(6004,['cliente']);
  end;

  if cbClientes.Checked then begin
    SaveDialog.FileName := 'clientes.txt';
    if SaveDialog.Execute then begin
      if not FileExists(SaveDialog.FileName) then begin
        nArq := FileCreate(SaveDialog.FileName);
        FileClose(nArq);
      end;
      AssignFile(Arq,SaveDialog.FileName);
      Rewrite(Arq);
      Q_Favorecidos.close;
      Q_Favorecidos.params[0].asinteger := 1;
      Q_Favorecidos.open;
      while not Q_Favorecidos.eof do begin
        sTexto := Q_Favorecidos.FieldByName('codigo').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('nome').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('cpf_cnpj').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('inscricao_est').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('endereco').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('bairro').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('cidade').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('uf').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('cep').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('fone1').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('fone2').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('fax').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('celular').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('email').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('site').asstring+'|';
        sTexto := sTexto + DateToStr(Q_Favorecidos.FieldByName('datanasc').asdatetime)+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('Razao').asstring+'|';
        sTexto := sTexto + FloatToStr(Q_Favorecidos.FieldByName('credito').asfloat)+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('vendedor').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('tabelapreco').asstring;
        Writeln(Arq,sTexto);
        Q_Favorecidos.next;
      end;
      CloseFile(Arq);
    end;
    DlgMsg.ShowMsg(6004,['cliente']);
  end;

  if cbFornecedores.Checked then begin
    SaveDialog.FileName := 'fornecedores.txt';
    if SaveDialog.Execute then begin
      if not FileExists(SaveDialog.FileName) then begin
        nArq := FileCreate(SaveDialog.FileName);
        FileClose(nArq);
      end;
      AssignFile(Arq,SaveDialog.FileName);
      Rewrite(Arq);
      Q_Favorecidos.close;
      Q_Favorecidos.params[0].asinteger := 2;
      Q_Favorecidos.open;
      while not Q_Favorecidos.eof do begin
        sTexto := Q_Favorecidos.FieldByName('codigo').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('nome').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('cpf_cnpj').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('inscricao_est').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('endereco').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('bairro').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('cidade').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('uf').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('cep').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('fone1').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('fone2').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('fax').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('celular').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('email').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('site').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('Razao').asstring+'|';
        sTexto := sTexto + FloatToStr(Q_Favorecidos.FieldByName('credito').asfloat);
        Writeln(Arq,sTexto);
        Q_Favorecidos.next;
      end;
      CloseFile(Arq);
    end;
    DlgMsg.ShowMsg(6004,['fornecedores']);
  end;

  if cbFuncionarios.Checked then begin
    SaveDialog.FileName := 'funcionarios.txt';
    if SaveDialog.Execute then begin
      if not FileExists(SaveDialog.FileName) then begin
        nArq := FileCreate(SaveDialog.FileName);
        FileClose(nArq);
      end;
      AssignFile(Arq,SaveDialog.FileName);
      Rewrite(Arq);
      Q_Favorecidos.close;
      Q_Favorecidos.params[0].asinteger := 3;
      Q_Favorecidos.open;
      while not Q_Favorecidos.eof do begin
        sTexto := Q_Favorecidos.FieldByName('codigo').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('nome').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('ssn').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('tipo_func').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('cargo').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('isvendedor').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('Periodicidade').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('endereco').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('cidade').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('uf').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('cep').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('caixapostal').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('fone1').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('fone2').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('fax').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('celular').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('email').asstring+'|';
        sTexto := sTexto + Q_Favorecidos.FieldByName('site').asstring+'|';
        sTexto := sTexto + DateToStr(Q_Favorecidos.FieldByName('datanasc').asdatetime)+'|';
        sTexto := sTexto + DateToStr(Q_Favorecidos.FieldByName('DataAdimissao').asdatetime)+'|';
        sTexto := sTexto + DateToStr(Q_Favorecidos.FieldByName('DataDemissao').asdatetime)+'|';
        sTexto := sTexto + FloatToStr(Q_Favorecidos.FieldByName('comissao').asfloat);

        Writeln(Arq,sTexto);
        Q_Favorecidos.next;
      end;
      CloseFile(Arq);
    end;
    DlgMsg.ShowMsg(6004,['funcionários']);
  end;

  if cbItens.Checked then begin
    // Itens
    SaveDialog.FileName := 'itens.txt';
    if SaveDialog.Execute then begin
      if not FileExists(SaveDialog.FileName) then begin
        nArq := FileCreate(SaveDialog.FileName);
        FileClose(nArq);
      end;
      AssignFile(Arq,SaveDialog.FileName);
      Rewrite(Arq);
      Q_Itens.close;
      Q_Itens.params[0].asinteger := rgTipoItem.ItemIndex + 1;
      Q_Itens.open;
      while not Q_Itens.eof do begin
        nEstoque:=0;
        If Not (cbEstoqueZero.Checked) Then
          nEstoque := Q_Itens.FieldByName('estoque').asfloat;
        sTexto := IntToStr(rgTipoItem.ItemIndex + 1)+'|';
        sTexto := sTexto + Q_Itens.FieldByName('codigo').asstring+'|';
        sTexto := sTexto + Q_Itens.FieldByName('referencia').asstring+'|';
        sTexto := sTexto + Q_Itens.FieldByName('descricao').asstring+'|';
        sTexto := sTexto + Q_Itens.FieldByName('descricaocompra').asstring+'|';
        sTexto := sTexto + Q_Itens.FieldByName('cst').asstring+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('reducaocst').asfloat)+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('customedio').asfloat)+'|';
        sTexto := sTexto + Q_Itens.FieldByName('unidade').asstring+'|';
        sTexto := sTexto + FloatToStr(nEstoque)+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('precocompra').asfloat)+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('preco').asfloat)+'|';
        sTexto := sTexto + Q_Itens.FieldByName('grupo').asstring+'|';
        sTexto := sTexto + Q_Itens.FieldByName('fabricante').asstring+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('IPICOMPRA').asfloat)+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('pesobruto').asfloat)+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('pesoliquido').asfloat)+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('CUSTOCONTABIL').asfloat)+'|';
        sTexto := sTexto + DateToStr(Q_Itens.FieldByName('ultimacompra').asdatetime)+'|';
        sTexto := sTexto + DateToStr(Q_Itens.FieldByName('ultimavenda').asdatetime)+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('COMISSAO').asfloat)+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('DESCONTOMAXIMO').asfloat)+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('fatorlucro').asfloat)+'|';
        sTexto := sTexto + Q_Itens.FieldByName('FOTO').asstring+'|';
        sTexto := sTexto + Q_Itens.FieldByName('unidadeENTRADA').asstring+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('fatorundvenda').asfloat)+'|';
        sTexto := sTexto + Q_Itens.FieldByName('ultimofornecedor').asstring+'|';
        sTexto := sTexto + Q_Itens.FieldByName('unidadevarejo').asstring+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('fatorundvenda').asfloat)+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('preco').asfloat)+'|';
        sTexto := sTexto + DateToStr(Q_Itens.FieldByName('datacadastro').asdatetime)+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('QTDEMINIMO').asfloat)+'|';
        sTexto := sTexto + FloatToStr(Q_Itens.FieldByName('QTDEMAXIMO').asfloat)+'|';
        sTexto := sTexto + Q_Itens.FieldByName('situacaoecf').asstring+'|';
        sTexto := sTexto + Q_Itens.FieldByName('CODIGOBARRAS').asstring;
        Writeln(Arq,sTexto);
        Q_Itens.next;
      end;
      CloseFile(Arq);
      DlgMsg.ShowMsg(6004,['itens']);
    end;
    // Grupos
    SaveDialog.FileName := 'grupos.txt';
    if SaveDialog.Execute then begin
      if not FileExists(SaveDialog.FileName) then begin
        nArq := FileCreate(SaveDialog.FileName);
        FileClose(nArq);
      end;
      AssignFile(Arq,SaveDialog.FileName);
      Rewrite(Arq);
      Q_Grupos.close;
      Q_Grupos.open;
      while not Q_Grupos.eof do begin
        sTexto := IntToStr(rgTipoItem.ItemIndex + 1)+'|';
        sTexto := sTexto + Q_Grupos.FieldByName('codigo').asstring+'|';
        sTexto := sTexto + Q_Grupos.FieldByName('descricaogrupo').asstring+'|';
        sTexto := sTexto + Q_Grupos.FieldByName('CST').asstring+'|';
        sTexto := sTexto + FloatToStr(Q_Grupos.FieldByName('REDUCAOCST').ASFLOAT)+'|';
        sTexto := sTexto + Q_Grupos.FieldByName('FOTO').asstring+'|';
        sTexto := sTexto + FloatToStr(Q_Grupos.FieldByName('COMISSAO').ASFLOAT)+'|';
        sTexto := sTexto + FloatToStr(Q_Grupos.FieldByName('DESCONTOMAXIMO').ASFLOAT)+'|';
        sTexto := sTexto + FloatToStr(Q_Grupos.FieldByName('FATORLUCRO').ASFLOAT)+'|';
        sTexto := sTexto + Q_Grupos.FieldByName('SITUACAOECF').asstring;
        Writeln(Arq,sTexto);
        Q_Grupos.next;
      end;
      CloseFile(Arq);
      DlgMsg.ShowMsg(6004,['Grupos']);
    end;
    // Fabricantes
    SaveDialog.FileName := 'fabricantes.txt';
    if SaveDialog.Execute then begin
      if not FileExists(SaveDialog.FileName) then begin
        nArq := FileCreate(SaveDialog.FileName);
        FileClose(nArq);
      end;
      AssignFile(Arq,SaveDialog.FileName);
      Rewrite(Arq);
      Q_Fabricantes.close;
      Q_Fabricantes.open;
      while not Q_Fabricantes.eof do begin
        sTexto := Q_Fabricantes.FieldByName('codigo').asstring+'|';
        sTexto := sTexto + Q_Fabricantes.FieldByName('descricao').asstring;

        Writeln(Arq,sTexto);
        Q_Fabricantes.next;
      end;
      CloseFile(Arq);
      DlgMsg.ShowMsg(6004,['Fabricantes']);
    end;
  end;
end;

procedure TDlgExportacaoDados.cbItensChange(Sender: TObject);
begin
  inherited;
  rgTipoItem.visible := cbItens.checked;
  cbEstoqueZero.Visible := cbItens.checked;
end;

end.

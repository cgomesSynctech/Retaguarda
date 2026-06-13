unit Rpt_GerencialSaidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor,
  TS_DateTimePicker, dxDBTLCl, dxGrClms, TS_PopupEdit, CheckLst,
  TS_CheckListBox, dxDBELib, TS_DBComboBox, dxDBEdtr, TS_LookupComboBox,
  XMLDoc, XMLIntf;

type
  TRptGerencialSaidas = class(TRptPadrao)
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaDESCRICAO1: TStringField;
    C_ConsultaMODELO: TStringField;
    C_ConsultaSERIENOTA: TStringField;
    C_ConsultaCPF_CNPJ: TStringField;
    C_ConsultaRAZAO: TStringField;
    C_ConsultaTOTAL: TFloatField;
    C_ConsultaBASECALCICMS: TFloatField;
    C_ConsultaVALORICMS: TFloatField;
    C_ConsultaBASECALCSUBST: TFloatField;
    C_ConsultaVALORICMSSUBST: TFloatField;
    C_ConsultaTOTALITENS: TFloatField;
    C_ConsultaFRETE: TFloatField;
    C_ConsultaOUTRASDESPESAS: TFloatField;
    C_ConsultaVALORIPI: TFloatField;
    C_ConsultaDESCONTO: TFloatField;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaDESCRICAO1: TdxDBGridMaskColumn;
    dbgConsultaMODELO: TdxDBGridMaskColumn;
    dbgConsultaSERIENOTA: TdxDBGridMaskColumn;
    dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaRAZAO: TdxDBGridMaskColumn;
    dbgConsultaTOTAL: TdxDBGridMaskColumn;
    dbgConsultaBASECALCICMS: TdxDBGridMaskColumn;
    dbgConsultaVALORICMS: TdxDBGridMaskColumn;
    dbgConsultaBASECALCSUBST: TdxDBGridMaskColumn;
    dbgConsultaVALORICMSSUBST: TdxDBGridMaskColumn;
    dbgConsultaTOTALITENS: TdxDBGridMaskColumn;
    dbgConsultaFRETE: TdxDBGridMaskColumn;
    dbgConsultaOUTRASDESPESAS: TdxDBGridMaskColumn;
    dbgConsultaVALORIPI: TdxDBGridMaskColumn;
    dbgConsultaDESCONTO: TdxDBGridMaskColumn;
    lbPeriodo: TTS_Label;
    lbA: TTS_Label;
    TS_Label3: TTS_Label;
    ppeTipoOperacao: TTS_PopupEdit;
    Q_TiposMovimentos: TIBQuery;
    Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    Q_TiposMovimentosDESCRICAO: TIBStringField;
    P_TiposMovimentos: TDataSetProvider;
    C_TiposMovimentos: TClientDataSet;
    C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentosDESCRICAO: TStringField;
    C_TipoMovimentoDS: TDataSource;
    clbTipoOperacao: TTS_CheckListBox;
    TS_DBComboBox1: TTS_DBComboBox;
    TS_LookupComboBox1: TTS_LookupComboBox;
    C_ConsultaTPAG: TStringField;
    C_ConsultaXML: TStringField;
    procedure btAtualizarClick(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure ppeTipoOperacaoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptGerencialSaidas: TRptGerencialSaidas;

implementation
uses DM_Projeto, funcoes;

{$R *.dfm}

function LimparCaracteresInvalidos(const S: string): string;
var
  I: Integer;
begin
  Result := S;
  for I := Length(Result) downto 1 do
    if not (Result[I] in [#32..#126, #128..#255, #9, #10, #13]) then
      Delete(Result, I, 1);
end;

procedure TRptGerencialSaidas.btAtualizarClick(Sender: TObject);
var sTipoOperacao: string;
  XMLDocument: TXMLDocument;
  RootNode, TPagNode: IXMLNode;
  BlobStream: TStream;
  XMLString: TStringStream;
  XMLTexto : string;
  ValorTPag: string;
  XMLContent: string;
  StartPos, EndPos: Integer;
begin
  inherited;
  with C_Consulta do begin
  XMLString := TStringStream.Create('');
  XMLDocument := TXMLDocument.Create(self);
    close;
    FetchParams;
    CommandText := 'select t.descricao, s.numero, s.data, sns.descricao, s.modelo, s.serienota, f.cpf_cnpj, f.razao, s.total, s.basecalcicms, '+
                   ' s.valoricms, s.basecalcsubst, s.valoricmssubst, s.totalitens, s.frete, s.outrasdespesas, s.valoripi, s.desconto, cast(r.xml as Varchar(32000)) as XML, r.Tpag '+
                   ' from saidas s inner join recibosnfe r on s.saida = r.idmestre '+
                   ' inner join saidasnfestatus sns on sns.saidanfestatus = r.statusnfe '+
                   ' inner join favorecidos f on f.favorecido = s.favorecido '+
                   ' inner join tiposmovimento t on t.tipomovimento = s.tipomovimento '+
                   ' where t.livrofiscal =''S'' and s.data >= :DataI and s.data <= :DataF ';


  sTipoOperacao := clbTipoOperacao.Selecionados;
  if (sTipoOperacao <> '') then
    CommandText := CommandText + ' and s.tipomovimento in ('+sTipoOperacao+')';

    params.parambyname('DataI').asDate := DataI.Date;
    params.parambyname('DataF').asDate := DataF.Date;
    open;

   ///
  //    while not C_Consulta.Eof do begin

 //     BlobStream := C_Consulta.CreateBlobStream(C_Consulta.FieldByName('xml') as TBlobField, bmRead);

  //    XMLDocument.LoadFromStream(BlobStream);

  //    with XMLDocument.DocumentElement do
   //     begin
   //             ValorTPag := ChildNodes['tpag'].Text;
  //      end;


   //   end;



      while not C_Consulta.Eof do begin
	       //	BlobStream := C_Consulta.CreateBlobStream(C_Consulta.FieldByName('xml') as TBlobField, bmRead);
     try
    //    XMLString.CopyFrom(BlobStream, BlobStream.Size);

        XMLString.Position := 0;

        XMLContent := XMLString.DataString;

        // Certificar que o XML está bem formado
        StartPos := Pos('<tpag>', C_ConsultaXML.Value);
        EndPos := Pos('</tpag>', C_ConsultaXML.Value);

        if (StartPos > 0) and (EndPos > StartPos) then
        begin
          // Extrair o valor entre as tags <tpag> e </tpag>
          ValorTPag := Copy(XMLContent, StartPos + Length('<tpag>'), EndPos - StartPos - Length('<tpag>'));
                    // Adicionar o valor ao resultado final

//          Result := Result + ValorTPag + '; ';

          // Atualizar o campo destino (opcional)
          C_Consulta.Edit;
          C_Consulta.FieldByName('tpag').AsString := ValorTPag;
          C_Consulta.Post;
        end;

     finally
                BlobStream.Free;
                //XMLString.Clear;
     end;

       C_Consulta.Next;
    end;

   //





     with dbgConsulta do begin
  	TS_ReportFilter.Clear;
   	TS_ReportFilter.Add(lbPeriodo.Caption+' '+DataI.Text+lbA.Caption+DataF.Text);
     end;

    end;

end;

procedure TRptGerencialSaidas.DataFDateChange(Sender: TObject);
begin
  inherited;
//	Atualizar;
end;


procedure TRptGerencialSaidas.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  clbTipoOperacao.SetDataSet(C_TiposMovimentos);
  clbTipoOperacao.SetSelecionados('1,7,700');
  DataI.OnDateChange := nil;
	if DataI.GetEditingText = '' then DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
  DataI.OnDateChange := DataFDateChange;
  DataF.OnDateChange := nil;
  if DataF.GetEditingText = '' then DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
  DataF.OnDateChange := DataFDateChange;
//  Atualizar;
end;

procedure TRptGerencialSaidas.ppeTipoOperacaoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbTipoOperacao.Selecionados( true );
  Accept := true;
end;

end.

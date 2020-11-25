unit Dlg_ConsultaOS;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxEdLib, dxDBELib, TS_DBMemo,
    dxDBEdtr, TS_DBLookupComboBox, dxCntner, dxEditor, TS_DBButtonEdit,
    TS_DBEditFavorecido, FormsComponent, Placemnt, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, DB, Provider, DBClient, IBCustomDataSet,
    IBQuery, TS_LookupComboBox, TS_ButtonEdit, TS_EditFavorecido, dxTL,
    dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Edit, dxDBTLCl, dxGrClms;

type
    TDlgConsultaOS = class(TFrmModeloCadastros)
        lbNumeroOS: TTS_Label;
        lbCliente: TTS_Label;
        Q_ConsultaOS: TIBQuery;
        C_ConsultaOS: TClientDataSet;
        P_ConsultaOS: TDataSetProvider;
        C_ConsultaOSDS: TDataSource;
        C_StatusServicoDs: TDataSource;
        C_StatusServico: TClientDataSet;
        C_StatusServicoSTATUSSERVICO: TIntegerField;
        C_StatusServicoDESCRICAO: TStringField;
        P_StatusServico: TDataSetProvider;
        Q_StatusServico: TIBQuery;
        Q_LocalizacaoEquipamento: TIBQuery;
        P_LocalizacaoEquipamento: TDataSetProvider;
        C_LocalizacaoEquipamento: TClientDataSet;
        C_LocalizacaoEquipamentoDS: TDataSource;
        C_LocalizacaoEquipamentoLOCALIZACAOEQUIPAMENTO: TIntegerField;
        C_LocalizacaoEquipamentoDESCRICAO: TStringField;
        btPesquisar: TTS_SpeedButton;
        Q_Cliente: TIBQuery;
        P_Cliente: TDataSetProvider;
        C_Cliente: TClientDataSet;
        C_ClienteFAVORECIDO: TIntegerField;
        C_ClienteNOME: TStringField;
        C_ClienteDS: TDataSource;
        dbgConsultaOS: TTS_QDBGrid;
        dbgconsultaNumero: TdxDBGridMaskColumn;
        dbgconsultaCliente: TdxDBGridMaskColumn;
        dbgconsultaCpfCnpj: TdxDBGridMaskColumn;
        dbgconsultaEquipamento: TdxDBGridMaskColumn;
        dbgconsultaStatus: TdxDBGridMaskColumn;
        dbgconsultaLocal: TdxDBGridMaskColumn;
        dbgconsultaObservacao: TdxDBGridMaskColumn;
        C_ConsultaOSSERVICO: TIntegerField;
        C_ConsultaOSOSNUMERO: TStringField;
        C_ConsultaOSFAVORECIDO: TIntegerField;
        C_ConsultaOSCLIENTE: TStringField;
        C_ConsultaOSCPF_CNPJ: TStringField;
        C_ConsultaOSEQUIPAMENTO: TStringField;
        C_ConsultaOSSTATUSSERVICO: TStringField;
        C_ConsultaOSLOCALIZACAOEQUIPAMENTO: TStringField;
        C_ConsultaOSOBSERVACAO: TStringField;
        dfNumeroOS: TTS_Edit;
        cmbStatus: TTS_LookupComboBox;
        TS_Label1: TTS_Label;
    btOrcamento: TTS_SpeedButton;
    lbCpf_CNPJ: TTS_Label;
    dfCpf_CNPJ: TTS_Edit;
    dfCliente: TTS_EditFavorecido;
    C_ConsultaOSDATAENTRADA: TDateField;
    dbgconsultaDataEntrada: TdxDBGridDateColumn;
        procedure btPesquisarClick(Sender: TObject);
        procedure cmbStatusChange(Sender: TObject);
        procedure Pesquisar;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
    procedure btOrcamentoClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DlgConsultaOS: TDlgConsultaOS;

implementation

{$R *.dfm}

uses DM_Projeto, Rpt_Tecnica;

procedure TDlgConsultaOS.btPesquisarClick(Sender: TObject);
begin
    inherited;
    Pesquisar;
end;

procedure TDlgConsultaOS.Pesquisar;
begin
    inherited;
    Q_ConsultaOS.Close;
    C_ConsultaOS.Close;
    Q_ConsultaOS.SQL.Text := 'select se.servico, se.osnumero, se.dataentrada, fa.favorecido, fa.nome as CLIENTE, fa.cpf_cnpj, te.descricao as EQUIPAMENTO, ' +
        'ss.descricao as STATUSSERVICO, le.descricao as LOCALIZACAOEQUIPAMENTO, se.observacao ' +
        'from servicos se left join favorecidos fa on se.cliente = fa.favorecido ' +
        'inner join clientesequipamentos ce on se.equipamento = ce.equipamento ' +
        'inner join modelos mo on ce.modelo = mo.modelo ' +
        'inner join tipoequipamentos te on mo.tipoequipamento = te.tipoequipamento ' +
        'inner join statusservicos ss on se.statusservico = ss.statusservico ' +
        'inner join localizacaoequipamento le on se.localizacao = le.localizacaoequipamento ' +
        'where se.servico is not null ';

    if dfNumeroOS.Text <> '' then
        Q_ConsultaOS.SQL.Text := Q_ConsultaOS.SQL.Text + ' and se.osnumero like ''%' + dfNumeroOS.Text + '%''';

    if dfCliente.Text <> '' then
        Q_ConsultaOS.SQL.Text := Q_ConsultaOS.SQL.Text + ' and se.cliente = ' + InttoStr(Dmprojeto.C_LocalizarFavFAVORECIDO.value);

    if dfCpf_CNPJ.Text <> '' then
        Q_ConsultaOS.SQL.Text := Q_ConsultaOS.SQL.Text + ' and fa.cpf_cnpj like ''%' + dfCpf_CNPJ.Text + '%''';

    if cmbStatus.LookupKeyValue <> null then
        Q_ConsultaOS.SQL.Text := Q_ConsultaOS.SQL.Text + ' and ss.statusservico = ' + IntToStr(cmbStatus.LookupKeyValue);

    Q_ConsultaOS.SQL.Text := Q_ConsultaOS.SQL.Text + ' order by se.servico asc';

    C_ConsultaOS.ProviderName := 'P_ConsultaOS';
    C_ConsultaOS.FetchParams;
    C_ConsultaOS.Open;
end;

procedure TDlgConsultaOS.cmbStatusChange(Sender: TObject);
begin
    inherited;
    //Pesquisar;
end;

procedure TDlgConsultaOS.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    DlgConsultaOS := Self;
    ActiveControl := dfNumeroOS;
    C_StatusServico.Open;
end;

procedure TDlgConsultaOS.btLimparClick(Sender: TObject);
begin
    inherited;
    dfNumeroOS.Text := '';
    dfCliente.Text := '';
    dfCpf_CNPJ.Text := '';
    C_LocalizacaoEquipamento.Close;
    C_StatusServico.Close;
    C_StatusServico.Open;
    C_ConsultaOS.Close;  
end;

procedure TDlgConsultaOS.btOrcamentoClick(Sender: TObject);
begin
  inherited;
  RptTecnica := TRptTecnica.Create(self);
  RptTecnica.ImprimirOrcamento(C_ConsultaOSSERVICO.AsInteger);
  RptTecnica.Release;
  RptTecnica := nil;
end;

end.


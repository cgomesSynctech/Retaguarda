unit Frm_EntradasMecanica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, DBText, TS_DBTextEffect,
  dxEditor, dxEdLib, dxDBELib, TS_DBButtonEdit, DBCtrls, TS_DBText,
  TS_DBEdit, TS_DBEditDate, TS_DBMemo, TS_DBEditItem, dxDBEdtr,
  TS_DBLookupComboBox, TS_DBEditFavorecido, TS_DBLookupTipoFav, dxDBTLCl,
  dxGrClms, db, ppDB, ppCtrls, ppPrnabl, ppClass, ppStrtch, ppRegion,
  ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppRichTx,
  ppMemo, TS_DBEditEquipamento, TS_PopupEdit, TS_DBTimeEdit, TransEff,
  teTimed, teDrip, Mask, IBCustomDataSet, IBQuery, TS_DBCheckBox;

type
  TFrmEntradasMecanica = class(TFrmPadrao)
    pnEquipamento: TTS_Panel;
    dfDataEntrada: TTS_DBEditDate;
    lbDtEntrada: TTS_Label;
    pnDefeito: TTS_Panel;
    TS_Label4: TTS_Label;
    cmbStatus: TTS_DBLookupComboBox;
    cmbTipo: TTS_DBLookupComboBox;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label10: TTS_Label;
    dfDescricaoComp: TTS_DBMemo;
    pnOSNumero: TTS_Panel;
    TS_DBEdit2: TTS_DBEdit;
    lbOSNum: TTS_Label;
    dfOSNumero: TTS_DBEdit;
    cmbTipoFav: TTS_DBLookupTipoFav;
    dfAcessorios: TTS_DBMemo;
    TS_Label11: TTS_Label;
    TS_Label12: TTS_Label;
    GridlkpStatus: TdxDBGridLookupColumn;
    GridlkpTipoServico: TdxDBGridLookupColumn;
    GridSERVICO: TdxDBGridMaskColumn;
    GridOSNUMERO: TdxDBGridMaskColumn;
    GridCLIENTE: TdxDBGridMaskColumn;
    GridDATAENTRADA: TdxDBGridDateColumn;
    GridHORAENTRADA: TdxDBGridTimeColumn;
    GridEQUIPAMENTO: TdxDBGridMaskColumn;
    GridPARTESAGRAGADAS: TdxDBGridMaskColumn;
    GridDEFEITOALEGADO: TdxDBGridMaskColumn;
    GridDEFEITOENCONTRADO: TdxDBGridMaskColumn;
    GridOBSERVACAO: TdxDBGridMaskColumn;
    GridDATASAIDA: TdxDBGridDateColumn;
    GridHORASAIDA: TdxDBGridTimeColumn;
    GridFUNCENTRADA: TdxDBGridMaskColumn;
    GridTECNICO: TdxDBGridMaskColumn;
    GridFUNCSAIDA: TdxDBGridMaskColumn;
    GridSTATUSSERVICO: TdxDBGridMaskColumn;
    GridLOCALIZACAO: TdxDBGridMaskColumn;
    GridNUMEROSERIE: TdxDBGridMaskColumn;
    GridTIPOEQUIPAMENTO: TdxDBGridMaskColumn;
    GridMODELO: TdxDBGridMaskColumn;
    GridCARACTERISTICA: TdxDBGridMaskColumn;
    GridlkpMarca: TdxDBGridLookupColumn;
    GridlpkModelo: TdxDBGridLookupColumn;
    GridlkpTipoEquipamento: TdxDBGridLookupColumn;
    GridlkpFabricante: TdxDBGridLookupColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridQ_ServicosDet: TdxDBGridColumn;
    GridlkpLocalizacao: TdxDBGridLookupColumn;
    btImprimir: TTS_SpeedButton;
    lbFaturado: TdxfLabel;
    pnFinalizacao: TTS_Panel;
    TS_Label2: TTS_Label;
    memoDefEncontr: TTS_DBMemo;
    TS_Label3: TTS_Label;
    edDataSaida: TTS_DBEditDate;
    TS_Label8: TTS_Label;
    edHoraSaida: TTS_DBTimeEdit;
    TS_Label9: TTS_Label;
    memoOBS: TTS_DBMemo;
    TS_Label13: TTS_Label;
    lbTecnico: TTS_DBTextEffect;
    edFaturado: TDBEdit;
    Transition: TTransitionList;
    T_Status: TDripTransition;
    edStatus: TDBEdit;
    edOrcamento: TDBEdit;
    btFaturar: TTS_SpeedButton;
    Q_SQL: TIBQuery;
    dfNumeroSerial: TTS_DBLookupComboBox;
    edChaveCliente: TDBEdit;
    TS_Label1: TTS_Label;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    rb_ava_sim: TRadioButton;
    rb_ava_nao: TRadioButton;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    rb_ace_sim: TRadioButton;
    rb_ace_nao: TRadioButton;
    TS_Label14: TTS_Label;
    TS_Label15: TTS_Label;
    TS_acessorioObs: TTS_DBMemo;
    rb_caixapapelao: TRadioButton;
    rb_sacoplastico: TRadioButton;
    rb_semembalagem: TRadioButton;
    cb_arranhadoriscado: TCheckBox;
    cb_manchado: TCheckBox;
    cb_sujo: TCheckBox;
    cb_caboeletrico: TCheckBox;
    cb_quebrado: TCheckBox;
    TS_DBMemo1: TTS_DBMemo;
    Label1: TLabel;
    TS_Label16: TTS_Label;
    TS_obsavaria: TTS_DBMemo;
    dfCliente: TTS_DBEditFavorecido;
    GroupBox5: TGroupBox;
    rb_garantiafabrica: TRadioButton;
    rb_foragarantia: TRadioButton;
    rb_retorno: TRadioButton;
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure dfOSNumeroDblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure ppedSaidaCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure edFaturadoChange(Sender: TObject);
    procedure edStatusChange(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure btComando2Click(Sender: TObject);
    procedure FormComponentBeforeSave(Sender: TObject; var bSkip: Boolean);
    procedure dfClienteANTSelecionou(Sender: TObject);
    procedure btFaturarClick(Sender: TObject);
    procedure edChaveClienteChange(Sender: TObject);
    procedure TS_Label7SetParametrosForm(Sender: TObject);
    procedure TS_Label11Click(Sender: TObject);
    procedure UltimoGravado1Click(Sender: TObject);
    procedure btProxRegClick(Sender: TObject);
    procedure btUltimoRegClick(Sender: TObject);
    procedure btPrevRegClick(Sender: TObject);
    procedure btPrimeiroRegClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure rb_ava_simClick(Sender: TObject);
    procedure rb_ava_naoClick(Sender: TObject);
    procedure rb_ace_simClick(Sender: TObject);
    procedure rb_ace_naoClick(Sender: TObject);
    procedure TS_Label7Click(Sender: TObject);
    procedure rb_garantiafabricaClick(Sender: TObject);
    procedure rb_foragarantiaClick(Sender: TObject);
    procedure rb_retornoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dfClienteExit(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure CamposSomenteConsulta();
    procedure AtivarCampos();
    procedure DesmarcarChecksBox();
  private
    { Private declarations }
    sOS:String;
    function FaturarServico( nID : integer ): Integer;
    procedure MudaMaquinas;
    procedure AtualizaCampos;
    procedure SalvarCampos;
  public
      camposObrigatorios : Integer;
      osAFaturar : Boolean;
    { Public declarations }
  end;

var
  FrmEntradasMecanica: TFrmEntradasMecanica;
  VendaPedido : integer ;

implementation

uses DM_EntradasMecanica, DM_Projeto, Dlg_Acessorios,
  Frm_EquipamentoSituacao, Funcoes, Rpt_Tecnica, Dlg_FinalizarChamado,
  DM_Financeiro, Dlg_VendedorVMR, TDM_Projeto, Form_Padrao;

{$R *.dfm}

procedure TFrmEntradasMecanica.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  FrmEntradasMecanica:=Self;
  sOS := '';
end;

procedure TFrmEntradasMecanica.btComando1Click(Sender: TObject);
var
  nSaida: Integer;
begin
  inherited;
  
  if DMEntradasMecanica.C_TabelaSTATUSSERVICO.Value = 11 then
  begin
        try
        if Application.MessageBox(pchar('Confirma alterar o Status de "AGUARDANDO ACERTO" para "EQUIPAMENTO ENTREGUE ?"'), 'Confirmar Status', MB_YESNO+MB_ICONINFORMATION) = IDYES then
        begin
                DMEntradasMecanica.C_TabelaSTATUSSERVICO.Value := 60;
                
                DMProjeto.Q_Auxiliar.Close;
                DMProjeto.Q_Auxiliar.SQL.Text := 'UPDATE SERVICOS SET STATUSSERVICO = :STATUSSERVICO WHERE (SERVICO = :SERVICO)';
                DMProjeto.Q_Auxiliar.ParamByName('STATUSSERVICO').AsInteger := DMEntradasMecanica.C_TabelaSTATUSSERVICO.Value;
                DMProjeto.Q_Auxiliar.ParamByName('SERVICO').AsInteger := DMEntradasMecanica.C_TabelaSERVICO.AsInteger;
                DMProjeto.Q_Auxiliar.ExecSQL;
                DMprojeto.DB_Projeto.DefaultTransaction.Commit;

                AtivarCampos;
                CamposSomenteConsulta;
                Exit;
        end
        else
                Exit;
        except
                Application.MessageBox('Erro ao tentar alterar Status da Ordem de Serviço', 'Aviso', MB_OK+MB_ICONERROR);
                Exit;
        end;

  end;

  if ((DMEntradasMecanica.C_TabelaSTATUSSERVICO.Value = 21) AND (DMEntradasMecanica.C_TabelaGARANTIAFABRICA.Value = 'S' ))  then
  begin
        try
        if Application.MessageBox(pchar('Confirma alterar o Status para "EQUIPAMENTO ENTREGUE ?"'), 'Confirmar Status', MB_YESNO+MB_ICONINFORMATION) = IDYES then
        begin
                DMEntradasMecanica.C_TabelaSTATUSSERVICO.Value := 60;

                DMProjeto.Q_Auxiliar.Close;
                DMProjeto.Q_Auxiliar.SQL.Text := 'UPDATE SERVICOS SET STATUSSERVICO = :STATUSSERVICO WHERE (SERVICO = :SERVICO)';
                DMProjeto.Q_Auxiliar.ParamByName('STATUSSERVICO').AsInteger := DMEntradasMecanica.C_TabelaSTATUSSERVICO.Value;
                DMProjeto.Q_Auxiliar.ParamByName('SERVICO').AsInteger := DMEntradasMecanica.C_TabelaSERVICO.AsInteger;
                DMProjeto.Q_Auxiliar.ExecSQL;
                DMprojeto.DB_Projeto.DefaultTransaction.Commit;

                AtivarCampos;
                CamposSomenteConsulta;
                Exit;
        end
        else
                Exit;
        except
                Application.MessageBox('Erro ao tentar alterar Status da Ordem de Serviço', 'Aviso', MB_OK+MB_ICONERROR);
                Exit;
        end;

  end;


  osAFaturar := false;
  if not (DMEntradasMecanica.C_Tabela.State in [dsEdit,dsInsert]) then
    DMEntradasMecanica.C_Tabela.Edit;
        DMEntradasMecanica.C_Tabela.UpdateRecord;
  if  (DMEntradasMecanica.C_TabelaSTATUSSERVICO.Value <> 60) then
  begin
  DMEntradasMecanica.C_Tabela.Post;
  DMEntradasMecanica.Gravar;
  RptTecnica := TRptTecnica.Create(Self);
  //RptTecnica.ImprimirEntregaEquipamento(DMEntradasMecanica.C_TabelaSERVICO.AsInteger,
  //                                      StrToInt(DMProjeto.Parametro('ViaEntregaEquipamento')) );
  //RptTecnica.Release;
  //RptTecnica := nil;
  if ( DlgMsg.ShowMsg(8024) = 100) then begin
    nSaida := FaturarServico( DMEntradasMecanica.C_TabelaSERVICO.AsInteger);

    if osAFaturar then begin

      DMProjeto.SetParametrosForm( [null, DMEntradasMecanica.C_TabelaCLIENTE.AsInteger, '', nSaida] );

      if Application.MessageBox('Para colocar o Status "EQUIPAMENTO ENTREGUE" clique em "SIM". Para colocar o Status "AGUARDANDO ACERTO" clique em "NÃO".', 'Confirmar Status', MB_YESNO+MB_ICONINFORMATION) = IDYES then
        DMEntradasMecanica.C_TabelaSTATUSSERVICO.Value := 60
      else
        DMEntradasMecanica.C_TabelaSTATUSSERVICO.Value := 11;

//      if (VendaPedido <> 2) then
         DMProjeto.CriarForm('DlgDepositos', Self, true);

      RptTecnica := TRptTecnica.Create(Self);
      if (DMProjeto.Parametro('ImprimeEntrega') = 'S') then
        RptTecnica.ImprimirComprovanteEntrega( DMEntradasMecanica.C_TabelaSERVICO.AsInteger );

      RptTecnica.Release;
      RptTecnica := nil;

      DMEntradasMecanica.C_TabelaDATASAIDA.Value := DMProjeto.getDataServidor;
      DMEntradasMecanica.C_TabelaHORASAIDA.Value := DMProjeto.GetTimeServidor;

      DMProjeto.Q_Auxiliar.Close;
      DMProjeto.Q_Auxiliar.SQL.Text := 'UPDATE SERVICOS SET  STATUSSERVICO = :STATUSSERVICO, DATASAIDA = :DATASAIDA,HORASAIDA = :HORASAIDA WHERE (SERVICO = :SERVICO);';
      DMProjeto.Q_Auxiliar.ParamByName('STATUSSERVICO').AsInteger := DMEntradasMecanica.C_TabelaSTATUSSERVICO.Value;
      DMProjeto.Q_Auxiliar.ParamByName('SERVICO').AsInteger := DMEntradasMecanica.C_TabelaSERVICO.AsInteger;
      DMProjeto.Q_Auxiliar.ParamByName('DATASAIDA').AsDate := DMProjeto.getDataServidor;
      DMProjeto.Q_Auxiliar.ParamByName('HORASAIDA').AsTime := DMProjeto.GetTimeServidor;
      DMProjeto.Q_Auxiliar.ExecSQL;

      AtivarCampos;
      CamposSomenteConsulta;
    end else
         DlgMsg.ShowMsg(50,[pChar('O serviço não foi faturado')]);
    end;
  end else begin
   DlgMsg.ShowMsg(50,[pChar('O Produto já foi entregue')]);
  end;
end;

procedure TFrmEntradasMecanica.dfOSNumeroDblClick(Sender: TObject);
begin
  inherited;
  DMEntradasMecanica.PegarOSNumero;
end;

procedure TFrmEntradasMecanica.btImprimirClick(Sender: TObject);
begin
  inherited;
  RptTecnica := TRptTecnica.Create(Self);
  RptTecnica.ImprimirEntradaEquipamento( DMEntradasMecanica.C_TabelaSERVICO.AsInteger );
  RptTecnica.Release;
  RptTecnica := nil;
end;

procedure TFrmEntradasMecanica.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
//  if (UpperCase(LastDataObject.TableName) = 'MODELOS') and (ActiveControl = dfEquipamento) then
//    dfEquipamento.ID := LastDataObject.ObjectKey;
end;

procedure TFrmEntradasMecanica.ppedSaidaCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := 'Clique aqui para visualizar o resultado do serviço.';
end;

procedure TFrmEntradasMecanica.edFaturadoChange(Sender: TObject);
begin
  inherited;
  if DMEntradasMecanica.C_TabelaFATURADO.Value = 'S' then begin
    btFaturar.Visible := False;
    T_Status.Prepare(lbFaturado.Parent, lbFaturado.BoundsRect);
    try
        lbFaturado.Visible := true;
        if T_Status.Prepared then
            T_Status.Execute;
    finally
        T_Status.unPrepare;
    end;
  end
  else begin
    lbFaturado.Visible := False;
    btFaturar.Visible := DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger = 60;
  end;
end;

procedure TFrmEntradasMecanica.edStatusChange(Sender: TObject);
begin
  inherited;
  if DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger in [50,60] then begin
    cmbStatus.Color := $00EBD9D8;
    cmbStatus.Font.Color := clRed;
//    ppedSaida.Visible := True;
  end
  else begin
    cmbStatus.Color := clWindow;
    cmbStatus.Font.Color := clWindowText;
   // ppedSaida.Visible := False;
  end;
  btComando2.Visible := DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger = 20;
  btComando1.Visible := (DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger <> 60) and
                        DMEntradasMecanica.bAlteracao;
  btGravar.Visible   := (DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger < 50);
//  and                        DMEntradasMecanica.bAlteracao;
  GravarDados.Visible   := (DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger <> 60) and
                        DMEntradasMecanica.bAlteracao;
  btFaturar.Visible  := (DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger = 60) and
                       (DMEntradasMecanica.C_TabelaFATURADO.AsString <> 'S');
end;

procedure TFrmEntradasMecanica.FormComponentEstado_Inicial(
  Sender: TObject; var bSkip: Boolean);
begin
  inherited;
  btImprimir.Visible := False;
  btComando2.Visible := False;
  cmbStatus.SetReadOnly(True);
  btComando1.Visible := (DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger <> 60) and
                        DMEntradasMecanica.bAlteracao;
  btGravar.Visible   := (DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger < 50) ;
//  and                        DMEntradasMecanica.bAlteracao;
  GravarDados.Visible   := (DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger <> 60) and
                        DMEntradasMecanica.bAlteracao;
end;

procedure TFrmEntradasMecanica.FormComponentEstado_Navegacao(
  Sender: TObject; var bSkip: Boolean);
begin
  inherited;
  btImprimir.Visible := True;
  btComando2.Visible := True;
  cmbStatus.SetReadOnly(True);

  btComando1.Visible := (DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger <> 60) and
                        DMEntradasMecanica.bAlteracao;
  btGravar.Visible   := (DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger < 50);
  // and                        DMEntradasMecanica.bAlteracao;
  GravarDados.Visible   := (DMEntradasMecanica.C_TabelaSTATUSSERVICO.AsInteger <> 60) and
                        DMEntradasMecanica.bAlteracao;                        
end;

procedure TFrmEntradasMecanica.btComando2Click(Sender: TObject);
begin
  inherited;
  RptTecnica := TRptTecnica.Create(Self);
  RptTecnica.ImprimirOrcamento( DMEntradasMecanica.C_TabelaSERVICO.AsInteger );
  RptTecnica.Release;
  RptTecnica := nil;
end;

procedure TFrmEntradasMecanica.FormComponentBeforeSave(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if not dfCliente.ID > 0 then begin
    DlgMsg.ShowMsg( 513, ['Cliente'] );
    bSkip := True;
  end;
end;

procedure TFrmEntradasMecanica.dfClienteANTSelecionou(Sender: TObject);
var sFinal : string;
    dEnt, dSai, hEnt, hSai : TDateTime;
begin
  inherited;
  with DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'select count(*) from chamados where cliente = :cli and status = ''A'' ';
    ParamByName('cli').AsInteger := dfCliente.ID;
    Open;
    if (Fields[0].AsInteger > 0) and (DlgMsg.ShowMsg(8023) = 100) then begin
      sFinal := '';
      DlgFinalizarChamado := TDlgFinalizarChamado.Create(Self);
      DlgFinalizarChamado.sCliente := DMEntradasMecanica.C_TabelaNOME.AsString;
      if DlgFinalizarChamado.ShowModal = mrOK then begin
        sFinal := DlgFinalizarChamado.sFinal;
        dEnt :=  DlgFinalizarChamado.dEntrada;
        dSai := DlgFinalizarChamado.dSaida;
        hEnt :=   DlgFinalizarChamado.hEntrada;
        hSai := DlgFinalizarChamado.hSaida;
      end;
      DlgFinalizarChamado.Release;
      DlgFinalizarChamado := nil;
      if sFinal <> '' then begin
        try
          Close;
          SQL.Text := 'update chamados set defeitoencontrado = :def, ' +
                      'dataentrada = :dte, horaentrada = :hre, datasaida = :dts, ' +
                      'horasaida = :hsai, status = ''F'' ' +
                      'where cliente = :cli and status = ''A'' ';
          ParamByName('def').AsString := sFinal;
          ParamByName('dte').AsDate := dEnt;
          ParamByName('hre').AsTime := hEnt;
          ParamByName('dts').AsDate := dSai;
          ParamByName('hsai').AsTime := hSai;
          ParamByName('cli').AsInteger := dfCliente.ID;
          ExecSQL;
          if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
        except
          on e:exception do begin
            DlgMsg.ShowMsg( 50, [e.message] );
          if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
          end;
        end;
      end;
    end;
    Close;
  end;
  MudaMaquinas;
end;

procedure TFrmEntradasMecanica.btFaturarClick(Sender: TObject);
begin
  inherited;
  if ( DlgMsg.ShowMsg(8024) = 100) then
    FaturarServico( DMEntradasMecanica.C_TabelaSERVICO.AsInteger );
end;

function TFrmEntradasMecanica.FaturarServico( nID : integer ): Integer;
var nTotal : currency;
    itens, sChaves, s, Num : string;
    i, nQtd, IdMestre, tipofaturamento : integer;
begin
  try
    // Falta perguntar se deseja faturar...
    with DMProjeto.Q_SQL do begin
      Close;
      SQL.Text := 'select sum(quantidade * valor) as total from servicosdet ' +
                  'where servico = ' + IntToStr( nID );
      Open;
      nTotal := Fields[0].AsCurrency;
      Close;
    end;
    if (nTotal <= 0) then begin
      DlgMsg.ShowMsg( 8025 );
      Exit;
    end;
    sChaves := '';
    with DMProjeto.Q_SQL do begin
      Close;
      SQL.Text := 'select item, descricaoitem, quantidade, valor, unidade ' +
                  'from servicosdet ' +
                  'where servico = ' + IntToStr( nID );
      Open;
      First;
      while not EOF do begin
        sChaves := sChaves + Fields[0].AsString + '|' + Fields[1].AsString + '|' +
                   Fields[2].AsString + '|' + Fields[3].AsString + '|' + Fields[4].AsString + '€';
        Next;
      end;
      Close;
    end;
    Delete( sChaves, Length(sChaves) , 1);
    itens := '';
    nQtd := ContaStrings( sChaves, '€' );
    for i := 1 to nQtd do begin
      s := SeparaStrings( sChaves, '€' , i );
      Q_SQL.Close;
      Q_SQL.SQL.Text := 'select tipoitem, situacaoecf, reducaocst, aliqicms, ' +
                        'ipivenda, customedio, custocontabil, cst, tva, conta_venda, fatorundvenda , coalesce( idtribfederal,0) ' +
                        'from itens ' +
                        'where item = ' + SeparaStrings( s, '|', 1 );
      Q_SQL.Open;
      itens := itens + SeparaStrings( s, '|', 1 );
      itens := itens + ';' + SeparaStrings( s, '|', 2 );
      itens := itens + ';' + SeparaStrings( s, '|', 3 );
      itens := itens + ';' + SeparaStrings( s, '|', 4 );
      itens := itens + ';' + SeparaStrings( s, '|', 5 );
      itens := itens + ';' + Q_SQL.Fields[0].AsString;
      itens := itens + ';' + '0';
      itens := itens + ';' + Q_SQL.Fields[1].AsString;
      itens := itens + ';' + Q_SQL.Fields[2].AsString;
      itens := itens + ';' + Q_SQL.Fields[3].AsString;
      itens := itens + ';' + Q_SQL.Fields[4].AsString;
      itens := itens + ';' + Q_SQL.Fields[5].AsString;
      itens := itens + ';' + Q_SQL.Fields[6].AsString;
      itens := itens + ';' + Q_SQL.Fields[7].AsString;
      itens := itens + ';' + Q_SQL.Fields[8].AsString;
      itens := itens + ';' + Q_SQL.Fields[9].AsString;
      itens := itens + ';' + Q_SQL.Fields[10].AsString;
      itens := itens + ';' + Q_SQL.Fields[11].AsString + '||';
      Q_SQL.Close;
    end;
    if Copy(itens,Length(itens)-2,2) = '||' then Delete(itens,Length(itens)-2,2);
    Num := '';

    if (DMProjeto.Parametro('MovimentoFaturamento') <> 'E') then begin
    tipofaturamento := DlgMsg.ShowMsg(8086);
    if tipofaturamento = 100 then
    IdMestre := DMProjeto.GerarSaida( True,Num, DMEntradasMecanica.C_TabelaCLIENTE.AsInteger, '',
                                      DMProjeto.dDataSistema,
                                      0, 23,itens, DMFinanceiro.nContaPadrao,0,
                                      'Faturamento da Ordem de Serviço Nº ' + DMEntradasMecanica.C_TabelaOSNUMERO.AsString, 0,False,1)
    else if tipofaturamento = 200 then begin
       IdMestre := DMProjeto.GerarSaida( True,Num, DMEntradasMecanica.C_TabelaCLIENTE.AsInteger, '',
                                         DMProjeto.dDataSistema,
                                         0, 2,itens, DMFinanceiro.nContaPadrao,0,
                                         'Faturamento da Ordem de Serviço Nº ' + DMEntradasMecanica.C_TabelaOSNUMERO.AsString, 0,False,1);
       VendaPedido := 2;
     end;
     end
     else
     begin
       IdMestre := DMProjeto.GerarSaida( True,Num, DMEntradasMecanica.C_TabelaCLIENTE.AsInteger, '',
                                      DMProjeto.dDataSistema,
                                      0, 23,itens, DMFinanceiro.nContaPadrao,0,
                                      'Faturamento da Ordem de Serviço Nº ' + DMEntradasMecanica.C_TabelaOSNUMERO.AsString, 0,False,1)
     end ;

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    result := IDMestre;
    if IdMestre > 0 then begin
      if not (DMEntradasMecanica.C_Tabela.State in [dsEdit,dsInsert]) then
        DMEntradasMecanica.C_Tabela.Edit;
      DMEntradasMecanica.C_TabelaFATURADO.Value := 'S';
      DMEntradasMecanica.C_Tabela.Post;
      osAFaturar := true;
      DMEntradasMecanica.Gravar;
    end;
  except
    on e:exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DlgMsg.ShowMsg(50, [e.message]);
    end;
  end;
end;

procedure TFrmEntradasMecanica.MudaMaquinas;
begin
  with DMEntradasMecanica do begin
    C_Equip.Close;
    Q_Equip.ParamByName('CLIENTE').AsInteger := C_TabelaCLIENTE.AsInteger;
    C_Equip.Open;
  end;
end;


procedure TFrmEntradasMecanica.edChaveClienteChange(Sender: TObject);
begin
  inherited;
  MudaMaquinas;
end;

procedure TFrmEntradasMecanica.TS_Label7SetParametrosForm(
  Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([dfCliente.Id, 1]);
end;

procedure TFrmEntradasMecanica.TS_Label11Click(Sender: TObject);
begin
  inherited;
  DlgAcessorios := TDlgAcessorios.Create(self);
  DlgAcessorios.ShowModal;
  DlgAcessorios.Release;
  DlgAcessorios := nil;
end;

procedure TFrmEntradasMecanica.UltimoGravado1Click(Sender: TObject);
begin
  inherited;
  AtualizaCampos;

  AtivarCampos;

  CamposSomenteConsulta;
end;

procedure TFrmEntradasMecanica.SalvarCampos;
begin
//Paulo 06072012

  if not (DMEntradasMecanica.C_Tabela.State in [dsInsert,dsEdit]) then
        DMEntradasMecanica.C_Tabela.Edit;

  if cb_arranhadoriscado.Checked then
     DMEntradasMecanica.C_TabelaESTADOPRODARRANHADO.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaESTADOPRODARRANHADO.Value := 'N';

  if cb_manchado.Checked  then
     DMEntradasMecanica.C_TabelaESTADOPRODMANCHADO.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaESTADOPRODMANCHADO.Value := 'N';

  if cb_sujo.Checked  then
     DMEntradasMecanica.C_TabelaESTADOPRODSUJO.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaESTADOPRODSUJO.Value := 'N';

  if cb_caboeletrico.Checked then
     DMEntradasMecanica.C_TabelaESTADOPRODCABOELETRICO.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaESTADOPRODCABOELETRICO.Value := 'N';

  if cb_caboeletrico.Checked then
     DMEntradasMecanica.C_TabelaESTADOPRODCABOELETRICO.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaESTADOPRODCABOELETRICO.Value := 'N';

  if cb_quebrado.Checked then
     DMEntradasMecanica.C_TabelaESTADOPRODQUEBRADO.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaESTADOPRODQUEBRADO.Value := 'N';

  if rb_ava_sim.Checked then
     DMEntradasMecanica.C_TabelaAVARIA.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaAVARIA.Value := 'N';

  if rb_caixapapelao.Checked then
     DMEntradasMecanica.C_TabelaEMBALAGEMPAPELAO.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaEMBALAGEMPAPELAO.Value := 'N';

  if rb_sacoplastico.Checked then
     DMEntradasMecanica.C_TabelaEMBALAGEMPLASTICO.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaEMBALAGEMPLASTICO.Value := 'N';
//Paulo 28062012;
  if rb_semembalagem.Checked then
     DMEntradasMecanica.C_TabelaSEMEMBALAGEM.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaSEMEMBALAGEM.Value := 'N';

  if rb_ace_sim.Checked then
     DMEntradasMecanica.C_TabelaCOMACESSORIO.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaCOMACESSORIO.Value := 'N';

  if rb_foragarantia.Checked then
     DMEntradasMecanica.C_TabelaFORAGARANTIA.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaFORAGARANTIA.Value := 'N';

  if rb_garantiafabrica.Checked then
     DMEntradasMecanica.C_TabelaGARANTIAFABRICA.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaGARANTIAFABRICA.Value := 'N';

  if rb_retorno.Checked then
     DMEntradasMecanica.C_TabelaRETORNO.Value := 'S'
  else
     DMEntradasMecanica.C_TabelaRETORNO.Value := 'N';


     DMEntradasMecanica.C_TabelaCOMACESSORIOOBS.Value := TS_acessorioObs.Text;
end;

procedure TFrmEntradasMecanica.AtualizaCampos;
begin
//Paulo 06072012
  if not (DMEntradasMecanica.C_Tabela.State in [dsInsert,dsEdit]) then
        DMEntradasMecanica.C_Tabela.Edit;

   if DMEntradasMecanica.C_TabelaEMBALAGEMPAPELAO.Value = 'S' then
      rb_caixapapelao.Checked := true;

   if DMEntradasMecanica.C_TabelaEMBALAGEMPLASTICO.Value = 'S' then
      rb_sacoplastico.Checked := true;
      
   if DMEntradasMecanica.C_TabelaSEMEMBALAGEM.Value = 'S' then
      rb_semembalagem.Checked := true;

   if DMEntradasMecanica.C_TabelaAVARIA.Value = 'S' then
      rb_ava_sim.Checked := True
   else
      rb_ava_nao.Checked := True;

    if DMEntradasMecanica.C_TabelaCOMACESSORIO.Value = 'S' then
       rb_ace_sim.Checked := True
    else
       rb_ace_nao.Checked := True;

    if DMEntradasMecanica.C_TabelaESTADOPRODMANCHADO.Value = 'S' then
       cb_manchado.Checked := true
    else
       cb_manchado.Checked := false;

    if DMEntradasMecanica.C_TabelaESTADOPRODARRANHADO.Value = 'S' then
       cb_arranhadoriscado.Checked := true
    else
       cb_arranhadoriscado.Checked := False;

    if DMEntradasMecanica.C_TabelaESTADOPRODSUJO.Value = 'S' then
       cb_sujo.Checked := true
    else
       cb_sujo.Checked :=  False;

    if DMEntradasMecanica.C_TabelaESTADOPRODCABOELETRICO.Value = 'S' then
       cb_caboeletrico.Checked := true
    else
       cb_caboeletrico.Checked := False;
    if DMEntradasMecanica.C_TabelaESTADOPRODQUEBRADO.Value = 'S' then
       cb_quebrado.Checked := true
    else
       cb_quebrado.Checked := False;

    if DMEntradasMecanica.C_TabelaFORAGARANTIA.Value = 'S' then
       rb_foragarantia.Checked := True
    else
       rb_foragarantia.Checked := False;

    if DMEntradasMecanica.C_TabelaGARANTIAFABRICA.Value = 'S' then
       rb_garantiafabrica.Checked := True
    else
       rb_garantiafabrica.Checked := False;

    if DMEntradasMecanica.C_TabelaRETORNO.Value = 'S' then
       rb_retorno.Checked := True
    else
       rb_retorno.Checked := False;

    if DMEntradasMecanica.C_TabelaCLIENTE.Value <> 0 then
        dfOSNumero.ReadOnly := True;


end;


procedure TFrmEntradasMecanica.btProxRegClick(Sender: TObject);
begin
  inherited;
  AtualizaCampos;
end;

procedure TFrmEntradasMecanica.btUltimoRegClick(Sender: TObject);
begin
  inherited;
  AtualizaCampos;
end;

procedure TFrmEntradasMecanica.btPrevRegClick(Sender: TObject);
begin
  inherited;
  AtualizaCampos;
end;

procedure TFrmEntradasMecanica.btPrimeiroRegClick(Sender: TObject);
begin
  inherited;
  AtualizaCampos;
end;

procedure TFrmEntradasMecanica.btPesquisarClick(Sender: TObject);
begin
  inherited;
  AtualizaCampos;

  AtivarCampos;

  CamposSomenteConsulta;

end;

procedure TFrmEntradasMecanica.btGravarClick(Sender: TObject);
begin
   if (rb_ava_sim.Checked and (Trim(TS_obsavaria.Text) = '')) then begin
        ShowMessage('Produto com avaria, por favor escreva uma Observação');
        exit;
        end;

  SalvarCampos;
  if( DMEntradasMecanica.C_TabelaDATAENTRADA.Value = null)then
     DMEntradasMecanica.C_TabelaDATAENTRADA.Value := now;
  inherited;

      if (DMProjeto.Parametro('SolicitarVendedorVR') = 'S') then begin
      Screen.Cursor := crDefault;
      DlgVendedorVMR := TDlgVendedorVMR.Create(self);

      if DlgVendedorVMR.ShowModal = -1 then begin
        DlgVendedorVMR.Release;
        FrmEntradasMecanica.Close;
        exit;
      end;

      if DlgVendedorVMR.nVendedor = 0 then
      begin
         FrmEntradasMecanica.Close;
         exit;
      end;


      if DMEntradasMecanica.C_Tabela.State in [dsInsert,dsEdit] then
      DMEntradasMecanica.C_Tabela.Post;
      DMEntradasMecanica.C_Tabela.Edit;

      with  DMProjeto.Q_Auxiliar do
      begin
        Close;
        SQL.Text := 'select f.codigo from favorecidos f where f.favorecido = :favorecido';
              ParamByName('favorecido').AsInteger  := DlgVendedorVMR.nVendedor;
        open;
        while not eof do
          begin
          DMEntradasMecanica.C_TabelaTECNICOENTRADA.Value  := Fieldbyname('codigo').Asstring;
          next;
          end;
      end;


      //C_MestreNomeVendedor.Value := DlgVendedorVMR.sVendedor;
      DMEntradasMecanica.C_Tabela.Post;
      DlgVendedorVMR.Release;
      DesmarcarChecksBox;             
    end;
end;

// Paulo inicio 28/06/2012
procedure TFrmEntradasMecanica.rb_ava_simClick(Sender: TObject);
begin
  inherited;
        if  rb_ava_sim.Checked then begin
                GroupBox3.Visible := true;
        end
end;

procedure TFrmEntradasMecanica.rb_ava_naoClick(Sender: TObject);
begin
  inherited;
        if  rb_ava_nao.Checked then begin
                GroupBox3.Visible := false;
                cb_arranhadoriscado.State := cbUnchecked;
                cb_manchado.State := cbUnchecked;
                cb_sujo.State := cbUnchecked;
                cb_caboeletrico.State := cbUnchecked;
                cb_quebrado.State := cbUnchecked;
                TS_obsavaria.Text := '';
        end
end;

procedure TFrmEntradasMecanica.rb_ace_simClick(Sender: TObject);
begin
  inherited;
//        if rb_ace_sim.Checked then begin
//                TS_acessorioObs.Enabled := true;
//        end;
end;

procedure TFrmEntradasMecanica.rb_ace_naoClick(Sender: TObject);
begin
  inherited;
//        if rb_ace_nao.Checked then begin
//                TS_acessorioObs.Enabled := false;
//                TS_acessorioObs.Text := '';
//        end;
end;


procedure TFrmEntradasMecanica.TS_Label7Click(Sender: TObject);
begin
       if rb_foragarantia.Checked then
            camposObrigatorios := 0;
       if rb_garantiafabrica.Checked then
            camposObrigatorios := 1;
       if rb_retorno.Checked then
            camposObrigatorios := 2;
  inherited;
end;

procedure TFrmEntradasMecanica.rb_garantiafabricaClick(Sender: TObject);
begin
  inherited;
  camposObrigatorios := 0;
  pnEquipamento.Enabled := true;
  pnDefeito.Enabled := true;

end;

procedure TFrmEntradasMecanica.rb_foragarantiaClick(Sender: TObject);
begin
  inherited;
  camposObrigatorios := 1;
  pnEquipamento.Enabled := true;
  pnDefeito.Enabled := true;
end;

procedure TFrmEntradasMecanica.rb_retornoClick(Sender: TObject);
begin
  inherited;
  camposObrigatorios := 2;
  pnEquipamento.Enabled := true;
  pnDefeito.Enabled := true;
end;

procedure TFrmEntradasMecanica.FormShow(Sender: TObject);
begin
  inherited;
    if (DMProjeto.Parametro('SolicitarVendedorVR') = 'S') then begin
      Screen.Cursor := crDefault;
      DlgVendedorVMR := TDlgVendedorVMR.Create(self);

      if DlgVendedorVMR.ShowModal = -1 then begin
        DlgVendedorVMR.Release;
        FrmEntradasMecanica.Close;
        exit;
      end;

      if DlgVendedorVMR.nVendedor = 0 then
      begin
         FrmEntradasMecanica.Close;
         exit;
      end;


      if DMEntradasMecanica.C_Tabela.State in [dsInsert,dsEdit] then
      DMEntradasMecanica.C_Tabela.Post;
      DMEntradasMecanica.C_Tabela.Edit;

      with  DMProjeto.Q_Auxiliar do
      begin
        Close;
        SQL.Text := 'select f.codigo from favorecidos f where f.favorecido = :favorecido';
              ParamByName('favorecido').AsInteger  := DlgVendedorVMR.nVendedor;
        open;
        while not eof do
          begin
          DMEntradasMecanica.C_TabelaTECNICOENTRADA.Value  := Fieldbyname('codigo').Asstring;
          next;
          end;
      end;


      //C_MestreNomeVendedor.Value := DlgVendedorVMR.sVendedor;
      DMEntradasMecanica.C_Tabela.Post;
      DlgVendedorVMR.Release;
    end;

  if rb_garantiafabrica.Checked then
     camposObrigatorios := 0;
  if rb_foragarantia.Checked then
     camposObrigatorios := 1;
  if rb_retorno.Checked then
     camposObrigatorios := 2;
end;
//Paulo fim
procedure TFrmEntradasMecanica.dfClienteExit(Sender: TObject);
begin
  inherited;
      if  trim(DMProjeto.C_LocalizarFavOBS.value) <> '' then
        ShowMessage(DMProjeto.C_LocalizarFavOBS.value);
end;

procedure TFrmEntradasMecanica.btLimparClick(Sender: TObject);
begin
  inherited;
  pnEquipamento.Enabled := false;
  pnDefeito.Enabled := false;

      if (DMProjeto.Parametro('SolicitarVendedorVR') = 'S') then begin
      Screen.Cursor := crDefault;
      DlgVendedorVMR := TDlgVendedorVMR.Create(self);

      if DlgVendedorVMR.ShowModal = -1 then begin
        DlgVendedorVMR.Release;
        FrmEntradasMecanica.Close;
        exit;
      end;

      if DlgVendedorVMR.nVendedor = 0 then
      begin
         FrmEntradasMecanica.Close;
         exit;
      end;


      if DMEntradasMecanica.C_Tabela.State in [dsInsert,dsEdit] then
      DMEntradasMecanica.C_Tabela.Post;
      DMEntradasMecanica.C_Tabela.Edit;

      with  DMProjeto.Q_Auxiliar do
      begin
        Close;
        SQL.Text := 'select f.codigo from favorecidos f where f.favorecido = :favorecido';
              ParamByName('favorecido').AsInteger  := DlgVendedorVMR.nVendedor;
        open;
        while not eof do
          begin
          DMEntradasMecanica.C_TabelaTECNICOENTRADA.Value  := Fieldbyname('codigo').Asstring;
          next;
          end;
      end;


      //C_MestreNomeVendedor.Value := DlgVendedorVMR.sVendedor;
      DMEntradasMecanica.C_Tabela.Post;
      DlgVendedorVMR.Release;
      dfOSNumero.ReadOnly := False;

      AtivarCampos;

    end;

end;

// Felipe
{Deixar os campos tipo data, memo, lookup, radio button, check box disponíveis para Consulta (não alterar) para: Enable - > False / ReadOnly - > True}
procedure TFrmEntradasMecanica.CamposSomenteConsulta();
begin
        if DMEntradasMecanica.C_TabelaSTATUSSERVICO.Value in [11, 60] then
        begin
                dfDataEntrada.ReadOnly := True;
                cmbTipoFav.ReadOnly := True;
                dfCliente.ReadOnly := True;
                GroupBox5.Enabled := False;
                dfNumeroSerial.ReadOnly := True;
                TS_Label7.Enabled := False;
                dfDescricaoComp.ReadOnly := True;
                dfAcessorios.ReadOnly := True;
                TS_DBMemo1.ReadOnly := True;
                GroupBox1.Enabled := False;
                GroupBox2.Enabled := False;
                cb_arranhadoriscado.Enabled := False;
                cb_manchado.Enabled := False;
                cb_sujo.Enabled := False;
                cb_caboeletrico.Enabled := False;
                cb_quebrado.Enabled := False;
                TS_obsavaria.ReadOnly := True;
                rb_ace_sim.Enabled := False;
                rb_ace_nao.Enabled := False;
                TS_acessorioObs.ReadOnly := True;
                edDataSaida.ReadOnly := True;
                edHoraSaida.ReadOnly := True;
                memoDefEncontr.ReadOnly := True;
                memoOBS.ReadOnly := True;
        end;
end;

// Felipe
{Ativar os campos tipo data, memo, lookup, radio button, check box para: Enable - > True / ReadOnly - > False}
procedure TFrmEntradasMecanica.AtivarCampos();
begin
                dfDataEntrada.ReadOnly := False;
                cmbTipoFav.ReadOnly := False;
                dfCliente.ReadOnly := False;
                dfDescricaoComp.ReadOnly := False;
                dfAcessorios.ReadOnly := False;
                TS_DBMemo1.ReadOnly := False;
                dfNumeroSerial.ReadOnly := False;
                TS_obsavaria.ReadOnly := False;
                TS_acessorioObs.ReadOnly := False;
                edDataSaida.ReadOnly := False;
                edHoraSaida.ReadOnly := False;
                memoDefEncontr.ReadOnly := False;
                memoOBS.ReadOnly := False;

                GroupBox5.Enabled := True;
                TS_Label7.Enabled := True;
                GroupBox1.Enabled := True;
                GroupBox2.Enabled := True;
                cb_arranhadoriscado.Enabled := True;
                cb_manchado.Enabled := True;
                cb_sujo.Enabled := True;
                cb_caboeletrico.Enabled := True;
                cb_quebrado.Enabled := True;
                rb_ace_sim.Enabled := True;
                rb_ace_nao.Enabled := True;
end;

// Felipe
{Desmarcar os check box do group box 3 - Estado do Produto}
procedure TFrmEntradasMecanica.DesmarcarChecksBox();
begin   
        cb_arranhadoriscado.Checked := False;
        cb_manchado.Checked := False;
        cb_sujo.Checked := False;
        cb_caboeletrico.Checked := False;
        cb_quebrado.Checked := False;
end;

end.

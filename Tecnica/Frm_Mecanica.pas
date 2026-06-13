unit Frm_Mecanica;

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
  TFrmMecanica = class(TFrmPadrao)
    pnVeiculo: TTS_Panel;
    dfDataEntrada: TTS_DBEditDate;
    lbDtEntrada: TTS_Label;
    cmbStatus: TTS_DBLookupComboBox;
    cmbTipo: TTS_DBLookupComboBox;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    pnOSNumero: TTS_Panel;
    TS_DBEdit2: TTS_DBEdit;
    lbOSNum: TTS_Label;
    dfOSNumero: TTS_DBEdit;
    cmbTipoFav: TTS_DBLookupTipoFav;
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
    edChaveCliente: TDBEdit;
    TS_Label1: TTS_Label;
    TS_DBMemo1: TTS_DBMemo;
    Label1: TLabel;
    dfCliente: TTS_DBEditFavorecido;
    Label2: TLabel;
    Label3: TLabel;
    TS_DBEdit1: TTS_DBEdit;
    TS_DBLookupComboBox1: TTS_DBLookupComboBox;
    TS_DBEdit3: TTS_DBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    TS_DBEdit4: TTS_DBEdit;
    TS_DBEdit5: TTS_DBEdit;
    TS_DBEdit6: TTS_DBEdit;
    Label7: TLabel;
    Label8: TLabel;
    TS_DBEdit7: TTS_DBEdit;
    Label9: TLabel;
    TS_DBEdit8: TTS_DBEdit;
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
  FrmMecanica: TFrmMecanica;
  VendaPedido : integer ;

implementation

uses DM_Mecanica, DM_Projeto, Dlg_Acessorios,
  Frm_EquipamentoSituacao, Funcoes, Rpt_Tecnica, Dlg_FinalizarChamado,
  DM_Financeiro, Dlg_VendedorVMR, TDM_Projeto, Form_Padrao;

{$R *.dfm}

procedure TFrmMecanica.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  FrmMecanica:=Self;
  sOS := '';
end;

procedure TFrmMecanica.btComando1Click(Sender: TObject);
var
  nSaida: Integer;
begin
  inherited;
  
  if DMMecanica.C_TabelaSTATUSSERVICO.Value = 11 then
  begin
        try
        if Application.MessageBox(pchar('Confirma alterar o Status de "AGUARDANDO ACERTO" para "EQUIPAMENTO ENTREGUE ?"'), 'Confirmar Status', MB_YESNO+MB_ICONINFORMATION) = IDYES then
        begin
                DMMecanica.C_TabelaSTATUSSERVICO.Value := 60;
                
                DMProjeto.Q_Auxiliar.Close;
                DMProjeto.Q_Auxiliar.SQL.Text := 'UPDATE SERVICOS SET STATUSSERVICO = :STATUSSERVICO WHERE (SERVICO = :SERVICO)';
                DMProjeto.Q_Auxiliar.ParamByName('STATUSSERVICO').AsInteger := DMMecanica.C_TabelaSTATUSSERVICO.Value;
                DMProjeto.Q_Auxiliar.ParamByName('SERVICO').AsInteger := DMMecanica.C_TabelaSERVICO.AsInteger;
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

  if ((DMMecanica.C_TabelaSTATUSSERVICO.Value = 21) AND (DMMecanica.C_TabelaGARANTIAFABRICA.Value = 'S' ))  then
  begin
        try
        if Application.MessageBox(pchar('Confirma alterar o Status para "EQUIPAMENTO ENTREGUE ?"'), 'Confirmar Status', MB_YESNO+MB_ICONINFORMATION) = IDYES then
        begin
                DMMecanica.C_TabelaSTATUSSERVICO.Value := 60;

                DMProjeto.Q_Auxiliar.Close;
                DMProjeto.Q_Auxiliar.SQL.Text := 'UPDATE SERVICOS SET STATUSSERVICO = :STATUSSERVICO WHERE (SERVICO = :SERVICO)';
                DMProjeto.Q_Auxiliar.ParamByName('STATUSSERVICO').AsInteger := DMMecanica.C_TabelaSTATUSSERVICO.Value;
                DMProjeto.Q_Auxiliar.ParamByName('SERVICO').AsInteger := DMMecanica.C_TabelaSERVICO.AsInteger;
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
  if not (DMMecanica.C_Tabela.State in [dsEdit,dsInsert]) then
    DMMecanica.C_Tabela.Edit;
        DMMecanica.C_Tabela.UpdateRecord;
  if  (DMMecanica.C_TabelaSTATUSSERVICO.Value <> 60) then
  begin
  DMMecanica.C_Tabela.Post;
  DMMecanica.Gravar;
  RptTecnica := TRptTecnica.Create(Self);
  //RptTecnica.ImprimirEntregaEquipamento(DMMecanica.C_TabelaSERVICO.AsInteger,
  //                                      StrToInt(DMProjeto.Parametro('ViaEntregaEquipamento')) );
  //RptTecnica.Release;
  //RptTecnica := nil;
  if ( DlgMsg.ShowMsg(8024) = 100) then begin
    nSaida := FaturarServico( DMMecanica.C_TabelaSERVICO.AsInteger);

    if osAFaturar then begin

      DMProjeto.SetParametrosForm( [null, DMMecanica.C_TabelaCLIENTE.AsInteger, '', nSaida] );

      if Application.MessageBox('Para colocar o Status "EQUIPAMENTO ENTREGUE" clique em "SIM". Para colocar o Status "AGUARDANDO ACERTO" clique em "NÃO".', 'Confirmar Status', MB_YESNO+MB_ICONINFORMATION) = IDYES then
        DMMecanica.C_TabelaSTATUSSERVICO.Value := 60
      else
        DMMecanica.C_TabelaSTATUSSERVICO.Value := 11;

      if (VendaPedido <> 2) then
         DMProjeto.CriarForm('DlgDepositos', Self, true);

      RptTecnica := TRptTecnica.Create(Self);
      RptTecnica.ImprimirComprovanteEntrega( DMMecanica.C_TabelaSERVICO.AsInteger );
      RptTecnica.Release;
      RptTecnica := nil;

      DMMecanica.C_TabelaDATASAIDA.Value := DMProjeto.getDataServidor;
      DMMecanica.C_TabelaHORASAIDA.Value := DMProjeto.GetTimeServidor;

      DMProjeto.Q_Auxiliar.Close;
      DMProjeto.Q_Auxiliar.SQL.Text := 'UPDATE SERVICOS SET  STATUSSERVICO = :STATUSSERVICO, DATASAIDA = :DATASAIDA,HORASAIDA = :HORASAIDA WHERE (SERVICO = :SERVICO);';
      DMProjeto.Q_Auxiliar.ParamByName('STATUSSERVICO').AsInteger := DMMecanica.C_TabelaSTATUSSERVICO.Value;
      DMProjeto.Q_Auxiliar.ParamByName('SERVICO').AsInteger := DMMecanica.C_TabelaSERVICO.AsInteger;
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

procedure TFrmMecanica.dfOSNumeroDblClick(Sender: TObject);
begin
  inherited;
  DMMecanica.PegarOSNumero;
end;

procedure TFrmMecanica.btImprimirClick(Sender: TObject);
begin
  inherited;
  RptTecnica := TRptTecnica.Create(Self);
  RptTecnica.ImprimirEntradaEquipamento( DMMecanica.C_TabelaSERVICO.AsInteger );
  RptTecnica.Release;
  RptTecnica := nil;
end;

procedure TFrmMecanica.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
//  if (UpperCase(LastDataObject.TableName) = 'MODELOS') and (ActiveControl = dfEquipamento) then
//    dfEquipamento.ID := LastDataObject.ObjectKey;
end;

procedure TFrmMecanica.ppedSaidaCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := 'Clique aqui para visualizar o resultado do serviço.';
end;

procedure TFrmMecanica.edFaturadoChange(Sender: TObject);
begin
  inherited;
  if DMMecanica.C_TabelaFATURADO.Value = 'S' then begin
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
    btFaturar.Visible := DMMecanica.C_TabelaSTATUSSERVICO.AsInteger = 60;
  end;
end;

procedure TFrmMecanica.edStatusChange(Sender: TObject);
begin
  inherited;
  if DMMecanica.C_TabelaSTATUSSERVICO.AsInteger in [50,60] then begin
    cmbStatus.Color := $00EBD9D8;
    cmbStatus.Font.Color := clRed;
//    ppedSaida.Visible := True;
  end
  else begin
    cmbStatus.Color := clWindow;
    cmbStatus.Font.Color := clWindowText;
   // ppedSaida.Visible := False;
  end;
  btComando2.Visible := DMMecanica.C_TabelaSTATUSSERVICO.AsInteger = 20;
  btComando1.Visible := (DMMecanica.C_TabelaSTATUSSERVICO.AsInteger <> 60) and
                        DMMecanica.bAlteracao;
  btGravar.Visible   := (DMMecanica.C_TabelaSTATUSSERVICO.AsInteger < 50);
//  and                        DMMecanica.bAlteracao;
  GravarDados.Visible   := (DMMecanica.C_TabelaSTATUSSERVICO.AsInteger <> 60) and
                        DMMecanica.bAlteracao;
  btFaturar.Visible  := (DMMecanica.C_TabelaSTATUSSERVICO.AsInteger = 60) and
                       (DMMecanica.C_TabelaFATURADO.AsString <> 'S');
end;

procedure TFrmMecanica.FormComponentEstado_Inicial(
  Sender: TObject; var bSkip: Boolean);
begin
  inherited;
  btImprimir.Visible := False;
  btComando2.Visible := False;
  cmbStatus.SetReadOnly(True);
  btComando1.Visible := (DMMecanica.C_TabelaSTATUSSERVICO.AsInteger <> 60) and
                        DMMecanica.bAlteracao;
  btGravar.Visible   := (DMMecanica.C_TabelaSTATUSSERVICO.AsInteger < 50) ;
//  and                        DMMecanica.bAlteracao;
  GravarDados.Visible   := (DMMecanica.C_TabelaSTATUSSERVICO.AsInteger <> 60) and
                        DMMecanica.bAlteracao;
end;

procedure TFrmMecanica.FormComponentEstado_Navegacao(
  Sender: TObject; var bSkip: Boolean);
begin
  inherited;
  btImprimir.Visible := True;
  btComando2.Visible := True;
  cmbStatus.SetReadOnly(True);

  btComando1.Visible := (DMMecanica.C_TabelaSTATUSSERVICO.AsInteger <> 60) and
                        DMMecanica.bAlteracao;
  btGravar.Visible   := (DMMecanica.C_TabelaSTATUSSERVICO.AsInteger < 50);
  // and                        DMMecanica.bAlteracao;
  GravarDados.Visible   := (DMMecanica.C_TabelaSTATUSSERVICO.AsInteger <> 60) and
                        DMMecanica.bAlteracao;                        
end;

procedure TFrmMecanica.btComando2Click(Sender: TObject);
begin
  inherited;
  RptTecnica := TRptTecnica.Create(Self);
  RptTecnica.ImprimirOrcamento( DMMecanica.C_TabelaSERVICO.AsInteger );
  RptTecnica.Release;
  RptTecnica := nil;
end;

procedure TFrmMecanica.FormComponentBeforeSave(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if not dfCliente.ID > 0 then begin
    DlgMsg.ShowMsg( 513, ['Cliente'] );
    bSkip := True;
  end;
end;

procedure TFrmMecanica.dfClienteANTSelecionou(Sender: TObject);
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
      DlgFinalizarChamado.sCliente := DMMecanica.C_TabelaNOME.AsString;
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

procedure TFrmMecanica.btFaturarClick(Sender: TObject);
begin
  inherited;
  if ( DlgMsg.ShowMsg(8024) = 100) then
    FaturarServico( DMMecanica.C_TabelaSERVICO.AsInteger );
end;

function TFrmMecanica.FaturarServico( nID : integer ): Integer;
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

    tipofaturamento := DlgMsg.ShowMsg(8086);
    if tipofaturamento = 100 then
    IdMestre := DMProjeto.GerarSaida( True,Num, DMMecanica.C_TabelaCLIENTE.AsInteger, '',
                                      DMProjeto.dDataSistema,
                                      0, 23,itens, DMFinanceiro.nContaPadrao,0,
                                      'Faturamento da Ordem de Serviço Nº ' + DMMecanica.C_TabelaOSNUMERO.AsString, 0,False,1)
    else if tipofaturamento = 200 then begin
       IdMestre := DMProjeto.GerarSaida( True,Num, DMMecanica.C_TabelaCLIENTE.AsInteger, '',
                                         DMProjeto.dDataSistema,
                                         0, 2,itens, DMFinanceiro.nContaPadrao,0,
                                         'Faturamento da Ordem de Serviço Nº ' + DMMecanica.C_TabelaOSNUMERO.AsString, 0,False,1);
       VendaPedido := 2;
     end;

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    result := IDMestre;
    if IdMestre > 0 then begin
      if not (DMMecanica.C_Tabela.State in [dsEdit,dsInsert]) then
        DMMecanica.C_Tabela.Edit;
      DMMecanica.C_TabelaFATURADO.Value := 'S';
      DMMecanica.C_Tabela.Post;
      osAFaturar := true;
      DMMecanica.Gravar;
    end;
  except
    on e:exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DlgMsg.ShowMsg(50, [e.message]);
    end;
  end;
end;

procedure TFrmMecanica.MudaMaquinas;
begin
  with DMMecanica do begin
    C_Equip.Close;
    Q_Equip.ParamByName('CLIENTE').AsInteger := C_TabelaCLIENTE.AsInteger;
    C_Equip.Open;
  end;
end;


procedure TFrmMecanica.edChaveClienteChange(Sender: TObject);
begin
  inherited;
  MudaMaquinas;
end;

procedure TFrmMecanica.TS_Label7SetParametrosForm(
  Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([dfCliente.Id, 1]);
end;

procedure TFrmMecanica.TS_Label11Click(Sender: TObject);
begin
  inherited;
  DlgAcessorios := TDlgAcessorios.Create(self);
  DlgAcessorios.ShowModal;
  DlgAcessorios.Release;
  DlgAcessorios := nil;
end;

procedure TFrmMecanica.UltimoGravado1Click(Sender: TObject);
begin
  inherited;
  AtualizaCampos;

  AtivarCampos;

  CamposSomenteConsulta;
end;

procedure TFrmMecanica.SalvarCampos;
begin
//Paulo 06072012

  if not (DMMecanica.C_Tabela.State in [dsInsert,dsEdit]) then
        DMMecanica.C_Tabela.Edit;


end;

procedure TFrmMecanica.AtualizaCampos;
begin
//Paulo 06072012
  if not (DMMecanica.C_Tabela.State in [dsInsert,dsEdit]) then
        DMMecanica.C_Tabela.Edit;

    if DMMecanica.C_TabelaCLIENTE.Value <> 0 then
        dfOSNumero.ReadOnly := True;


end;


procedure TFrmMecanica.btProxRegClick(Sender: TObject);
begin
  inherited;
  AtualizaCampos;
end;

procedure TFrmMecanica.btUltimoRegClick(Sender: TObject);
begin
  inherited;
  AtualizaCampos;
end;

procedure TFrmMecanica.btPrevRegClick(Sender: TObject);
begin
  inherited;
  AtualizaCampos;
end;

procedure TFrmMecanica.btPrimeiroRegClick(Sender: TObject);
begin
  inherited;
  AtualizaCampos;
end;

procedure TFrmMecanica.btPesquisarClick(Sender: TObject);
begin
  inherited;
  AtualizaCampos;

  AtivarCampos;

  CamposSomenteConsulta;

end;

procedure TFrmMecanica.btGravarClick(Sender: TObject);
begin

  SalvarCampos;
  if( DMMecanica.C_TabelaDATAENTRADA.Value = null)then
     DMMecanica.C_TabelaDATAENTRADA.Value := now;
  inherited;

      if (DMProjeto.Parametro('SolicitarVendedorVR') = 'S') then begin
      Screen.Cursor := crDefault;
      DlgVendedorVMR := TDlgVendedorVMR.Create(self);

      if DlgVendedorVMR.ShowModal = -1 then begin
        DlgVendedorVMR.Release;
        FrmMecanica.Close;
        exit;
      end;

      if DlgVendedorVMR.nVendedor = 0 then
      begin
         FrmMecanica.Close;
         exit;
      end;


      if DMMecanica.C_Tabela.State in [dsInsert,dsEdit] then
      DMMecanica.C_Tabela.Post;
      DMMecanica.C_Tabela.Edit;

      with  DMProjeto.Q_Auxiliar do
      begin
        Close;
        SQL.Text := 'select f.codigo from favorecidos f where f.favorecido = :favorecido';
              ParamByName('favorecido').AsInteger  := DlgVendedorVMR.nVendedor;
        open;
        while not eof do
          begin
          DMMecanica.C_TabelaTECNICOENTRADA.Value  := Fieldbyname('codigo').Asstring;
          next;
          end;
      end;


      //C_MestreNomeVendedor.Value := DlgVendedorVMR.sVendedor;
      DMMecanica.C_Tabela.Post;
      DlgVendedorVMR.Release;
    end;
end;

// Paulo inicio 28/06/2012
procedure TFrmMecanica.rb_ace_simClick(Sender: TObject);
begin
  inherited;
//        if rb_ace_sim.Checked then begin
//                TS_acessorioObs.Enabled := true;
//        end;
end;

procedure TFrmMecanica.rb_ace_naoClick(Sender: TObject);
begin
  inherited;
//        if rb_ace_nao.Checked then begin
//                TS_acessorioObs.Enabled := false;
//                TS_acessorioObs.Text := '';
//        end;
end;


procedure TFrmMecanica.TS_Label7Click(Sender: TObject);
begin
//       if rb_foragarantia.Checked then
//            camposObrigatorios := 0;
//       if rb_garantiafabrica.Checked then
//            camposObrigatorios := 1;
//       if rb_retorno.Checked then
//            camposObrigatorios := 2;
  inherited;
end;

procedure TFrmMecanica.rb_garantiafabricaClick(Sender: TObject);
begin
  inherited;
//  camposObrigatorios := 0;
//  pnEquipamento.Enabled := true;
//  pnDefeito.Enabled := true;

end;

procedure TFrmMecanica.rb_foragarantiaClick(Sender: TObject);
begin
  inherited;
//  camposObrigatorios := 1;
//  pnEquipamento.Enabled := true;
//  pnDefeito.Enabled := true;
end;

procedure TFrmMecanica.rb_retornoClick(Sender: TObject);
begin
  inherited;
//  camposObrigatorios := 2;
//  pnEquipamento.Enabled := true;
//  pnDefeito.Enabled := true;
end;

procedure TFrmMecanica.FormShow(Sender: TObject);
begin
  inherited;
    if (DMProjeto.Parametro('SolicitarVendedorVR') = 'S') then begin
      Screen.Cursor := crDefault;
      DlgVendedorVMR := TDlgVendedorVMR.Create(self);

      if DlgVendedorVMR.ShowModal = -1 then begin
        DlgVendedorVMR.Release;
        FrmMecanica.Close;
        exit;
      end;

      if DlgVendedorVMR.nVendedor = 0 then
      begin
         FrmMecanica.Close;
         exit;
      end;


      if DMMecanica.C_Tabela.State in [dsInsert,dsEdit] then
      DMMecanica.C_Tabela.Post;
      DMMecanica.C_Tabela.Edit;

      with  DMProjeto.Q_Auxiliar do
      begin
        Close;
        SQL.Text := 'select f.codigo from favorecidos f where f.favorecido = :favorecido';
              ParamByName('favorecido').AsInteger  := DlgVendedorVMR.nVendedor;
        open;
        while not eof do
          begin
          DMMecanica.C_TabelaTECNICOENTRADA.Value  := Fieldbyname('codigo').Asstring;
          next;
          end;
      end;


      //C_MestreNomeVendedor.Value := DlgVendedorVMR.sVendedor;
      DMMecanica.C_Tabela.Post;
      DlgVendedorVMR.Release;
    end;

//  if rb_garantiafabrica.Checked then
//     camposObrigatorios := 0;
//  if rb_foragarantia.Checked then
//     camposObrigatorios := 1;
//  if rb_retorno.Checked then
//     camposObrigatorios := 2;
end;
//Paulo fim
procedure TFrmMecanica.dfClienteExit(Sender: TObject);
begin
  inherited;
      if  trim(DMProjeto.C_LocalizarFavOBS.value) <> '' then
        ShowMessage(DMProjeto.C_LocalizarFavOBS.value);
end;

procedure TFrmMecanica.btLimparClick(Sender: TObject);
begin
  inherited;

      if (DMProjeto.Parametro('SolicitarVendedorVR') = 'S') then begin
      Screen.Cursor := crDefault;
      DlgVendedorVMR := TDlgVendedorVMR.Create(self);

      if DlgVendedorVMR.ShowModal = -1 then begin
        DlgVendedorVMR.Release;
        FrmMecanica.Close;
        exit;
      end;

      if DlgVendedorVMR.nVendedor = 0 then
      begin
         FrmMecanica.Close;
         exit;
      end;


      if DMMecanica.C_Tabela.State in [dsInsert,dsEdit] then
      DMMecanica.C_Tabela.Post;
      DMMecanica.C_Tabela.Edit;

      with  DMProjeto.Q_Auxiliar do
      begin
        Close;
        SQL.Text := 'select f.codigo from favorecidos f where f.favorecido = :favorecido';
              ParamByName('favorecido').AsInteger  := DlgVendedorVMR.nVendedor;
        open;
        while not eof do
          begin
          DMMecanica.C_TabelaTECNICOENTRADA.Value  := Fieldbyname('codigo').Asstring;
          next;
          end;
      end;


      //C_MestreNomeVendedor.Value := DlgVendedorVMR.sVendedor;
      DMMecanica.C_Tabela.Post;
      DlgVendedorVMR.Release;
      dfOSNumero.ReadOnly := False;

      AtivarCampos;

    end;

end;

// Felipe
{Deixar os campos tipo data, memo, lookup, radio button, check box disponíveis para Consulta (não alterar) para: Enable - > False / ReadOnly - > True}
procedure TFrmMecanica.CamposSomenteConsulta();
begin
        if DMMecanica.C_TabelaSTATUSSERVICO.Value in [11, 60] then
        begin
                dfDataEntrada.ReadOnly := True;
                cmbTipoFav.ReadOnly := True;
                dfCliente.ReadOnly := True;
//                dfNumeroSerial.ReadOnly := True;
//                TS_Label7.Enabled := False;
//                dfDescricaoComp.ReadOnly := True;
//                dfAcessorios.ReadOnly := True;
                TS_DBMemo1.ReadOnly := True;
                edDataSaida.ReadOnly := True;
                edHoraSaida.ReadOnly := True;
                memoDefEncontr.ReadOnly := True;
                memoOBS.ReadOnly := True;
        end;
end;

// Felipe
{Ativar os campos tipo data, memo, lookup, radio button, check box para: Enable - > True / ReadOnly - > False}
procedure TFrmMecanica.AtivarCampos();
begin
                dfDataEntrada.ReadOnly := False;
                cmbTipoFav.ReadOnly := False;
                dfCliente.ReadOnly := False;
//                dfDescricaoComp.ReadOnly := False;
//                dfAcessorios.ReadOnly := False;
//                TS_DBMemo1.ReadOnly := False;
//                dfNumeroSerial.ReadOnly := False;
                edDataSaida.ReadOnly := False;
                edHoraSaida.ReadOnly := False;
                memoDefEncontr.ReadOnly := False;
                memoOBS.ReadOnly := False;

//                TS_Label7.Enabled := True;
end;

// Felipe
{Desmarcar os check box do group box 3 - Estado do Produto}
end.

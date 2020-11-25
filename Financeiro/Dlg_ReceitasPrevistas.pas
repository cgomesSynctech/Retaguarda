unit Dlg_ReceitasPrevistas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Db, DBTables, ComCtrls,
  StdCtrls, DlgMsg, Menus, TS_PopupMenu, Buttons, TS_SpeedButton, ExtCtrls,
  TS_DateTimePicker, TS_Label, IBCustomDataSet,
  IBQuery, Provider, DBClient, TS_LastDataObject,
  TS_Bevel, dxMasterView, TS_Shape,
  FormsComponent, TS_Image, dxfLabel, TS_MaxPanel, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, teCtrls, TS_EffectsPanel, dxPSCore,
  dxPSdxMVLnk, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, BTOdeum, Placemnt;

type
  TDlgReceitasPrevistas = class(TFrmModeloCadastros)
    Panel1: TTS_Panel;
    Panel3: TTS_Panel;
    Label4: TTS_Label;
    Label5: TTS_Label;
    lbTotalGeral: TTS_Label;
    Label7: TTS_Label;
    Label6: TTS_Label;
    lblADisp: TTS_Label;
    lblTitulos: TTS_Label;
    lblDisp: TTS_Label;
    Q_Disponivel: TIBQuery;
    Q_DisponivelDs: TDataSource;
    Q_Adisponibilizar: TIBQuery;
    Q_AdisponibilizarDs: TDataSource;
    Q_TitulosnaEmpresa: TIBQuery;
    Q_TitulosnaEmpresaDs: TDataSource;
    C_Disponivel: TClientDataSet;
    C_TitulosNaEmpresa: TClientDataSet;
    C_ADisponibilizar: TClientDataSet;
    C_DisponivelProvider: TDataSetProvider;
    C_TitulosNaEmpresaProv: TDataSetProvider;
    C_ADisponibilizarProvider: TDataSetProvider;
    C_DisponivelDESCRICAO: TStringField;
    C_DisponivelCONTA: TIntegerField;
    C_TitulosNaEmpresaDESCRICAO: TStringField;
    C_ADisponibilizarDESCRICAO: TStringField;
    C_DisponivelDISPONIVEL: TBCDField;
    C_TitulosNaEmpresaTITULOS: TBCDField;
    C_ADisponibilizarDISPONIVEL: TBCDField;
    C_DisponivelTIPOCONTA: TIntegerField;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    MasterView: TdxMasterView;
    MasterViewLevel1: TdxMasterViewLevel;
    MasterViewLevel1DESCRICAO: TdxMasterViewColumn;
    MasterViewLevel1DISPONIVEL: TdxMasterViewColumn;
    MasterViewLevel2: TdxMasterViewLevel;
    MasterViewLevel2DESCRICAO: TdxMasterViewColumn;
    MasterViewLevel2TITULOS: TdxMasterViewColumn;
    MasterViewLevel3: TdxMasterViewLevel;
    MasterViewLevel3DESCRICAO: TdxMasterViewColumn;
    MasterViewLevel3DISPONIVEL: TdxMasterViewColumn;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape5: TTS_Shape;
    TS_Shape6: TTS_Shape;
    TS_Shape7: TTS_Shape;
    TS_Shape8: TTS_Shape;
    CorDisponivel: TdxMasterViewStyle;
    CorParcelasAReceber: TdxMasterViewStyle;
    CorADisponibilizar: TdxMasterViewStyle;
    CorCabecalho: TdxMasterViewStyle;
    CorGrupo: TdxMasterViewStyle;
    CorRegistros: TdxMasterViewStyle;
    MasterViewLevel4: TdxMasterViewLevel;
    Q_TitulosDetDs: TDataSource;
    Q_TitulosDet: TIBQuery;
    MasterViewLevel5: TdxMasterViewLevel;
    Q_DisponivelDetDS: TDataSource;
    Q_DisponivelDet: TIBQuery;
    Q_DisponivelDetCONTA: TIntegerField;
    Q_DisponivelDetDESCRICAO: TIBStringField;
    Q_DisponivelDetESPECIE: TIntegerField;
    Q_DisponivelDetTOTALESPECIE: TIBBCDField;
    MasterViewLevel4DESCRICAO: TdxMasterViewColumn;
    MasterViewLevel4TOTALESPECIE: TdxMasterViewColumn;
    Q_ChequesDet: TIBQuery;
    Q_ChequesDetDS: TDataSource;
    Q_ChequesDetNOME: TIBStringField;
    Q_ChequesDetVENCIMENTO: TDateField;
    MasterViewLevel6: TdxMasterViewLevel;
    Q_TitulosDetNOME: TIBStringField;
    Q_TitulosDetTITULO: TIBStringField;
    Q_TitulosDetPARCELA: TIntegerField;
    Q_TitulosDetID: TIntegerField;
    Q_TitulosDetVENCIMENTO: TDateField;
    Q_TitulosDetCOMPETENCIA: TDateField;
    Q_TitulosDetVALOR: TIBBCDField;
    Q_TitulosDetVALORPAGO: TIBBCDField;
    Q_TitulosDetSALDO: TIBBCDField;
    MasterViewLevel5NOME: TdxMasterViewColumn;
    MasterViewLevel5VENCIMENTO: TdxMasterViewColumn;
    MasterViewLevel5COMPETENCIA: TdxMasterViewColumn;
    MasterViewLevel5VALOR: TdxMasterViewColumn;
    MasterViewLevel5VALORPAGO: TdxMasterViewColumn;
    MasterViewLevel5SALDO: TdxMasterViewColumn;
    C_TitulosNaEmpresaIDFALSO: TIntegerField;
    Q_TitulosDetIDFALSO: TIntegerField;
    Q_ChequesDetVALOR: TIBBCDField;
    Q_ChequesDetDESCCONTA: TIBStringField;
    Q_ChequesDetNUMCHEQUE: TIntegerField;
    Q_ChequesDetNOMEBANCO: TIBStringField;
    Q_ChequesDetIDDOC: TIntegerField;
    MasterViewLevel6NOME: TdxMasterViewColumn;
    MasterViewLevel6VENCIMENTO: TdxMasterViewColumn;
    MasterViewLevel6VALOR: TdxMasterViewColumn;
    MasterViewLevel6DESCCONTA: TdxMasterViewColumn;
    MasterViewLevel6NUMCHEQUE: TdxMasterViewColumn;
    MasterViewLevel6NOMEBANCO: TdxMasterViewColumn;
    TS_PopupMenu1: TTS_PopupMenu;
    mGrupo: TMenuItem;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    StylePositivo: TdxMasterViewStyle;
    StyleNegativo: TdxMasterViewStyle;
    Q_ChequesDetFORMAPAGAMENTO: TIntegerField;
    C_ADisponibilizarFORMAPAGAMENTO: TIntegerField;
    Imprimir: TdxComponentPrinter;
    ImprimirLink1: TdxMasterViewReportLink;
    Q_ChequesDetTIPODEPOSITO: TIntegerField;
    Q_ChequesDetDEPOSITO: TIntegerField;
    Q_DisponivelTotal: TIBQuery;
    Q_DisponivelTotalNOMEDISPONIVEL: TIBStringField;
    Q_DisponivelTotalDISPONIVEL: TIBBCDField;
    MasterViewLevel7: TdxMasterViewLevel;
    Q_DisponivelTotalDS: TDataSource;
    Q_DisponivelTotalIDFALSO: TIntegerField;
    C_DisponivelIDFALSO: TIntegerField;
    MasterViewLevel7NOMEDISPONIVEL: TdxMasterViewColumn;
    MasterViewLevel7DISPONIVEL: TdxMasterViewColumn;
    Q_ChequesTotal: TIBQuery;
    Q_ChequesTotalTITULO: TIBStringField;
    Q_ChequesTotalDISPONIVEL: TIBBCDField;
    Q_ChequesTotalIDFALSO: TIntegerField;
    C_ADisponibilizarIDFALDO: TIntegerField;
    Q_ChequesTotalDS: TDataSource;
    MasterViewLevel8: TdxMasterViewLevel;
    MasterViewLevel8TITULO: TdxMasterViewColumn;
    MasterViewLevel8DISPONIVEL: TdxMasterViewColumn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure mGrupoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TS_PopupMenu1Popup(Sender: TObject);
    procedure MasterViewLevel4TOTALESPECIEGetContentStyle(
      Sender: TdxMasterViewColumn; Node: TdxMasterViewNode;
      var NewStyle: TdxMasterViewStyle);
    procedure btGravarClick(Sender: TObject);
    procedure DataFDateChange(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure MasterViewDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  DlgReceitasPrevistas: TDlgReceitasPrevistas;

implementation

uses DM_Projeto, DM_GridPrinter;

{$R *.DFM}

procedure TDlgReceitasPrevistas.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TDlgReceitasPrevistas.Pesquisar;
var nTotalAdisponibilizar, nDisponivel : single;
begin
  {Detalhes}
  with Q_DisponivelDet do begin
  	close;
		Open;
  end;
  with Q_TitulosDet do begin
  	close;
    ParamByName('DataI').AsDateTime := Trunc(DataI.Date);
    ParamByName('DataF').AsDateTime := Trunc(DataF.Date);
		Open;
  end;
  with Q_ChequesDet do begin
  	Close;
    ParamByName('DataI').AsDateTime := Trunc(DataI.Date);
    ParamByName('DataF').AsDateTime := Trunc(DataF.Date);
  	Open;
  end;

	{Mestre}
  with Q_DisponivelTotal do begin
  	close;
    open;
  end;
  With C_Disponivel do Begin
    Close;
    Open;
    disablecontrols;
    First;
    nDisponivel := 0;
    while not EOF do begin
    	nDisponivel := nDisponivel + C_DisponivelDisponivel.Value;
      next;
    end;
    First;
    enablecontrols;
  End;

  With C_TitulosnaEmpresa do Begin
    CLose;
    Params.ParamByName('DataI').AsDateTime := Trunc(DataI.Date);
    Params.ParamByName('DataF').AsDateTime := Trunc(DataF.Date);
    Open;
  End;
  with Q_ChequesTotal do begin
  	close;
    ParamByName('DataI').AsDateTime := Trunc(DataI.Date);
    ParamByName('DataF').AsDateTime := Trunc(DataF.Date);
    open;
  end;
  With C_Adisponibilizar do Begin
    Close;
    Params.ParamByName('DataI').AsDateTime := Trunc(DataI.Date);
    Params.ParamByName('DataF').AsDateTime := Trunc(DataF.Date);
    Open;
    nTotalADisponibilizar := 0;
    First;
    while not EOF do begin
    	nTotalADisponibilizar := nTotalADisponibilizar + C_AdisponibilizarDisponivel.Value;
      next;
    end;
  End;


  {Resumo}
	lblDisp.Caption := FormatCurr('##,###,##0.00', nDisponivel );
  lblTitulos.Caption := FormatCurr('##,###,##0.00', C_TitulosNaEmpresaTitulos.Value );
  lblADisp.Caption := FormatCurr('##,###,##0.00', nTotalAdisponibilizar );

  lbTotalGeral.Caption := FormatCurr('###,###,##0.00', nDisponivel + C_TitulosNaEmpresaTitulos.Value +  nTotalAdisponibilizar );
	Masterview.FullCollapse;
end;

procedure TDlgReceitasPrevistas.FormShow(Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataI.Date := DMProjeto.dDataSistema;
  DataI.OnDateChange := DataFDateChange;
  DataF.Date := IncMonth(DMProjeto.dDataSistema, 1); //DMProjeto.dDataSistema+30;
end;

procedure TDlgReceitasPrevistas.btLimparClick(Sender: TObject);
begin
  inherited;
	Pesquisar;
end;

procedure TDlgReceitasPrevistas.mGrupoClick(
  Sender: TObject);
begin
  inherited;
  mGrupo.Checked := not mGrupo.Checked;
  if MasterView.FocusedNode.Level.Tag = 1 then
  	if mGrupo.Checked then
			MasterView.FocusedNode.Level.OptionsView := MasterView.FocusedNode.Level.OptionsView + [lovGroupbyBox]
    else
    	MasterView.FocusedNode.Level.OptionsView := MasterView.FocusedNode.Level.OptionsView - [lovGroupbyBox];
end;

procedure TDlgReceitasPrevistas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  with Q_DisponivelDet do begin
  	close;
  end;
  with Q_TitulosDet do begin
  	close;
  end;
  with Q_ChequesDet do begin
  	Close;
  end;

	{Mestre}
  With C_Disponivel do Begin
    Close;
  End;

  With C_TitulosnaEmpresa do Begin
    CLose;
  End;

  With C_Adisponibilizar do Begin
    Close;
  End;

end;

procedure TDlgReceitasPrevistas.TS_PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  mGrupo.Enabled := MasterView.FocusedNode.Level.Tag = 1;
  mGrupo.Checked := lovGroupbyBox in MasterView.FocusedNode.Level.OptionsView;
end;

procedure TDlgReceitasPrevistas.MasterViewLevel4TOTALESPECIEGetContentStyle(
  Sender: TdxMasterViewColumn; Node: TdxMasterViewNode;
  var NewStyle: TdxMasterViewStyle);
begin
  inherited;
  if Node.Values[Sender.Index] > 0 then
  	NewStyle := StylePositivo
  else
  	NewStyle := StyleNegativo;
end;

procedure TDlgReceitasPrevistas.btGravarClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'ImpRecPrev' ) then
  	exit;
  DMGridPrinter.ConfigurarImpressao( ImprimirLink1, FormsComponent.Caption );
	Imprimir.ReportLink[0].Preview;
end;

procedure TDlgReceitasPrevistas.DataFDateChange(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TDlgReceitasPrevistas.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
	if pos(LastDataObject.TableName,'TitulosAReceber,Depositos,DepositosDoc,OperacoesFinanceiras')>0 then
  	Pesquisar;
end;

procedure TDlgReceitasPrevistas.MasterViewDblClick(Sender: TObject);
var ID : integer;
begin
  inherited;
  if MasterView.FocusedNode.Level.Tag = 1 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('ID').AsInteger;
    if ID <> 0 then begin
    	DMProjeto.SetParametrosForm([ID]);
    	DMProjeto.CriarForm('FrmA_Receber',self,true);
    end
  end else if MasterView.FocusedNode.Level.Tag = 2 then begin
  	ID := MasterView.FocusedNode.Level.DataSet.Fieldbyname('Deposito').AsInteger;
    if ID <> 0 then begin
    	DMProjeto.SetParametrosForm([ID]);
    	DMProjeto.CriarForm(DMProjeto.getTelaGeradora(MasterView.FocusedNode.Level.DataSet.Fieldbyname('TipoDeposito').AsInteger),self,true);
    end;
  end;

end;

end.


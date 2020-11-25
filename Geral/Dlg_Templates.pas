unit Dlg_Templates;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, dxCntner, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, ppComm, ppEndUsr, FRM_MODELOCADASTROS,
  FormsComponent, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg,
  TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, TS_PageControl,
  TS_DBLookupComboBox, TS_RadioButton, dxEdLib, TS_Edit, Provider,
  DBClient, DB, IBCustomDataSet, IBQuery, TS_LookupComboBox, Placemnt,
  TS_Shape;

type
  TDlgTemplates = class(TFrmModeloCadastros)
    ppDesigner: TppDesigner;
    pgAssistente: TTS_PageControl;
    tsIntroducao: TTS_TabSheet;
    Label1: TTS_Label;
    tsNovoExistente: TTS_TabSheet;
    rgNovo: TTS_RadioButton;
    rgExistente: TTS_RadioButton;
    tsNovo: TTS_TabSheet;
    Label5: TTS_Label;
    edNome: TTS_Edit;
    tsExistente: TTS_TabSheet;
    Label4: TTS_Label;
    tsDerivar: TTS_TabSheet;
    tsFim: TTS_TabSheet;
    Label6: TTS_Label;
    btEstrutura: TTS_SpeedButton;
    rgPadrao: TTS_RadioButton;
    rgDerivar: TTS_RadioButton;
    Q_Templates: TIBQuery;
    C_TemplatesDS: TDataSource;
    C_Templates: TClientDataSet;
    P_Templates: TDataSetProvider;
    C_TemplatesTEMPLATE: TIntegerField;
    C_TemplatesDESCRICAO: TStringField;
    C_TemplatesARQUIVO: TStringField;
    cmbDerivar: TTS_LookupComboBox;
    cmbTemplate: TTS_LookupComboBox;
    lbTemplate: TTS_Label;
    dxfLabel1: TdxfLabel;
    tsTipo: TTS_TabSheet;
    dxfLabel2: TdxfLabel;
    rbNotaFiscal: TTS_RadioButton;
    rbPedidos: TTS_RadioButton;
    rbOrcamentos: TTS_RadioButton;
    rbPropostas: TTS_RadioButton;
    dxfLabel3: TdxfLabel;
    lbTipo1: TTS_Label;
    lbTipo2: TTS_Label;
    C_TemplatesTIPO: TStringField;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape5: TTS_Shape;
    TS_Shape6: TTS_Shape;
    TS_Shape7: TTS_Shape;
    TS_Shape8: TTS_Shape;
    dxfLabel4: TdxfLabel;
    TS_Label1: TTS_Label;
    lbModelo: TTS_Label;
    rbNotaFiscalServico: TTS_RadioButton;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btEstruturaClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure pgAssistenteChange(Sender: TObject);
    procedure tsFimShow(Sender: TObject);
    procedure rbNotaFiscalClick(Sender: TObject);
    procedure C_TemplatesBeforeOpen(DataSet: TDataSet);
    procedure cmbTemplateChange(Sender: TObject);
    procedure edNomeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgTemplates: TDlgTemplates;

implementation

uses DM_Projeto, Rpt_Invoices, funcoes;

{$R *.dfm}

procedure TDlgTemplates.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
	pgAssistente.ActivePageIndex := 0;
  if DMProjeto.ExisteParametrosForm then begin
  	if DMProjeto.GetParametrosForm(1) = 'NF' then
   		rbNotaFiscal.Checked := true
    else if DMProjeto.GetParametrosForm(1) = 'NS' then
   		rbNotaFiscalServico.Checked := true
  	else if DMProjeto.GetParametrosForm(1) = 'PE' then
    	rbPedidos.Checked := true
  	else if DMProjeto.GetParametrosForm(1) = 'OR' then
    	rbOrcamentos.Checked := true
  	else if DMProjeto.GetParametrosForm(1) = 'PR' then
    	rbPropostas.Checked := true;
  	C_Templates.Close;
  	C_Templates.Open;
    if (DMProjeto.GetParametrosForm( 2 ) <> null) and (DMProjeto.GetParametrosForm( 2 ) <> 0) then begin
     	rgExistente.Checked := true;
      cmbTemplate.LookUpKeyValue := DMProjeto.GetParametrosForm( 2 );
      pgAssistente.ActivePage := tsFim;
    end;
  end else begin
  	C_Templates.Close;
  	C_Templates.Open;
	end;
end;

procedure TDlgTemplates.btGravarClick(Sender: TObject);
begin
  inherited;
	with pgAssistente do begin
    if ActivePage = tsNovoExistente then
       if rgNovo.Checked then
       	 SetPage(tsNovo)
       else
       	 SetPage(tsExistente)
    else if ActivePage = tsNovo then begin
      if Trim(EdNome.Text)='' then begin
      	DlgMsg.ShowMsg(929,['o nome do template.']);
        Exit;
      end;
    	SetPage(tsDerivar)
    end else if ActivePage = tsExistente then begin
      if cmbTemplate.LookUpKeyValue = 0 then begin
      	DlgMsg.ShowMsg(929,['o template existente.']);
        Exit;
      end;
    	SetPage(tsFim)
    end else if ActivePage = tsDerivar then begin
    	if (rgDerivar.Checked) and (cmbDerivar.LookUpKeyValue = 0) then begin
      	DlgMsg.ShowMsg(929,['o template que deseja derivar.']);
        Exit;
      end;
      NextPage;
    end else
    	NextPage;
  end;
  btLimpar.Enabled := true;
end;

procedure TDlgTemplates.btEstruturaClick(Sender: TObject);
var sArquivo : string;
begin
  inherited;
  RptInvoices := TRptInvoices.Create(self);

  if rbNotaFiscal.Checked then
		ppDesigner.Report := RptInvoices.rbNotaFiscal
  else if rbNotaFiscalServico.Checked then
		ppDesigner.Report := RptInvoices.rbServicos
  else if rbPedidos.Checked then
		ppDesigner.Report := RptInvoices.rbPedidos
  else if rbOrcamentos.Checked then
		ppDesigner.Report := RptInvoices.rbOrcamento
  else if rbPropostas.Checked then
		ppDesigner.Report := RptInvoices.rbProposta;

  sArquivo := DMProjeto.TemplatesPath+edNome.Text+'.rtm';
  ppDesigner.Report.Template.FileName := sArquivo;
  if (rgDerivar.Checked) or (rgExistente.Checked) then begin
    ppDesigner.Report.Template.FileName := DMProjeto.TemplatesPath+C_TemplatesArquivo.Value;
    ppDesigner.Report.Template.LoadFromFile;
  end;
  ppDesigner.Caption := 'Alterar Template: '+iif(edNome.Text='',cmbTemplate.Text,edNome.Text);
  ppDesigner.ShowModal;
  lbTemplate.Caption := 'Gravando Template...aguarde...';
  Application.ProcessMessages;
  ppDesigner.Report.Template.SaveToFile;
  ppDesigner.Report.Template.FileName := '';
  ppDesigner.Report := nil;
  RptInvoices.Free;
  if (edNome.Text <> '') and (not C_Templates.Locate('Descricao',edNome.Text,[])) then begin
  	C_Templates.Append;
    C_TemplatesTemplate.value	:= DMProjeto.NextIDGlobal;
  	C_TemplatesDescricao.Value:= edNome.Text;
    C_TemplatesArquivo.Value	:= edNome.Text+'.rtm';
    C_TemplatesTipo.Value			:= iif(rbNotaFiscal.Checked,'NF',
                                 iif(rbNotaFiscalServico.Checked,'NS',
    														 iif(rbPedidos.Checked,'PE',
                                 iif(rbOrcamentos.Checked,'OR','PR'))));
    C_Templates.Post;
    C_Templates.ApplyUpdates(0);
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  end;
  lbTemplate.Caption := 'Template gravado com sucesso.';
  Application.ProcessMessages;
  try
     SendLastDataObject(Self.Name, 'Templates', 'Template', C_TemplatesTemplate.value, false );
  except
  end;
end;

procedure TDlgTemplates.btLimparClick(Sender: TObject);
begin
  inherited;
  lbTemplate.Caption := '';
  btGravar.Enabled := true;
  with pgAssistente do begin
    if ActivePage = tsFim then begin
    	if rgNovo.Checked then
      	SetPage(tsDerivar)
      else
      	SetPage(tsExistente);
    end else if ActivePage = tsDerivar then
     	SetPage(tsNovo)
    else if ActivePage = tsExistente then
     	SetPage(tsNovoExistente)
    else
  		NextPage(false);
  end;
end;

procedure TDlgTemplates.pgAssistenteChange(Sender: TObject);
begin
  inherited;
  if pgAssistente.ActivePage.canfocus then
  	ActiveControl := FindNextControl( pgAssistente.ActivePage, true, true, false );
end;

procedure TDlgTemplates.tsFimShow(Sender: TObject);
begin
  inherited;
	btGravar.Enabled := false;
  btLimpar.Enabled := true;
end;

procedure TDlgTemplates.rbNotaFiscalClick(Sender: TObject);
begin
  inherited;
	lbTipo1.Caption := TTS_RadioButton(Sender).Caption;
  lbTipo2.Caption := TTS_RadioButton(Sender).Caption;
  C_Templates.Close;
  C_Templates.Open;
end;

procedure TDlgTemplates.C_TemplatesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
	with C_Templates do begin
  	FetchParams;
    Params.ParamByName('tipo').AsString := iif(rbNotaFiscal.Checked,'NF',
                                           iif(rbNotaFiscalServico.Checked,'NS',
    														 					 iif(rbPedidos.Checked,'PE',
                                 					 iif(rbOrcamentos.Checked,'OR','PR'))));
  end;
end;

procedure TDlgTemplates.cmbTemplateChange(Sender: TObject);
begin
  inherited;
	lbModelo.Caption := cmbTemplate.Text;
end;

procedure TDlgTemplates.edNomeChange(Sender: TObject);
begin
  inherited;
	lbModelo.Caption := edNome.Text;
end;

end.

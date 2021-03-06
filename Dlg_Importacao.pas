unit Dlg_Importacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, ComCtrls, TS_PageControl, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppProd, ppReport, DB,
  ppDB, ppComm, ppRelatv, ppDBPipe, IBCustomDataSet, IBQuery, Gauges;

type
  TDlgImportacao = class(TFrmModeloCadastros)
    pcImport: TTS_PageControl;
    tsPagina1: TTS_TabSheet;
    tsPagina2: TTS_TabSheet;
    tsPagina3: TTS_TabSheet;
    TS_Label119: TTS_Label;
    TS_Image24: TTS_Image;
    TS_Image25: TTS_Image;
    TS_Label144: TTS_Label;
    TS_Image26: TTS_Image;
    TS_Label151: TTS_Label;
    gImportClientes: TGauge;
    lblImportClientes: TTS_Label;
    lblRegistroClientes: TTS_Label;
    TS_Image28: TTS_Image;
    TS_Label154: TTS_Label;
    TS_Image31: TTS_Image;
    TS_Label156: TTS_Label;
    TS_Label157: TTS_Label;
    TS_Image32: TTS_Image;
    TS_Label158: TTS_Label;
    TS_Image33: TTS_Image;
    TS_Image34: TTS_Image;
    TS_Label159: TTS_Label;
    TS_Image35: TTS_Image;
    TS_Label160: TTS_Label;
    btImportClientes: TTS_SpeedButton;
    ImageMao: TTS_Image;
    Q_Layout: TIBQuery;
    Q_LayoutLAYOUT: TIntegerField;
    Q_LayoutTABELA: TIBStringField;
    Q_LayoutCAMPO: TIBStringField;
    Q_LayoutCAMPO_LABEL: TIBStringField;
    Q_LayoutCAMPO_DESCRICAO: TIBStringField;
    Q_LayoutCAMPO_TIPO: TIBStringField;
    Q_LayoutCAMPO_TAMANHO: TIntegerField;
    Q_LayoutCAMPO_EXEMPLO: TIBStringField;
    Q_LayoutCAMPO_OBRIG: TIBStringField;
    Q_LayoutCAMPO_ORDEM: TIntegerField;
    ppDBLayout: TppDBPipeline;
    ppDBLayoutppField1: TppField;
    ppDBLayoutppField2: TppField;
    ppDBLayoutppField3: TppField;
    ppDBLayoutppField4: TppField;
    ppDBLayoutppField5: TppField;
    ppDBLayoutppField6: TppField;
    ppDBLayoutppField7: TppField;
    ppDBLayoutppField8: TppField;
    ppDBLayoutppField9: TppField;
    ppDBLayoutppField10: TppField;
    Q_LayoutDS: TDataSource;
    ppImportacaoF: TppReport;
    ppTitleBand9: TppTitleBand;
    ppCabecalho9: TppRegion;
    ppHeaderBand9: TppHeaderBand;
    ppTitulo: TppLabel;
    ppLabel453: TppLabel;
    ppLabel454: TppLabel;
    ppLabel455: TppLabel;
    ppLabel456: TppLabel;
    ppLabel457: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppLine64: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel508: TppLabel;
    ppLabel509: TppLabel;
    ppLabel510: TppLabel;
    ppLabel511: TppLabel;
    ppLabel517: TppLabel;
    ppLine87: TppLine;
    TS_Label489: TTS_Label;
    TS_Image74: TTS_Image;
    TS_Image75: TTS_Image;
    TS_Label490: TTS_Label;
    TS_Image76: TTS_Image;
    TS_Label491: TTS_Label;
    gImportFornecedores: TGauge;
    lblImportFornecedores: TTS_Label;
    lblRegistroFornecedores: TTS_Label;
    TS_Image77: TTS_Image;
    TS_Label494: TTS_Label;
    TS_Image78: TTS_Image;
    TS_Label495: TTS_Label;
    TS_Label496: TTS_Label;
    TS_Image79: TTS_Image;
    TS_Label497: TTS_Label;
    TS_Image80: TTS_Image;
    TS_Image81: TTS_Image;
    TS_Label498: TTS_Label;
    TS_Image82: TTS_Image;
    TS_Label499: TTS_Label;
    btImportFornecedores: TTS_SpeedButton;
    TS_Label63: TTS_Label;
    TS_Image18: TTS_Image;
    TS_Image20: TTS_Image;
    TS_Label65: TTS_Label;
    TS_Image19: TTS_Image;
    TS_Label64: TTS_Label;
    gImportItens: TGauge;
    lblImportItens: TTS_Label;
    lblRegistroItens: TTS_Label;
    TS_Label152: TTS_Label;
    TS_Image36: TTS_Image;
    TS_Image37: TTS_Image;
    TS_Label153: TTS_Label;
    TS_Image38: TTS_Image;
    TS_Label204: TTS_Label;
    TS_Label205: TTS_Label;
    TS_Image39: TTS_Image;
    TS_Image40: TTS_Image;
    lblImportacaoItens: TTS_Label;
    TS_Image41: TTS_Image;
    TS_Label209: TTS_Label;
    btImportItens: TTS_SpeedButton;
    pnSalvando: TTS_Panel;
    TS_Label225: TTS_Label;
    OpenDialog: TOpenDialog;
    procedure TS_Label119Click(Sender: TObject);
    procedure TS_Label151Click(Sender: TObject);
    procedure TS_Label144Click(Sender: TObject);
    procedure TS_Label156Click(Sender: TObject);
    procedure TS_Label157Click(Sender: TObject);
    procedure TS_Label159Click(Sender: TObject);
    procedure TS_Label154Click(Sender: TObject);
    procedure TS_Label158Click(Sender: TObject);
    procedure TS_Label160Click(Sender: TObject);
    procedure TS_Label489Click(Sender: TObject);
    procedure TS_Label491Click(Sender: TObject);
    procedure TS_Label490Click(Sender: TObject);
    procedure TS_Label495Click(Sender: TObject);
    procedure TS_Label496Click(Sender: TObject);
    procedure TS_Label498Click(Sender: TObject);
    procedure TS_Label494Click(Sender: TObject);
    procedure TS_Label497Click(Sender: TObject);
    procedure TS_Label499Click(Sender: TObject);
    procedure TS_Label63Click(Sender: TObject);
    procedure TS_Label64Click(Sender: TObject);
    procedure TS_Label65Click(Sender: TObject);
    procedure TS_Label152Click(Sender: TObject);
    procedure TS_Label204Click(Sender: TObject);
    procedure TS_Label153Click(Sender: TObject);
    procedure TS_Label205Click(Sender: TObject);
    procedure TS_Label209Click(Sender: TObject);
    procedure lblImportacaoItensClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    bInventario,bCancelar: boolean;
    nDiferenca: currency;
    bLocalizaChave,bGravar100: boolean;
    slItensCustosZerados: TStringList;
    sTituloRel: string;
    function CorrigeData(sData:string):string;
    procedure AtualizaImportacaoItens;
    procedure AtualizaImportacaoParcelas;
    procedure AtualizaImportacaoParcelasForn;
    procedure AtualizaImportacaoCheques;
    procedure AtualizaImportacaoChequesForn;
    procedure AtualizaImportacaoClientes;
    procedure AtualizaImportacaoFornecedores;
    procedure GravarClientes;
    procedure GravarParcelas;
    procedure GravarCheques;
    procedure GravarFornecedores;
    procedure GravarParcelasF;
    procedure GravarChequesF;
    procedure GravarInventario;
    procedure GravarGrupos;
    procedure GravarFabricantes;
  public
    { Public declarations }
  end;

var
  DlgImportacao: TDlgImportacao;

implementation
uses DM_Projeto, DM_BBItens, DM_BBClientes, DM_BBFornecedores, DM_Financeiro, funcoes,
  TDM_Projeto;

{$R *.dfm}

function TDlgImportacao.CorrigeData;
var nPos: integer;
begin
  sData := trim(sData);
  nPos := pos(' ',sData);
  if nPos > 0 then
    delete(sData,nPos,length(sData)-nPos+1);
  result := sData;
end;

procedure TDlgImportacao.GravarClientes;
var bImport: boolean;
    slCreditos: TStringList;
    i : integer;
begin
  inherited;
  slCreditos := TStringList.Create;
  slCreditos.clear;
  if DMBBClientes.C_Clientes.state in [dsEdit,dsInsert] then
    DMBBClientes.C_Clientes.post;
  bImport := DMBBClientes.bImportando;
  if bImport or (DMBBClientes.C_Clientes.ChangeCount > 0) then begin
    pnSalvando.parent  := pcImport.ActivePage;
    pnSalvando.visible := true;
    pnSalvando.BringToFront;
    Application.ProcessMessages;
    try
      DMBBClientes.bImportando := true;
      if not bImport then begin
        DMBBClientes.C_Clientes.disablecontrols;
      end;
      DMBBClientes.C_Clientes.first;
      while not DMBBClientes.C_Clientes.eof do begin
        if DMBBClientes.C_ClientesID.value < 0 then begin
          DMBBClientes.C_Clientes.edit;
          DMBBClientes.C_ClientesFavorecido.value := DMProjeto.NextIdGlobal;
          DMBBClientes.C_ClientesID.value := DMBBClientes.C_ClientesFavorecido.value;
          if DMBBClientes.C_ClientesCredito.value > 0 then begin
            slCreditos.Add(DMBBClientes.C_ClientesFavorecido.AsString+'='+FloatToStr(DMBBClientes.C_ClientesCredito.value));
            DMBBClientes.C_ClientesCreditoOld.value := DMBBClientes.C_ClientesCredito.value;
          end;
        end
        else if DMBBClientes.C_ClientesCreditoOld.value <> DMBBClientes.C_ClientesCredito.value then begin
          DMFinanceiro.RegistrarCredito(DMBBClientes.C_ClientesFavorecido.value,DMBBClientes.C_ClientesFavorecido.value,32,true,DMBBClientes.C_ClientesCreditoold.value,0,'begin balance');
          DMFinanceiro.RegistrarCredito(DMBBClientes.C_ClientesFavorecido.value,DMBBClientes.C_ClientesFavorecido.value,32,true,0,DMBBClientes.C_ClientesCredito.value,'begin balance');
          DMBBClientes.ContabilizaCreditos(DMBBClientes.C_ClientesFavorecido.value);
          DMBBClientes.C_Clientes.edit;
          DMBBClientes.C_ClientesCreditoOld.value := DMBBClientes.C_ClientesCredito.value;
          DMBBClientes.C_Clientes.post;
        end;

        DMBBClientes.C_Clientes.next;
      end;
      DMBBClientes.C_Clientes.ApplyUpdates(0);

      for i := 0 to slCreditos.Count - 1 do begin
        DMFinanceiro.RegistrarCredito(StrToInt(slCreditos.Names[i]),StrToInt(slCreditos.Names[i]),32,true,0,StrToInt(slCreditos.values[slCreditos.Names[i]]),'begin balance');
        DMBBClientes.C_Clientes.locate('favorecido',StrToInt(slCreditos.Names[i]),[]);
        DMBBClientes.ContabilizaCreditos(StrToInt(slCreditos.Names[i]));
      end;

      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;

      if bImport and not bLocalizaChave then begin
        DMBBClientes.C_Clientes.close;
        DMBBClientes.C_Clientes.fetchparams;
        DMBBClientes.C_Clientes.params[0].asinteger := 0;
        DMBBClientes.C_Clientes.open;
      end;
    except
      on e:Exception do begin
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DlgMsg.ShowMsg(50,[e.message]);
      end;
    end;
    if not bImport then begin
      DMBBClientes.bImportando := false;
      DMBBClientes.C_Clientes.first;
      DMBBClientes.C_Clientes.enablecontrols;
    end;
    if pnSalvando.visible then
      pnSalvando.visible := false;
  end;
  slCreditos.free;
end;

procedure TDlgImportacao.GravarParcelas;
var bImport: boolean;
begin
  inherited;
  if DMBBClientes.C_ContasOperacao.state in [dsEdit,dsInsert] then
    DMBBClientes.C_ContasOperacao.post;
  if DMBBClientes.C_Parcelas.state in [dsEdit,dsInsert] then
    DMBBClientes.C_Parcelas.post;

  bImport := DMBBClientes.bImportando;
  if bImport or (DMBBClientes.C_Parcelas.ChangeCount > 0) then begin
    pnSalvando.parent  := pcImport.ActivePage;
    pnSalvando.visible := true;
    pnSalvando.BringToFront;
    Application.ProcessMessages;
    try
      DMBBClientes.bImportando := true;
      if not bImport then begin
        DMBBClientes.C_Parcelas.disablecontrols;
      end;
      DMBBClientes.C_Parcelas.first;
      while not DMBBClientes.C_Parcelas.eof do begin
        if DMBBClientes.C_ParcelasIDNovo.value < 0 then begin
          DMBBClientes.C_Parcelas.edit;
          DMBBClientes.C_ParcelasID.value := DMProjeto.NextIdGlobal;
          DMBBClientes.C_ParcelasIDNovo.value := DMBBClientes.C_ParcelasID.value;
          DMBBClientes.C_ParcelasValorOld.value := DMBBClientes.C_ParcelasValor.value;
          DMBBClientes.C_Parcelas.post;

          if DMBBClientes.C_ContasOperacaoID.IsNull then
            DMBBClientes.C_ContasOperacao.Append
          else
            DMBBClientes.C_ContasOperacao.edit;
          DMBBClientes.C_ContasOperacaoConta.value := DMBBClientes.C_ParcelasContaReceita.value;
          DMBBClientes.C_ContasOperacaoValor.value := DMBBClientes.C_ParcelasValor.value;
          DMBBClientes.C_ContasOperacao.post;

          DMBBClientes.ContabilizaParcelas(DMBBClientes.C_ParcelasID.value);
        end
        else if DMBBClientes.C_ParcelasValorOld.value <> DMBBClientes.C_ParcelasValor.value then begin
          DMBBClientes.C_Parcelas.edit;
          DMBBClientes.C_ParcelasValorOld.value := DMBBClientes.C_ParcelasValor.value;
          DMBBClientes.C_Parcelas.post;
          if DMBBClientes.C_ContasOperacaoID.IsNull then
            DMBBClientes.C_ContasOperacao.Append
          else
            DMBBClientes.C_ContasOperacao.edit;
          DMBBClientes.C_ContasOperacaoConta.value := DMBBClientes.C_ParcelasContaReceita.value;
          DMBBClientes.C_ContasOperacaoValor.value := DMBBClientes.C_ParcelasValor.value;
          DMBBClientes.C_ContasOperacao.post;

          DMBBClientes.ContabilizaParcelas(DMBBClientes.C_ParcelasID.value);
        end;

        DMBBClientes.C_Parcelas.next;
      end;
      DMBBClientes.C_Parcelas.ApplyUpdates(0);

      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;

      if bImport and not bLocalizaChave then begin
        DMBBClientes.C_Parcelas.close;
        DMBBClientes.C_Parcelas.fetchparams;
        DMBBClientes.C_Parcelas.params[0].asdatetime := 0;
        DMBBClientes.C_Parcelas.open;
      end;
    except
      on e:Exception do begin
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DlgMsg.ShowMsg(50,[e.message]);
      end;
    end;
    if not bImport then begin
      DMBBClientes.bImportando := false;
      DMBBClientes.C_Parcelas.first;
      DMBBClientes.C_Parcelas.enablecontrols;
    end;
    if pnSalvando.visible then
      pnSalvando.visible := false;
  end;
end;

procedure TDlgImportacao.GravarCheques;
var IDTitulo, IDDeposito: integer;
    bImport: boolean;
begin
  inherited;
  if DMBBClientes.C_Cheques.state in [dsEdit,dsInsert] then
    DMBBClientes.C_Cheques.post;

  bImport := DMBBClientes.bImportando;
  if bImport or (DMBBClientes.C_Cheques.ChangeCount > 0) then begin
    pnSalvando.parent  := pcImport.ActivePage;
    pnSalvando.visible := true;
    pnSalvando.BringToFront;
    Application.ProcessMessages;
    try
      DMBBClientes.bImportando := true;
      if not bImport then begin
        DMBBClientes.C_Cheques.disablecontrols;
      end;
      DMBBClientes.C_Cheques.first;
      while not DMBBClientes.C_Cheques.eof do with DMBBClientes do begin
        if (C_ChequesID.value > 0) and (C_ChequesValorOld.value <> C_ChequesValor.value) then begin
          DMFinanceiro.ApagarDeposito(C_ChequesDeposito.value,true);
          DMFinanceiro.ApagarDoc(C_ChequesIDDoc.value,true);
        end;
        if (C_ChequesID.value < 0) or ((C_ChequesID.value > 0) and (C_ChequesValorOld.value <> C_ChequesValor.value)) then begin
          IDDeposito := DMFinanceiro.ReceberRapido( 0, 0, C_ChequesFavorecido.Value, 1,
    															 0, C_ChequesData.Value, C_ChequesData.Value,
                                   'begin balance',
                                   C_ChequesValor.Value, 0, 0, 0, 0);

          DMFinanceiro.ReceberDoc(0, 2, IDDeposito, 2, C_ChequesValor.Value,
       											 		C_ChequesVencimento.Value, 'begin balance', C_ChequesNumCheque.Value,
                             		C_ChequesBanco.Value, C_ChequesNome.Value, 0,0, C_ChequesContaReceber.Value );

          DMFinanceiro.BaixarTitulo( IntToStr(IDTitulo) );

          ContabilizaContaAReceber(IDTitulo,1);
          ContabilizaRecebimento(IDDeposito);

          C_Cheques.edit;
          C_ChequesID.value := IDTitulo;
          C_Cheques.post;
        end;

        C_Cheques.next;
      end;

      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;

      if bImport and not bLocalizaChave then begin
        DMBBClientes.C_Cheques.close;
        DMBBClientes.C_Cheques.fetchparams;
        DMBBClientes.C_Cheques.params[0].asdatetime := 0;
        DMBBClientes.C_Cheques.open;
      end;
    except
      on e:Exception do begin
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DlgMsg.ShowMsg(50,[e.message]);
      end;
    end;
    if not bImport then begin
      DMBBClientes.bImportando := false;
      DMBBClientes.C_Cheques.first;
      DMBBClientes.C_Cheques.enablecontrols;
    end;
    if pnSalvando.visible then
      pnSalvando.visible := false;
  end;
end;

procedure TDlgImportacao.GravarFornecedores;
var bImport: boolean;
    slCreditos: TStringList;
    i: integer;
begin
  inherited;
  if DMBBFornecedores.C_Fornecedores.state in [dsEdit,dsInsert] then
    DMBBFornecedores.C_Fornecedores.post;
  bImport := DMBBFornecedores.bImportando;
  if bImport or (DMBBFornecedores.C_Fornecedores.ChangeCount > 0) then begin
    slCreditos := TStringList.Create;
    slCreditos.clear;
    pnSalvando.parent  := pcImport.ActivePage;
    pnSalvando.visible := true;
    pnSalvando.BringToFront;
    Application.ProcessMessages;
    try
      DMBBFornecedores.bImportando := true;
      if not bImport then begin
        DMBBFornecedores.C_Fornecedores.disablecontrols;
      end;
      DMBBFornecedores.C_Fornecedores.first;
      while not DMBBFornecedores.C_Fornecedores.eof do begin
        if DMBBFornecedores.C_FornecedoresID.value < 0 then begin
          DMBBFornecedores.C_Fornecedores.edit;
          DMBBFornecedores.C_FornecedoresFavorecido.value := DMProjeto.NextIdGlobal;
          DMBBFornecedores.C_FornecedoresID.value := DMBBFornecedores.C_FornecedoresFavorecido.value;
          if (DMBBFornecedores.C_FornecedoresCredito.value > 0) then begin
            slCreditos.Add(DMBBFornecedores.C_FornecedoresFavorecido.AsString+'='+FloatToStr(DMBBFornecedores.C_FornecedoresCredito.value));
//            DMFinanceiro.RegistrarCredito(DMBBFornecedores.C_FornecedoresFavorecido.value,DMBBFornecedores.C_FornecedoresFavorecido.value,26,false,0,DMBBFornecedores.C_FornecedoresCredito.value,'begin balance');
//            DMBBFornecedores.ContabilizaCreditos(DMBBFornecedores.C_FornecedoresFavorecido.value);
            DMBBFornecedores.C_FornecedoresCreditoOld.value := DMBBFornecedores.C_FornecedoresCredito.value;
          end;
        end
        else if DMBBFornecedores.C_FornecedoresCreditoOld.value <> DMBBFornecedores.C_FornecedoresCredito.value then begin
          DMFinanceiro.RegistrarCredito(DMBBFornecedores.C_FornecedoresFavorecido.value,DMBBFornecedores.C_FornecedoresFavorecido.value,26,false,DMBBFornecedores.C_FornecedoresCreditoold.value,0,'begin balance');
          DMFinanceiro.RegistrarCredito(DMBBFornecedores.C_FornecedoresFavorecido.value,DMBBFornecedores.C_FornecedoresFavorecido.value,26,false,0,DMBBFornecedores.C_FornecedoresCredito.value,'begin balance');

          DMBBFornecedores.ContabilizaCreditos(DMBBFornecedores.C_FornecedoresFavorecido.value);
          DMBBFornecedores.C_Fornecedores.edit;
          DMBBFornecedores.C_FornecedoresCreditoOld.value := DMBBFornecedores.C_FornecedoresCredito.value;
          DMBBFornecedores.C_Fornecedores.post;
        end;

        DMBBFornecedores.C_Fornecedores.next;
      end;
      DMBBFornecedores.C_Fornecedores.ApplyUpdates(0);

      for i := 0 to slCreditos.Count - 1 do begin
        DMFinanceiro.RegistrarCredito(StrToInt(slCreditos.Names[i]),StrToInt(slCreditos.Names[i]),26,false,0,StrToFloat(slCreditos.values[slCreditos.Names[i]]),'begin balance');
        DMBBFornecedores.C_Fornecedores.locate('favorecido',StrToInt(slCreditos.Names[i]),[]);
        DMBBFornecedores.ContabilizaCreditos(StrToInt(slCreditos.Names[i]));
      end;

      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;

      if bImport and not bLocalizaChave then begin
        DMBBFornecedores.C_Fornecedores.close;
        DMBBFornecedores.C_Fornecedores.fetchparams;
        DMBBFornecedores.C_Fornecedores.params[0].asinteger := 0;
        DMBBFornecedores.C_Fornecedores.open;
      end;
    except
      on e:Exception do begin
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DlgMsg.ShowMsg(50,[e.message]);
      end;
    end;
    if not bImport then begin
      DMBBFornecedores.bImportando := false;
      DMBBFornecedores.C_Fornecedores.first;
      DMBBFornecedores.C_Fornecedores.enablecontrols;
    end;
    if pnSalvando.visible then
      pnSalvando.visible := false;
  end;
end;

procedure TDlgImportacao.GravarParcelasF;
var bImport: boolean;
begin
  inherited;
  if DMBBFornecedores.C_ContasOperacao.state in [dsEdit,dsInsert] then
    DMBBFornecedores.C_ContasOperacao.post;
  if DMBBFornecedores.C_Parcelas.state in [dsEdit,dsInsert] then
    DMBBFornecedores.C_Parcelas.post;

  bImport := DMBBFornecedores.bImportando;
  if bImport or (DMBBFornecedores.C_Parcelas.ChangeCount > 0) then begin
    pnSalvando.parent  := pcImport.ActivePage;
    pnSalvando.visible := true;
    pnSalvando.BringToFront;
    Application.ProcessMessages;
    try
      DMBBFornecedores.bImportando := true;
      if not bImport then begin
        DMBBFornecedores.C_Parcelas.disablecontrols;
      end;
      DMBBFornecedores.C_Parcelas.first;
      while not DMBBFornecedores.C_Parcelas.eof do begin
        if DMBBFornecedores.C_ParcelasIDNovo.value < 0 then begin
          DMBBFornecedores.C_Parcelas.edit;
          DMBBFornecedores.C_ParcelasID.value := DMProjeto.NextIdGlobal;
          DMBBFornecedores.C_ParcelasIDNovo.value := DMBBFornecedores.C_ParcelasID.value;
          DMBBFornecedores.C_ParcelasValorOld.value := DMBBFornecedores.C_ParcelasValor.value;
          DMBBFornecedores.C_Parcelas.post;

          if DMBBFornecedores.C_ContasOperacaoID.IsNull then
            DMBBFornecedores.C_ContasOperacao.Append
          else
            DMBBFornecedores.C_ContasOperacao.edit;
          DMBBFornecedores.C_ContasOperacaoConta.value := DMBBFornecedores.C_ParcelasContaDespesa.value;
          DMBBFornecedores.C_ContasOperacaoValor.value := DMBBFornecedores.C_ParcelasValor.value;
          DMBBFornecedores.C_ContasOperacao.post;

          DMBBFornecedores.ContabilizaParcelas(DMBBFornecedores.C_ParcelasID.value);
        end
        else if DMBBFornecedores.C_ParcelasValorOld.value <> DMBBFornecedores.C_ParcelasValor.value then begin
          DMBBFornecedores.C_Parcelas.edit;
          DMBBFornecedores.C_ParcelasValorOld.value := DMBBFornecedores.C_ParcelasValor.value;
          DMBBFornecedores.C_Parcelas.post;
          if DMBBFornecedores.C_ContasOperacaoID.IsNull then
            DMBBFornecedores.C_ContasOperacao.Append
          else
            DMBBFornecedores.C_ContasOperacao.edit;
          DMBBFornecedores.C_ContasOperacaoConta.value := DMBBFornecedores.C_ParcelasContaDespesa.value;
          DMBBFornecedores.C_ContasOperacaoValor.value := DMBBFornecedores.C_ParcelasValor.value;
          DMBBFornecedores.C_ContasOperacao.post;

          DMBBFornecedores.ContabilizaParcelas(DMBBFornecedores.C_ParcelasID.value);
        end;

        DMBBFornecedores.C_Parcelas.next;
      end;
      DMBBFornecedores.C_Parcelas.ApplyUpdates(0);

      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;

      if bImport and not bLocalizaChave then begin
        DMBBFornecedores.C_Parcelas.close;
        DMBBFornecedores.C_Parcelas.fetchparams;
        DMBBFornecedores.C_Parcelas.params[0].asdatetime := 0;
        DMBBFornecedores.C_Parcelas.open;
      end;
    except
      on e:Exception do begin
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DlgMsg.ShowMsg(50,[e.message]);
      end;
    end;
    if not bImport then begin
      DMBBFornecedores.bImportando := false;
      DMBBFornecedores.C_Parcelas.first;
      DMBBFornecedores.C_Parcelas.enablecontrols;
    end;
    if pnSalvando.visible then
      pnSalvando.visible := false;
  end;
end;

procedure TDlgImportacao.GravarInventario;
var bImport: boolean;
begin
  inherited;
  if DMBBItens.C_Inventario.State in [dsEdit,dsInsert] then
    DMBBItens.C_Inventario.post;
  bImport := DMBBItens.bImportando;
  if bImport or (DMBBItens.C_Inventario.ChangeCount > 0) then begin
    if bImport or (DMBBItens.C_Inventario.ChangeCount > 10) then begin
      pnSalvando.parent  := pcImport.ActivePage;
      pnSalvando.visible := true;
      pnSalvando.BringToFront;
      Application.ProcessMessages;
    end;
    try
      if not bImport then begin
        DMBBItens.C_Inventario.DisableControls;
        DMBBItens.bImportando := true;
      end;
      DMBBItens.GravaItensInventario;
      if bImport and not bLocalizaChave then begin
        DMBBItens.C_Inventario.close;
        DMBBItens.C_Inventario.fetchparams;
        DMBBItens.C_Inventario.params[0].asdatetime := 0;
        DMBBItens.C_Inventario.params[1].asinteger := 0;
        DMBBItens.C_Inventario.open;
      end;
    finally
      if not bImport then begin
        DMBBItens.C_Inventario.first;
        DMBBItens.C_Inventario.EnableControls;
        DMBBItens.bImportando := false;
      end;
      if pnSalvando.visible then
        pnSalvando.visible := false;
    end;
  end;
end;

procedure TDlgImportacao.TS_Label119Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirCabecalho( ppCabecalho9 );
  ppTitulo.caption := sTituloRel +' do Cadastro de Clientes';
  Q_Layout.close;
  Q_Layout.params[0].asstring := 'Clientes';
  Q_Layout.open;
  ppImportacaoF.Print;
end;

procedure TDlgImportacao.TS_Label151Click(Sender: TObject);
var Arq: TextFile;
    nArq: integer;
begin
  inherited;
  if not FileExists(DMProjeto.ProgPath+'clientes.txt') then begin
    nArq := FileCreate(DMProjeto.ProgPath+'clientes.txt');
    FileClose(nArq);
  end;
  AssignFile(Arq,DMProjeto.ProgPath+'clientes.txt');
  Rewrite(Arq);
  Writeln(Arq,'000120|SyncTech |124.89.3214|25-5548757|Av. Julia Freire, 617|Joao Pessoa|PB|01702|21121|(508)872-5597|(617)782.1661|(508)628.3889|(617)666.9992|'+
  'suporte@SyncTech.com.br|www.SyncTech.com.br|01/20/2001|S|150.25|00147');
  Writeln(Arq,'000089|Marcos Ribeiro|454.00.2244|74-2224557|180 Softhouse - Suite 04|Allston|MA|45444|32125|(508)617-782.1661||(617)782.0271||'+
  '|||N||');
  Writeln(Arq,'000083|Fulano de Tal|784.14.5444|54-4457202|196 Harvard Ave - Suite 04|Allston|MA|02134|32125|(508)617-782.1661||(617)782.0271||'+
  '|||N||');
  CloseFile(Arq);
  WinExec(PChar('NotePad.exe '+DMProjeto.ProgPath+'clientes.txt'),sw_Show);
end;

procedure TDlgImportacao.TS_Label144Click(Sender: TObject);
var sArquivo,sRegistro,sDecimal: string;
    ArqTexto: TextFile;
    nLinhas,nIDVendedor: integer;
    sCodigo,sNome,sSSN,sEIN,sEndereco,sBairro,sCidade,sEstado,sCep,sCaixa,sFone1,sFone2,sFax,sCelular: string;
    sEmail,sSite,sDataNasc,sRazao,sTabPreco,sCredito,sVendedor, sPais, sNro, sMunicipio: string;
    bExistem: boolean;
    NroCampos: integer;
begin
  inherited;
  if DecimalSeparator = '.' then
    sDecimal := ','
  else
    sDecimal := '.';
  if OpenDialog.Execute then begin
    bGravar100 := DlgMsg.ShowMsg(4024) = 100;
    bLocalizaChave := DlgMsg.ShowMsg(4023) = 100;
    lblRegistroClientes.visible := true;
    lblImportClientes.visible := true;
    btImportClientes.visible := true;
    gImportClientes.progress := 0;
    gImportClientes.visible := true;

    try
      bCancelar := false;
      DMBBClientes.bImportando := true;
      DMBBClientes.C_Clientes.disablecontrols;
      if not DMBBClientes.C_Clientes.Active then begin
        DMBBClientes.C_Clientes.close;
        DMBBClientes.C_Clientes.fetchparams;
        if bLocalizaChave then
          DMBBClientes.C_Clientes.params[0].asinteger := 1
        else
          DMBBClientes.C_Clientes.params[0].asinteger := 0;
        DMBBClientes.C_Clientes.open;
      end
      else if DMBBClientes.C_Clientes.state in [dsEdit,dsInsert] then
         DMBBClientes.C_Clientes.cancel;

      sArquivo := OpenDialog.filename;
      AssignFile(ArqTexto,sArquivo);
      Reset(ArqTexto);
      // Contando as Linhas
      nLinhas := 0;
      Readln(ArqTexto,sRegistro);
      while (sRegistro <> '') do begin
        nLinhas := nLinhas + 1;
        Readln(ArqTexto,sRegistro);
      end;
      gImportClientes.maxvalue := nLinhas;
      Reset(ArqTexto);
      Readln(ArqTexto,sRegistro);
      Q_Layout.close;
      Q_Layout.params[0].asstring := 'Clientes';
      Q_Layout.open;
      Q_Layout.last;
      bExistem := false;
      NroCampos :=  Q_Layout.recordcount;
      while (sRegistro <> '') do begin
        if bCancelar then
          break;
        if bGravar100 and (gImportClientes.progress > 0) and ((gImportClientes.progress mod 100) = 0) then
          GravarClientes;
        gImportClientes.progress := gImportClientes.progress + 1;
        lblRegistroClientes.caption := 'Registro: '+IntToStr(gImportClientes.progress)+'/'+IntToStr(gImportClientes.Maxvalue);
        Application.ProcessMessages;
        if ContaStrings(sRegistro,'|') <> NroCampos then begin
          DlgMsg.ShowMsg(6014);
          bCancelar := true;
          break;
        end;
        sCodigo     := AdicionarStr(SeparaStrings(sRegistro,'|',1),'0',6);
        sNome       := SeparaStrings(sRegistro,'|',2);
        sSSN        := SeparaStrings(sRegistro,'|',3);
        sEIN        := SeparaStrings(sRegistro,'|',4);
        sEndereco   := COPY(SeparaStrings(sRegistro,'|',5),1,50);
        sBairro     := SeparaStrings(sRegistro,'|',6);
        sCidade     := SeparaStrings(sRegistro,'|',7);
        sEstado     := SeparaStrings(sRegistro,'|',8);
        sCep        := SeparaStrings(sRegistro,'|',9);
        sFone1      := SeparaStrings(sRegistro,'|',10);
        sFone2      := SeparaStrings(sRegistro,'|',11);
        sFax        := SeparaStrings(sRegistro,'|',12);
        sCelular    := SeparaStrings(sRegistro,'|',13);
        sEmail      := SeparaStrings(sRegistro,'|',14);
        sSite       := SeparaStrings(sRegistro,'|',15);
        sDataNasc   := SeparaStrings(sRegistro,'|',16);
        sRazao      := SeparaStrings(sRegistro,'|',17);
        sCredito    := SeparaStrings(sRegistro,'|',18);
        sVendedor   := SeparaStrings(sRegistro,'|',19);
        sTabPreco   := SeparaStrings(sRegistro,'|',20);
        sPais       := SeparaStrings(sRegistro,'|',21);
        sMunicipio  := SeparaStrings(sRegistro,'|',22);
        sNro        := SeparaStrings(sRegistro,'|',23);

        if (sMunicipio = '0') or (sMunicipio = '') or (sMunicipio = null) then sMunicipio := '2507507';

        if sDataNasc <> '' then
          sDataNasc := CorrigeData(sDataNasc);
        if trim(sCredito) = '' then
          sCredito := '0'
        else
          sCredito := Replace(sCredito,sDecimal,'');

        if trim(sTabPreco) = '' then
          sTabPreco := '0';

        if trim(sEstado) = '' then begin
          sEstado := DMProjeto.sUFEmpresa;
          if not bExistem then
            DlgMsg.ShowMsg(6017);
          bExistem := true;
        end;

        if (length(sCodigo) > DMBBClientes.C_ClientesCodigo.Size) or
          (length(sNome) > DMBBClientes.C_ClientesNome.Size) or
          (length(sSSN) > DMBBClientes.C_ClientesCPF_CNPJ.Size) or
          (length(sEIN) > DMBBClientes.C_ClientesINSCRICAO_EST.Size) or
          (length(sEndereco) > DMBBClientes.C_ClientesEndereco.Size) or
          (length(sBairro) > DMBBClientes.C_ClientesBairro.Size) or
          (length(sCidade) > DMBBClientes.C_ClientesCidade.Size) or
          (length(sEstado) > DMBBClientes.C_ClientesUF.Size) or
          (length(sCep) > DMBBClientes.C_ClientesCep.Size) or
          (length(sCaixa) > DMBBClientes.C_ClientesCaixaPostal.Size) or
          (length(sFone1) > DMBBClientes.C_ClientesFone1.Size) or
          (length(sFone2) > DMBBClientes.C_ClientesFone2.Size) or
          (length(sFax) > DMBBClientes.C_ClientesFax.Size) or
          (length(sCelular) > DMBBClientes.C_ClientesCelular.Size) or
          (length(sEmail) > DMBBClientes.C_ClientesEmail.Size) or
          (length(sSite) > DMBBClientes.C_ClientesSite.Size) or
          (length(sRazao) > DMBBClientes.C_ClientesRazao.Size)
          then begin
          DlgMsg.ShowMsg(6013);
          bCancelar := true;
          break;
        end;

        with DMBBClientes do begin
          nIDVendedor := 0;
          if sVendedor <> '' then
            nIDVendedor := DMBBClientes.LocalizaVendedor(sVendedor);
          if (sVendedor <> '') and (nIDVendedor = 0) then begin
            DlgMsg.ShowMsg(6015,['funcion�rios']);
            bCancelar := true;
            break;
          end
          else begin
            if not bLocalizaChave then
              C_Clientes.append
            else begin
              if not DMBBClientes.C_Clientes.locate('codigo',sCodigo,[loCaseInsensitive]) then
                C_Clientes.append
              else
                C_Clientes.edit;
            end;

            C_ClientesCodigo.value     := sCodigo;
            C_ClientesNome.value       := sNome;
            C_ClientesCPF_CNPJ.value        := sSSN;
            C_ClientesINSCRICAO_EST.value        := sEIN;
            C_ClientesEndereco.value   := sEndereco;
            C_ClientesBairro.value   := sBairro;
            C_ClientesCidade.value     := sCidade;
            C_ClientesUF.value         := sEstado;
            C_ClientesCep.value        := sCep;
            C_ClientesFone1.value      := sFone1;
            C_ClientesFONE2.value      := sFone2;
            C_ClientesFax.value        := sFax;
            C_ClientesCelular.value    := sCelular;
            C_ClientesEmail.value      := sEmail;
            C_ClientesSite.value       := sSite;
            if (trim(sDatanasc) <> '') and (trim(sDatanasc) <> '0') then
              C_ClientesDataNasc.value := StrToDate(sDatanasc);
            C_ClientesRazao.value    := sRazao;
            C_ClientesCredito.value    := StrToCurr(sCredito);
            C_ClientesVendedor.value   := nIDVendedor;
            C_ClientesTabelaPreco.value   := StrToInt(sTabPreco);
            C_ClientesPais.value := StrToInt(sPais);
            C_ClientesMunicipio.value := StrToInt(sMunicipio);
            C_ClientesNro.value := sNro;
            C_Clientes.post;
          end;
        end;
        Readln(ArqTexto,sRegistro);
      end;
      CloseFile(ArqTexto);
      if not bCancelar then begin
        GravarClientes;
        DMBBClientes.C_Clientes.close;
        DlgMsg.ShowMsg(4001);

        AtualizaImportacaoClientes;

      end
      else begin
        if DlgMsg.ShowMsg(4021) = 100 then begin
          GravarClientes;
          DMBBClientes.C_Clientes.close;
          AtualizaImportacaoClientes;
        end
        else
          DMBBClientes.C_Clientes.CancelUpdates;
        bCancelar := false;
      end;
    except
      on e:Exception do begin
        CloseFile(ArqTexto);
        DlgMsg.ShowMsg(4002,[e.message]);
      end;
    end;
    AtualizaImportacaoClientes;
  end;
end;

procedure TDlgImportacao.AtualizaImportacaoClientes;
begin
  DMBBClientes.C_Clientes.enablecontrols;
  DMBBClientes.bImportando := false;
  lblRegistroClientes.visible := false;
  lblImportClientes.visible := false;
  btImportClientes.visible := false;
  gImportClientes.progress := 0;
  gImportClientes.visible := false;
end;

procedure TDlgImportacao.TS_Label156Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirCabecalho( ppCabecalho9 );
  ppTitulo.caption := sTituloRel +' das Parcelas a Receber';
  Q_Layout.close;
  Q_Layout.params[0].asstring := 'ParcelasReceber';
  Q_Layout.open;
  ppImportacaoF.Print;
end;

procedure TDlgImportacao.TS_Label157Click(Sender: TObject);
var Arq: TextFile;
    nArq: integer;
begin
  inherited;
  if not FileExists(DMProjeto.ProgPath+'parcelas.txt') then begin
    nArq := FileCreate(DMProjeto.ProgPath+'parcelas.txt');
    FileClose(nArq);
  end;
  AssignFile(Arq,DMProjeto.ProgPath+'parcelas.txt');
  Rewrite(Arq);
  Writeln(Arq,'000120|5874|1|5874-1|03/15/2001|258.47');
  Writeln(Arq,'000451|244|1|244-1|06/22/2001|100');
  Writeln(Arq,'544|988|1|988-1|04/18/2001|300.00');
  CloseFile(Arq);
  WinExec(PChar('NotePad.exe '+DMProjeto.ProgPath+'parcelas.txt'),sw_Show);
end;

procedure TDlgImportacao.TS_Label159Click(Sender: TObject);
var sArquivo,sRegistro,sDecimal: string;
    ArqTexto: TextFile;
    nLinhas,nIDCliente: integer;
    sCodigo,sInvoice,sParcela,sTitulo,sVencimento,sValor,sNome: string;
begin
  inherited;
  if DecimalSeparator = '.' then
    sDecimal := ','
  else
    sDecimal := '.';
  if OpenDialog.Execute then begin
    bGravar100 := DlgMsg.ShowMsg(4024) = 100;
    bLocalizaChave := DlgMsg.ShowMsg(4023) = 100;
    lblRegistroClientes.visible := true;
    lblImportClientes.visible := true;
    btImportClientes.visible := true;
    gImportClientes.progress := 0;
    gImportClientes.visible := true;

    try
      bCancelar := false;
      DMBBClientes.bImportando := true;
      DMBBClientes.C_Parcelas.disablecontrols;
      if not DMBBClientes.C_Parcelas.Active then begin
        DMBBClientes.C_Parcelas.fetchparams;
        if not bLocalizaChave then
          DMBBClientes.C_Parcelas.params[0].asdatetime := 0
        else
          DMBBClientes.C_Parcelas.params[0].asdatetime := DMProjeto.dDataSistema;
        DMBBClientes.C_Parcelas.open;
      end
      else if DMBBClientes.C_Parcelas.state in [dsEdit,dsInsert] then
         DMBBClientes.C_Parcelas.cancel;

      sArquivo := OpenDialog.filename;
      AssignFile(ArqTexto,sArquivo);
      Reset(ArqTexto);
      // Contando as Linhas
      nLinhas := 0;
      Readln(ArqTexto,sRegistro);
      while (sRegistro <> '') do begin
        nLinhas := nLinhas + 1;
        Readln(ArqTexto,sRegistro);
      end;
      gImportClientes.maxvalue := nLinhas;
      Reset(ArqTexto);
      Readln(ArqTexto,sRegistro);
      Q_Layout.close;
      Q_Layout.params[0].asstring := 'ParcelasReceber';
      Q_Layout.open;
      Q_Layout.last;
      while (sRegistro <> '') do begin
        if bCancelar then
          break;
        if bGravar100 and (gImportClientes.progress > 0) and ((gImportClientes.progress mod 100) = 0) then
          GravarParcelas;
        gImportClientes.progress := gImportClientes.progress + 1;
        lblRegistroClientes.caption := 'Registro: '+IntToStr(gImportClientes.progress)+'/'+IntToStr(gImportClientes.Maxvalue);
        Application.ProcessMessages;
        if ContaStrings(sRegistro,'|') <> Q_Layout.recordcount then begin
          DlgMsg.ShowMsg(6014);
          bCancelar := true;
          break;
        end;
        sCodigo      := SeparaStrings(sRegistro,'|',1);
        sInvoice     := SeparaStrings(sRegistro,'|',2);
        sParcela     := SeparaStrings(sRegistro,'|',3);
        sTitulo      := SeparaStrings(sRegistro,'|',4);
        sVencimento  := SeparaStrings(sRegistro,'|',5);
        sValor       := SeparaStrings(sRegistro,'|',6);

        if trim(sParcela) = '' then
          sParcela := '0'
        else
          sParcela := Replace(sParcela,sDecimal,'');

        if trim(sVencimento) = '' then
          sVencimento := DateToStr(DMProjeto.dDataSistema);

        if trim(sValor) = '' then
          sValor := '0'
        else
          sValor := Replace(sValor,sDecimal,'');

        if (length(sInvoice) > DMBBClientes.C_ParcelasNotaFiscal.Size) or
          (length(sTitulo) > DMBBClientes.C_ParcelasTitulo.Size) then begin
          DlgMsg.ShowMsg(6013);
          bCancelar := true;
          break;
        end;

        with DMBBClientes do begin // Invent�rio
          nIDCliente := 0;
          if sCodigo <> '' then
            nIDCliente := LocalizaCliente(sCodigo,sNome);
          if (sCodigo <> '') and (nIDCliente = 0) then begin
            DlgMsg.ShowMsg(6015,['clientes']);
            bCancelar := true;
            break;
          end
          else begin
            if not bLocalizaChave then
              C_Parcelas.append
            else begin
              if not C_Parcelas.Locate('titulo',sTitulo,[]) then
                C_Parcelas.append
              else
                C_Parcelas.edit;
            end;
            C_ParcelasCliente.value     := nIDCliente;
            C_ParcelasNome.value        := sNome;
            C_ParcelasNotafiscal.value  := sInvoice;
            C_ParcelasParcela.value     := StrToInt(sParcela);
            C_ParcelasTitulo.value      := sTitulo;
            C_ParcelasVencimento.value  := StrToDate(sVencimento);
            C_ParcelasValor.value       := StrToCurr(sValor);
            C_Parcelas.post;
          end;
        end;
        Readln(ArqTexto,sRegistro);
      end;
      CloseFile(ArqTexto);
      if not bCancelar then begin
        GravarParcelas;
        DMBBClientes.C_Parcelas.close;
        DlgMsg.ShowMsg(4001);

        AtualizaImportacaoParcelas;
      end
      else begin
        if DlgMsg.ShowMsg(4021) = 100 then begin
          GravarParcelas;
          DMBBClientes.C_Parcelas.close;
          AtualizaImportacaoParcelas;
        end
        else
          DMBBClientes.C_Parcelas.CancelUpdates;
        bCancelar := false;
      end;
    except
      on e:Exception do begin
        CloseFile(ArqTexto);
        DlgMsg.ShowMsg(4002,[e.message]);
      end;
    end;
    AtualizaImportacaoParcelas;
  end;
end;

procedure TDlgImportacao.AtualizaImportacaoParcelas;
begin
  DMBBClientes.C_Parcelas.enablecontrols;
  DMBBClientes.bImportando := false;
  lblRegistroClientes.visible := false;
  btImportClientes.visible := false;
  lblImportClientes.visible := false;
  gImportClientes.progress := 0;
  gImportClientes.visible := false;
end;


procedure TDlgImportacao.TS_Label154Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirCabecalho( ppCabecalho9 );
  ppTitulo.caption := sTituloRel +' dos Cheques de Clientes';
  Q_Layout.close;
  Q_Layout.params[0].asstring := 'ChequesReceber';
  Q_Layout.open;
  ppImportacaoF.Print;
end;

procedure TDlgImportacao.TS_Label158Click(Sender: TObject);
var Arq: TextFile;
    nArq: integer;
begin
  inherited;
  if not FileExists(DMProjeto.ProgPath+'cheques.txt') then begin
    nArq := FileCreate(DMProjeto.ProgPath+'cheques.txt');
    FileClose(nArq);
  end;
  AssignFile(Arq,DMProjeto.ProgPath+'cheques.txt');
  Rewrite(Arq);
  Writeln(Arq,'000120|1214|123|09/29/2001|144.47|1000|1044');
  Writeln(Arq,'000146|544||01/07/2001|874.22');
  Writeln(Arq,'000188|850245|6554|05/16/2001|12545.65');
  CloseFile(Arq);
  WinExec(PChar('NotePad.exe '+DMProjeto.ProgPath+'cheques.txt'),sw_Show);
end;

procedure TDlgImportacao.TS_Label160Click(Sender: TObject);
var sArquivo,sRegistro,sDecimal: string;
    ArqTexto: TextFile;
    nLinhas,nIDCliente,nIDContaReceber,nIDContaReceita: integer;
    sCodigo,sInvoice,sCheque,sVencimento,sValor,sNome,sContaReceber,sContaReceita: string;
begin
  inherited;
  if DecimalSeparator = '.' then
    sDecimal := ','
  else
    sDecimal := '.';
  if OpenDialog.Execute then begin
    bGravar100 := DlgMsg.ShowMsg(4024) = 100;
    bLocalizaChave := DlgMsg.ShowMsg(4023) = 100;
    lblRegistroClientes.visible := true;
    lblImportClientes.visible := true;
    btImportClientes.visible := true;
    gImportClientes.progress := 0;
    gImportClientes.visible := true;

    try
      bCancelar := false;
      DMBBClientes.bImportando := true;
      sArquivo := OpenDialog.filename;
      AssignFile(ArqTexto,sArquivo);
      Reset(ArqTexto);

      DMBBClientes.C_Cheques.disablecontrols;

      if not DMBBClientes.C_Cheques.Active then begin
        DMBBClientes.C_Cheques.fetchparams;
        if not bLocalizaChave then
          DMBBClientes.C_Cheques.params[0].asdatetime := 0
        else
          DMBBClientes.C_Cheques.params[0].asdatetime := DMProjeto.dDataSistema;
        DMBBClientes.C_Cheques.open;
      end
      else if DMBBClientes.C_Cheques.state in [dsEdit,dsInsert] then
         DMBBClientes.C_Cheques.cancel;

      // Contando as Linhas
      nLinhas := 0;
      Readln(ArqTexto,sRegistro);
      while (sRegistro <> '') do begin
        nLinhas := nLinhas + 1;
        Readln(ArqTexto,sRegistro);
      end;
      gImportClientes.maxvalue := nLinhas;
      Reset(ArqTexto);
      Readln(ArqTexto,sRegistro);
      Q_Layout.close;
      Q_Layout.params[0].asstring := 'ChequesReceber';
      Q_Layout.open;
      Q_Layout.last;
      while (sRegistro <> '') do begin
        if bCancelar then
          break;
        if bGravar100 and (gImportClientes.progress > 0) and ((gImportClientes.progress mod 100) = 0) then
          GravarCheques;
        gImportClientes.progress := gImportClientes.progress + 1;
        lblRegistroClientes.caption := 'Registro: '+IntToStr(gImportClientes.progress)+'/'+IntToStr(gImportClientes.Maxvalue);
        Application.ProcessMessages;
        if ContaStrings(sRegistro,'|') <> Q_Layout.recordcount then begin
          DlgMsg.ShowMsg(6014);
          bCancelar := true;
          break;
        end;
        sCodigo      := SeparaStrings(sRegistro,'|',1);
        sCheque      := SeparaStrings(sRegistro,'|',2);
        sInvoice     := SeparaStrings(sRegistro,'|',3);
        sVencimento  := SeparaStrings(sRegistro,'|',4);
        sValor       := SeparaStrings(sRegistro,'|',5);
        sContaReceber:= SeparaStrings(sRegistro,'|',6);
        sContaReceita:= SeparaStrings(sRegistro,'|',7);

        if trim(sCheque) = '' then
          sCheque := '0'
        else
          sCheque := Replace(sCheque,sDecimal,'');

        if trim(sVencimento) = '' then
          sVencimento := DateToStr(DMProjeto.dDataSistema);

        if trim(sValor) = '' then
          sValor := '0'
        else
          sValor := Replace(sValor,sDecimal,'');

        if (length(sInvoice) > DMBBClientes.C_ChequesNotaFiscal.Size) then begin
          DlgMsg.ShowMsg(6013);
          bCancelar := true;
          break;
        end;

        with DMBBClientes do begin // Invent�rio
          nIDCliente := 0;
          nIDContaReceber   := 0;
          nIDContaReceita := 0;

          if sCodigo <> '' then
            nIDCliente := LocalizaCliente(sCodigo,sNome);
//          if sContaReceber <> '' then
//            nIDContaReceber := LocalizaConta(sContaReceber);
          if sContaReceita <> '' then
            nIDContaReceita := LocalizaConta(sContaReceita);

          if (sCodigo <> '') and (nIDCliente = 0) then begin
            DlgMsg.ShowMsg(6015,['clientes']);
            bCancelar := true;
            break;
          end
{          else if (sContaReceber <> '') and (nIDContaReceber = 0) then begin
            DlgMsg.ShowMsg(6015,['contas']);
            bCancelar := true;
            break;
          end}
          else if (sContaReceita <> '') and (nIDContaReceita = 0) then begin
            DlgMsg.ShowMsg(6015,['contas']);
            bCancelar := true;
            break;
          end
          else begin
            if not bLocalizaChave then
              C_Cheques.append
            else begin
              if not C_Cheques.locate('numcheque;favorecido',VarArrayOf([sCheque,nIDCliente]),[loCaseInsensitive]) then
                C_Cheques.append
              else
                C_Cheques.edit;
            end;
            C_ChequesNumCheque.value   := StrToInt(sCheque);
            C_ChequesFavorecido.value  := nIDCliente;
            C_ChequesNome.value        := sNome;
            C_ChequesNotafiscal.value  := sInvoice;
            C_ChequesVencimento.value  := StrToDate(sVencimento);
            C_ChequesValor.value       := StrToCurr(sValor);
//            if nIDContaReceber > 0 then
//              C_ChequesContaReceber.value   := nIDContaReceber;
            if nIDContaReceita > 0 then
              C_ChequesContaReceita.value := nIDContaReceita;
            C_Cheques.post;
          end;
        end;
        Readln(ArqTexto,sRegistro);
      end;
      CloseFile(ArqTexto);
      if not bCancelar then begin
        GravarCheques;
        DMBBClientes.C_Cheques.close;
        DlgMsg.ShowMsg(4001);

        AtualizaImportacaoCheques;
      end
      else begin
        if DlgMsg.ShowMsg(4021) = 100 then begin
          AtualizaImportacaoCheques;
        end
        else
          DMBBClientes.C_Cheques.CancelUpdates;
        bCancelar := false;
      end;
    except
      on e:Exception do begin
        DlgMsg.ShowMsg(4002,[e.message]);
      end;
    end;
    AtualizaImportacaoCheques;
  end;
end;

procedure TDlgImportacao.AtualizaImportacaoCheques;
begin
  DMBBClientes.C_Cheques.enablecontrols;
  DMBBClientes.bImportando := false;
  lblRegistroClientes.visible := false;
  btImportClientes.visible := false;
  lblImportClientes.visible := false;
  gImportClientes.progress := 0;
  gImportClientes.visible := false;
end;

procedure TDlgImportacao.TS_Label489Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirCabecalho( ppCabecalho9 );
  ppTitulo.caption := sTituloRel +' do Cadastro de Fornecedores';
  Q_Layout.close;
  Q_Layout.params[0].asstring := 'Fornecedores';
  Q_Layout.open;
  ppImportacaoF.Print;
end;

procedure TDlgImportacao.TS_Label491Click(Sender: TObject);
var Arq: TextFile;
    nArq: integer;
begin
  inherited;
  if not FileExists(DMProjeto.ProgPath+'fornecedores.txt') then begin
    nArq := FileCreate(DMProjeto.ProgPath+'fornecedores.txt');
    FileClose(nArq);
  end;
  AssignFile(Arq,DMProjeto.ProgPath+'fornecedores.txt');
  Rewrite(Arq);
  Writeln(Arq,'000120|SyncTech|||Av. Julia Frreire, 617|Joao Pessoa|PB|58040040||83-2441422||||'+
  'mjrantunes@hotmail.com.br|www.synctech.com.br|S|150.25');
  Writeln(Arq,'000089|Sunrise|454.00.2244|74-2224557|180 Softhouse - Suite 04|Allston|MA|45444|32125|(508)617-782.1661||(617)782.0271||'+
  '||N|');
  Writeln(Arq,'000083|Income Tax Plus|784.14.5444|54-4457202|196 Harvard Ave - Suite 04|Allston|MA|02134|32125|(508)617-782.1661||(617)782.0271||'+
  '||N|');
  Writeln(Arq,'000085|EletroShop|879.12.1334|71-2135456|59 Union Sq. - Suite 209|Somerville|MA|02143|124998|(617)666-9992||(617)666.1996||'+
  '|||');
  Writeln(Arq,'000095|SyncTech|244.54.7849|42-5154573|11 Mill St. - 2nd Floor|Lowell|MA|01852||(978)459-4547||(978)459.6131||'+
  '|||');
  CloseFile(Arq);
  WinExec(PChar('NotePad.exe '+DMProjeto.ProgPath+'fornecedores.txt'),sw_Show);
end;

procedure TDlgImportacao.TS_Label490Click(Sender: TObject);
var sArquivo,sRegistro,sDecimal: string;
    ArqTexto: TextFile;
    nLinhas: integer;
    sCodigo,sNome,sSSN,sEIN,sEndereco,sBairro,sCidade,sEstado,sCep,sCaixa,sFone1,sFone2,sFax,sCelular: string;
    sEmail,sSite,sDataNasc,sRazao,sCredito, sPais, sMunicipio: string;
    bExistem: boolean;
begin
  inherited;
  if DecimalSeparator = '.' then
    sDecimal := ','
  else
    sDecimal := '.';
  if OpenDialog.Execute then begin
    bGravar100 := DlgMsg.ShowMsg(4024) = 100;
    bLocalizaChave := DlgMsg.ShowMsg(4023) = 100;
    lblRegistroFornecedores.visible := true;
    lblImportFornecedores.visible := true;
    btImportFornecedores.visible := true;
    gImportFornecedores.progress := 0;
    gImportFornecedores.visible := true;

    try
      bCancelar := false;
      DMBBFornecedores.bImportando := true;
      DMBBFornecedores.C_Fornecedores.disablecontrols;
      if not DMBBFornecedores.C_Fornecedores.Active then begin
        DMBBFornecedores.C_Fornecedores.close;
        DMBBFornecedores.C_Fornecedores.fetchparams;
        if bLocalizaChave then
          DMBBFornecedores.C_Fornecedores.params[0].asinteger := 1
        else
          DMBBFornecedores.C_Fornecedores.params[0].asinteger := 0;
        DMBBFornecedores.C_Fornecedores.open;
      end
      else if DMBBFornecedores.C_Fornecedores.state in [dsEdit,dsInsert] then
         DMBBFornecedores.C_Fornecedores.cancel;

      sArquivo := OpenDialog.filename;
      AssignFile(ArqTexto,sArquivo);
      Reset(ArqTexto);
      // Contando as Linhas
      nLinhas := 0;
      Readln(ArqTexto,sRegistro);
      while (sRegistro <> '') do begin
        nLinhas := nLinhas + 1;
        Readln(ArqTexto,sRegistro);
      end;
      gImportFornecedores.maxvalue := nLinhas;
      Reset(ArqTexto);
      Readln(ArqTexto,sRegistro);
      Q_Layout.close;
      Q_Layout.params[0].asstring := 'Fornecedores';
      Q_Layout.open;
      Q_Layout.last;
      bExistem := false;
      while (sRegistro <> '') do begin
        if bCancelar then
          break;
        if bGravar100 and (gImportFornecedores.progress > 0) and ((gImportFornecedores.progress mod 100) = 0) then
          GravarFornecedores;
        gImportFornecedores.progress := gImportFornecedores.progress + 1;
        lblRegistroFornecedores.caption := 'Registro: '+IntToStr(gImportFornecedores.progress)+'/'+IntToStr(gImportFornecedores.Maxvalue);
        Application.ProcessMessages;

        if ContaStrings(sRegistro,'|') <> Q_Layout.recordcount then begin
          DlgMsg.ShowMsg(6014);
          bCancelar := true;
          break;
        end;
        sCodigo     := AdicionarStr(SeparaStrings(sRegistro,'|',1),'0',6);
        sNome       := SeparaStrings(sRegistro,'|',2);
        sSSN        := SeparaStrings(sRegistro,'|',3);
        sEIN        := SeparaStrings(sRegistro,'|',4);
        sEndereco   := COPY(replace(SeparaStrings(sRegistro,'|',5),#13#10,' '),1,50);
        sBairro     := SeparaStrings(sRegistro,'|',6);
        sCidade     := SeparaStrings(sRegistro,'|',7);
        sEstado     := SeparaStrings(sRegistro,'|',8);
        sCep        := SeparaStrings(sRegistro,'|',9);
        sFone1      := SeparaStrings(sRegistro,'|',10);
        sFone2      := SeparaStrings(sRegistro,'|',11);
        sFax        := SeparaStrings(sRegistro,'|',12);
        sCelular    := SeparaStrings(sRegistro,'|',13);
        sEmail      := copy(SeparaStrings(sRegistro,'|',14),1,40);
        sSite       := SeparaStrings(sRegistro,'|',15);
        sRazao      := SeparaStrings(sRegistro,'|',16);
        sCredito    := SeparaStrings(sRegistro,'|',17);
        sPais       := SeparaStrings(sRegistro,'|',18);
        sMunicipio  := SeparaStrings(sRegistro,'|',19);

        if trim(sCredito) = '' then
          sCredito := '0'
        else
          sCredito := Replace(sCredito,sDecimal,'');

          if trim(sPais) = '' then
          sPais := '0'
        else
          sPais := Replace(sPais,sDecimal,'');

          if trim(sMunicipio) = '' then
          sMunicipio := '0'
        else
          sMunicipio := Replace(sMunicipio,sDecimal,'');

        if trim(sEstado) = '' then begin
          sEstado := DMProjeto.sUFEmpresa;
          if not bExistem then
            DlgMsg.ShowMsg(6017);
          bExistem := true;
        end;

        if (length(sCodigo) > DMBBFornecedores.C_FornecedoresCodigo.Size) or
          (length(sNome) > DMBBFornecedores.C_FornecedoresNome.Size) or
          (length(sSSN) > DMBBFornecedores.C_FornecedoresCPF_CNPJ.Size) or
          (length(sEIN) > DMBBFornecedores.C_FornecedoresINSCRICAO_EST.Size) or
          (length(sEndereco) > DMBBFornecedores.C_FornecedoresEndereco.Size) or
          (length(sCidade) > DMBBFornecedores.C_FornecedoresCidade.Size) or
          (length(sEstado) > DMBBFornecedores.C_FornecedoresUF.Size) or
          (length(sCep) > DMBBFornecedores.C_FornecedoresCep.Size) or
          (length(sCaixa) > DMBBFornecedores.C_FornecedoresCaixaPostal.Size) or
          (length(sFone1) > DMBBFornecedores.C_FornecedoresFone1.Size) or
          (length(sFone2) > DMBBFornecedores.C_FornecedoresFone2.Size) or
          (length(sFax) > DMBBFornecedores.C_FornecedoresFax.Size) or
          (length(sCelular) > DMBBFornecedores.C_FornecedoresCelular.Size) or
          (length(sEmail) > DMBBFornecedores.C_FornecedoresEmail.Size) or
          (length(sSite) > DMBBFornecedores.C_FornecedoresSite.Size) or
          (length(sRazao) > DMBBFornecedores.C_FornecedoresRazao.Size)
          then begin
          DlgMsg.ShowMsg(6013);
          bCancelar := true;
          break;
        end;

        with DMBBFornecedores do begin
          if not bLocalizaChave then
            C_Fornecedores.append
          else begin
            if not DMBBFornecedores.C_Fornecedores.locate('codigo',sCodigo,[loCaseInsensitive]) then
              C_Fornecedores.append
            else
              C_Fornecedores.edit;
          end;

          C_FornecedoresCodigo.value     := sCodigo;
          C_FornecedoresNome.value       := sNome;
          C_FornecedoresCPF_CNPJ.value        := sSSN;
          C_FornecedoresINSCRICAO_EST.value        := sEIN;
          C_FornecedoresEndereco.value   := sEndereco;
          C_FornecedoresBairro.value   := sBairro;
          C_FornecedoresCidade.value     := sCidade;
          C_FornecedoresUF.value         := sEstado;
          C_FornecedoresCep.value        := sCep;
          C_FornecedoresCaixaPostal.value:= sCaixa;
          C_FornecedoresFone1.value      := sFone1;
          C_FornecedoresFax.value        := sFax;
          C_FornecedoresCelular.value    := sCelular;
          C_FornecedoresEmail.value      := sEmail;
          C_FornecedoresSite.value       := sSite;
          C_FornecedoresRazao.value      := sRazao;
          C_FornecedoresCredito.value    := StrToCurr(sCredito);
          C_FornecedoresPais.Value       := StrToInt(sPais);
          C_FornecedoresMunicipio.Value  := StrToInt(sMunicipio);
          C_Fornecedores.post;
        end;
        Readln(ArqTexto,sRegistro);
      end;
             CloseFile(ArqTexto);
      if not bCancelar then begin
        GravarFornecedores;
        DMBBFornecedores.C_Fornecedores.close;
{        DMBBFornecedores.C_Fornecedores.fetchparams;
        DMBBFornecedores.C_Fornecedores.params[0].asinteger := 1;
        DMBBFornecedores.C_Fornecedores.open;}
        DlgMsg.ShowMsg(4001);

        AtualizaImportacaoFornecedores;
      end
      else begin
        if DlgMsg.ShowMsg(4021) = 100 then begin
          GravarFornecedores;
          DMBBFornecedores.C_Fornecedores.close;
          AtualizaImportacaoFornecedores;
        end
        else
          DMBBFornecedores.C_Fornecedores.CancelUpdates;
        bCancelar := false;
      end;
    except
      on e:Exception do begin
        CloseFile(ArqTexto);
        DlgMsg.ShowMsg(4002,[e.message]);
      end;
    end;
    AtualizaImportacaoFornecedores;
  end;
end;

procedure TDlgImportacao.AtualizaImportacaoFornecedores;
begin
  DMBBFornecedores.C_Fornecedores.enablecontrols;
  DMBBFornecedores.bImportando := false;
  lblRegistroFornecedores.visible := false;
  lblImportFornecedores.visible := false;
  btImportFornecedores.visible := false;
  gImportFornecedores.progress := 0;
  gImportFornecedores.visible := false;
end;


procedure TDlgImportacao.TS_Label495Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirCabecalho( ppCabecalho9 );
  ppTitulo.caption := sTituloRel +' das Parcelas a Pagar';
  Q_Layout.close;
  Q_Layout.params[0].asstring := 'ParcelasPagar';
  Q_Layout.open;
  ppImportacaoF.Print;
end;

procedure TDlgImportacao.TS_Label496Click(Sender: TObject);
var Arq: TextFile;
    nArq: integer;
begin
  inherited;
  if not FileExists(DMProjeto.ProgPath+'parcelaspagar.txt') then begin
    nArq := FileCreate(DMProjeto.ProgPath+'parcelaspagar.txt');
    FileClose(nArq);
  end;
  AssignFile(Arq,DMProjeto.ProgPath+'parcelaspagar.txt');
  Rewrite(Arq);
  Writeln(Arq,'005457|3375|1|5874-1|03/15/2001|258.47');
  Writeln(Arq,'000877|414|1|244-1|06/22/2001|100');
  Writeln(Arq,'325|544|1|988-1|04/18/2001|300.00');
  CloseFile(Arq);
  WinExec(PChar('NotePad.exe '+DMProjeto.ProgPath+'parcelaspagar.txt'),sw_Show);
end;

procedure TDlgImportacao.TS_Label498Click(Sender: TObject);
var sArquivo,sRegistro,sDecimal: string;
    ArqTexto: TextFile;
    nLinhas,nIDFornecedor: integer;
    sCodigo,sInvoice,sParcela,sTitulo,sVencimento,sValor,sNome: string;
begin
  inherited;
  if DecimalSeparator = '.' then
    sDecimal := ','
  else
    sDecimal := '.';
  if OpenDialog.Execute then begin
    bGravar100 := DlgMsg.ShowMsg(4024) = 100;
    bLocalizaChave := DlgMsg.ShowMsg(4023) = 100;
    lblRegistroFornecedores.visible := true;
    lblImportFornecedores.visible := true;
    btImportFornecedores.visible := true;
    gImportFornecedores.progress := 0;
    gImportFornecedores.visible := true;

    try
      bCancelar := false;
      DMBBFornecedores.bImportando := true;
      DMBBFornecedores.C_Parcelas.disablecontrols;
      if not DMBBFornecedores.C_Parcelas.Active then begin
        DMBBFornecedores.C_Parcelas.fetchparams;
        if not bLocalizaChave then
          DMBBFornecedores.C_Parcelas.params[0].asdatetime := 0
        else
          DMBBFornecedores.C_Parcelas.params[0].asdatetime := DMProjeto.dDataSistema;
        DMBBFornecedores.C_Parcelas.open;
      end
      else if DMBBFornecedores.C_Parcelas.state in [dsEdit,dsInsert] then
         DMBBFornecedores.C_Parcelas.cancel;

      sArquivo := OpenDialog.filename;
      AssignFile(ArqTexto,sArquivo);
      Reset(ArqTexto);
      // Contando as Linhas
      nLinhas := 0;
      Readln(ArqTexto,sRegistro);
      while (sRegistro <> '') do begin
        nLinhas := nLinhas + 1;
        Readln(ArqTexto,sRegistro);
      end;
      gImportFornecedores.maxvalue := nLinhas;
      Reset(ArqTexto);
      Readln(ArqTexto,sRegistro);
      Q_Layout.close;
      Q_Layout.params[0].asstring := 'ParcelasPagar';
      Q_Layout.open;
      Q_Layout.last;
      while (sRegistro <> '') do begin
        if bCancelar then
          break;
        if bGravar100 and (gImportFornecedores.progress > 0) and ((gImportFornecedores.progress mod 100) = 0) then
          GravarParcelasF;
        gImportFornecedores.progress := gImportFornecedores.progress + 1;
        lblRegistroFornecedores.caption := 'Registro: '+IntToStr(gImportFornecedores.progress)+'/'+IntToStr(gImportFornecedores.Maxvalue);
        Application.ProcessMessages;
        if ContaStrings(sRegistro,'|') <> Q_Layout.recordcount then begin
          DlgMsg.ShowMsg(6014);
          bCancelar := true;
          break;
        end;
        sCodigo      := SeparaStrings(sRegistro,'|',1);
        sInvoice     := SeparaStrings(sRegistro,'|',2);
        sParcela     := SeparaStrings(sRegistro,'|',3);
        sTitulo      := SeparaStrings(sRegistro,'|',4);
        sVencimento  := SeparaStrings(sRegistro,'|',5);
        sValor       := SeparaStrings(sRegistro,'|',6);

        if (length(sInvoice) > DMBBFornecedores.C_ParcelasNotaFiscal.Size) or
          (length(sTitulo) > DMBBFornecedores.C_ParcelasTitulo.Size) then begin
          DlgMsg.ShowMsg(6013);
          bCancelar := true;
          break;
        end;

        if trim(sParcela) = '' then
          sParcela := '0'
        else
          sParcela := Replace(sParcela,sDecimal,'');

        if trim(sVencimento) = '' then
          sVencimento := DateToStr(DMProjeto.dDataSistema);

        if trim(sValor) = '' then
          sValor := '0'
        else
          sValor := Replace(sValor,sDecimal,'');

        with DMBBFornecedores do begin // Invent�rio
          nIDFornecedor := 0;
          if sCodigo <> '' then
            nIDFornecedor := LocalizaFornecedor(sCodigo,sNome,2);
          if (sCodigo <> '') and (nIDFornecedor = 0) then begin
            DlgMsg.ShowMsg(6015,['fornecedores']);
            bCancelar := true;
            break;
          end
          else begin
            if not bLocalizaChave then
              C_Parcelas.append
            else begin
              if not C_Parcelas.Locate('fornecedor;titulo',VarArrayOf([nIDFornecedor,sTitulo]),[]) then
                C_Parcelas.append
              else
                C_Parcelas.edit;
            end;
            C_ParcelasFornecedor.value  := nIDFornecedor;
            C_ParcelasNome.value        := sNome;
            C_ParcelasNotafiscal.value  := sInvoice;
            C_ParcelasParcela.value     := StrToInt(sParcela);
            C_ParcelasTitulo.value      := sTitulo;
            C_ParcelasVencimento.value  := StrToDate(sVencimento);
            C_ParcelasValor.value       := StrToCurr(sValor);
            C_Parcelas.post;
          end;
        end;
        Readln(ArqTexto,sRegistro);
      end;
      CloseFile(ArqTexto);
      if not bCancelar then begin
        GravarParcelasF;
        DMBBFornecedores.C_Parcelas.close;
        DlgMsg.ShowMsg(4001);

        AtualizaImportacaoParcelasForn;

      end
      else begin
        if DlgMsg.ShowMsg(4021) = 100 then begin
          GravarParcelasF;
          DMBBFornecedores.C_Parcelas.close;
          AtualizaImportacaoParcelasForn;
        end
        else
          DMBBFornecedores.C_Parcelas.CancelUpdates;
        bCancelar := false;
      end;
    except
      on e:Exception do begin
        CloseFile(ArqTexto);
        DlgMsg.ShowMsg(4002,[e.message]);
      end;
    end;
    AtualizaImportacaoParcelasForn;
  end;
end;

procedure TDlgImportacao.AtualizaImportacaoParcelasForn;
begin
  DMBBFornecedores.C_Parcelas.enablecontrols;
  DMBBFornecedores.bImportando := false;
  lblRegistroFornecedores.visible := false;
  btImportFornecedores.visible := false;
  lblImportFornecedores.visible := false;
  gImportFornecedores.progress := 0;
  gImportFornecedores.visible := false;
end;


procedure TDlgImportacao.TS_Label494Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirCabecalho( ppCabecalho9 );
  ppTitulo.caption := sTituloRel +' dos Cheques Pagos � Compensar';
  Q_Layout.close;
  Q_Layout.params[0].asstring := 'ChequesPagar';
  Q_Layout.open;
  ppImportacaoF.Print;
end;

procedure TDlgImportacao.TS_Label497Click(Sender: TObject);
var Arq: TextFile;
    nArq: integer;
begin
  inherited;
  if not FileExists(DMProjeto.ProgPath+'chequesapagar.txt') then begin
    nArq := FileCreate(DMProjeto.ProgPath+'chequesapagar.txt');
    FileClose(nArq);
  end;
  AssignFile(Arq,DMProjeto.ProgPath+'chequesapagar.txt');
  Rewrite(Arq);
  Writeln(Arq,'000966|850123|123|09/29/2001|144.47|1050|1020');
  Writeln(Arq,'004557|825244||01/07/2001|874.22');
  Writeln(Arq,'005454|850245|6554|05/16/2001|12545.65');
  CloseFile(Arq);
  WinExec(PChar('NotePad.exe '+DMProjeto.ProgPath+'chequesapagar.txt'),sw_Show);
end;

procedure TDlgImportacao.TS_Label499Click(Sender: TObject);
var sArquivo,sRegistro,sDecimal: string;
    ArqTexto: TextFile;
    nLinhas,nIDFornecedor,nIDContaPagar,nIDContaDespesa: integer;
    sCodigo,sInvoice,sCheque,sVencimento,sValor,sNome,sContaPagar,sContaDespesa: string;
    nTipoFavImport: integer;
begin
  inherited;
  if DecimalSeparator = '.' then
    sDecimal := ','
  else
    sDecimal := '.';
  if OpenDialog.Execute then begin
    //nTipoFavImport := DlgMsg.ShowMsg(6027);
    //if nTipoFavImport = 100 then // Fornecedores
    //  nTipoFavImport := 2
    //else if nTipoFavImport = 200 then // Funcion�rios
    //  nTipoFavImport := 3
    //else if nTipoFavImport = 300 then // Clientes
    //  nTipoFavImport := 1;


    bGravar100 := DlgMsg.ShowMsg(4024) = 100;
    bLocalizaChave := DlgMsg.ShowMsg(4023) = 100;
    lblRegistroFornecedores.visible := true;
    lblImportFornecedores.visible := true;
    btImportFornecedores.visible := true;
    gImportFornecedores.progress := 0;
    gImportFornecedores.visible := true;

    try
      bCancelar := false;
      DMBBFornecedores.bImportando := true;
      sArquivo := OpenDialog.filename;
      AssignFile(ArqTexto,sArquivo);
      Reset(ArqTexto);

      DMBBFornecedores.C_Cheques.disablecontrols;

      if not DMBBFornecedores.C_Cheques.Active then begin
        DMBBFornecedores.C_Cheques.fetchparams;
        if not bLocalizaChave then
          DMBBFornecedores.C_Cheques.params[0].asdatetime := 0
        else
          DMBBFornecedores.C_Cheques.params[0].asdatetime := DMProjeto.dDataSistema;
        DMBBFornecedores.C_Cheques.open;
      end
      else if DMBBFornecedores.C_Cheques.state in [dsEdit,dsInsert] then
         DMBBFornecedores.C_Cheques.cancel;

      // Contando as Linhas
      nLinhas := 0;
      Readln(ArqTexto,sRegistro);
      while (sRegistro <> '') do begin
        nLinhas := nLinhas + 1;
        Readln(ArqTexto,sRegistro);
      end;
      gImportFornecedores.maxvalue := nLinhas;
      Reset(ArqTexto);
      Readln(ArqTexto,sRegistro);
      Q_Layout.close;
      Q_Layout.params[0].asstring := 'ChequesPagar';
      Q_Layout.open;
      Q_Layout.last;
      while (sRegistro <> '') do begin
        if bCancelar then
          break;
        if bGravar100 and (gImportFornecedores.progress > 0) and ((gImportFornecedores.progress mod 100) = 0) then
          GravarChequesF;
        gImportFornecedores.progress := gImportFornecedores.progress + 1;
        lblRegistroFornecedores.caption := 'Registro: '+IntToStr(gImportFornecedores.progress)+'/'+IntToStr(gImportFornecedores.Maxvalue);
        Application.ProcessMessages;
        if ContaStrings(sRegistro,'|') <> Q_Layout.recordcount then begin
          DlgMsg.ShowMsg(6014);
          bCancelar := true;
          break;
        end;
        sCodigo      := SeparaStrings(sRegistro,'|',1);
        sCheque      := SeparaStrings(sRegistro,'|',2);
        sInvoice     := SeparaStrings(sRegistro,'|',3);
        sVencimento  := SeparaStrings(sRegistro,'|',4);
        sValor       := SeparaStrings(sRegistro,'|',5);
        sContaPagar  := SeparaStrings(sRegistro,'|',6);
        sContaDespesa:= SeparaStrings(sRegistro,'|',7);

        if trim(sCheque) = '' then
          sCheque := '0'
        else
          sCheque := Replace(sCheque,sDecimal,'');

        if trim(sVencimento) = '' then
          sVencimento := DateToStr(DMProjeto.dDataSistema);

        if trim(sValor) = '' then
          sValor := '0'
        else
          sValor := Replace(sValor,sDecimal,'');

        if (length(sInvoice) > DMBBFornecedores.C_ChequesNotaFiscal.Size) then begin
          DlgMsg.ShowMsg(6013);
          bCancelar := true;
          break;
        end;

        with DMBBFornecedores do begin // Invent�rio
          nIDFornecedor   := 0;
          nIDContaPagar   := 0;
          nIDContaDespesa := 0;
          if sCodigo <> '' then
            nIDFornecedor := LocalizaFornecedor(sCodigo,sNome,nTipoFavImport);
          //if sContaPagar <> '' then
          //  nIDContaPagar := LocalizaConta(sContaPagar);
          //if sContaDespesa <> '' then
          //  nIDContaDespesa := LocalizaConta(sContaDespesa);
          {
          if (sCodigo <> '') and (nIDFornecedor = 0) then begin
            DlgMsg.ShowMsg(6015,['fornecedores']);
            bCancelar := true;
            break;
          end
          }
          {
          else if (sContaPagar <> '') and (nIDContaPagar = 0) then begin
            DlgMsg.ShowMsg(6015,['contas']);
            bCancelar := true;
            break;
          end
          else if (sContaDespesa <> '') and (nIDContaDespesa = 0) then begin
            //DlgMsg.ShowMsg(6015,['contas']);
            //bCancelar := true;
            //break;
            nIDContaDespesa := 12;
          end
          }
          //else begin
            if not bLocalizaChave then
              C_Cheques.append
            else begin
              if not C_Cheques.locate('numcheque;favorecido',VarArrayOf([sCheque,nIDFornecedor]),[loCaseInsensitive]) then
                C_Cheques.append
              else
                C_Cheques.edit;
            end;
            C_ChequesNumCheque.value   := StrToInt(sCheque);
            C_ChequesFavorecido.value  := nIDFornecedor;
            C_ChequesNome.value        := sNome;
            C_ChequesNotafiscal.value  := sInvoice;
            C_ChequesVencimento.value  := StrToDate(sVencimento);
            C_ChequesValor.value       := StrToCurr(sValor);
            if nIDContaPagar > 0 then
              C_ChequesContaPagar.value   := nIDContaPagar;
            if nIDContaDespesa > 0 then
              C_ChequesContaDespesa.value := nIDContaDespesa;
            C_Cheques.post;
          //end;
        end;
        Readln(ArqTexto,sRegistro);
      end;
      CloseFile(ArqTexto);
      if not bCancelar then begin
        GravarChequesF;
        DMBBFornecedores.C_Cheques.close;
        DlgMsg.ShowMsg(4001);

        AtualizaImportacaoChequesForn;
      end
      else begin
        if DlgMsg.ShowMsg(4021) = 100 then begin
          AtualizaImportacaoChequesForn;
        end
        else
          DMBBFornecedores.C_Cheques.CancelUpdates;
        bCancelar := false;
      end;
    except
      on e:Exception do begin
        DlgMsg.ShowMsg(4002,[e.message]);
      end;
    end;
    AtualizaImportacaoChequesForn;
  end;
end;

procedure TDlgImportacao.AtualizaImportacaoChequesForn;
begin
  DMBBFornecedores.C_Cheques.enablecontrols;
  DMBBFornecedores.bImportando := false;
  lblRegistroFornecedores.visible := false;
  btImportFornecedores.visible := false;
  lblImportFornecedores.visible := false;
  gImportFornecedores.progress := 0;
  gImportFornecedores.visible := false;
end;

procedure TDlgImportacao.TS_Label63Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirCabecalho( ppCabecalho9 );
  ppTitulo.caption := sTituloRel +' dos Grupos de Itens';
  Q_Layout.close;
  Q_Layout.params[0].asstring := 'Grupos';
  Q_Layout.open;
  ppImportacaoF.Print;
end;

procedure TDlgImportacao.TS_Label64Click(Sender: TObject);
var Arq: TextFile;
    nArq: integer;
begin
  inherited;
  if not FileExists(DMProjeto.ProgPath+'grupos.txt') then begin
    nArq := FileCreate(DMProjeto.ProgPath+'grupos.txt');
    FileClose(nArq);
  end;
  AssignFile(Arq,DMProjeto.ProgPath+'grupos.txt');
  Rewrite(Arq);
  Writeln(Arq,'1|00045|Limpeza');
  Writeln(Arq,'1|00024|Congelados');
  Writeln(Arq,'1|00023|Enlatados');
  CloseFile(Arq);
  WinExec(PChar('NotePad.exe '+DMProjeto.ProgPath+'grupos.txt'),sw_Show);
end;

procedure TDlgImportacao.TS_Label65Click(Sender: TObject);
var sArquivo,sRegistro: string;
    ArqTexto: TextFile;
    nLinhas: integer;
    sTipo,sCodigo,sDescricao,sDecimal: string;
    sCST, sReducaoCST, sFoto, sComissao, sDescontoM, sLucro, sSitECF: string;
begin
  inherited;
  if DecimalSeparator = ',' then
    sDecimal := ','
  else
    sDecimal := '.';
  if OpenDialog.Execute then begin
    lblRegistroItens.visible := true;
    lblImportItens.visible := true;
    btImportItens.visible := true;
    gImportItens.progress := 0;
    gImportItens.visible := true;

    try
      bCancelar := false;
      DMBBItens.bImportando := true;
      sArquivo := OpenDialog.filename;
      AssignFile(ArqTexto,sArquivo);
      Reset(ArqTexto);
      // Contando as Linhas
      nLinhas := 0;
      Readln(ArqTexto,sRegistro);
      while (sRegistro <> '') do begin
        nLinhas := nLinhas + 1;
        Readln(ArqTexto,sRegistro);
      end;
      gImportItens.maxvalue := nLinhas;
      Reset(ArqTexto);
      Readln(ArqTexto,sRegistro);
      Q_Layout.close;
      Q_Layout.params[0].asstring := 'Grupos';
      Q_Layout.open;
      Q_Layout.last;
      while (sRegistro <> '') do begin
        if bCancelar then
          break;
        gImportItens.progress := gImportItens.progress + 1;
        lblRegistroItens.caption := 'Registro: '+IntToStr(gImportItens.progress)+'/'+IntToStr(gImportItens.Maxvalue);
        Application.ProcessMessages;
        if ContaStrings(sRegistro,'|') <> Q_Layout.recordcount then begin
          DlgMsg.ShowMsg(6014);
          bCancelar := true;
          break;
        end;
        sTipo       := SeparaStrings(sRegistro,'|',1);
        sCodigo     := AdicionarStr(SeparaStrings(sRegistro,'|',2),'0',6);
        sDescricao  := SeparaStrings(sRegistro,'|',3);
        sCST        := SeparaStrings(sRegistro,'|',4);
        sReducaoCST := SeparaStrings(sRegistro,'|',5);
        sFoto       := SeparaStrings(sRegistro,'|',6);
        sComissao   := SeparaStrings(sRegistro,'|',7);
        sDescontoM  := SeparaStrings(sRegistro,'|',8);
        sLucro      := SeparaStrings(sRegistro,'|',9);
        sSitECF     := SeparaStrings(sRegistro,'|',10);

        if trim(sReducaoCST) = '' then
          sReducaoCST := '0'
        else
          sReducaoCST := Replace(sReducaoCST,sDecimal,'');

        if trim(sComissao) = '' then
          sComissao := '0'
        else
          sComissao := Replace(sComissao,sDecimal,'');

        if trim(sDescontoM) = '' then
          sDescontoM := '0'
        else
          sDescontoM := Replace(sDescontoM,sDecimal,'');

        if trim(sLucro) = '' then
          sLucro := '0'
        else
          sLucro := Replace(sLucro,sDecimal,'');

        if (length(sCodigo) > DMBBItens.C_GruposItensCodigo.Size) or
          (length(sDescricao) > DMBBItens.C_GruposItensDescricaoGrupo.Size)
          then begin
          DlgMsg.ShowMsg(6013);
          bCancelar := true;
          break;
        end;

        with DMBBItens do begin // Invent�rio
          if not C_GruposItens.Active then
            C_GruposItens.open
          else if C_GruposItens.state in [dsEdit,dsInsert] then
             C_GruposItens.cancel;

          if not C_GruposItens.locate('codigo',sCodigo,[loCaseInsensitive]) then
            C_GruposItens.append
          else
            C_GruposItens.edit;

          C_GruposItensTipoItem.value    := StrToInt(sTipo);
          C_GruposItensCodigo.value      := sCodigo;
          C_GruposItensDescricaoGrupo.value   := sDescricao;
          C_GruposItensCST.value             := sCST;
          C_GruposItensReducaoCST.value      := strtofloat(sReducaoCST);
          C_GruposItensFoto.value            := sFoto;
          C_GruposItensComissao.value        := strtofloat(sComissao);
          C_GruposItensDescontoMaximo.value  := strtofloat(sDescontoM);
          C_GruposItensFatorLucro.value      := strtofloat(sLucro);
          C_GruposItensSituacaoECF.value     := sSitECF;
          if sSitECF = 'T' then
            C_GruposItensAliqICMS.value     := 17
          else
            C_GruposItensAliqICMS.value     := 0;
          C_GruposItens.post;
        end;
        Readln(ArqTexto,sRegistro);
      end;
      if not bCancelar then begin
        DlgMsg.ShowMsg(4001);
        GravarGrupos;
      end
      else begin
        if DlgMsg.ShowMsg(4021) <> 100 then begin
          DMBBItens.C_GruposItens.CancelUpdates
        end;
        bCancelar := false;
      end;
    except
      on e:Exception do begin
        DlgMsg.ShowMsg(4002,[e.message]);
      end;
    end;
    CloseFile(ArqTexto);
    DMBBItens.bImportando := false;
    lblRegistroItens.visible := false;
    lblImportItens.visible := false;
    btImportItens.visible := false;
    gImportItens.progress := 0;
    gImportItens.visible := false;
  end;
end;

procedure TDlgImportacao.TS_Label152Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirCabecalho( ppCabecalho9 );
  ppTitulo.caption := sTituloRel +' dos Fabricantes de Itens';
  Q_Layout.close;
  Q_Layout.params[0].asstring := 'Fabricantes';
  Q_Layout.open;
  ppImportacaoF.Print;
end;

procedure TDlgImportacao.TS_Label204Click(Sender: TObject);
var Arq: TextFile;
    nArq: integer;
begin
  inherited;
  if not FileExists(DMProjeto.ProgPath+'fabricantes.txt') then begin
    nArq := FileCreate(DMProjeto.ProgPath+'fabricantes.txt');
    FileClose(nArq);
  end;
  AssignFile(Arq,DMProjeto.ProgPath+'fabricantes.txt');
  Rewrite(Arq);
  Writeln(Arq,'14|HP');
  Writeln(Arq,'15|Epson');
  Writeln(Arq,'16|IBM');
  CloseFile(Arq);
  WinExec(PChar('NotePad.exe '+DMProjeto.ProgPath+'fabricantes.txt'),sw_Show);

end;

procedure TDlgImportacao.TS_Label153Click(Sender: TObject);
var sArquivo,sRegistro: string;
    ArqTexto: TextFile;
    nLinhas: integer;
    sCodigo,sDescricao: string;
begin
  inherited;
  if OpenDialog.Execute then begin
    lblRegistroItens.visible := true;
    btImportItens.visible := true;
    lblImportItens.visible := true;
    gImportItens.progress := 0;
    gImportItens.visible := true;

    try
      bCancelar := false;
      DMBBItens.bImportando := true;
      sArquivo := OpenDialog.filename;
      AssignFile(ArqTexto,sArquivo);
      Reset(ArqTexto);
      // Contando as Linhas
      nLinhas := 0;
      Readln(ArqTexto,sRegistro);
      while (sRegistro <> '') do begin
        nLinhas := nLinhas + 1;
        Readln(ArqTexto,sRegistro);
      end;
      gImportItens.maxvalue := nLinhas;
      Reset(ArqTexto);
      Readln(ArqTexto,sRegistro);
      Q_Layout.close;
      Q_Layout.params[0].asstring := 'Fabricantes';
      Q_Layout.open;
      Q_Layout.last;
      while (sRegistro <> '') do begin
        if bCancelar then
          break;
        gImportItens.progress := gImportItens.progress + 1;
        lblRegistroItens.caption := 'Registro: '+IntToStr(gImportItens.progress)+'/'+IntToStr(gImportItens.Maxvalue);
        Application.ProcessMessages;
        if ContaStrings(sRegistro,'|') <> Q_Layout.recordcount then begin
          DlgMsg.ShowMsg(6014);
          bCancelar := true;
          break;
        end;
        sCodigo     := AdicionarStr(SeparaStrings(sRegistro,'|',1),'0',6);
        sDescricao  := copy(SeparaStrings(sRegistro,'|',2),1,30);
        if (length(sCodigo) > DMBBItens.C_FabricantesCodigo.Size) or
          (length(sDescricao) > DMBBItens.C_FabricantesDescricao.Size)
          then begin
          DlgMsg.ShowMsg(6013);
          bCancelar := true;
          break;
        end;

        with DMBBItens do begin // Invent�rio
          if not C_Fabricantes.Active then
            C_Fabricantes.open
          else if C_Fabricantes.state in [dsEdit,dsInsert] then
             C_Fabricantes.cancel;

          if not DMBBItens.C_Fabricantes.locate('codigo',sCodigo,[loCaseInsensitive]) then
            C_Fabricantes.append
          else
            C_Fabricantes.edit;

          C_FabricantesCodigo.value      := sCodigo;
          C_FabricantesDescricao.value   := sDescricao;
          C_Fabricantes.post;
        end;
        Readln(ArqTexto,sRegistro);
      end;
      if not bCancelar then begin
        DlgMsg.ShowMsg(4001);
        GravarFabricantes;
      end
      else begin
        if DlgMsg.ShowMsg(4021) <> 100 then begin
          DMBBItens.C_Fabricantes.CancelUpdates
        end;
        bCancelar := false;
      end;
    except
      on e:Exception do begin
        DlgMsg.ShowMsg(4002,[e.message]);
      end;
    end;
    CloseFile(ArqTexto);
    DMBBItens.bImportando := false;
    lblRegistroItens.visible := false;
    lblImportItens.visible := false;
    btImportItens.visible := false;
    gImportItens.progress := 0;
    gImportItens.visible := false;
  end;
end;

procedure TDlgImportacao.TS_Label205Click(Sender: TObject);
begin
  inherited;
  DMProjeto.ImprimirCabecalho( ppCabecalho9 );
  ppTitulo.caption := sTituloRel +' dos Itens';
  Q_Layout.close;
  Q_Layout.params[0].asstring := 'Itens';
  Q_Layout.open;
  ppImportacaoF.Print;
end;

procedure TDlgImportacao.TS_Label209Click(Sender: TObject);
var nArq: integer;
    Arq: TextFile;
begin
  inherited;
  if not FileExists(DMProjeto.ProgPath+'itens.txt') then begin
    nArq := FileCreate(DMProjeto.ProgPath+'itens.txt');
    FileClose(nArq);
  end;
  AssignFile(Arq,DMProjeto.ProgPath+'itens.txt');
  Rewrite(Arq);
  Writeln(Arq,'1|000020|RF-544|Radio Am/Fm|Radio Am/Fm|S|13,95|UND|0|13,95|24,3|1006|1028');
  Writeln(Arq,'1|000022|RQ-P40|Stereo Cassette Player|Stereo Cassette Player|S|14,6|UND|0|14,6|26|1006|1028');
  Writeln(Arq,'1|000023|RC-X160|Clock Radio Cass Player|Clock Radio Cass Player|S|42|UND|0|42|57,5|1006|1028');
  Writeln(Arq,'1|000026|SB-AFC32A|Speaker System|Speaker System|S|46,5|UND|0|46,5|69|1006|1031');
  Writeln(Arq,'1|000027|XL-F115TN|Compact Disc|Compact Disc|S|154|UND|0|154|214|1006|1030');
  Writeln(Arq,'1|000028|D-143|Discman|Discman|S|81|UND|0|81|119|1006|1029');
  CloseFile(Arq);
  WinExec(PChar('NotePad.exe '+DMProjeto.ProgPath+'itens.txt'),sw_Show);
end;

procedure TDlgImportacao.lblImportacaoItensClick(Sender: TObject);
var sArquivo,sRegistro,sDecimal: string;
    ArqTexto: TextFile;
    nLinhas: integer;
    sTipo,sCodigo,sRefer,sDescricao,sDescricaoC,scst,sCusto,sUnid,sEstoque,sPrecoC,sPrecoV,sGrupo,sFabricante: string;
    sReducaoCST,sIPI,sPesoBruto, sPesoliquido,sCustoC,sUltCompra, sUltVenda: string;
    sComissao, sDescontoM, sLucro, sFoto,sUnidCompra, sFatorCompra, sUltFornec,
    sUnidVarejo, sFatorUndV, sPrecoVarejo, sDataCad, sMinimo, sMaximo, sSitECF, sCodBarra: string;
    sORIGEMMERCADORIA,
    sMODALIDADEBCICMS,
    sMODALIDADEBCICMSST,
    sCSTPISCOFINS,
    sALIQPIS,
    sALIQCOFINS,
    sCSTIPI,
    sGENERO,
    sALIQIR,
    sALIQSS,
    sIPPT,
    sIAT,
    sALIQIPI,
    sCSTPISCOFINSSAIDA,
    sALIQPISSAIDA,
    sALIQCOFINSSAIDA,
    sCODANP,
    sCODIF,
    sALIQICMSCOMPRA,
    sCODIGOVENDA,
    sCEST_OPC,
    sCSTIPIENTRADA,
    sCENQIPICOMPRA,
    sCENQIPIVENDA,
    sCLASFISCAL: string;
begin
  inherited;
  if DecimalSeparator = '.' then
    sDecimal := ','
  else
    sDecimal := '.';
  if OpenDialog.Execute then begin
    bGravar100 := DlgMsg.ShowMsg(4024) = 100;
    bLocalizaChave := DlgMsg.ShowMsg(4023) = 100;
    lblRegistroItens.visible := true;
    lblImportItens.visible := true;
    btImportItens.visible := true;
    gImportItens.progress := 0;
    gImportItens.visible := true;
    DMBBItens.C_Inventario.DisableControls;
    try
      bCancelar := false;
      DMBBItens.bImportando := true;
      sArquivo := OpenDialog.filename;
      AssignFile(ArqTexto,sArquivo);
      Reset(ArqTexto);
      // Contando as Linhas
      nLinhas := 0;
      Readln(ArqTexto,sRegistro);
      while (sRegistro <> '') do begin

        nLinhas := nLinhas + 1;
        Readln(ArqTexto,sRegistro);
      end;
      gImportItens.maxvalue := nLinhas;
      Reset(ArqTexto);
      Readln(ArqTexto,sRegistro);
      sTipo := SeparaStrings(sRegistro,'|',1);
      with DMBBItens do begin
        if sTipo = '1' then begin
          slItensCustosZerados.Clear;
          Q_MasterDS.dataset := Q_Inventario;
          if C_ProdutosPreco.Datasetfield <> C_InventarioQ_ProdutosPreco then begin
            C_ProdutosPreco.Datasetfield := C_InventarioQ_ProdutosPreco;
            C_inventario.close;
          end;
          if C_ItensUnidades.Datasetfield <> C_InventarioQ_ItensUnidades then begin
            C_ItensUnidades.Datasetfield := C_InventarioQ_ItensUnidades;
            C_inventario.close;
          end;


          if not C_Inventario.Active then begin
            C_Inventario.FetchParams;
            C_Inventario.params[0].asdatetime := 0;
            C_Inventario.params[1].asinteger := 0;
            C_Inventario.open;
          end
          else if C_Inventario.state in [dsEdit,dsInsert] then
            C_Inventario.cancel;

          if not C_Unid.Active then
            C_Unid.open
          else if C_Unid.state in [dsEdit,dsInsert] then
            C_Unid.cancel;
        end;
      end;
      Q_Layout.close;
      Q_Layout.params[0].asstring := 'Itens';
      Q_Layout.open;
      Q_Layout.last;
      while (sRegistro <> '') do begin
        if bCancelar then
          break;
        if bGravar100 and (gImportItens.progress > 0) and ((gImportItens.progress mod 100) = 0) then
          GravarInventario;
        gImportItens.progress := gImportItens.progress + 1;
        lblRegistroItens.caption := 'Registro: '+IntToStr(gImportItens.progress)+'/'+IntToStr(gImportItens.Maxvalue);
        Application.ProcessMessages;
        if ContaStrings(sRegistro,'|') <> Q_Layout.recordcount then begin
          DlgMsg.ShowMsg(6014);
          bCancelar := true;
          break;
        end;
        sTipo       := SeparaStrings(sRegistro,'|',1);
        sCodigo     := AdicionarStr(SeparaStrings(sRegistro,'|',2),'0',6);
        sRefer      := SeparaStrings(sRegistro,'|',3);
        sDescricao  := copy(SeparaStrings(sRegistro,'|',4),1,50);
        sDescricaoC := copy(SeparaStrings(sRegistro,'|',5),1,50);
        scst        := SeparaStrings(sRegistro,'|',6);
        sreducaocst := SeparaStrings(sRegistro,'|',7);
        sCusto      := SeparaStrings(sRegistro,'|',8);
        sUnid       := UpperCase(SeparaStrings(sRegistro,'|',9));
        sEstoque    := SeparaStrings(sRegistro,'|',10);
        sPrecoC     := SeparaStrings(sRegistro,'|',11);
        sPrecoV     := SeparaStrings(sRegistro,'|',12);
        sGrupo      := AdicionarStr(SeparaStrings(sRegistro,'|',13),'0',6);
        sFabricante := AdicionarStr(SeparaStrings(sRegistro,'|',14),'0',6);
        sIPI        := SeparaStrings(sRegistro,'|',15);
        sPesoBruto  := SeparaStrings(sRegistro,'|',16);
        sPesoliquido:= SeparaStrings(sRegistro,'|',17);
        sCustoC     := SeparaStrings(sRegistro,'|',18);
        sUltCompra  := SeparaStrings(sRegistro,'|',19);
        sUltVenda   := SeparaStrings(sRegistro,'|',20);
        sComissao   := SeparaStrings(sRegistro,'|',21);
        sDescontoM  := SeparaStrings(sRegistro,'|',22);
        sLucro      := SeparaStrings(sRegistro,'|',23);
        sFoto       := SeparaStrings(sRegistro,'|',24);
        sUnidCompra := UpperCase(SeparaStrings(sRegistro,'|',25));
        sFatorCompra:= SeparaStrings(sRegistro,'|',26);
        sUltFornec  := SeparaStrings(sRegistro,'|',27);
        sUnidVarejo := UpperCase(SeparaStrings(sRegistro,'|',28));
        sFatorUndV  := SeparaStrings(sRegistro,'|',29);
        sPrecoVarejo:= SeparaStrings(sRegistro,'|',30);
        sDataCad    := SeparaStrings(sRegistro,'|',31);
        sMinimo     := SeparaStrings(sRegistro,'|',32);
        sMaximo     := SeparaStrings(sRegistro,'|',33);
        sSitECF     := SeparaStrings(sRegistro,'|',34);
        sCodBarra   := SeparaStrings(sRegistro,'|',35);
        sORIGEMMERCADORIA  := SeparaStrings(sRegistro,'|',36);
        sMODALIDADEBCICMS  := SeparaStrings(sRegistro,'|',37);
        sMODALIDADEBCICMSST := SeparaStrings(sRegistro,'|',38);
        sCSTPISCOFINS := SeparaStrings(sRegistro,'|',39);
        sALIQPIS      := SeparaStrings(sRegistro,'|',40);
        sALIQCOFINS   := SeparaStrings(sRegistro,'|',41);
        sCSTIPI       := SeparaStrings(sRegistro,'|',42);
        sGENERO       := SeparaStrings(sRegistro,'|',43);
        sALIQIR       := SeparaStrings(sRegistro,'|',44);
        sALIQSS       := SeparaStrings(sRegistro,'|',45);
        sIPPT         := SeparaStrings(sRegistro,'|',46);
        sIAT          := SeparaStrings(sRegistro,'|',47);
        sALIQIPI      := SeparaStrings(sRegistro,'|',48);
        sCSTPISCOFINSSAIDA := SeparaStrings(sRegistro,'|',49);
        sALIQPISSAIDA	:= SeparaStrings(sRegistro,'|',50);
        sALIQCOFINSSAIDA:= SeparaStrings(sRegistro,'|',51);
        sCODANP	:= SeparaStrings(sRegistro,'|',52);
        sCODIF	:= SeparaStrings(sRegistro,'|',53);
        sALIQICMSCOMPRA	:= SeparaStrings(sRegistro,'|',54);
        sCODIGOVENDA	:= SeparaStrings(sRegistro,'|',55);
        sCEST_OPC	:= SeparaStrings(sRegistro,'|',56);
        sCSTIPIENTRADA	:= SeparaStrings(sRegistro,'|',57);
        sCENQIPICOMPRA	:= SeparaStrings(sRegistro,'|',58);
        sCENQIPIVENDA	:= SeparaStrings(sRegistro,'|',59);
        sCLASFISCAL	:= SeparaStrings(sRegistro,'|',60);





        if (upperCase(sUnid) = 'UND') Or (upperCase(sUnid) = 'UN') Or (upperCase(sUnid) = 'UNID') Then sUnid := 'UN';
        if (upperCase(sUnidCompra) = 'UND') Or (upperCase(sUnidCompra) = 'UN') Or (upperCase(sUnidCompra) = 'UNID') Then sUnidCompra := 'UN';
        if (upperCase(sUnidVarejo) = 'UND') Or (upperCase(sUnidVarejo) = 'UN') Or (upperCase(sUnidVarejo) = 'UNID') Then sUnidVarejo := 'UN';






        if trim(sCusto) = '' then
          sCusto := '0'
        else
          sCusto := Replace(sCusto,'.',',');

        if trim(sIPI) = '' then
          sIPI := '0'
        else
          sIPI := Replace(sIPI,'.',',');

        if trim(sCustoC) = '' then
          sCustoC := '0'
        else
          sCustoC := Replace(sCustoC,'.',',');

        if trim(sPesoBruto) = '' then
          sPesoBruto := '0'
        else
          sPesoBruto := Replace(sPesoBruto,'.',',');

        if trim(sPesoLiquido) = '' then
          sPesoLiquido := '0'
        else
          sPesoLiquido := Replace(sPesoLiquido,'.',',');

        if trim(sEstoque) = '' then
          sEstoque := '0'
        else
          sEstoque := Replace(sEstoque,'.',',');

        if trim(sReducaoCST) = '' then
          sReducaoCST := '0'
        else
          sReducaoCST := Replace(sReducaoCST,'.',',');

        if trim(sComissao) = '' then
          sComissao := '0'
        else
          sComissao := Replace(sComissao,'.',',');

        if trim(sDescontoM) = '' then
          sDescontoM := '0'
        else
          sDescontoM := Replace(sDescontoM,'.',',');

        if trim(sLucro) = '' then
          sLucro := '0'
        else
          sLucro := Replace(sLucro,'.',',');

        if trim(sMinimo) = '' then
          sMinimo := '0'
        else
          sMinimo := Replace(sMinimo,'.',',');

        if trim(sMaximo) = '' then
          sMaximo := '0'
        else
          sMaximo := Replace(sMaximo,'.',',');

        if trim(sPrecoC) = '' then
          sPrecoC := '0'
        else
          sPrecoC := Replace(sPrecoC,'.',',');

        if trim(sPrecoV) = '' then
          sPrecoV := '0'
        else
          sPrecoV := Replace(sPrecoV,'.',',');
        if trim(sPrecoVarejo) = '' then
          sPrecoVarejo := '0'
        else
          sPrecoVarejo := Replace(sPrecoVarejo,'.',',');

        if trim(sDataCad) = '' then
          sDataCad := DateToStr(DMProjeto.dDataSistema);

        if trim(sALIQICMSCOMPRA) = '' then
          sALIQICMSCOMPRA := '0'
        else
          sALIQICMSCOMPRA := Replace(sALIQICMSCOMPRA,'.',',');

        if trim(sALIQCOFINSSAIDA) = '' then
          sALIQCOFINSSAIDA := '0'
        else
          sALIQCOFINSSAIDA := Replace(sALIQCOFINSSAIDA,'.',',');
        if trim(sALIQPISSAIDA) = '' then
          sALIQPISSAIDA := '0'
        else
          sALIQPISSAIDA := Replace(sALIQPISSAIDA,'.',',');

        if trim(sALIQIPI) = '' then
          sALIQIPI := '0'
        else
          sALIQIPI := Replace(sALIQIPI,'.',',');
        if trim(sALIQSS) = '' then
          sALIQSS := '0'
        else
          sALIQSS := Replace(sALIQSS,'.',',');
        if trim(sALIQIR) = '' then
          sALIQIR := '0'
        else
          sALIQIR := Replace(sALIQIR,'.',',');
        if trim(sALIQCOFINS) = '' then
          sALIQCOFINS := '0'
        else
          sALIQCOFINS := Replace(sALIQCOFINS,'.',',');
        if trim(sALIQPIS) = '' then
          sALIQPIS := '0'
        else
          sALIQPIS := Replace(sALIQPIS,'.',',');
       



        if sTipo = '1' then with DMBBItens do begin // Invent�rio
          if (length(sCodigo) > DMBBItens.C_InventarioCodigo.Size) or
            (length(sDescricao) > DMBBItens.C_InventarioDescricao.Size) or
            (length(sRefer) > DMBBItens.C_InventarioReferencia.Size) or
            (length(sDescricaoC) > DMBBItens.C_InventarioDescricaoCompra.Size) or
            (length(sCST) > DMBBItens.C_InventarioCST.Size) or
            (length(sUnid) > DMBBItens.C_InventarioUnidade.Size)
            then begin
            DlgMsg.ShowMsg(6013);
            bCancelar := true;
            break;
          end;

          if sUnid <> '' then begin
            if not C_Unid.Locate('unidade',sUnid,[]) then begin
              C_Unid.append;
              C_UnidUnidade.value := sUnid;
              C_UnidDescricao.value := sUnid;
              C_UnidInteira.value := 'S';
              C_Unid.post;
            end;
          end;
          if sUnidCompra <> '' then begin
            if not C_Unid.Locate('unidade',sUnidCompra,[]) then begin
              C_Unid.append;
              C_UnidUnidade.value := sUnidCompra;
              C_UnidDescricao.value := sUnidCompra;
              C_UnidInteira.value := 'S';
              C_Unid.post;
            end;
          end;
          if sUnidVarejo <> '' then begin
            if not C_Unid.Locate('unidade',sUnidVarejo,[]) then begin
              C_Unid.append;
              C_UnidUnidade.value := sUnidVarejo;
              C_UnidDescricao.value := sUnidVarejo;
              C_UnidInteira.value := 'S';
              C_Unid.post;
            end;
          end;

          if not bLocalizaChave then begin
            C_Inventario.append ;
            C_InventarioItem.value       := DMPRojeto.NextIDGlobal;
          end else begin
            if not DMBBItens.C_Inventario.locate('codigo',sCodigo,[loCaseInsensitive]) then  Begin
              C_Inventario.append;
              C_InventarioItem.value       := DMPRojeto.NextIDGlobal;
            end else
              C_Inventario.edit;
          end;
          C_InventarioCodigo.value         := sCodigo;
          C_InventarioReferencia.value     := sRefer;
          C_InventarioDescricao.value      := sDescricao;
          C_InventarioDescricaoCompra.value:= sDescricaoC;
          C_InventarioCST.value            := sCST;
          C_InventarioReducaoCST.value     := StrToFloat(FormatFloat('#.00',StrTOFloat(sReducaoCST)));

          C_InventarioCusto.value          := StrToCurr(sCusto);
          C_InventarioUnidade.value        := sUnid;
          C_InventarioQuantidade.value     := StrToFloat(FormatFloat('#.00',StrTOFloat(sEstoque)));
          C_InventarioPrecoCompra.value    := StrToCurr(sPrecoC);
          if StrToCurr(sPrecoV) > 0 then
            C_InventarioPreco.value       := StrToCurr(sPrecoV)
          else
            C_InventarioPreco.value       := 0;

          C_InventarioGrupo.value       := DMBBItens.LocalizaGrupo(sGrupo);
          C_InventarioFabricante.value  := DMBBItens.LocalizaFabricante(sFabricante);

{          if (C_InventarioQuantidade.value > 0) and (C_InventarioCusto.value <= 0) then begin
            C_InventarioQuantidade.value := 0;
            slItensCustosZerados.Add(C_InventarioDescricao.value+' Estoque:'+C_InventarioQuantidade.AsString+' Custo:'+C_InventarioCusto.AsString);
          end;}

          C_InventarioIPICompra.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sIPI)));
          C_InventarioPesoBruto.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sPesoBruto)));
          C_InventarioPesoLiquido.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sPesoLiquido)));
          C_InventarioCustoContabil.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sCustoC)));

          if trim(sUltCompra) <> '' then
            C_InventarioUltimaCompra.value := strtodate(sUltCompra);
          if trim(sUltVenda) <> '' then
            C_InventarioUltimaVenda.value := strtodate(sUltVenda);

          C_InventarioComissao.value := strtofloat(sComissao);
          C_InventarioDescontoMaximo.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sDescontoM)));
          C_InventarioFatorLucro.value     := StrToFloat(FormatFloat('#.00',StrTOFloat(sLucro)));
          C_InventarioUnidadeEntrada.value     := sUnidCompra;
          if  (sUltFornec <> '-9') and (sUltFornec <> '') and (sUltFornec <> '0') then
            C_InventarioUltimoFornecedor.value     := DMBBItens.LocalizaFornecedor(AdicionarStr(sUltFornec,'0',6));
          C_InventarioUnidadeVarejo.value := sUnidVarejo;
          C_InventarioDataCadastro.value := strtodate(sDataCad);
          C_InventarioQtdeMinimo.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sMinimo)));
          C_InventarioQtdeMaximo.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sMaximo)));
          C_InventarioSituacaoECF.value := sSitECF;
          C_InventarioCodigoBarras.value := sCodBarra;
          if sSitECF = 'T' then
            C_InventarioAliqICMS.value := 18
          else
            C_InventarioAliqICMS.value := 0;

          C_InventarioORIGEMMERCADORIA.value := StrToInt(sORIGEMMERCADORIA);
          C_InventarioMODALIDADEBCICMS.value := StrToInt(sMODALIDADEBCICMS);
          C_InventarioMODALIDADEBCICMSST.value := StrToInt(sMODALIDADEBCICMSST);
          C_InventarioCSTPISCOFINS.value := sCSTPISCOFINS;
          C_InventarioALIQPIS.value  := StrToFloat(FormatFloat('#.00',StrTOFloat(sALIQPIS)));
          C_InventarioALIQCOFINS.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sALIQCOFINS)));
          C_InventarioCSTIPI.value := sCSTIPI;
          C_InventarioGENERO.value := sGENERO;
          C_InventarioALIQIR.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sALIQIR)));
          C_InventarioALIQSS.value  := StrToFloat(FormatFloat('#.00',StrTOFloat(sALIQSS)));
          C_InventarioIPPT.value := sIPPT;
          C_InventarioIAT.value  := sIAT;
          C_InventarioALIQIPI.value  := StrToFloat(FormatFloat('#.00',StrTOFloat(sALIQIPI)));
          C_InventarioCSTPISCOFINSSAIDA.value  := sCSTPISCOFINSSAIDA;
          C_InventarioALIQPISSAIDA.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sALIQPISSAIDA)));
          C_InventarioALIQCOFINSSAIDA.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sALIQCOFINSSAIDA)));
          C_InventarioCODANP.value := sCODANP;
          C_InventarioCODIF.value := sCODIF;
          C_InventarioALIQICMSCOMPRA.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sALIQICMSCOMPRA)));
         // C_InventarioCODIGOVENDA.value := sCODIGOVENDA;
          C_InventarioCODIGOVENDA.value := Funcoes.SoNumeros(C_InventarioItem.AsString,14);
          C_InventarioCEST_OPC.value := sCEST_OPC;
          C_InventarioCSTIPIENTRADA.value := sCSTIPIENTRADA;
          C_InventarioCENQIPICOMPRA.value := sCENQIPICOMPRA;
          C_InventarioCENQIPIVENDA.value := sCENQIPIVENDA;
          C_InventarioCLASFISCAL.value := sCLASFISCAL;

          C_Inventario.post;

          if C_PRODUTOSPRECOUnidade.value <> C_InventarioUnidade.value then begin
            C_PRODUTOSPRECO.edit;
            C_PRODUTOSPRECOUnidade.value := C_InventarioUnidade.value;
            C_PRODUTOSPRECO.post;
          end;

          C_ItensUnidades.append;
          C_ItensUnidadesUnidade.value := sUnid;
          C_ItensUnidadesFator.value := 1;
          C_ItensUnidades.post;

          try
            C_ItensCodigos.append;
            C_ItensCodigosITEM.Value := C_InventarioItem.value;
            C_ItensCodigosCODIGO.Value := C_InventarioCODIGO.Value;
            C_ItensCodigosUNIDADE.Value := C_InventarioUNIDADE.Value;
            C_ItensCodigosORIGEMREPLIC.Value := 'R';
            C_ItensCodigos.Post;


            if  ((not C_InventarioCODIGOBARRAS.IsNull) And (Funcoes.SoNumeros(C_InventarioCODIGOBARRAS.Value,14) <> Funcoes.SoNumeros(C_InventarioCODIGOBARRAS.Value,14))) Then Begin
              C_ItensCodigos.append;
              C_ItensCodigosITEM.Value := C_InventarioItem.value;
              C_ItensCodigosCODIGO.Value := Funcoes.SoNumeros(C_InventarioCODIGOBARRAS.Value,14);
              C_ItensCodigosUNIDADE.Value := C_InventarioUNIDADE.Value;
              C_ItensCodigosORIGEMREPLIC.Value := 'R';
              C_ItensCodigos.Post;
            End
          except

          end;


          if sUnid <> sUnidCompra then begin
            C_ItensUnidades.append;
            C_ItensUnidadesUnidade.value := sUnidCompra;
            C_ItensUnidadesFator.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sFatorCompra)));
            C_ItensUnidades.post;
          end;
          if (sUnidVarejo <> '') and (sUnid <> sUnidVarejo) and (sUnidCompra <> sUnidVarejo) then begin
            C_ItensUnidades.append;
            C_ItensUnidadesUnidade.value := sUnidVarejo;
            C_ItensUnidadesFator.value := StrToFloat(FormatFloat('#.00',StrTOFloat(sFatorUndV)));
            C_ItensUnidades.post;
          end;

          if StrToCurr(sPrecoVarejo) > 0 then
            DMBBItens.AdicionaTabelasPreco(StrToCurr(sPrecoVarejo),sUnidVarejo);
        end;
        Readln(ArqTexto,sRegistro);
      end;
      CloseFile(ArqTexto);
      if not bCancelar then begin
        if DMBBItens.C_Unid.ChangeCount > 0 then begin
          DMBBItens.C_Unid.ApplyUpdates(0);
          if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;
          DMBBItens.C_unidades.close;
          DMBBItens.C_unidades.open;
        end;
        if slItensCustosZerados.Count > 0 then begin
          DlgMsg.ShowMsg(6005);
          slItensCustosZerados.SaveToFile('ItensCustosZerados.txt');
          WinExec(PChar('NotePad.exe ItensCustosZerados.txt'),sw_Show);
        end;

        GravarInventario;
        DMBBItens.C_Inventario.close;

        DlgMsg.ShowMsg(4001);
        AtualizaImportacaoItens;
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        with DmProjeto.Q_SQL do Begin
          Sql.Text := ' Update itens set EstoqueInicial = Estoque; ';
          Prepare;
          ExecSql;
          Close;
        End;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
           DMProjeto.DB_Projeto.DefaultTransaction.Commit;
      end
      else begin
        if DlgMsg.ShowMsg(4021) = 100 then begin
          GravarInventario;
          DMBBItens.C_Inventario.close;
          AtualizaImportacaoItens;
        end
        else begin
          DMBBItens.C_Inventario.CancelUpdates
        end;
        bCancelar := false;
      end;
    except
      on e:Exception do begin
        CloseFile(ArqTexto);
        DlgMsg.ShowMsg(4002,[e.message]);
      end;
    end;
    AtualizaImportacaoItens;
  end;
end;

procedure TDlgImportacao.AtualizaImportacaoItens;
begin
  DMBBItens.C_Inventario.EnableControls;
  DMBBItens.bImportando := false;
  lblRegistroItens.visible := false;
  lblImportItens.visible := false;
  btImportItens.visible := false;
  gImportItens.progress := 0;
  gImportItens.visible := false;
end;

procedure TDlgImportacao.GravarGrupos;
begin
  inherited;
  if DMBBItens.C_GruposItens.state in [dsEdit,dsInsert] then
    DMBBItens.C_GruposItens.post;
  try
    DMProjeto.GenerateIDs(DMBBItens.C_GruposItens,'grupo');
    if DMBBItens.C_GruposItens.ChangeCount > 0 then
      DMBBItens.C_GruposItens.ApplyUpdates(0);
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.Commit;
  except
    on e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DlgMsg.ShowMsg(50,[e.message]);
    end;
  end;
end;

procedure TDlgImportacao.GravarFabricantes;
begin
  inherited;
  if DMBBItens.C_Fabricantes.state in [dsEdit,dsInsert] then
    DMBBItens.C_Fabricantes.post;
  try
    DMProjeto.GenerateIDs(DMBBItens.C_Fabricantes,'fabricante');
    if DMBBItens.C_Fabricantes.ChangeCount > 0 then
      DMBBItens.C_Fabricantes.ApplyUpdates(0);
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.Commit;
  except
    on e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DlgMsg.ShowMsg(50,[e.message]);
    end;
  end;
end;

procedure TDlgImportacao.FormCreate(Sender: TObject);
var i: integer;
begin
  inherited;
  slItensCustosZerados := TStringList.create;
  sTituloRel := 'Formato/Layout do Arquivo de Importa��o de dados';
  if DMBBItens = nil then
    Application.CreateForm(TDMBBItens, DMBBItens);
  if DMBBClientes = nil then
    Application.CreateForm(TDMBBClientes, DMBBClientes);
  if DMBBFornecedores = nil then
    Application.CreateForm(TDMBBFornecedores, DMBBFornecedores);

  for i := 0 to ComponentCount - 1 do begin
    if Components[i] is TTS_Image and (TTS_Image(Components[i]).Picture.BitMap.Empty) then
      TTS_Image(Components[i]).Picture.Bitmap := ImageMao.Picture.Bitmap;
  end;

  bInventario := false;
  DMBBItens.dData := DMProjeto.dDataSistema;
  DMBBClientes.dData := DMProjeto.dDataSistema;
  DMBBFornecedores.dData := DMProjeto.dDataSistema;
end;

procedure TDlgImportacao.GravarChequesF;
var IDTitulo, IDDeposito: integer;
    bImport: boolean;
begin
  inherited;
  if DMBBFornecedores.C_Cheques.state in [dsEdit,dsInsert] then
    DMBBFornecedores.C_Cheques.post;

  bImport := DMBBFornecedores.bImportando;
  if bImport or (DMBBFornecedores.C_Cheques.ChangeCount > 0) then begin
    pnSalvando.parent  := pcImport.ActivePage;
    pnSalvando.visible := true;
    pnSalvando.BringToFront;
    Application.ProcessMessages;
    try
      DMBBFornecedores.bImportando := true;
      if not bImport then begin
        DMBBFornecedores.C_Cheques.disablecontrols;
      end;
      DMBBFornecedores.C_Cheques.first;
      while not DMBBFornecedores.C_Cheques.eof do with DMBBFornecedores do begin
        if (C_ChequesID.value > 0) and (C_ChequesValorOld.value <> C_ChequesValor.value) then begin
          DMFinanceiro.ApagarRetirada(C_ChequesRetirada.value,true);
          DMFinanceiro.ApagarDoc(C_ChequesIDDoc.value,true);
        end;
        if (C_ChequesID.value < 0) or ((C_ChequesID.value > 0) and (C_ChequesValorOld.value <> C_ChequesValor.value)) then begin
          IDDeposito := DMFinanceiro.PagarRapido( 0, 0, 0, C_ChequesData.Value, C_ChequesData.Value,
                                   'begin balance',
                                   C_ChequesValor.Value, 0, 0, 0, 0, 0);

          DMFinanceiro.PagarDoc(0, 4, IDDeposito, C_ChequesContaPagar.Value, C_ChequesFavorecido.Value, 2, C_ChequesValor.Value,
       											 		C_ChequesVencimento.Value, C_ChequesNumCheque.Value,
                             		C_ChequesNome.Value, C_ChequesContaPagar.Value );

        end;

        C_Cheques.next;
      end;

      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.Commit;

      if bImport and not bLocalizaChave then begin
        DMBBFornecedores.C_Cheques.close;
        DMBBFornecedores.C_Cheques.fetchparams;
        DMBBFornecedores.C_Cheques.params[0].asdatetime := 0;
        DMBBFornecedores.C_Cheques.open;
      end;
    except
      on e:Exception do begin
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DlgMsg.ShowMsg(50,[e.message]);
      end;
    end;
    if not bImport then begin
      DMBBFornecedores.bImportando := false;
      DMBBFornecedores.C_Cheques.first;
      DMBBFornecedores.C_Cheques.enablecontrols;
    end;
    if pnSalvando.visible then
      pnSalvando.visible := false;
  end;
end;

end.

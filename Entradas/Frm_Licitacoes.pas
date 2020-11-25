unit Frm_Licitacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, DBText, TS_DBTextEffect, TS_Panel,
  Placemnt, BTOdeum, FormComponent, ImgList, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms, dxTL, dxCntner,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxDBTLCl, dxGrClms, dxEdLib, dxDBELib,
  TS_DBEdit, dxEditor, TS_DBEditDate, ComCtrls, TS_PageControl, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppDB, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppStrtch, ppRegion;
Const
  PM_PostItens    = WM_User + 110;

type
  TFrmLicitacoes = class(TFrmPadrao)
    TS_PanelCorner1: TTS_PanelCorner;
    pnNumero: TTS_Panel;
    lbNumero: TTS_Label;
    dbtNumero: TTS_DBTextEffect;
    xxx: TTS_PanelCorner;
    TS_PanelCorner3: TTS_PanelCorner;
    GridFornecodores: TTS_QDBGrid;
    GridFornecodores_icSelecionado: TdxDBGridColumn;
    GridFornecodoresLICITACAOITEMFORNECEDOR: TdxDBGridMaskColumn;
    GridFornecodoresLICITACAOITEM: TdxDBGridMaskColumn;
    GridFornecodoresFORNECEDOR: TdxDBGridMaskColumn;
    GridFornecodoresVALORICMS: TdxDBGridCurrencyColumn;
    GridFornecodoresVALORIPI: TdxDBGridCurrencyColumn;
    GridFornecodoresVALORFRETE: TdxDBGridCurrencyColumn;
    GridFornecodoresVALOROUTRAS: TdxDBGridCurrencyColumn;
    GridFornecodoresPRECOCUSTO: TdxDBGridCurrencyColumn;
    GridFornecodoresCODIGO: TdxDBGridButtonColumn;
    GridFornecodoresNOME: TdxDBGridButtonColumn;
    GridFornecodoresPercICMS: TdxDBGridColumn;
    GridFornecodoresPercIPI: TdxDBGridColumn;
    lbData: TTS_Label;
    dfData: TTS_DBEditDate;
    TS_Label1: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    pcItens: TTS_PageControl;
    GrideItem: TTS_QDBGrid;
    GrideItemCODIGO: TdxDBGridButtonColumn;
    GrideItemDESCRICAO: TdxDBGridButtonColumn;
    GrideItem_icSelecionado: TdxDBGridColumn;
    GrideItemLICITACAOITEM: TdxDBGridMaskColumn;
    GrideItemLICITACAO: TdxDBGridMaskColumn;
    GrideItemITEM: TdxDBGridMaskColumn;
    GrideItemIPICOMPRA: TdxDBGridCurrencyColumn;
    GrideItemQ_ItensFornec: TdxDBGridColumn;
    GrideItemReferencia: TdxDBGridColumn;
    GrideItemPrcCompra: TdxDBGridColumn;
    ppItens: TTS_PopupMenu;
    ApagarItem1: TMenuItem;
    ppItensFornec: TTS_PopupMenu;
    MenuItem1: TMenuItem;
    ppDBCotacao: TppDBPipeline;
    ppCotacao: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine2: TppLine;
    regCab: TppRegion;
    ppShape1: TppShape;
    ppTitulo: TppLabel;
    ppLabel11: TppLabel;
    ppShape2: TppShape;
    ppLabel12: TppLabel;
    ppLine1: TppLine;
    ppShape3: TppShape;
    ppMaisBarato: TppImage;
    ppCotacaoFornec: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel5: TppLabel;
    regCab1: TppRegion;
    ppShape4: TppShape;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText21: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine3: TppLine;
    ppLabel22: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine4: TppLine;
    ppDBCotacaoFornec: TppDBPipeline;
    GridFornecodoresPRECOCOMPRA: TdxDBGridColumn;
    procedure GrideItemEnter(Sender: TObject);
    procedure GridFornecodoresEnter(Sender: TObject);
    procedure GrideItemTS_AposLocalizar(Sender: TObject);
    procedure GridFornecodoresTS_OnSelection(Sender: TObject;
      bSelected: Boolean; var bCanSelect: Boolean);
    procedure GridFornecodoresTS_AfterNewRecord(Sender: TObject);
    procedure ApagarItem1Click(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure ppGroupHeaderBand1AfterGenerate(Sender: TObject);
    procedure ppDetailBand1AfterPrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
  private
    { Private declarations }
    bNegrito: Boolean;
  public
    { Public declarations }
  end;

var
  FrmLicitacoes: TFrmLicitacoes;

implementation

uses DM_Licitacoes, DM_Projeto;

{$R *.dfm}

procedure TFrmLicitacoes.GrideItemEnter(Sender: TObject);
begin
  inherited;
  if DMLicitacoes.C_Itens.IsEmpty then begin
    try
      DMLicitacoes.C_Itens.Append;
    except
//     on E:Exception do Application.MessageBox(pchar(e.message), 'Ola', mb_ok);
    end;
  end;

end;

procedure TFrmLicitacoes.GridFornecodoresEnter(Sender: TObject);
begin
  inherited;
  if DMLicitacoes.C_ItensFornec.IsEmpty then begin
    try
      DMLicitacoes.C_ItensFornec.Append;
    except
//     on E:Exception do Application.MessageBox(pchar(e.message), 'Ola', mb_ok);
    end;
  end;

end;

procedure TFrmLicitacoes.GrideItemTS_AposLocalizar(Sender: TObject);
begin
  inherited;
  PostMessage(Handle,PM_PostItens,0,0);
end;

procedure TFrmLicitacoes.GridFornecodoresTS_OnSelection(Sender: TObject;
  bSelected: Boolean; var bCanSelect: Boolean);
begin
  inherited;
  DMLicitacoes.CalcICMS;
end;

procedure TFrmLicitacoes.GridFornecodoresTS_AfterNewRecord(
  Sender: TObject);
begin
  inherited;
  GridFornecodores.SetFocus;
end;

procedure TFrmLicitacoes.ApagarItem1Click(Sender: TObject);
begin
  inherited;
  DMLicitacoes.C_Itens.Delete;
end;

procedure TFrmLicitacoes.btComando1Click(Sender: TObject);
begin
  inherited;
  With DMLicitacoes do Begin
    If C_TabelaLicitacao.IsNull Then Begin
      btGravarClick(Sender);
      LocalizarUltimo;
    End;
    Q_Relatorio.Close;
    Q_Relatorio.ParamByName('LICITACAO').AsInteger := C_TabelaLicitacao.AsInteger;
    C_Relatorio.Open;
    DMProjeto.ImprimirCabecalho( regCab );
    ppTitulo.Caption := 'Cotação Nº. '+C_RelatorioNumero.AsString + ' - '+C_RelatorioData.AsString+' - '+ C_RelatorioLicita.AsString;
    ppCotacao.Print;
  End;
end;

procedure TFrmLicitacoes.ppGroupHeaderBand1AfterGenerate(Sender: TObject);
begin
  inherited;
  bNegrito:=True;
end;

procedure TFrmLicitacoes.ppDetailBand1AfterPrint(Sender: TObject);
begin
  inherited;
  bNegrito:=False;
end;

procedure TFrmLicitacoes.ppDetailBand1BeforePrint(Sender: TObject);
begin
  inherited;
  ppMaisBarato.Visible := bNegrito;
end;

procedure TFrmLicitacoes.btComando2Click(Sender: TObject);
begin
  inherited;
  With DMLicitacoes do Begin
    If C_TabelaLicitacao.IsNull Then Begin
      btGravarClick(Sender);
      LocalizarUltimo;
    End;
    GerarRelFornec;
    DMProjeto.ImprimirCabecalho( regCab1 );
    ppLabel5.Caption := 'Cotação Nº. '+C_TabelaCodigo.AsString + ' - '+C_TabelaData.AsString+' - '+ C_TabelaDescricao.AsString;
    ppCotacaoFornec.Print;
  End;
end;

end.

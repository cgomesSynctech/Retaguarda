unit Frm_TransferenciasAlmox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxTLClms, dxTL, dxCntner,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib, TS_DBButtonEdit,
  dxDBEdtr, TS_DBLookupComboBox, TS_DBEditDate, dxDBTLCl, dxGrClms,
  dxfProgressBar, dxGrClEx, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache,
  ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppStrtch, ppRegion,
  TS_CheckBox, ZReport, ZRCtrls;

type
  TFrmTransferenciasAlmox = class(TFrmPadrao)
    TS_DBEdit2: TTS_DBButtonEdit;
    TS_Label2: TTS_Label;
    TS_DBEditDate1: TTS_DBEditDate;
    TS_DBLookupComboBox1: TTS_DBLookupComboBox;
    dfAlmoxOrigem: TTS_DBLookupComboBox;
    dfAlmoxDestino: TTS_DBLookupComboBox;
    TS_Label1: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    dbgItens: TTS_QDBGrid;
    TS_Label6: TTS_Label;
    dbgItensITEM: TdxDBGridMaskColumn;
    dbgItensFATOR: TdxDBGridMaskColumn;
    pnLotes: TTS_Panel;
    dbgLotes: TTS_QDBGrid;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    dxDBGridMaskColumn2: TdxDBGridMaskColumn;
    dxDBGridMaskColumn3: TdxDBGridMaskColumn;
    dxDBGridMaskColumn4: TdxDBGridMaskColumn;
    dbgItensNumeroLote: TdxDBGridPopupColumn;
    dbgItensCODIGO: TdxDBGridButtonColumn;
    dbgItensDESCRICAO: TdxDBGridButtonColumn;
    dbgItensREFERENCIA: TdxDBGridButtonColumn;
    dbgItensUNIDADE: TdxDBGridLookupColumn;
    dbgItensQUANTIDADE: TdxDBGridMaskColumn;
    ppTransferencia: TppReport;
    ppDBItens: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
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
    regCab: TppRegion;
    ppLine1: TppLine;
    ppTitulo: TppLabel;
    cbImprimir: TTS_CheckBox;
    ppDBTransferencia: TppDBPipeline;
    ZRTransferencia: TZReport;
    zrvlkAmoxOrigem: TZRField;
    zrvlkAlmoxDestino: TZRField;
    zrvlkUsuario: TZRField;
    zrvDATA: TZRField;
    zrvNUMERO: TZRField;
    ZRTransferenciaHeader: TZRBand;
    zrNome: TZRLabel;
    zrEnd: TZRLabel;
    zrCid: TZRLabel;
    zrFone: TZRLabel;
    zrLin1: TZRLabel;
    zrLin2: TZRLabel;
    zrLin3: TZRLabel;
    zrLin4: TZRLabel;
    ZRTitulo: TZRLabel;
    ZRTransferenciaDetail: TZRBand;
    ZRTransferenciaGroup: TZRGroup;
    ZRTransferenciaFooter: TZRBand;
    ZRLabel14: TZRLabel;
    ZRLabel109: TZRLabel;
    ZRLabel110: TZRLabel;
    ZRLabel112: TZRLabel;
    ZRLabel111: TZRLabel;
    ZRLabel1: TZRLabel;
    ZRLabel2: TZRLabel;
    ZRLabel3: TZRLabel;
    ZRLabel11: TZRLabel;
    ZRLabel4: TZRLabel;
    ZRLabel5: TZRLabel;
    ZRTransferenciaSubDetail: TZRSubDetail;
    zrvQUANTIDADE: TZRField;
    zrvFATOR: TZRField;
    zrvCODIGO: TZRField;
    zrvDESCRICAO: TZRField;
    zrvlkUnidade: TZRField;
    ZRLabel6: TZRLabel;
    ZRLabel7: TZRLabel;
    ZRLabel8: TZRLabel;
    ZRLabel9: TZRLabel;
    ZRLabel10: TZRLabel;
    ZRLabel15: TZRLabel;
    ZRLabel16: TZRLabel;
    ZRLabel113: TZRLabel;
    ZRLabel116: TZRLabel;
    ZRLabel114: TZRLabel;
    ZRLabel115: TZRLabel;
    ZRLabel12: TZRLabel;
    procedure TS_DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure TS_DBEdit2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgLotesDblClick(Sender: TObject);
    procedure dbgItensNumeroLoteInitPopup(Sender: TObject);
    procedure dbgItensNumeroLotePopup(Sender: TObject;
      const EditText: String);
    procedure FormShow(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure dbgItensTS_AfterNewRecord(Sender: TObject);
    procedure dbgItensTS_BeforeLocalizar(Sender: TObject; var Campo,
      Conteudo: String);
    procedure dbgItensTS_AposLocalizar(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure FormComponentGravou(Sender: TObject);
    procedure ZRLabelBeforePrint(Sender: TObject;  var DoPrint: Boolean);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
    LastColumn : String;
    procedure GeraCabecalho(zrNome, zrEnd, zrCid, zrFone, zrLin1, zrLin2, zrLin3, zrLin4 : TZRLabel);
  public
    { Public declarations }
  end;

var
  FrmTransferenciasAlmox: TFrmTransferenciasAlmox;

implementation
  uses DM_Projeto, DM_TransferenciasAlmox, db, Form_RichEdit, Funcoes;

{$R *.dfm}

procedure TFrmTransferenciasAlmox.GeraCabecalho(zrNome, zrEnd, zrCid, zrFone, zrLin1, zrLin2, zrLin3, zrLin4 : TZRLabel);
var sLinha, sLadoEsquerdo, sLadoDireito: string;
    i: integer;
begin
    with DMProjeto.q_sql do
    begin
        close;
        sql.text := 'select esquerdo, direito from cabecalho';
        open;
        sLadoEsquerdo := fields[0].asString;
        sLadoDireito := fields[1].asString;
    end;

    FormRichEdit := TFormRichEdit.Create(self);
    DMProjeto.Interpreta(sLadoEsquerdo);
    DMProjeto.Interpreta(sLadoDireito);
    sLadoEsquerdo := DMProjeto.FormataCabecalho(FormRichEdit.RichEdit, sLadoEsquerdo);
    sLadoDireito := DMProjeto.FormataCabecalho(FormRichEdit.RichEdit, sLadoDireito);
    FormRichEdit.Free;

    {Lado Esquerdo}
    zrNome.Caption := '';
    zrEnd.Caption := '';
    zrCid.Caption := '';
    zrFone.Caption := '';
    i := 1;
    while i <= ContaStrings(sLadoEsquerdo, ';') do
    begin
        sLinha := SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 2);
        while (sLinha = SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 2)) and
            (i <= ContaStrings(sLadoEsquerdo, ';')) do
        begin
            if sLinha = '0' then
                zrNome.Caption := zrNome.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
            else if sLinha = '1' then
                zrEnd.Caption := zrEnd.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
            else if sLinha = '2' then
                zrCid.Caption := zrCid.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
            else if sLinha = '3' then
                zrFone.Caption := zrFone.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
            else
                i := 1000;
            inc(i);
        end;
    end;
    zrNome.BeforePrint := ZRLabelBeforePrint;
    zrEnd.BeforePrint := ZRLabelBeforePrint;
    zrCid.BeforePrint := ZRLabelBeforePrint;
    zrFone.BeforePrint := ZRLabelBeforePrint;

    {Lado Direito}
    if zrLin1 <> nil then
    begin
        zrLin1.Caption := '';
        zrLin2.Caption := '';
        zrLin3.Caption := '';
        zrLin4.Caption := '';
        i := 1;
        while i <= ContaStrings(sLadoDireito, ';') do
        begin
            sLinha := SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 2);
            while (sLinha = SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 2)) and
                (i <= ContaStrings(sLadoDireito, ';')) do
            begin
                if sLinha = '0' then
                    zrLin1.Caption := zrLin1.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                else if sLinha = '1' then
                    zrLin2.Caption := zrLin2.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                else if sLinha = '2' then
                    zrLin3.Caption := zrLin3.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                else if sLinha = '3' then
                    zrLin4.Caption := zrLin4.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                else
                    i := 1000;
                inc(i);
            end;
        end;
        zrLin1.BeforePrint := ZRLabelBeforePrint;
        zrLin2.BeforePrint := ZRLabelBeforePrint;
        zrLin3.BeforePrint := ZRLabelBeforePrint;
        zrLin4.BeforePrint := ZRLabelBeforePrint;
    end;
end;



procedure TFrmTransferenciasAlmox.TS_DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    TS_DBEdit2ButtonClick(self,0);
end;

procedure TFrmTransferenciasAlmox.TS_DBEdit2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if not (DMTransferenciasAlmox.C_Tabela.State in [dsEdit,dsInsert]) then
    DMTransferenciasAlmox.C_Tabela.edit;
  DMTransferenciasAlmox.C_TabelaNumero.Value := DMTransferenciasAlmox.GeraNumero(DMTransferenciasAlmox.C_TabelaNumero.value,DMTransferenciasAlmox.C_TabelaTransfAlmox.value);
  ActiveControl := TS_DBEditDate1;
end;

procedure TFrmTransferenciasAlmox.dbgLotesDblClick(Sender: TObject);
begin
  inherited;
  DMTransferenciasAlmox.C_TransfAlmoxItens.Edit;

  try
    DMTransferenciasAlmox.C_TransfAlmoxItensNumeroLote.Value := DMTransferenciasAlmox.C_LotesNumeroLote.Value;
    DMTransferenciasAlmox.C_TransfAlmoxItens.Post;
    dbgLotes.DataSource := nil;
  except
  end;
end;

procedure TFrmTransferenciasAlmox.dbgItensNumeroLoteInitPopup(
  Sender: TObject);
begin
  inherited;
  dbgItensNUMEROLOTE.PopupControl := nil;
  dbgLotes.DataSource := DMTransferenciasAlmox.C_LotesDS;
  dbgItensNUMEROLOTE.PopupControl := pnLotes;
end;

procedure TFrmTransferenciasAlmox.dbgItensNumeroLotePopup(Sender: TObject;
  const EditText: String);
begin
  inherited;
  DMTransferenciasAlmox.C_Lotes.Close;
  DMTransferenciasAlmox.Q_Lotes.Params[0].asInteger := DMTransferenciasAlmox.C_TransfAlmoxItensItem.value;
  DMTransferenciasAlmox.C_Lotes.Open;

  if not DMTransferenciasAlmox.C_Lotes.Locate('NUMEROLOTE', DMTransferenciasAlmox.C_TransfAlmoxItensNumeroLote.value, []) then
    DMTransferenciasAlmox.C_Lotes.First;
end;

procedure TFrmTransferenciasAlmox.FormShow(Sender: TObject);
begin
  inherited;
  dbgItensNumeroLote.visible := DMProjeto.bControleValidade and not DMProjeto.bControleValidadeAut;
end;

procedure TFrmTransferenciasAlmox.FormComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  if DMProjeto.GetParametrosForm(1) <> null then
    dbgItens.TS_ID := DMProjeto.GetParametrosForm(1);
end;

procedure TFrmTransferenciasAlmox.dbgItensTS_AfterNewRecord(
  Sender: TObject);
begin
  inherited;
  dbgItens.TS_SelectedColumn := LastColumn;
end;

procedure TFrmTransferenciasAlmox.dbgItensTS_BeforeLocalizar(
  Sender: TObject; var Campo, Conteudo: String);
begin
  inherited;
  LastColumn := Campo;
end;

procedure TFrmTransferenciasAlmox.dbgItensTS_AposLocalizar(
  Sender: TObject);
begin
  inherited;
  dbgItens.TS_SelectedColumn := 'Quantidade';
end;

procedure TFrmTransferenciasAlmox.btComando1Click(Sender: TObject);
begin
  inherited;

  GeraCabecalho(    zrNome, zrEnd,zrCid , zrFone, zrLin1, zrLin2, zrLin3, zrLin4 );
  ZRTransferencia.Preview;


{  DMProjeto.ImprimirCabecalho( regCab );
  ppTitulo.Caption := lbCaption.Caption;
  ppTransferencia.Print;
 }
end;

procedure TFrmTransferenciasAlmox.ZRLabelBeforePrint(Sender: TObject;
  var DoPrint: Boolean);
begin
 TZrLabel(Sender).Caption := Replace(TZrLabel(Sender).Caption,'<NumeroPagina>',IntToStr(TZrLabel(Sender).Report.PageCount));
 TZrLabel(Sender).Caption := Replace(TZrLabel(Sender).Caption,'<TotalPaginas>',IntToStr(TZrLabel(Sender).Report.PageCount));
end;

procedure TFrmTransferenciasAlmox.FormComponentGravou(Sender: TObject);
begin
  inherited;
  If cbImprimir.Checked Then  Begin
    LocalizarUltimo;
    btComando1Click(Sender);
    btLimparClick(Sender);
  End;
end;

procedure TFrmTransferenciasAlmox.btGravarClick(Sender: TObject);
begin
  If dfAlmoxOrigem.LookupKeyValue = dfAlmoxDestino.LookupKeyValue Then Begin
    Application.MessageBox('O Almox Origem deve ser diferente do Almox Destino','Aviso',mb_ok);
    Exit;
  End;

  inherited;

end;

end.

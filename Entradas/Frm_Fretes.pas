unit Frm_Fretes;

interface
     
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib,
  TS_DBEditDate, TS_DBEditNumber, TS_DBEdit, TS_DBPopupEdit,
  TS_DBButtonEdit, TS_DBEditFavorecido, dxEditor, dxDBEdtr,
  TS_DBLookupTipoFav, TS_DBImageEdit, TS_DBMemo, Dlg_CFOPs, db, dxDBTLCl,
  dxGrClms;

type
  TFrmFretes = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    cmbTipoFav: TTS_DBLookupTipoFav;
    dfFavorecido: TTS_DBEditFavorecido;
    TS_Label17: TTS_Label;
    dfCFOPNota: TTS_DBPopupEdit;
    TS_Label18: TTS_Label;
    dfCFOPEntrada: TTS_DBPopupEdit;
    TS_Label16: TTS_Label;
    TS_DBEdit6: TTS_DBEdit;
    TS_Label4: TTS_Label;
    TS_DBEdit1: TTS_DBEdit;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    dfBaseCalculo: TTS_DBEditNumber;
    dfAliquota: TTS_DBEditNumber;
    dfValorICms: TTS_DBEditNumber;
    TS_Label8: TTS_Label;
    edTotalNota: TTS_DBEditNumber;
    TS_DBEditDate1: TTS_DBEditDate;
    TS_DBEditDate2: TTS_DBEditDate;
    edNumNota: TTS_DBEdit;
    TS_Label9: TTS_Label;
    TS_DBMemo1: TTS_DBMemo;
    TS_Label10: TTS_Label;
    TS_DBImageEdit1: TTS_DBImageEdit;
    TS_Label11: TTS_Label;
    TS_DBEditDate3: TTS_DBEditDate;
    GridNUMERO: TdxDBGridMaskColumn;
    GridCIF_FOB: TdxDBGridImageColumn;
    GridDATA: TdxDBGridDateColumn;
    GridDATANOTA: TdxDBGridDateColumn;
    GridFAVORECIDO: TdxDBGridMaskColumn;
    GridCFOPNOTA: TdxDBGridMaskColumn;
    GridCFOPENTRADA: TdxDBGridMaskColumn;
    GridSERIENOTA: TdxDBGridMaskColumn;
    GridMODELO: TdxDBGridMaskColumn;
    GridBASECALCICMS: TdxDBGridCurrencyColumn;
    GridALIQICMSCOMPRA: TdxDBGridCurrencyColumn;
    GridVALORICMS: TdxDBGridCurrencyColumn;
    GridTOTAL: TdxDBGridCurrencyColumn;
    GridDATAENTREGA: TdxDBGridDateColumn;
    GridOBS: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridRAZAO: TdxDBGridMaskColumn;
    GridlkTipoMov: TdxDBGridLookupColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dfCFOPEntradaInitPopup(Sender: TObject);
    procedure dfCFOPNotaInitPopup(Sender: TObject);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure dfValorICmsEnter(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FrmFretes: TFrmFretes;

implementation
uses DM_Projeto, DM_Fretes;

{$R *.dfm}

procedure TFrmFretes.FormCreate(Sender: TObject);
begin
  inherited;
  DlgCFOPs := TDlgCFOPs.Create(self,DMFretes.C_CFOPsDS,nil);
end;

procedure TFrmFretes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DlgCFOPs.Free;
end;

procedure TFrmFretes.dfCFOPEntradaInitPopup(Sender: TObject);
begin
  inherited;
  TTS_DBPopupEdit(Sender).PopupControl := DlgCFOPs.pnCFOP;
  DlgCFOPs.SetEventos(TTS_DBPopupEdit(Sender));
  DlgCFOPs.SetFiltro('substring(cfop,1,1) < ''4''');
end;

procedure TFrmFretes.dfCFOPNotaInitPopup(Sender: TObject);
begin
  inherited;
  TTS_DBPopupEdit(Sender).PopupControl := DlgCFOPs.pnCFOP;
  DlgCFOPs.SetEventos(TTS_DBPopupEdit(Sender));
  DlgCFOPs.SetFiltro('substring(cfop,1,1) >= ''5''');
end;

procedure TFrmFretes.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
var s:string;
begin
  inherited;
  DMProjeto.C_TipoFav.Locate( 'TipoFavorecido', cmbTipoFav.LookupKeyValue, []);
  s := DMProjeto.C_TipoFavForm.Value;


  if (LastDataObject.TableName = 'FAVORECIDOS') and (LastDataObject.FormName = UpperCase(s)) and
     (ActiveControl = dfFavorecido) and (LastDataObject.ObjectKey <> null) then
    dfFavorecido.ID := LastDataObject.ObjectKey;
end;

procedure TFrmFretes.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  if DMProjeto.QtdParametrosForm > 1 then begin
    DMFretes.nEntradaOrigem := DMProjeto.GetParametrosForm(1);
    DMFretes.nValorFrete := DMProjeto.GetParametrosForm(2);
    if DMFretes.C_Tabela.state in [dsedit,dsinsert] then begin
      DMFretes.C_TabelaFrete.Value := DMFretes.nValorFrete;
      DMFretes.C_TabelaNotaOrigem.Value := DMFretes.nEntradaOrigem;
    end;
  end;
end;

procedure TFrmFretes.dfValorICmsEnter(Sender: TObject);
begin
  inherited;
  DMFretes.C_TabelaVALORICMS.Value :=  DMFretes.C_TabelaBASECALCICMS.Value * (DMFretes.C_TabelaALIQICMSCOMPRA.Value /100);
end;

end.

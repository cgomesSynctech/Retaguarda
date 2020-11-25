unit Frm_Embalagem3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, dxCntner, dxEditor, dxEdLib, dxDBELib,
  TS_DBEdit, Placemnt, BTOdeum, FormComponent, ImgList, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, ppDB, ppDBPipe, ppBarCod, ppPrnabl, ppClass,
  ppCtrls, ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport, Provider,
  DB, DBClient, IBCustomDataSet, IBQuery, ppVar;

type
  TFrmEmbalagem3 = class(TFrmPadrao)
    dbVenda: TTS_DBEdit;
    TS_DBEdit2: TTS_DBEdit;
    TS_DBEdit3: TTS_DBEdit;
    TS_DBEdit4: TTS_DBEdit;
    TS_DBEdit5: TTS_DBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ppEmbalagem: TppReport;
    ppDetailBand21: TppDetailBand;
    ppDBEtiquetas: TppDBPipeline;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel2: TppLabel;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppDBText5: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppDBText6: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    procedure btPesquisarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dbVendaKeyPress(Sender: TObject; var Key: Char);
    procedure TS_DBEdit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmbalagem3: TFrmEmbalagem3;

implementation
uses DM_embalagem3, DM_projeto;
{$R *.dfm}

procedure TFrmEmbalagem3.btPesquisarClick(Sender: TObject);
begin
  inherited;
  TS_DBEdit5.SetFocus ;
end;

procedure TFrmEmbalagem3.btGravarClick(Sender: TObject);
begin
  inherited;
   DMEmbalagem3.geraretiqueta ;
   ppEmbalagem.Print ;

   btLimpar.Click ;

end;

procedure TFrmEmbalagem3.dbVendaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then begin
    bPesquisaPadrao := true;
    dbVenda.Setfocus;
        btPesquisar.Click ;
   end;
end;

procedure TFrmEmbalagem3.TS_DBEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
     if Key = #13 then begin
             btGravar.Click ;
   end;
end;

end.

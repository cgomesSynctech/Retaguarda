unit Dlg_ImpressaoDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  TS_LookupComboBox, ExtCtrls, TS_Shape, dxCntner, dxEdLib, TS_CheckBox,
  Placemnt, FormsComponent, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, TS_Image, dxfLabel,
  TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel,
  DB, DBClient, IBCustomDataSet, IBQuery, Provider, TS_DBImageEdit,
  TS_ImageEdit;

type
  TDlgImpressaoDoc = class(TFrmModeloCadastros)
    ckbNotaFiscal: TTS_CheckBox;
    ckbDocumento: TTS_CheckBox;
    ckbDuplicata: TTS_CheckBox;
    ckbBoleto: TTS_CheckBox;
    ckbCarne: TTS_CheckBox;
    ckbRecibo: TTS_CheckBox;
    ckbFichaCliente: TTS_CheckBox;
    TS_Shape1: TTS_Shape;
    cmbTemplateNF: TTS_LookupComboBox;
    cmbTemplate: TTS_LookupComboBox;
    TS_Shape2: TTS_Shape;
    N1NotaFiscal1: TMenuItem;
    N2DocumentodaOperao1: TMenuItem;
    N3Duplicata1: TMenuItem;
    N4BoletoBancrio1: TMenuItem;
    N5Carn1: TMenuItem;
    N6Recibo1: TMenuItem;
    N7FichadoCliente1: TMenuItem;
    C_TemplatesNF: TClientDataSet;
    P_TemplatesNF: TDataSetProvider;
    C_TemplatesNFDS: TDataSource;
    Q_TemplatesNF: TIBQuery;
    C_TemplatesNFTEMPLATE: TIntegerField;
    C_TemplatesNFDESCRICAO: TStringField;
    C_TemplatesNFARQUIVO: TStringField;
    C_TemplatesNFTIPO: TStringField;
    Q_Templates: TIBQuery;
    C_Templates: TClientDataSet;
    P_Templates: TDataSetProvider;
    C_TemplatesDS: TDataSource;
    C_TemplatesTEMPLATE: TIntegerField;
    C_TemplatesDESCRICAO: TStringField;
    C_TemplatesARQUIVO: TStringField;
    C_TemplatesTIPO: TStringField;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    cmbEnviarPara: TTS_ImageEdit;
    TS_Label29: TTS_Label;
    cmbTipoNotaFiscal: TTS_ImageEdit;
    cmbTipoDoc: TTS_LookupComboBox;
    Q_TiposImpressao: TIBQuery;
    C_TiposImpressao: TClientDataSet;
    P_TiposImpressao: TDataSetProvider;
    C_TiposImpressaoTIPO: TStringField;
    C_TiposImpressaoTITULO: TStringField;
    C_TiposImpressaoDESCRICAO: TStringField;
    C_TiposImpressaoIMAGEM: TStringField;
    C_TiposImpressaoDS: TDataSource;
    ckbPadrao: TTS_CheckBox;
    ckbProximaVez: TTS_CheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Modelo : string;
    Template, TemplateNF : integer;
  end;

var
  DlgImpressaoDoc: TDlgImpressaoDoc;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDlgImpressaoDoc.FormCreate(Sender: TObject);
begin
  inherited;
  C_TiposImpressao.Open;
  C_Templates.Open;
  C_TemplatesNF.Open;
end;

procedure TDlgImpressaoDoc.btGravarClick(Sender: TObject);
begin
  inherited;
  Modelo := C_TiposImpressaoTipo.AsString;
  Template := C_TemplatesTemplate.AsInteger;
  TemplateNF := C_TemplatesNFTemplate.AsInteger;
  ModalResult := mrOk;
end;

end.

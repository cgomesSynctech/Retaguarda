unit Rpt_ComissaoVendaRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, ppBands, ppReport, ppStrtch, ppSubRpt, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppDB, DB, IBCustomDataSet, IBQuery, dxExEdtr,
  dxEdLib, TS_DateTimePicker, dxCntner, dxEditor, dxDBELib, TS_DBComboBox,
  ppProd, ppComm, ppRelatv, ppDBPipe, Provider, DBClient, TS_ButtonEdit,
  TS_EditFavorecido;

type
  TRptComissaoVendaRecebimento = class(TFrmModeloCadastros)
    ppDBComissaoVenda: TppDBPipeline;
    ppComissao: TppReport;
    Q_ComissoesVendaDs: TDataSource;
    dtInicio: TTS_DateTimePicker;
    dtFim: TTS_DateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Q_ComissoesVenda: TIBQuery;
    Q_ComissaoRecebimento: TIBQuery;
    Q_ComissaoRecebimentoDs: TDataSource;
    Q_ComissoesVendaNUMERO: TIBStringField;
    Q_ComissoesVendaDATA: TDateField;
    Q_ComissoesVendaCLIENTE: TIBStringField;
    Q_ComissaoRecebimentoNOTAFISCAL: TIBStringField;
    Q_ComissaoRecebimentoDATAPAGO: TDateField;
    Q_ComissaoRecebimentoCLIENTE: TIBStringField;
    Q_ComissaoRecebimentoCOMISSAO: TFloatField;
    ppDBComissaoRecebimento: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel7: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine3: TppLine;
    ppLabel13: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine4: TppLine;
    edFuncionario: TTS_EditFavorecido;
    Q_Funcionarios: TIBQuery;
    C_Funcionarios: TClientDataSet;
    C_FuncionariosFAVORECIDO: TIntegerField;
    C_FuncionariosNOME: TStringField;
    C_FuncionariosDATAADIMISSAO: TDateField;
    C_FuncionariosCARGO: TStringField;
    C_FuncionariosPAGAMENTO: TBCDField;
    C_FuncionariosDEVOLUCOES: TBCDField;
    C_FuncionariosSaldoAnterior: TCurrencyField;
    C_FuncionariosAReceber: TCurrencyField;
    C_FuncionariosCOMISSAO: TBCDField;
    P_Funcionarios: TDataSetProvider;
    C_FuncionariosDS: TDataSource;
    Q_ComissaoRecebimentoVALORPAGO: TIBBCDField;
    Q_ComissoesVendaTOTAL: TFloatField;
    Q_ComissoesVendaCOMISSAO: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  { Felipe - Comentado o acesso a essa tela por não ter nenhuma implementação feita. (03/05/2016) }

var
  RptComissaoVendaRecebimento: TRptComissaoVendaRecebimento;

implementation

uses DM_Projeto;

{$R *.dfm}

end.

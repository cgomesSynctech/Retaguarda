unit Rpt_ClienteSemMovimento;         

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, DBClient, Provider, Db, IBCustomDataSet, IBQuery,
  TS_LastDataObject, DlgMsg, teCtrls, TS_EffectsPanel,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, ExtCtrls, StdCtrls,
  TS_Label, dxfLabel, TS_MaxPanel, dxExEdtr, dxEdLib, TS_CheckBox, Buttons,
  TS_SpeedButton, dxDBTLCl, dxGrClms, IBUpdateSQL, Menus, TS_PopupMenu,
  ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  Placemnt, BTOdeum;

type
  TRptClienteSemMovimento = class(TRptPadrao)
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaCAIXAPOSTAL: TStringField;
    C_ConsultaPAIS: TIntegerField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaFONE2: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaCELULAR: TStringField;
    C_ConsultaEMAIL: TStringField;
    C_ConsultaOBS: TStringField;
    C_ConsultaDESC_PAIS: TStringField;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    btGravar: TTS_SpeedButton;
    C_ConsultaEXCLUIR: TStringField;
    dbgConsultaEXCLUIR: TdxDBGridCheckColumn;
    upConsulta: TIBUpdateSQL;
    QueryAtualiza: TIBQuery;
    C_ConsultaPreviewEnd: TStringField;
    N9: TMenuItem;
    Endereo1: TMenuItem;
    procedure btGravarClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Endereo1Click(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure  AtualizaConsulta;
  public
    { Public declarations }
  end;

var
  RptClienteSemMovimento: TRptClienteSemMovimento;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure  TRptClienteSemMovimento.AtualizaConsulta;
begin
  with C_Consulta do begin
    if not DMProjeto.IBT_Projeto.InTransaction then
        DMProjeto.IBT_Projeto.StartTransaction;
    QueryAtualiza.ExecSQL;
    DMProjeto.IBT_Projeto.CommitRetaining;
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where f.tipofavorecido = 1 and ' +
                   'f.favorecido not in (select favorecido from clientesemmov)';
    Open;
  end;
end;

procedure TRptClienteSemMovimento.btGravarClick(Sender: TObject);
begin
  inherited;
  if C_Consulta.State = dsEdit then
     C_Consulta.Post;
  if (C_Consulta.ChangeCount > 0) then begin
      if not (DMPRojeto.IBT_Projeto.InTransaction) then
            DMPRojeto.IBT_Projeto.StartTransaction;
      try
        C_Consulta.ApplyUpdates(0);
        DMPRojeto.IBT_Projeto.CommitRetaining;
        AtualizaConsulta;
      except
      end;
  end;
end;

procedure TRptClienteSemMovimento.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptClienteSemMovimento.FormShow(Sender: TObject);
begin
  inherited;
   AtualizaConsulta;
end;

procedure TRptClienteSemMovimento.Endereo1Click(Sender: TObject);
begin
  inherited;
  Endereo1.Checked := not Endereo1.Checked;
  if Endereo1.Checked then
     dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
     dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptClienteSemMovimento.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptClienteSemMovimento.dbgConsultaDblClick(Sender: TObject);
var
   nIdFav : Integer;
begin
  inherited;
  nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
  DMProjeto.SetParametrosForm([nIdFav]);
  DMProjeto.CriarForm('FrmClientes',Self,true);
end;

procedure TRptClienteSemMovimento.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
end;

end.

unit Rpt_ClientesEquipamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxTL, dxDBCtrl, dxDBGrid, DB, dxPSCore,
  dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, FormsComponent, DBClient,
  Provider, IBCustomDataSet, IBQuery, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner, dxEdLib, TS_CheckBox,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor,
  TS_PopupEdit, CheckLst, TS_CheckListBox, dxDBTLCl, dxGrClms;

type
  TRptClientesEquipamentos = class(TRptPadrao)
    C_ConsultaEQUIPAMENTO: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaNUMMAQUINA: TStringField;
    C_ConsultaMARCA: TStringField;
    C_ConsultaTECNOLOGIA: TStringField;
    C_ConsultaPAVIMENTOS: TIntegerField;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaNUMMAQUINA: TdxDBGridMaskColumn;
    dbgConsultaMARCA: TdxDBGridMaskColumn;
    dbgConsultaTECNOLOGIA: TdxDBGridMaskColumn;
    dbgConsultaPAVIMENTOS: TdxDBGridMaskColumn;
    btClientes: TTS_SpeedButton;
    TS_Label3: TTS_Label;
    TS_PopupEdit1: TTS_PopupEdit;
    TS_Label1: TTS_Label;
    TS_PopupEdit2: TTS_PopupEdit;
    clbMarcas: TTS_CheckListBox;
    P_Marcas: TDataSetProvider;
    C_Marcas: TClientDataSet;
    Q_Marcas: TIBQuery;
    C_MarcasMARCA: TIntegerField;
    C_MarcasDESCRICAO: TStringField;
    clbTecnologias: TTS_CheckListBox;
    C_Tecnologias: TClientDataSet;
    P_Tecnologias: TDataSetProvider;
    Q_Tecnologias: TIBQuery;
    C_TecnologiasTECNOLOGIA: TIntegerField;
    C_TecnologiasDESCRICAO: TStringField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaLOCALMAPA: TStringField;
    C_ConsultaEDIFICIO: TStringField;
    C_ConsultaNUMCONTRATO: TStringField;
    C_ConsultaTIPOCONTRATO: TStringField;
    C_ConsultaDESCROTA: TStringField;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaLOCALMAPA: TdxDBGridMaskColumn;
    dbgConsultaEDIFICIO: TdxDBGridMaskColumn;
    dbgConsultaNUMCONTRATO: TdxDBGridMaskColumn;
    dbgConsultaTIPOCONTRATO: TdxDBGridImageColumn;
    dbgConsultaDESCROTA: TdxDBGridMaskColumn;
    C_ConsultaCONTATO: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaOBS: TStringField;
    dbgConsultaCONTATO: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure TS_PopupEdit1CloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    procedure TS_PopupEdit2CloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
  private
    sClientes, sNomesClientes : String;  
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptClientesEquipamentos: TRptClientesEquipamentos;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TRptClientesEquipamentos.Atualizar;
var
  sMarcas, sTecnologias, sWhere: String;
begin
  C_Consulta.Close;
  Q_Consulta.Sql.Text := 'Select ' + getCampos + ' ' +
                         'From ' + getTabelas + ' ';

  if sClientes <> '' then
    sWhere := sWhere + ' and e.favorecido in (' + sClientes +')';

  sMarcas := clbMarcas.Selecionados;
  if sMarcas <> '' then
    sWhere := sWhere + ' and e.marca in (' + sMarcas + ')';

  sTecnologias := clbTecnologias.Selecionados;
  if sTecnologias <> '' then
    sWhere := sWhere + ' and e.tecnologia in (' + sTecnologias + ')';

  if (sWhere <> '') then begin
    sWhere := 'where ' + copy(sWhere, 5, length(sWhere));
  end;

  Q_Consulta.Sql.Text := Q_Consulta.Sql.Text + ' order by f.nome ';
  C_Consulta.Open;
  dbgConsulta.ExpandirGrupos;
end;

procedure TRptClientesEquipamentos.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptClientesEquipamentos.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  sClientes := '';
  C_Marcas.Close;
  C_Marcas.Open;
  C_Tecnologias.Close;
  C_Tecnologias.Open;
  clbMarcas.SetDataSet(C_Marcas);
  clbTecnologias.SetDataSet(C_Tecnologias);  
  Atualizar;
end;

procedure TRptClientesEquipamentos.btClientesClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomesClientes := GetParametrosForm(1);
      LimparParametrosForm;
      Atualizar;
    end;
  end;
end;

procedure TRptClientesEquipamentos.TS_PopupEdit1CloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbMarcas.Selecionados( true );
  Accept := true;
	Atualizar;
end;

procedure TRptClientesEquipamentos.TS_PopupEdit2CloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbTecnologias.Selecionados( true );
  Accept := true;
	Atualizar;
end;

end.

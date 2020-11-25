unit Dlg_Recados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, TS_SpeedButton, TS_ScrollBox, ExtCtrls, Db,
  IBCustomDataSet, IBQuery, Provider, DBClient, StdCtrls,
  TS_CheckBox, TS_Image, TS_Shape, DLG_PADRAOCHILD, DlgMsg,
  Menus, TS_BitBtn, TS_LastDataObject,
  dxCntner, dxExEdtr, dxEdLib,
  FRM_MODELOCADASTROS, FormsComponent, TS_Label, dxfLabel,
  TS_MaxPanel, TS_Bevel, dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, TS_PopupMenu, Variants, Placemnt,
  BTOdeum;

type
  TDlgRecados = class(TFrmModeloCadastros)
    C_Recados: TClientDataSet;
    C_RecadosProvider: TDataSetProvider;
    Q_Recados: TIBQuery;
    C_RecadosDS: TDataSource;
    C_EnviadosDS: TDataSource;
    C_Enviados: TClientDataSet;
    C_EnviadosProvider: TDataSetProvider;
    Q_Enviados: TIBQuery;
    gridRecados: TTS_QDBGrid;
    gridRecadosDE: TdxDBGridMaskColumn;
    gridRecadosLIDO: TdxDBGridCheckColumn;
    gridEnviados: TTS_QDBGrid;
    gridEnviadosPARA: TdxDBGridMaskColumn;
    gridEnviadosLIDO: TdxDBGridCheckColumn;
    C_RecadoscfDATAHORA: TStringField;
    C_RecadosRECADO: TIntegerField;
    C_RecadosDATA: TDateField;
    C_RecadosHORARIO: TIntegerField;
    C_RecadosDE: TStringField;
    C_RecadosPARA: TStringField;
    C_RecadosDESCRICAO: TStringField;
    C_RecadosLIDO: TStringField;
    C_EnviadosRECADO: TIntegerField;
    C_EnviadosDATA: TDateField;
    C_EnviadosHORARIO: TIntegerField;
    C_EnviadosDE: TStringField;
    C_EnviadosPARA: TStringField;
    C_EnviadosDESCRICAO: TStringField;
    C_EnviadosLIDO: TStringField;
    C_EnviadoscfDATAHORA: TStringField;
    gridRecadosDESCRICAO: TdxDBGridMemoColumn;
    gridRecadosDATA: TdxDBGridMaskColumn;
    gridEnviadosDATA: TdxDBGridMaskColumn;
    gridEnviadosDESCRICAO: TdxDBGridMemoColumn;
    TS_Panel1: TTS_Panel;
    Chk_MostraTodos: TTS_CheckBox;
    procedure Chk_MostraTodosClick(Sender: TObject);
    procedure btAgendarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure btLerClick(Sender: TObject);
    procedure C_RecadosDESCRICAOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Grid_RecadosEspecialSelection(Sender: TObject;
      bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
    procedure C_EnviadosDESCRICAOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Grid_EnviadosDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure C_RecadoscfDATAHORAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure C_EnviadoscfDATAHORAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizaRecados;
  end;

var
  DlgRecados: TDlgRecados;

implementation

uses DM_Projeto, MDI_Projeto, DM_Agenda;

{$R *.DFM}

procedure TDlgRecados.Chk_MostraTodosClick(Sender: TObject);
begin
  if C_Recados.Filter = '' then begin
    C_Recados.Filter 	:= ('LIDO='+QuotedStr('N'));
    C_Enviados.Filter := ('LIDO='+QuotedStr('N'));
  end else begin
  	C_Recados.Filter 	:= '';
    C_Enviados.Filter := '';
  end;
end;

procedure TDlgRecados.btAgendarClick(Sender: TObject);
begin
  DMProjeto.SetParametrosForm( [null, 'RECEBIDO', true] );
  DMProjeto.CriarForm('FRMRECADOS',Self, true);
end;

procedure TDlgRecados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  C_Recados.Close;
  C_Enviados.Close;
  WindowState := wsMinimized;
  Action := caFree;
end;

procedure TDlgRecados.btFecharCadastroClick(Sender: TObject);
begin
  Close;
end;

procedure TDlgRecados.btLerClick(Sender: TObject);
begin
  if C_Recados.RecordCount > 0 then begin
    DMProjeto.SetParametrosForm( [C_Recados.FieldByName('RECADO').Value, 'RECEBIDO', false] );
    DMProjeto.CriarForm('FRMRECADOS',Self, true);
  end;
end;

procedure TDlgRecados.C_RecadosDESCRICAOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Length(Sender.AsString) > 20 then
    Text := copy(Sender.AsString, 1, 20) + '...'
  else Text := Sender.AsString;
end;

procedure TDlgRecados.Grid_RecadosEspecialSelection(Sender: TObject;
  bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
begin
  inherited;
  if C_Recados.FieldByName('LIDO').AsString = 'S' then
    NewFont.Color := clSilver
  else NewFont.Style := NewFont.Style + [fsBold];
end;

procedure TDlgRecados.C_EnviadosDESCRICAOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Length(Sender.AsString) > 20 then
    Text := copy(Sender.AsString, 1, 20) + '...'
  else Text := Sender.AsString;  
end;

procedure TDlgRecados.Grid_EnviadosDblClick(Sender: TObject);
begin
  inherited;
  if C_Enviados.RecordCount > 0 then begin
    DMProjeto.SetParametrosForm( [C_Enviados.FieldByName('RECADO').Value, 'ENVIADO', false] );
    DMProjeto.CriarForm('FRMRECADOS',Self, true);
  end;
end;

procedure TDlgRecados.FormShow(Sender: TObject);
begin
  inherited;
  AtualizaRecados;
end;

procedure TDlgRecados.AtualizaRecados;
var data_filtro: string;
begin
  C_Recados.DisableControls;
  C_Enviados.DisableControls;
  C_Recados.Close;
  C_Enviados.Close;
  data_filtro := QuotedStr(FormatDateTime('mm/dd/yyyy', Date-3));
  C_Recados.CommandText :=
    'Select r.RECADO,r.DATA,r.HORARIO,u1.LOGINNAME As DE,u2.LOGINNAME As PARA,r.DESCRICAO,'+
    ' r.LIDO From RECADOS r Join USUARIOS u1 On r.DE=u1.USUARIO Join USUARIOS u2 On r.PARA=u2.USUARIO'+
    ' Where r.PARA = ' + IntToStr( DMProjeto.nFuncionario )+
    ' And (r.DATA >= ' + data_filtro +' Or r.LIDO='+QuotedStr('N')+')'+
    ' Order By r.DATA Desc, r.HORARIO Desc';
  C_Enviados.CommandText :=
    'Select r.RECADO,r.DATA,r.HORARIO,u1.LOGINNAME As DE,u2.LOGINNAME As PARA,r.DESCRICAO,'+
    ' r.LIDO From RECADOS r Join USUARIOS u1 On r.DE=u1.USUARIO Join USUARIOS u2 On r.PARA=u2.USUARIO'+
    ' Where r.DE = ' + IntToStr( DMProjeto.nFuncionario )+
    ' And r.DATA >= ' + data_filtro +
    ' Order By r.DATA Desc, r.HORARIO Desc';
  C_Recados.Open;
  C_Enviados.Open;
  C_Recados.EnableControls;
  C_Enviados.EnableControls;
end;

procedure TDlgRecados.FormCreate(Sender: TObject);
begin
  inherited;
  DlgRecados := Self;
end;

procedure TDlgRecados.C_RecadoscfDATAHORAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if C_Recados.RecordCount>0 then
    Text := C_RecadosDATA.AsString+' ('+DMAgenda.IntegerToHora(C_RecadosHORARIO.Value,DMProjeto.bFormatoAMPM)+')'
  else Text := '';
end;

procedure TDlgRecados.C_EnviadoscfDATAHORAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if C_Enviados.RecordCount>0 then
    Text := C_EnviadosDATA.AsString+' ('+DMAgenda.IntegerToHora(C_EnviadosHORARIO.Value,DMProjeto.bFormatoAMPM)+')'
  else Text := '';
end;

end.

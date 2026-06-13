unit Frm_ChamadoTecnico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBButtonEdit, TS_DBEditFavorecido, TS_DBMemo, TS_DBEditDate,
  TS_DBTimeEdit, dxDBTLCl, dxGrClms, TransEff, teTimed, teDrip, TS_DBEdit,
  Mask, DBCtrls, DB, dxDBEdtr, TS_DBLookupComboBox;

type
  TFrmChamadoTecnico = class(TFrmPadrao)
    lbCliente: TTS_Label;
    lbFunc: TTS_Label;
    lbData: TTS_Label;
    lbHora: TTS_Label;
    lbDesc: TTS_Label;
    edCliente: TTS_DBEditFavorecido;
    edFunc: TTS_DBEditFavorecido;
    edHora: TTS_DBTimeEdit;
    edData: TTS_DBEditDate;
    memoServico: TTS_DBMemo;
    lbResult: TTS_Label;
    memoResult: TTS_DBMemo;
    GridDATAMARCACAO: TdxDBGridDateColumn;
    GridHORAMARCACAO: TdxDBGridTimeColumn;
    GridNOMECLIENTE: TdxDBGridMaskColumn;
    GridNOMEFUNC: TdxDBGridMaskColumn;
    lbFinalizado: TdxfLabel;
    Transition: TTransitionList;
    T_Status: TDripTransition;
    edStatus: TDBEdit;
    lbDtEntrada: TTS_Label;
    edDtEntrada: TTS_DBEditDate;
    lbHrEntrada: TTS_Label;
    edHrEntrada: TTS_DBTimeEdit;
    lbDtSaida: TTS_Label;
    edDtSaida: TTS_DBEditDate;
    lbHrSaida: TTS_Label;
    edHrSaida: TTS_DBTimeEdit;
    GridDEFEITOALEGADO: TdxDBGridMaskColumn;
    GridDEFEITOENCONTRADO: TdxDBGridMaskColumn;
    GridDATAENTRADA: TdxDBGridDateColumn;
    GridHORAENTRADA: TdxDBGridTimeColumn;
    GridDATASAIDA: TdxDBGridDateColumn;
    GridHORASAIDA: TdxDBGridTimeColumn;
    TS_Label19: TTS_Label;
    DF_Codigo: TTS_DBButtonEdit;
    TS_Label7: TTS_Label;
    dfNumeroSerial: TTS_DBLookupComboBox;
    edChaveCliente: TDBEdit;
    procedure edStatusChange(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure btComando2Click(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure edChaveClienteChange(Sender: TObject);
    procedure edClienteSelecionou(Sender: TObject);
    procedure DF_CodigoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
    procedure MudaMaquinas;
    function GerarCodigo: string;
  public
    { Public declarations }
  end;

var
  FrmChamadoTecnico: TFrmChamadoTecnico;

implementation

{$R *.dfm}

uses DM_Projeto, DM_ChamadoTecnico,
     Dlg_FinalizarChamado, Rpt_Tecnica, funcoes;

procedure TFrmChamadoTecnico.edStatusChange(Sender: TObject);
begin
  inherited;
  if DMChamadoTecnico.C_TabelaSTATUS.Value = 'F' then begin
    lbResult.Visible := True;
    memoResult.Visible := True;
    lbDtEntrada.Visible := True;
    lbDtSaida.Visible := True;
    edDtEntrada.Visible := True;
    edDtSaida.Visible := True;
    lbHrEntrada.Visible := True;
    lbHrSaida.Visible := True;
    edHrEntrada.Visible := True;
    edHrSaida.Visible := True;
    btComando1.Visible := False;
    T_Status.Prepare(lbFinalizado.Parent, lbFinalizado.BoundsRect);
    try
        lbFinalizado.Visible := true;
        if T_Status.Prepared then
            T_Status.Execute;
    finally
        T_Status.unPrepare;
    end;
  end
  else begin
    lbFinalizado.Visible := False;
    lbResult.Visible := False;
    memoResult.Visible := False;
    lbDtEntrada.Visible := False;
    lbDtSaida.Visible := False;
    edDtEntrada.Visible := False;
    edDtSaida.Visible := False;
    lbHrEntrada.Visible := False;
    lbHrSaida.Visible := False;
    edHrEntrada.Visible := False;
    edHrSaida.Visible := False;
    if DMChamadoTecnico.bAlteracao then btComando1.Visible := True
    else btComando1.Visible := False;
  end;
end;

procedure TFrmChamadoTecnico.btComando1Click(Sender: TObject);
var sFinal : string;
    dEnt, dSai, hEnt, hSai : TDateTime;
begin
  inherited;
  sFinal := '';
  DlgFinalizarChamado := TDlgFinalizarChamado.Create(Self);
  DlgFinalizarChamado.sCliente := DMChamadoTecnico.C_TabelaNomeCLiente.AsString;
  if DlgFinalizarChamado.ShowModal = mrOK then begin
    sFinal := DlgFinalizarChamado.sFinal;
    dEnt :=  DlgFinalizarChamado.dEntrada;
    dSai := DlgFinalizarChamado.dSaida;
    hEnt :=   DlgFinalizarChamado.hEntrada;
    hSai := DlgFinalizarChamado.hSaida;
  end;
  DlgFinalizarChamado.Release;
  DlgFinalizarChamado := nil;
  if sFinal <> '' then begin
    if not (DMChamadoTecnico.C_Tabela.State in [dsEdit,dsInsert]) then
      DMChamadoTecnico.C_Tabela.Edit;
    DMChamadoTecnico.C_TabelaDEFEITOENCONTRADO.AsString := sFinal;
    DMChamadoTecnico.C_TabelaDATAENTRADA.Value := dEnt;
    DMChamadoTecnico.C_TabelaHORAENTRADA.Value := hEnt;
    DMChamadoTecnico.C_TabelaDATASAIDA.Value := dSai;
    DMChamadoTecnico.C_TabelaHORASAIDA.Value := hSai;
    DMChamadoTecnico.C_TabelaSTATUS.AsString := 'F';
    DMChamadoTecnico.C_Tabela.Post;
    try
      DMChamadoTecnico.bFinalizando := True;
      DMChamadoTecnico.Gravar;
    finally
      DMChamadoTecnico.bFinalizando := False;
    end;
  end;
end;

procedure TFrmChamadoTecnico.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if (UpperCase(LastDataObject.TableName) = 'FAVORECIDOS') then begin
    if (ActiveControl = edCliente) then edCliente.ID := LastDataObject.ObjectKey
    else if (ActiveControl = edFunc) then edFunc.ID := LastDataObject.ObjectKey;
  end;
end;

procedure TFrmChamadoTecnico.btComando2Click(Sender: TObject);
begin
  inherited;
  RptTecnica := TRptTecnica.Create(Self);
  RptTecnica.ImprimirChamado( DMChamadoTecnico.C_TabelaCHAMADO.AsInteger );
  RptTecnica.Release;
  RptTecnica := nil;
end;

procedure TFrmChamadoTecnico.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btCOmando2.Visible := False;
end;

procedure TFrmChamadoTecnico.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btCOmando2.Visible := True;
end;

procedure TFrmChamadoTecnico.MudaMaquinas;
begin
  with DMChamadoTecnico do begin
    C_Equip.Close;
    Q_Equip.ParamByName('CLIENTE').AsInteger := C_TabelaCLIENTE.AsInteger;
    C_Equip.Open;
  end;
end;

procedure TFrmChamadoTecnico.edChaveClienteChange(Sender: TObject);
begin
  inherited;
  MudaMaquinas;
end;

procedure TFrmChamadoTecnico.edClienteSelecionou(Sender: TObject);
begin
  inherited;
  MudaMaquinas;
end;

procedure TFrmChamadoTecnico.DF_CodigoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  DMChamadoTecnico.C_TabelaNUMERO.Value := GerarCodigo;
  ActiveControl := edCliente;
end;

function TFrmChamadoTecnico.GerarCodigo: string;
var xID, xCasas: integer;
    xCodigo: string;
begin
   xCasas := 6;
   xID := DMProjeto.NextID('CHAMADO');
   if length(IntToStr(xID)) > 6 then
     xCasas := length(IntToStr(xID));
   Result := AdicionarStr(IntToStr(xID), '0', xCasas);
end;

end.

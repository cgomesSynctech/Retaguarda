unit Frm_ProducoesServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib,
  TS_DBEditDate, TS_DBEdit, dxDBEdtr, TS_DBLookupTipoFav, dxEditor,
  TS_DBButtonEdit, TS_DBEditFavorecido, TS_DBEditItem, dxDBTLCl, dxGrClms, Db;
Const
    PM_PostItens = WM_User + 110;
    PM_Foco      = WM_User + 130;

type
  TFrmProducoesServico = class(TFrmPadrao)
    TS_Panel1: TTS_Panel;
    dbGridDetalhe: TTS_QDBGrid;
    dfFuncionario: TTS_DBEditFavorecido;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    dfData: TTS_DBEditDate;
    dbGridDetalhePRODUCAOSERVICODET: TdxDBGridMaskColumn;
    dbGridDetalhePRODUCAOSERVICO: TdxDBGridMaskColumn;
    dbGridDetalheQUANTIDADE: TdxDBGridMaskColumn;
    dbGridDetalhePRECO: TdxDBGridCurrencyColumn;
    dbGridDetalheITEM: TdxDBGridButtonColumn;
    dfServico: TTS_DBEditItem;
    dfCodigo: TTS_DBButtonEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbGridDetalheicSubTotal: TdxDBGridCurrencyColumn;
    dbGridDetalheCODIGO: TdxDBGridButtonColumn;
    dbGridDetalheDESCRICAO: TdxDBGridButtonColumn;
    procedure dfCodigoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure dbGridDetalheDESCRICAOButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbGridDetalheTS_AposLocalizar(Sender: TObject);
    procedure dbGridDetalheTS_BeforeLocalizar(Sender: TObject; var Campo,
      Conteudo: String);
  private
    { Private declarations }
    procedure AtualizarGrid;
  public
    { Public declarations }
  end;

var
  FrmProducoesServico: TFrmProducoesServico;

implementation

uses DM_Projeto, DM_ProducoesServico;

{$R *.dfm}

procedure TFrmProducoesServico.dfCodigoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  DMProducoesServico.GeraCodigo;
end;

procedure TFrmProducoesServico.FormCreate(Sender: TObject);
begin
  inherited;
  FrmProducoesServico := Self;
end;

procedure TFrmProducoesServico.dbGridDetalheDESCRICAOButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
    if AbsoluteIndex = 1 then
    begin
        DMProjeto.SetParametrosForm([DMProducoesServico.C_ProducoesServicosDetITEM.asVariant]);
        DMProjeto.CriarForm('FrmItens', self, true);
        if (DMProducoesServico.C_ProducoesServicosDet.State in [dsInsert, dsEdit]) then
            dbGridDetalhe.TS_ID := LastDataObject.ObjectKey;
    end;
end;

procedure TFrmProducoesServico.dbGridDetalheTS_AposLocalizar(
  Sender: TObject);
begin
  inherited;

    AtualizarGrid;
    dbGridDetalhe.FocusedColumn := 3;
    dbGridDetalhe.ShowEditor;
    PostMessage(Handle, PM_PostItens, 0, 0);
end;


procedure TFrmProducoesServico.AtualizarGrid;

Begin

 with DMProducoesServico do
 begin
   //dbGridDetalhe.TS_ID := C_ProducoesServicosDetITEM.AsInteger;
   C_PrecoServico.Close;
   Q_PrecoServico.Close;
   Q_PrecoServico.ParamByName('ITEM').Value :=
     C_ProducoesServicosDetITEM.AsInteger;
   Q_PrecoServico.ParamByName('SERVICO').Value :=  dfServico.ID;
   C_PrecoServico.FetchParams;
   C_PrecoServico.Open;
   C_ProducoesServicosDetPRECO.AsCurrency := C_PrecoServicoPRECO.AsCurrency;
 end;
End;

procedure TFrmProducoesServico.dbGridDetalheTS_BeforeLocalizar(
  Sender: TObject; var Campo, Conteudo: String);
begin
  inherited;
//  if pos('CODIGO', UpperCase(Campo)) > 0 then
//    TDMProducoesServico(DMJanela).LastItemColumn := 'I_CODIGO'
//  else
//    TDMProducoesServico(DMJanela).LastItemColumn := 'DESCRICAO';

end;

end.

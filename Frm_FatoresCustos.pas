unit Frm_FatoresCustos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, IBCustomDataSet, IBUpdateSQL, Provider, Db,
  DBClient, IBQuery, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  TS_DBEditNumber, ExtCtrls, TS_Shape, FormsComponent, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, StdCtrls, TS_Label, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel,
  Buttons, TS_SpeedButton, TS_EffectsPanel, teCtrls, BTOdeum, Placemnt;

type
  TFrmFatoresCustos = class(TFrmModeloCadastros)
    TS_Label44: TTS_Label;
    TS_Label45: TTS_Label;
    TS_Label46: TTS_Label;
    TS_Label47: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Label48: TTS_Label;
    TS_Shape2: TTS_Shape;
    TS_Label49: TTS_Label;
    TS_Label50: TTS_Label;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_DBEditNumber1: TTS_DBEditNumber;
    TS_DBEditNumber2: TTS_DBEditNumber;
    TS_DBEditNumber3: TTS_DBEditNumber;
    C_CustosDS: TDataSource;
    Q_Custos: TIBQuery;
    C_Custos: TClientDataSet;
    C_CustosIMPOSTOSFEDERAIS: TBCDField;
    C_CustosDESPESASFIXAS: TBCDField;
    C_CustosMAIORCOMISSAO: TBCDField;
    C_CustosLUCROPADRAO: TBCDField;
    P_Custos: TDataSetProvider;
    U_Custos: TIBUpdateSQL;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Shape5: TTS_Shape;
    TS_DBEditNumber4: TTS_DBEditNumber;
    C_CustosENCARGOSCARTOES: TBCDField;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Shape6: TTS_Shape;
    TS_DBEditNumber5: TTS_DBEditNumber;
    procedure btGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFatoresCustos: TFrmFatoresCustos;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TFrmFatoresCustos.btGravarClick(Sender: TObject);
begin
  inherited;
  if (DMProjeto.Parametro('PrecosAutomaticos') = 'S') and
     (DlgMsg.ShowMsg(2727) <> 100) then
    exit;

  if C_Custos.state in [dsedit,dsinsert] then
    C_Custos.post;

  C_Custos.ApplyUpdates(0);

  if DMProjeto.Parametro('PrecosAutomaticos') = 'S' then
    DMProjeto.SincronizarPrecosVenda('','','','');

  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  close;
end;

procedure TFrmFatoresCustos.FormCreate(Sender: TObject);
begin
  inherited;
  C_Custos.open;
end;

end.
 
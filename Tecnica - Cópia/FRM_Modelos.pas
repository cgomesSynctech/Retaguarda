unit FRM_Modelos;

interface

uses                                                                                     
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
  dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib,
  TS_DBEdit, dxDBEdtr, TS_DBLookupComboBox, TS_DBButtonEdit, dxDBTLCl,
  dxGrClms, DB;

type
  TFRMModelos = class(TFrmPadrao)
    dfDescricao: TTS_DBEdit;
    TS_Label1: TTS_Label;
    GridMODELO: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    TS_Label2: TTS_Label;
    dfCodigo: TTS_DBButtonEdit;
    TS_Label3: TTS_Label;
    cmbTipoEquip: TTS_DBLookupComboBox;
    cmbFabricante: TTS_DBLookupComboBox;
    cmbMarca: TTS_DBLookupComboBox;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    GridCODIGO: TdxDBGridMaskColumn;
    GridlkTipoEquipamento: TdxDBGridLookupColumn;
    GridlkFabricante: TdxDBGridLookupColumn;
    GridlkMarcas: TdxDBGridLookupColumn;
    TS_DBEdit1: TTS_DBEdit;
    TS_Label6: TTS_Label;
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure dfCodigoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMModelos: TFRMModelos;

implementation

uses DM_Projeto, DM_Modelos;

{$R *.dfm}

procedure TFRMModelos.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  FRMModelos := Self;    
end;

procedure TFRMModelos.dfCodigoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    if not (DMModelos.C_Tabela.State in [dsEdit, dsInsert]) then
        DMModelos.C_Tabela.edit;
    DMModelos.C_TabelaCodigo.value := DMProjeto.GeraCodigoEquipamento(dfCodigo.text, DMModelos.C_TabelaModelo.value);

    ActiveControl := dfDescricao;
end;

end.

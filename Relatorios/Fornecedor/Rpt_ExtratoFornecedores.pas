unit Rpt_ExtratoFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl,
  dxGrClms, dxEditor, TS_DateTimePicker, TS_ButtonEdit, TS_EditFavorecido,
  dxDBEdtr, dxDBELib, TS_DBLookupTipoFav;

type
  TRptExtratoFornecedores = class(TRptPadrao)
    C_ConsultaNOME: TStringField;
    C_ConsultaDOC: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaCREDITO: TBCDField;
    C_ConsultaDEBITO: TBCDField;
    C_ConsultaID: TIntegerField;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaDOC: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaCREDITO: TdxDBGridCurrencyColumn;
    dbgConsultaDEBITO: TdxDBGridCurrencyColumn;
    dbgConsultaID: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    edFavorecido: TTS_EditFavorecido;
    procedure btAtualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Atualizar();
  public
    { Public declarations }
  end;

var
  RptExtratoFornecedores: TRptExtratoFornecedores;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TRptExtratoFornecedores.Atualizar();
Begin
  With C_Consulta do begin
    Close;
    params.parambyname('Favorecido').AsInteger := edFavorecido.ID;
    params.parambyname('Todos').AsInteger := edFavorecido.ID;    
    Params.ParamByName('DataI').AsDateTime := DataI.Date;
    Params.ParamByName('DataF').AsDateTime := DataF.Date;
    Open;
  End;
End;

procedure TRptExtratoFornecedores.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

end.

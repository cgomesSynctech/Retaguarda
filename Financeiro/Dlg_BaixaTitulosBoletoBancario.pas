unit Dlg_BaixaTitulosBoletoBancario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, TS_LookupComboBox, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, DBClient, Provider, TS_QDBGrid;

type
  TDlgBaixaTitulosBoletoBancario = class(TFrmModeloCadastros)
    dbgTitulos: TTS_QDBGrid;
    C_TitulosDS: TDataSource;
    P_Titulos: TDataSetProvider;
    C_Titulos: TClientDataSet;
    Q_Titulos: TIBQuery;
    C_TitulosID: TIntegerField;
    C_TitulosTITULO: TStringField;
    C_TitulosCOMPETENCIA: TDateField;
    C_TitulosVENCIMENTO: TDateField;
    C_TitulosVALOR: TBCDField;
    C_TitulosNOME: TStringField;
    C_TitulosCPF_CNPJ: TStringField;
    C_TitulosCODIGO: TStringField;
    dbgTitulosID: TdxDBGridMaskColumn;
    dbgTitulosTITULO: TdxDBGridMaskColumn;
    dbgTitulosCOMPETENCIA: TdxDBGridDateColumn;
    dbgTitulosVENCIMENTO: TdxDBGridDateColumn;
    dbgTitulosVALOR: TdxDBGridCurrencyColumn;
    dbgTitulosNOME: TdxDBGridMaskColumn;
    dbgTitulosCPF_CNPJ: TdxDBGridMaskColumn;
    dbgTitulosCODIGO: TdxDBGridMaskColumn;
    TS_Panel1: TTS_Panel;
    TS_Label1: TTS_Label;
    cmbCarteira: TTS_LookupComboBox;
    C_Titulos_icSelecionado: TIntegerField;
    C_CarteirasDS: TDataSource;
    C_Carteiras: TClientDataSet;
    P_Carteiras: TDataSetProvider;
    Q_Carteiras: TIBQuery;
    C_CarteirasCARTEIRA: TIntegerField;
    C_CarteirasNUMEROCARTEIRA: TStringField;
    C_TitulosCONTA: TIntegerField;
    C_TitulosCLIENTE: TIntegerField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cmbCarteiraChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    procedure Atualizar;
    function Validacoes : boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgBaixaTitulosBoletoBancario: TDlgBaixaTitulosBoletoBancario;

implementation

uses DM_Projeto, DM_Financeiro;

{$R *.dfm}

procedure TDlgBaixaTitulosBoletoBancario.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	C_Carteiras.Open;
  cmbCarteira.LookUpKeyValue := C_CarteirasCarteira.AsInteger;
end;

procedure TDlgBaixaTitulosBoletoBancario.Atualizar;
begin
  with C_Titulos do begin
    Close;
    FetchParams;
    Params.ParamByName('Carteira').AsInteger := C_CarteirasCarteira.Value;
    Open; 
  end;
end;

procedure TDlgBaixaTitulosBoletoBancario.cmbCarteiraChange(
  Sender: TObject);
begin
  inherited;
  Atualizar;
end;

function TDlgBaixaTitulosBoletoBancario.Validacoes : boolean;
begin
  result := false;
  if dbgTitulos.Selecionados = '' then begin
  	DlgMsg.ShowMsg( 929, ['os títulos que deseja baixar.']);
    Exit;
  end;
  result := true;
end;

procedure TDlgBaixaTitulosBoletoBancario.btGravarClick(Sender: TObject);
var sItens : string;
    Deposito : integer;
begin
  inherited;
  if Validacoes and (DlgMsg.ShowMsg( 8080 ) = 100) then begin
    try
      Screen.Cursor := crHourGlass;
      C_Titulos.DisableControls;
      try
        C_Titulos.First;
        while not C_Titulos.EOF do begin
          if ( C_Titulos_icSelecionado.Value = 1 ) then begin
            sItens := C_TitulosID.AsString + #13 +
                      'ValorAReceber|||Pagamento|||Juros|||Descontos' + #13 +
                      CurrToStr(C_TitulosVALOR.AsCurrency) + '|||' +
                      CurrToStr(C_TitulosVALOR.AsCurrency) + '|||0|||0';
            Deposito := DMFinanceiro.ReceberTitulos( 0, sItens, C_TitulosCLIENTE.Value, C_TitulosCONTA.Value,
                        C_TitulosVENCIMENTO.AsDateTime, 0, 0, 'Título Baixado Manualmente ' + C_TitulosTITULO.AsString );
            DMFinanceiro.ReceberDoc( 0, 1, Deposito, 20, C_TitulosVALOR.AsCurrency, C_TitulosVENCIMENTO.AsDateTime,
                                  'Título Baixado Manualmente ' + C_TitulosTITULO.AsString,0,0,'', C_TitulosCONTA.Value );
            DMFinanceiro.BaixarTitulo( C_TitulosID.AsString );
          end;
          C_Titulos.Next;
        end;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
        Atualizar;
        Screen.Cursor := crDefault;
        DlgMsg.ShowMsg( 8036 );
      except
        on e:exception do begin
          if DMPRojeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_PRojeto.DefaultTransaction.RollbackRetaining;
          Screen.Cursor := crDefault;
          DlgMsg.ShowMsg( 6047, ['ERRO'+#13#10+e.message] );
        end;
      end;
    finally
      Screen.Cursor := crDefault;
      C_Titulos.EnableControls;
    end;
  end;
end;

end.

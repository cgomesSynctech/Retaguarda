unit Dlg_AlteraStatusCheqRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxEdLib, TS_Memo, TS_ImageEdit,
  dxCntner, dxEditor, TS_DateTimePicker, Placemnt, FormsComponent, BTOdeum,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons,
  TS_SpeedButton, teCtrls, TS_EffectsPanel, ImgList;

type
  TDlgAlteraStatusCheqRec = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    dtData: TTS_DateTimePicker;
    cmbStatus: TTS_ImageEdit;
    mmObs: TTS_Memo;
    Imagens: TImageList;
    lbCheques: TTS_Label;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
		sID : string;
  public
    { Public declarations }
  end;

var
  DlgAlteraStatusCheqRec: TDlgAlteraStatusCheqRec;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDlgAlteraStatusCheqRec.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	dtData.Date := DMProjeto.dDataSistema;
  if DMProjeto.ExisteParametrosForm then begin
  	sID := DMProjeto.getParametrosForm( 0 );
    lbCheques.Caption := IntToStr(ContaStrings(sID,',')) + ' cheque(s) selecionado(s).'; 
  end;
end;

procedure TDlgAlteraStatusCheqRec.btGravarClick(Sender: TObject);
var i : integer;
begin
  inherited;
	if cmbStatus.Text = '' then begin
  	DlgMsg.ShowMsg(929,['o Status']);
    Exit;
  end;
	try
  	if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
			DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

		with DMProjeto.Q_SQL do begin
      {Atualizando em depositosdoc o status definido}
    	Close;
      Sql.text := 'update depositosdoc '+
      						'set status = :status '+
                  'where iddoc IN ('+sID+')';
      ParamByName('Status').AsInteger := StrToInt(cmbStatus.Text);
      ExecSql;
      {Inserindo as ocorrencia do status}
      for i:=1 to ContaStrings(sID,',') do begin
    		Close;
      	Sql.text := 'insert into operacoesdoc '+
      							'(data, iddoc, status, obs, usuario) '+
                    'values '+
                    '(:data, :iddoc, :status, :obs, :usuario) ';
        ParamByName('IDDoc').AsInteger 	:= StrToInt(SeparaStrings(sID,',',i));
        ParamByName('Data').AsDateTime  := dtData.Date;
      	ParamByName('Status').AsInteger := StrToInt(cmbStatus.Text);
        ParamByName('Usuario').AsInteger:= DMProjeto.nFuncionario;
        ParamByName('Obs').AsString	:= mmObs.Lines.Text;
      	ExecSql;
      end;
      Close;
    end;

  	if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
			DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    Close;  
  except
  	if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
			DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
  end;
end;

end.

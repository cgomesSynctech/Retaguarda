{ CATEGORIAS DA CONSULTA
  ***********************
   1 --> Clientes    }
unit Dlg_EscolheConsultas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg, Menus,
  ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton, TS_MaxPanel,
  StdCtrls, TS_BitBtn, DBCtrls, IBCustomDataSet, IBQuery,
  Provider, Db, DBClient, TS_Edit,
  TS_Label, IBDatabase, FormsComponent, TS_Image, dxfLabel, dxCntner,
  dxEditor, dxEdLib, dxExEdtr, TS_DateTimePicker, teCtrls,
  TS_EffectsPanel, TS_PopupMenu, TS_ComboBox, TS_CheckBox;

type
  TDlgEscolheConsultas = class(TFrmModeloCadastros)
    C_ConsultasDS: TDataSource;
    C_Consultas: TClientDataSet;
    Q_ConsultasProvider: TDataSetProvider;
    Q_Consultas: TIBQuery;
    C_ConsultasCONSULTA: TIntegerField;
    C_ConsultasTITULO: TStringField;
    C_ConsultasQUERY: TStringField;
    C_ConsultasCATEGORIA: TIntegerField;
    Q_SQL: TIBQuery;
    Q_SQLTransaction: TIBTransaction;
    pnAdicionais: TTS_Panel;
    TS_Label1: TTS_Label;
    edDias: TTS_Edit;
    pnDatas: TTS_Panel;
    DF_Consultas: TDBLookupListBox;
    cmbPeriodo: TTS_ComboBox;
    TS_Label2: TTS_Label;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_SpeedButton2: TTS_SpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGravarClick(Sender: TObject);
    procedure DF_ConsultasClick(Sender: TObject);
    procedure FormsComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    SQLFinal : string;
    CategoriaConsulta: integer;
    function 	ProcessaConsulta : string;
    procedure MostraAdicionais(Consulta: integer);
  public
    { Public declarations }
  end;

var
  DlgEscolheConsultas: TDlgEscolheConsultas;

implementation

uses DM_Projeto, DM_Clientes, Frm_Clientes, funcoes, DM_Textos, Dlg_Campos;

{$R *.DFM}

function TDlgEscolheConsultas.ProcessaConsulta;
procedure GenID_Top;
begin
  Q_SQL.ExecSQL;
  Q_SQLTransaction.CommitRetaining;
end;
var IDS, Condicao, sSelect : string;
var nAno,nMes,nDia: word;
    xAno,xMes,xDia: word;
    zAno,zMes,zDia: word;
begin
    Condicao := '';
    SQLFinal := C_ConsultasQUERY.Value;
    sSelect  := Copy(SQLFinal,1,pos('From',SQLFinal)-1);
    with FrmClientes do begin
      decodedate(DMProjeto.dDataSistema,nAno,nMes,nDia);
      decodedate(PrimeiroDiaDaSemana(DMProjeto.dDataSistema),xAno,xMes,xDia);
      decodedate(UltimoDiaDaSemana(DMProjeto.dDataSistema),zAno,zMes,zDia);

      if C_ConsultasCONSULTA.Value=9 then begin // Aniversariantes
        Condicao := 'f.TipoFavorecido = 1 and f.desativado = ''N'' ';
        if cmbPeriodo.ItemIndex = 0 then begin
        	Condicao := Condicao + ' and (extract(day from f.datanasc)='+formatdatetime('d',DMProjeto.dDataSistema)+' '+
                      'and extract(month from f.datanasc)='+formatdatetime('m',DMProjeto.dDataSistema)+') ';
        end else if cmbPeriodo.ItemIndex = 1 then begin
          if (nMes = xMes) and (nMes = zMes) then
            Condicao := Condicao + ' and (extract(day from f.datanasc)>='+formatdatetime('d',PrimeiroDiaDaSemana(DMProjeto.dDataSistema))+' '+
                      'and extract(month from f.datanasc)>='+formatdatetime('m',PrimeiroDiaDaSemana(DMProjeto.dDataSistema))+' '+
           						'and (extract(day from f.datanasc)<='+formatdatetime('d',UltimoDiaDaSemana(DMProjeto.dDataSistema))+' '+
                      'and extract(month from f.datanasc)<='+formatdatetime('m',UltimoDiaDaSemana(DMProjeto.dDataSistema))+') '
          else if (nMes < zMes) then
            Condicao := Condicao + ' and (extract(day from f.datanasc)>='+formatdatetime('d',PrimeiroDiaDaSemana(DMProjeto.dDataSistema))+' '+
                      'and extract(month from f.datanasc)='+formatdatetime('m',PrimeiroDiaDaSemana(DMProjeto.dDataSistema))+') '+
           						'or (extract(day from f.datanasc) <= '+formatdatetime('d',UltimoDiaDaSemana(DMProjeto.dDataSistema))+' '+
                      'and extract(month from f.datanasc) ='+formatdatetime('m',UltimoDiaDaSemana(DMProjeto.dDataSistema))+') '
          else if (nMes > zMes) then
            Condicao := Condicao + ' and (extract(day from f.datanasc)<='+formatdatetime('d',PrimeiroDiaDaSemana(DMProjeto.dDataSistema))+' '+
                      'and extract(month from f.datanasc)='+formatdatetime('m',PrimeiroDiaDaSemana(DMProjeto.dDataSistema))+') '+
           						'or (extract(day from f.datanasc) >= '+formatdatetime('d',UltimoDiaDaSemana(DMProjeto.dDataSistema))+' '+
                      'and extract(month from f.datanasc) ='+formatdatetime('m',UltimoDiaDaSemana(DMProjeto.dDataSistema))+') ';

        end else if cmbPeriodo.ItemIndex = 2 then begin
        	Condicao := Condicao + ' and (extract(month from f.datanasc)='+formatdatetime('m ',DMProjeto.dDataSistema)+') ';
        end else begin
        	Condicao := Condicao + ' and (extract(month from f.datanasc)='+IntToStr(nMes+1)+') ';
        end;
        lbConsulta.Caption := C_ConsultasTITULO.Value +' - '+cmbPeriodo.Text;
      end else
      if C_ConsultasCONSULTA.Value=7 then begin // Clientes que não estão comprando
        if StrToIntDef(edDias.Text,-1) <> -1 then begin
          Condicao := 'Having (current_date-Max(s.data)) >= '+edDias.Text;
          lbConsulta.Caption := C_ConsultasTITULO.Value +' a '+edDias.Text+' dias';
        end else exit;
      end else
      // Clientes com maior numero de compras ou maior valor
      if (C_ConsultasCONSULTA.Value=5) or (C_ConsultasCONSULTA.Value=6) then begin
        if not(Q_SQLTransaction.Active) then Q_SQLTransaction.Active := True;
        GenID_Top;
        Q_SQLTransaction.Active := False;
        Condicao := 'f_year(s.Data) >= f_year(CURRENT_DATE)-1 And s.Situacao='+QuotedStr('N')+' And s.TipoPadrao=1'+' And gen_id(GEN_TOP, 1) <= '+IntToStr(10);
        lbConsulta.Caption := C_ConsultasTITULO.Value +' ('+IntToStr(10)+' maiores)';
      end else begin
        lbConsulta.Caption := C_ConsultasTITULO.Value +'';
      end;

      CondicaoDaConsulta := Condicao;

      if length(Condicao)>0 then
        if pos('HAVING',UpperCase(Condicao))>0 then
          System.Insert(' '+Condicao+' ',SQLFinal,pos('ORDER BY',UpperCase(SQLFinal)))
        else if pos('GROUP BY',UpperCase(SQLFinal))>0 then
          System.Insert(' Where '+Condicao+' ',SQLFinal,pos('GROUP BY',UpperCase(SQLFinal)))
        else System.Insert(' Where '+Condicao+' ',SQLFinal,pos('ORDER BY',UpperCase(SQLFinal)));

      // pegando os Ids para localizar os favorecidos daquela consulta
      with DMProjeto.Q_SQL do begin
        Close;
       	SQL.Text := SQLFinal;
        Open;
        while not eof do begin
         	AppendStr(IDs, FieldByName('ID').AsString+',');
          Next;
        end;
        if Length(IDs)<=0 then IDs := '-1'
        else IDs := copy(IDs,1,length(IDs)-1);
        Close;
      end;
    end;
    result := IDs;
end;

procedure TDlgEscolheConsultas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  C_Consultas.Close;
end;

procedure TDlgEscolheConsultas.btGravarClick(Sender: TObject);
var IDs : string;
begin
  inherited;
  IDs := '';
  // Cliente
  if (CategoriaConsulta=1)and(FrmClientes<>nil)and(DMClientes<>nil) then begin

    IDS := ProcessaConsulta;
    with FrmClientes do begin
      // Query das consultas
      with DMClientes do begin
        C_Consultas.Close;
        //CamposDaConsulta(False);
        Q_Consultas.SQL.Text := SQLFinal;
        C_Consultas.Open;
      end;

{      if C_ConsultasCONSULTA.Value=7 then CamposDaConsulta(True, '5 - Consulta', pnDiasSemComprar)
      else if C_ConsultasCONSULTA.Value=8 then CamposDaConsulta(True, '5 - Consulta', pnOrcamentosEmAberto)
      else if C_ConsultasCONSULTA.Value=3 then CamposDaConsulta(True, '5 - Consulta', pnChequesDevolvidos)
      else if C_ConsultasCONSULTA.Value=2 then CamposDaConsulta(True, '5 - Consulta', pnClientesEmAtraso)
      else CamposDaConsulta(False); }

      CodigoDaConsulta := C_ConsultasCONSULTA.Value;
      if Localizar( FrmClientes.SelectClientes,'Where Favorecido In ('+IDs+')')=0 then
      	exit;
    end;
  end; // with FrmClientes
 Close;
end;

procedure TDlgEscolheConsultas.MostraAdicionais(Consulta: integer);
begin
  if Consulta=9 then begin
    pnDatas.Left := 6;
    pnDatas.Visible := True;
    pnAdicionais.Visible := True;
  end else
  if Consulta=7 then begin
    pnDatas.Visible := False;
    pnAdicionais.Visible := True;
  end else begin
    pnAdicionais.Visible := False;
  end;
end;

procedure TDlgEscolheConsultas.DF_ConsultasClick(Sender: TObject);
begin
  inherited;
  MostraAdicionais(C_ConsultasCONSULTA.Value);
end;

procedure TDlgEscolheConsultas.FormsComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
  cmbPeriodo.ItemIndex := 0;
  pnAdicionais.Visible := False;
  CategoriaConsulta := DMProjeto.GetParametrosForm(0);
  C_Consultas.Params.ParamByName('Categoria').AsInteger := DMProjeto.GetParametrosForm(0);
  C_Consultas.Open;
end;

procedure TDlgEscolheConsultas.TS_SpeedButton1Click(Sender: TObject);
var IDs : string;
begin
  inherited;
	IDs := ProcessaConsulta;
  DlgCampos := TDlgCampos.Create(self);
  DlgCampos.Imprimir( C_ConsultasConsulta.Value, 'Favorecido IN ('+IDs+')' );
  DlgCampos.Free;
end;

procedure TDlgEscolheConsultas.TS_SpeedButton2Click(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
  	SetParametrosForm([C_ConsultasConsulta.Value]);
    CriarForm('FrmTextos',self,true);
  end;
end;

end.

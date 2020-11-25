unit Frm_Indexador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, TS_Label, Mask, DBCtrls,
  TS_DBEdit, TS_LastDataObject, CheckLst, TS_CheckListBox,
  TS_Bevel, dxCntner, dxEditor, dxEdLib, dxDBELib, TS_Image,
  dxfLabel, TS_MaxPanel, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, dxTLClms;

type

  TFrmIndexador = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_DBEdDescricao: TTS_DBEdit;
    TS_Label3: TTS_Label;
    TS_DBEdCifrao: TTS_DBEdit;
    GridINDEXADOR: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridCIFRAO: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormComponentGravou(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIndexador: TFrmIndexador;

implementation

uses DM_Indexador, DM_Projeto;

{$R *.DFM}

procedure TFrmIndexador.FormCreate(Sender: TObject);
begin
  inherited;
  FrmIndexador := Self;
{  if DMProjeto.GetParametrosForm(0) <> -1 then
     Localizar('SELECT * FROM '+DMJanela.DMComponent.Tabela_Nome,
         ' WHERE  ' + DMJanela.DMComponent.Tabela_Chave + '='
        + IntToStr(DMProjeto.GetParametrosForm(1)));}
end;

procedure TFrmIndexador.FormComponentGravou(Sender: TObject);
var
   sTipo  : String[1];
   iRecNo : Integer;
begin
  inherited;
{  if (DMProjeto.IBT_Projeto.InTransaction) then
       DMProjeto.IBT_Projeto.CommitRetaining;
  with DMIndexador do begin
    with C_Relacao do begin
      DisableControls;
      First;
      while not eof do begin
        if FieldByName('Relacao').AsString = '>' then
          sTipo := '<'
        else if FieldByName('Relacao').AsString = '<' then
          sTipo := '>'
        else
          sTipo := '=';

        Q_Verifica.SQL.Clear;
        Q_Verifica.SQL.Add('Select * from Indexadores_Relacao '
           + ' where indexador1 =' + IntToStr(FieldByName('Indexador2').AsInteger)
           + ' and indexador2 = ' + IntToStr(FieldByName('Indexador1').AsInteger));
        Q_Verifica.open;
        if Q_Verifica.RecordCount > 0 then begin
          Q_Verifica.Close;
          Q_Verifica.SQL.Clear;
          Q_Verifica.SQL.Add('update Indexadores_Relacao '
          + ' set relacao = ' + QuotedStr(sTipo)+ ' where indexador1 = '
          + IntToStr(FieldByName('Indexador2').AsInteger)
          + ' and indexador2 = ' + IntToStr(FieldByName('Indexador1').AsInteger));
          Q_Verifica.ExecSQL;
        end
        else begin
          Q_Verifica.Close;
          Q_Verifica.SQL.Clear;
          Q_Verifica.SQL.Add('insert into indexadores_relacao '
          + ' (indexador1,indexador2,relacao) values ('+ IntToStr(FieldByName('Indexador2').AsInteger)
          + ' , ' + IntToStr(FieldByName('Indexador1').AsInteger) + ',' + QuotedStr(sTipo)+ ')');
          Q_Verifica.ExecSQL;
        end;
        next;
      end;
      DMProjeto.IBT_Projeto.CommitRetaining;
      iRecNo := DMIndexador.C_Tabela.RecNo;
      DMIndexador.C_Tabela.Close;
      DMIndexador.C_Tabela.Open;
      DMIndexador.C_Tabela.RecNo := iRecNo;
      First;
      EnableControls;
    end;
  end;}
  {  DMIndexador.Q_Indexador2.Close;
  DMIndexador.Q_Indexador2.Open;
  DMIndexador.Q_Relacao.Close;
  DMIndexador.Q_Relacao.Open;
  DMIndexador.C_Relacao.Close;
  DMIndexador.C_Relacao.Open;}
end;

procedure TFrmIndexador.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
{  DMIndexador.C_Relacao.First;
  while not DMIndexador.C_Relacao.Eof do begin
    DMIndexador.C_Relacao.Edit;
    if (DMIndexador.C_Relacao.FieldByName('Relacao').AsString = '>') then
      DMIndexador.C_Relacao.FieldByName('cbRelacIndexador').AsString := 'Maior que'
    else
      if (DMIndexador.C_Relacao.FieldByName('Relacao').AsString = '<') then
        DMIndexador.C_Relacao.FieldByName('cbRelacIndexador').AsString := 'Menor que'
      else
          DMIndexador.C_Relacao.FieldByName('cbRelacIndexador').AsString := 'Igual a';
    DMIndexador.C_Relacao.Post;
    DMIndexador.C_Relacao.Next;
  end;
  DMIndexador.C_Relacao.First;}
end;

procedure TFrmIndexador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmIndexador := nil;
end;

end.

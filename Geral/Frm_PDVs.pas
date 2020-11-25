unit Frm_PDVs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, BTOdeum, FormComponent, ImgList, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, dxTLClms, dxTL, dxCntner, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, dxEditor, dxEdLib, dxDBELib, TS_DBImageEdit, TS_Shape,
  TS_Edit, TS_DBEdit, Placemnt, TS_DBButtonEdit, db, dxfProgressBar, Idglobal,
  TS_DBCheckBox, dxDBTLCl, dxGrClms;

type
  TFrmPDVs = class(TFrmPadrao)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    Shape3: TShape;
    TS_Label81: TTS_Label;
    TS_Shape5: TTS_Shape;
    TS_DBImageEdit1: TTS_DBImageEdit;
    TS_DBEdit1: TTS_DBEdit;
    TS_DBEdit2: TTS_DBEdit;
    TS_DBEdit3: TTS_DBEdit;
    TS_DBEdit4: TTS_DBEdit;
    Grid_icSelecionado: TdxDBGridColumn;
    GridPDV: TdxDBGridMaskColumn;
    GridNUMEROECF: TdxDBGridMaskColumn;
    GridNUMEROSERIEECF: TdxDBGridMaskColumn;
    GridMODELODOC: TdxDBGridMaskColumn;
    GridDESCRICAO: TdxDBGridMaskColumn;
    GridPORTA: TdxDBGridMaskColumn;
    TS_Label6: TTS_Label;
    dfECF: TTS_DBImageEdit;
    TS_Label7: TTS_Label;
    TS_DBButtonEdit1: TTS_DBButtonEdit;
    cbECFAtivo: TTS_DBCheckBox;
    TS_Label8: TTS_Label;
    Shape1: TShape;
    TS_Shape1: TTS_Shape;
    TS_DBCheckBox1: TTS_DBCheckBox;
    TS_DBCheckBox2: TTS_DBCheckBox;
    TS_DBCheckBox3: TTS_DBCheckBox;
    TS_DBCheckBox4: TTS_DBCheckBox;
    TS_DBCheckBox5: TTS_DBCheckBox;
    GridATIVO: TdxDBGridCheckColumn;
    GridTEF: TdxDBGridCheckColumn;
    GridTEFGP: TdxDBGridCheckColumn;
    GridTEFHIPER: TdxDBGridCheckColumn;
    GridTEFTECBAN: TdxDBGridCheckColumn;
    GridCONSULTACHEQUE: TdxDBGridCheckColumn;
    Shape2: TShape;
    TS_Label9: TTS_Label;
    TS_Shape2: TTS_Shape;
    TS_DBCheckBox6: TTS_DBCheckBox;
    TS_DBCheckBox7: TTS_DBCheckBox;
    TS_Label10: TTS_Label;
    TS_DBEdit5: TTS_DBEdit;
    TS_Label11: TTS_Label;
    TS_DBEdit6: TTS_DBEdit;
    procedure TS_DBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormComponentBeforeLoadKey(Sendet: TObject;
      var Where: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormComponentGravou(Sender: TObject);
  private
    nChave: variant;
    sMaquina: string;
  public
    { Public declarations }
  end;

var
  FrmPDVs: TFrmPDVs;

implementation
uses DM_Projeto, DM_PDVs, Funcoes;

{$R *.dfm}

procedure TFrmPDVs.TS_DBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if not (DMPDVs.C_Tabela.state in [dsedit,dsinsert]) then
    DMPDVs.C_Tabela.edit;
  DMPDVs.C_TabelaMaquina.value := DMProjeto.Maquina;
end;

procedure TFrmPDVs.FormComponentBeforeLoadKey(Sendet: TObject;
  var Where: String);
begin
  inherited;
  if DMProjeto.QtdParametrosForm > 1 then begin
    nChave   := DMProjeto.GetParametrosForm(0);
    sMaquina := DMProjeto.GetParametrosForm(1);
  end;
  if sMaquina <> '' then
    Where := 'Where maquina = '''+DMProjeto.Maquina+'''';
end;

procedure TFrmPDVs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = [ssCtrl]) and (Key = ord('A')) then begin
    DMPDVs.C_Tabela.Edit;

    if DMPDVs.C_TabelaAtivo.Value = 'S' then
      DMPDVs.C_TabelaAtivo.Value := 'N'
    else
      DMPDVs.C_TabelaAtivo.Value := 'S';

    btGravarClick(self);
  end;

end;

procedure TFrmPDVs.FormComponentGravou(Sender: TObject);
var biblio: THandle;
    ok: longbool;
begin
  inherited;
  if dmPDVs.C_TabelaECF.Value in [5,6,7] then begin
    if DirectoryExists(DMProjeto.ProgPath+'ECF') then begin
      DeleteFile(SystemDir+'ecfafrac_temp.dll');
      biblio := GetModuleHandle(Pchar('ecfafrac.dll'));
      if not VarIsNull(biblio) then begin
        ok := FreeLibrary(biblio);
      //  if ok then showmessage('ok') else showmessage('não ok');
        case dmPDVs.C_TabelaECF.Value of
          5: begin
            if CopyFileTo(DMProjeto.ProgPath+'ECF\ecfafrac_schalter.dll',SystemDir+'ecfafrac_schalter.dll') then begin
               if RenameFile(Systemdir+'ecfafrac.dll',Systemdir+'ecfafrac_temp.dll') then begin
                  if RenameFile(Systemdir+'ecfafrac_schalter.dll',Systemdir+'ecfafrac.dll') then begin
                    if not DeleteFile(Systemdir+'ecfafrac_temp.dll') then DlgMsg.ShowMsg(50,['Não foi possível excluir a DLL temporária']);
                  end
                  else DlgMsg.ShowMsg(50,['Não foi possível renomear a DLL da Schalter.']);
               end
               else DlgMsg.ShowMsg(50,['Não foi possível criar a DLL temporária.']);
            end
            else DlgMsg.ShowMsg(50,['Ocorreu um erro ao tentar copiar ''ecfafrac_schalter.dll''. Por favor, verifique se esse arquivo existe']);
          end;
          6: begin
            if CopyFileTo(DMProjeto.ProgPath+'ECF\ecfafrac_sweda.dll',SystemDir+'ecfafrac_sweda.dll') then begin
               if RenameFile(Systemdir+'ecfafrac.dll',Systemdir+'ecfafrac_temp.dll') then begin
                  if RenameFile(Systemdir+'ecfafrac_sweda.dll',Systemdir+'ecfafrac.dll') then begin
                    if not DeleteFile(Systemdir+'ecfafrac_temp.dll') then DlgMsg.ShowMsg(50,['Não foi possível excluir a DLL temporária']);
                  end
                  else DlgMsg.ShowMsg(50,['Não foi possível renomear a DLL da Sweda.']);
               end
               else DlgMsg.ShowMsg(50,['Não foi possível criar a DLL temporária.']);
            end
            else DlgMsg.ShowMsg(50,['Ocorreu um erro ao tentar copiar ''ecfafrac_sweda.dll''. Por favor, verifique se esse arquivo existe']);
          end;
          7: begin
            if CopyFileTo(DMProjeto.ProgPath+'ECF\ecfafrac_dataregis.dll',SystemDir+'ecfafrac_dataregis.dll') then begin
               if RenameFile(Systemdir+'ecfafrac.dll',Systemdir+'ecfafrac_temp.dll') then begin
                  if RenameFile(Systemdir+'ecfafrac_dataregis.dll',Systemdir+'ecfafrac.dll') then begin
                    if not DeleteFile(Systemdir+'ecfafrac_temp.dll') then DlgMsg.ShowMsg(50,['Não foi possível excluir a DLL temporária']);
                  end
                  else DlgMsg.ShowMsg(50,['Não foi possível renomear a DLL da Dataregis.']);
               end
               else DlgMsg.ShowMsg(50,['Não foi possível criar a DLL temporária.']);
            end
            else DlgMsg.ShowMsg(50,['Ocorreu um erro ao tentar copiar ''ecfafrac_dataregis.dll''. Por favor, verifique se esse arquivo existe']);
          end;
        end;
      end;
    end;
  end;
end;

end.

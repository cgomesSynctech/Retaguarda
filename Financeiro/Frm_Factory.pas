unit Frm_Factory;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject,
    DlgMsg, Menus, TS_PopupMenu, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxCntner, dxTL, dxDBCtrl,
    dxDBGrid, TS_QDBGrid, CheckLst, TS_CheckListBox, Buttons, TS_BitBtn,
    TS_Bevel, TS_SpeedButton, TS_Panel, TS_Shape, dxEditor,
    dxExEdtr, dxDBEdtr, dxDBELib, TS_DBLookupComboBox, dxEdLib, TS_DBEdit,
    TS_DBComboBox, TS_DBEditNumber, TS_DBSpinEdit, DBCtrls, TS_DBRadioGroup,
    dxTLClms, teCtrls, TS_EffectsPanel, dxDBTLCl, dxGrClms, TS_DBButtonEdit, TS_DBMaskEdit,
    BTOdeum, Placemnt, dxfProgressBar, Dlg_PopupContas, TS_DBPopupEdit;

type
    TFrmFactory = class(TFrmPadrao)
        TS_Label1: TTS_Label;
        lblSSN: TTS_Label;
        dfNome: TTS_DBEdit;
        TS_Label17: TTS_Label;
        TS_Label18: TTS_Label;
        lblCep: TTS_Label;
        TS_Label20: TTS_Label;
        TS_Label21: TTS_Label;
        TS_Label3: TTS_Label;
        dfRua: TTS_DBEdit;
        dfCidade: TTS_DBEdit;
        dfCEP: TTS_DBMaskEdit;
        dfFax: TTS_DBEdit;
        dfFone: TTS_DBEdit;
        TS_Shape1: TTS_Shape;
        TS_Label2: TTS_Label;
        TS_Shape2: TTS_Shape;
        TS_Shape3: TTS_Shape;
        TS_Label4: TTS_Label;
        TS_Shape4: TTS_Shape;
        TS_Label5: TTS_Label;
        TS_Label6: TTS_Label;
        TS_Label7: TTS_Label;
        dfComp: TTS_DBSpinEdit;
        dfJuros: TTS_DBEditNumber;
        rgModelo: TTS_DBRadioGroup;
        GridFAVORECIDO: TdxDBGridMaskColumn;
        GridNOME: TdxDBGridMaskColumn;
        GridENDERECO: TdxDBGridMaskColumn;
        GridCIDADE: TdxDBGridMaskColumn;
        GridUF: TdxDBGridMaskColumn;
        GridCEP: TdxDBGridMaskColumn;
        GridFONE1: TdxDBGridMaskColumn;
        GridFAX: TdxDBGridMaskColumn;
        GridCELULAR: TdxDBGridMaskColumn;
        GridCONTATO: TdxDBGridMaskColumn;
        GridEMAIL: TdxDBGridMaskColumn;
        GridEIN: TdxDBGridMaskColumn;
        GridSSN: TdxDBGridMaskColumn;
        GridDATACADASTRO: TdxDBGridDateColumn;
        GridSITE: TdxDBGridMaskColumn;
        GridJUROSFACTORY: TdxDBGridMaskColumn;
        GridTAXASFACTORY: TdxDBGridMaskColumn;
        GridFLOATINGFACTORY: TdxDBGridMaskColumn;
        DF_UF: TTS_DBLookupComboBox;
        DF_SSN: TTS_DBMaskEdit;
        lbEmail: TTS_Label;
        DFEmail: TTS_DBButtonEdit;
        DFSite: TTS_DBButtonEdit;
        lbSite: TTS_Label;
        GridISVENDEDOR: TdxDBGridImageColumn;
        TS_Label8: TTS_Label;
        DF_ContaDespesas: TTS_DBPopupEdit;
        procedure DFEmailButtonClick(Sender: TObject; AbsoluteIndex: Integer);
        procedure DFSiteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
        procedure dfNomeExit(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure DF_ContaDespesasInitPopup(Sender: TObject);
        procedure FormActivate(Sender: TObject);
    protected
        DlgPopup: TDlgPopupContas;
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    FrmFactory: TFrmFactory;

implementation

uses DM_Projeto, DM_Factory, funcoes, shellapi;

{$R *.DFM}

procedure TFrmFactory.DF_ContaDespesasInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDS(DMFactory.C_ContaDespesasDS);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;


procedure TFrmFactory.DFEmailButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if DFEmail.Text <> '' then begin
        lbEmail.Caption := 'Aguarde...';
        SendMail('', '', '', '', '', DFNome.Text, DFEmail.Text);
        lbEmail.Caption := 'E-mail:';
    end;
end;

procedure TFrmFactory.DFSiteButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if dfSite.Text <> '' then begin
        lbSite.Caption := 'Aguarde...';
        ShellExecute(Application.Handle, nil, PChar(dfSite.Text), nil, nil, SW_SHOWNORMAL);
        lbSite.Caption := 'Site:';
    end;
end;

procedure TFrmFactory.dfNomeExit(Sender: TObject);
begin
    inherited;
    if DMProjeto.VerificaExistenciaFav(5, DMFactory.C_TabelaFavorecido.value, 'N', DMFactory.C_TabelaNOME.value) then begin
        DlgMsg.ShowMsg(5001, ['Factory']);
    end;
end;

procedure TFrmFactory.FormCreate(Sender: TObject);
begin
    inherited;
    if DMProjeto.bBrasil then begin
        lblCep.caption := 'Cep:';
        lblSSN.visible := false;
        DF_SSN.visible := false;
    end;
    DlgPopup := TDlgPopupContas.Create(Self, DMFactory.C_ContaDespesasDs, nil, False);
end;

procedure TFrmFactory.FormActivate(Sender: TObject);
begin
    inherited;
    DF_ContaDespesas.PopupControl := DlgPopup.pnPopup;
end;

end.


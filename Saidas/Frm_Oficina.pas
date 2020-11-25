unit Frm_Oficina;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
    Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
    dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, dxEdLib, dxDBELib,
    TS_DBTimeEdit, dxEditor, TS_DBEditDate, TS_DBMemo, TS_DBCheckBox,
    dxDBEdtr, TS_DBLookupComboBox;

type
    TFrmOficina = class(TFrmPadrao)
        gbDadosEntrada: TGroupBox;
        memoDescricao: TTS_DBMemo;
        lblDataEntrada: TTS_Label;
        edDataEntrada: TTS_DBEditDate;
        lblHora: TTS_Label;
        teHoraEntrada: TTS_DBTimeEdit;
        gbDadosSaida: TGroupBox;
        TS_Label1: TTS_Label;
        TS_Label2: TTS_Label;
        edDataSaida: TTS_DBEditDate;
        teHoraSaida: TTS_DBTimeEdit;
        lblDescricao: TTS_Label;
        TS_Label3: TTS_Label;
        TS_Label4: TTS_Label;
        chkEmOficina: TTS_DBCheckBox;
        chkServicoPronto: TTS_DBCheckBox;
        cmbMecanico: TTS_DBLookupComboBox;
        TS_Label5: TTS_Label;
        memoEquipamento: TTS_DBMemo;
        lblFinalizado: TdxfLabel;
    lblVendedor: TTS_Label;
    cmbVendedor: TTS_DBLookupComboBox;
        procedure FormShow(Sender: TObject);
        procedure btPesquisarClick(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure ApagarDadosClick(Sender: TObject);
        procedure EstadoInicialTela;
        procedure DesbloquearOperacao();
        procedure btComando1Click(Sender: TObject);
    procedure lblFinalizadoDblClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
        idOficina, idSaida: integer;
    end;

var
    FrmOficina: TFrmOficina;

implementation

{$R *.dfm}

uses DM_Projeto, DM_Oficina, funcoes, IBQuery, Form_Padrao, DB;

procedure TFrmOficina.FormShow(Sender: TObject);
var
    sWhere: string;
begin
    inherited;
    btLimpar.Visible := False;
    btPesquisar.Visible := False;
    btIR_Para.Visible := False;
    pnAvancaRecua.Visible := False;

    sWhere := IIF(((idSaida > 0) and (idOficina <= 0)), ' where idsaida = ' + IntToStr(idSaida), ' where id = ' + IntToStr(idOficina));

    Localizar('', sWhere);

    EstadoInicialTela;

    idOficina := DMOficina.C_TabelaID.Value;

end;

procedure TFrmOficina.btPesquisarClick(Sender: TObject);
begin
    //inherited;

end;

procedure TFrmOficina.btLimparClick(Sender: TObject);
begin
    //inherited;

end;

procedure TFrmOficina.btGravarClick(Sender: TObject);
begin

    if (idOficina <= 0) then
        begin
            DMOficina.C_TabelaID.Value := DMProjeto.NextIDGlobal;
            idOficina := DMOficina.C_TabelaID.Value;
            DMOficina.C_TabelaSERVICOPRONTO.Value := 'N';
            DMOficina.C_TabelaFINALIZADO.Value := 'N';
        end;

    inherited;

end;

procedure TFrmOficina.ApagarDadosClick(Sender: TObject);
begin
    inherited;
    idOficina := 0;
end;

procedure TFrmOficina.EstadoInicialTela();
begin
    { Desabilitando Panel Campos }
    pnDados.Enabled := not (DMOficina.C_TabelaFINALIZADO.Value = 'S');

    pnNavigator.Enabled := not (DMOficina.C_TabelaFINALIZADO.Value = 'S');
    lblFinalizado.Visible := (DMOficina.C_TabelaFINALIZADO.Value = 'S');

    if (idOficina <= 0) and (DMOficina.C_TabelaID.Value <= 0) then
    begin
        DMOficina.C_TabelaEMOFICINA.Value := 'S';
        chkEmOficina.Checked := (DMOficina.C_TabelaEMOFICINA.Value = 'S');
    end;

    if (DMOficina.C_TabelaDATAENTRADA.Value = 0) and (DMOficina.C_TabelaID.Value <= 0) then
        begin
            DMOficina.C_TabelaDATAENTRADA.Value := DMProjeto.dDataSistema;
            DMOficina.C_TabelaHORAENTRADA.Value := Now;
        end;

    if (DMOficina.C_TabelaDATAENTREGA.Value = 0) and (DMOficina.C_TabelaID.Value <= 0) then
        begin
            DMOficina.C_TabelaDATAENTREGA.Value := DMProjeto.dDataSistema;
            DMOficina.C_TabelaHORAENTREGA.Value := Now;
        end;
end;

procedure TFrmOficina.btComando1Click(Sender: TObject);
begin
    inherited;

    if (DMOficina.C_TabelaMECANICO.Value > 0) and (DMOficina.C_TabelaVENDEDOR.Value > 0) and (DMOficina.C_TabelaSERVICOPRONTO.Value = 'S') then
        begin
            if (MessageDlg('Deseja realmente finalizar esse registro ?' + #13 + #10 + '' + #13 + #10 + 'Obs: Essa operação não poderá ser revertida.', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
                begin
                    with DMProjeto.Q_SQL3 do
                        begin
                            Close;
                            btGravarClick(Self);
                            SQL.Text := 'update oficina o set o.finalizado = ''S'', o.emoficina = ''N'' where o.id = :idoficina';
                            ParamByName('idoficina').AsInteger := DMOficina.C_TabelaID.Value;
                            ExecSQL;
                            DMProjeto.DB_Projeto.DefaultTransaction.Commit;

                            idOficina := 0;
                            ModalResult := mrOk;
                        end;
                end;
        end
    else
        begin
            DlgMsg.ShowMsg(50, ['Não é possível finalizar esse registro. Verifique se as informações abaixo estão preenchidas:' + #13#13 + '* Mecânico' + #13 + '* Vendedor' + #13 + '* Serviço estar pronto']);
            Exit;
        end;

end;

procedure TFrmOficina.lblFinalizadoDblClick(Sender: TObject);
begin
  inherited;
    DesbloquearOperacao;
end;

procedure TFrmOficina.DesbloquearOperacao();
begin
    if (DMProjeto.nPerfil = 1) and (DMOficina.C_TabelaFINALIZADO.Value = 'S') and (DlgMsg.ShowMsg(6042, ['Deseja desbloquear essa operação ?']) = 100) then
    begin
        with DMProjeto.Q_SQL3 do
        begin
            Close;
            SQL.Text := 'update oficina o set o.finalizado = ''N'' where o.id = :id';
            ParamByName('id').AsInteger := DMOficina.C_TabelaID.Value;
            ExecSQL;
            DMProjeto.DB_Projeto.DefaultTransaction.Commit;

            FormShow(Self);
        end;
    end;
end;

end.


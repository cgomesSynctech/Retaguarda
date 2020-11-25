unit Dlg_RelatoriosImpressoras;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, DB,
    Provider, IBCustomDataSet, IBQuery, DBClient, dxCntner, TS_QDBGrid,
    dxEditor, dxEdLib, TS_ComboBox, Placemnt, FormsComponent, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
    TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, dxDBTLCl, dxGrClms, Printers, IBUpdateSQL;

type
    TDlgRelatoriosImpressoras = class(TFrmModeloCadastros)
        TS_Panel1: TTS_Panel;
        TS_Label1: TTS_Label;
        lbComputador: TdxfLabel;
        TS_Label2: TTS_Label;
        cmbModulo: TTS_ComboBox;
        dbgRelatorios: TTS_QDBGrid;
        C_Relatorios: TClientDataSet;
        Q_Relatorios: TIBQuery;
        P_Relatorios: TDataSetProvider;
        C_RelatoriosDS: TDataSource;
        C_RelatoriosTITULO: TStringField;
        C_RelatoriosIMPRESSORA: TStringField;
        C_RelatoriosNOMEFORM: TStringField;
        dbgRelatoriosTITULO: TdxDBGridMaskColumn;
        dbgRelatoriosNOMEFORM: TdxDBGridMaskColumn;
        dbgRelatoriosIMPRESSORA: TdxDBGridImageColumn;
        C_RelatoriosMODULO: TStringField;
        C_RelatoriosCOPIAS: TIntegerField;
        C_RelatoriosTIPOCABECALHO: TStringField;
        dbgRelatoriosTIPOCABECALHO: TdxDBGridImageColumn;
        U_Relatorios: TIBUpdateSQL;
        dbgRelatoriosCOPIAS: TdxDBGridMaskColumn;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure cmbModuloChange(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DlgRelatoriosImpressoras: TDlgRelatoriosImpressoras;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDlgRelatoriosImpressoras.FormsComponentBeforeClearParams(
    Sender: TObject);
var i: integer;
begin
    inherited;
    lbComputador.Caption := getNomeMaquina;
    lbComputador.AutoSize := true;
    with dbgRelatoriosIMPRESSORA do
    begin
        Values.Clear;
        Descriptions.Clear;
        for i := 0 to Printer.Printers.Count - 1 do
        begin
            Values.Add(Printer.Printers[i]);
            Descriptions.Add(Printer.Printers[i]);
        end;
    end;

    with DMProjeto.Q_SQL do
    begin
        close;
        sql.text := 'select distinct modulo from relatorios';
        open;
        cmbModulo.Items.Clear;
        cmbModulo.Items.Add('Todos');
        while not eof do
        begin
            cmbModulo.Items.Add(fields[0].AsString);
            Next;
        end;
    end;
    with C_Relatorios do
    begin
        Close;
        FetchParams;
        Params.ParambyName('Maquina').Asstring := lbComputador.Caption;
        Open;
        First;
    end;
    cmbModulo.ItemIndex := 0;
    dbgRelatorios.GotoFirst;
end;

procedure TDlgRelatoriosImpressoras.btGravarClick(Sender: TObject);
begin
    inherited;
    with DMProjeto.Q_SQL do
    begin
        Close;
        Sql.text := 'delete from relatoriosmaq where maquina = :maquina';
        Parambyname('maquina').AsString := lbComputador.Caption;
        ExecSql;
        if C_Relatorios.State in [dsEdit] then
            C_Relatorios.Post;
        if C_Relatorios.ChangeCount > 0 then
            C_Relatorios.ApplyUpdates(0);
        C_Relatorios.DisableControls;
        C_Relatorios.Filtered := false;
        C_Relatorios.First;
        while not C_Relatorios.EOF do
        begin
            if C_RelatoriosImpressora.AsString <> '' then
            begin
                Close;
                Sql.text := 'insert into relatoriosmaq ' +
                    '(nomeform, maquina, impressora ) ' +
                    'values ' +
                    '(:nomeform, :maquina, :impressora ) ';
                Parambyname('maquina').AsString := lbComputador.Caption;
                Parambyname('nomeform').AsString := C_RelatoriosNomeForm.AsString;
                Parambyname('impressora').AsString := C_RelatoriosImpressora.AsString;
                ExecSql;
            end;
            C_Relatorios.Next;
        end;
        C_Relatorios.First;
        C_Relatorios.EnableControls;
        if cmbModulo.ItemIndex <> 0 then
        begin
            C_Relatorios.Filter := 'Modulo = ''' + cmbModulo.Text + '''';
            C_Relatorios.Filtered := true;
        end;
    end;
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    dbgRelatorios.GotoFirst;
end;

procedure TDlgRelatoriosImpressoras.cmbModuloChange(Sender: TObject);
begin
    inherited;
    btGravar.Click;
    if cmbModulo.ItemIndex <> 0 then
    begin
        with C_Relatorios do
        begin
            Filtered := false;
            Filter := 'Modulo = ''' + cmbModulo.Text + '''';
            Filtered := true;
        end;
    end
    else
    begin
        C_Relatorios.Filtered := false;
    end;
end;

procedure TDlgRelatoriosImpressoras.btComando1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.CriarForm('DlgCabecalhoRelatorios', self, true);
end;

end.

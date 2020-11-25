unit Frm_ConfigECF;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
    TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, TS_RadioButton, ComCtrls, TS_PageControl,
    dxEdLib, TS_Edit, dxCntner, dxEditor, dxExEdtr, TS_DateTimePicker,
    TS_ListBox, TS_ImageEdit, TS_CalcEdit, dxDBELib, TS_DBEdit, ECF, DB,
    IBCustomDataSet, IBQuery, DBClient, Provider, Registry, RegChaves ;

type
    TFrmConfigECF = class(TFrmModeloCadastros)
        pcECF: TTS_PageControl;
        tsRelatorios: TTS_TabSheet;
        PanelResults: TTS_Panel;
        TS_Label1: TTS_Label;
        lbRetornos: TTS_ListBox;
        tsProg: TTS_TabSheet;
        TS_SpeedButton8: TTS_SpeedButton;
        TS_SpeedButton9: TTS_SpeedButton;
        TS_SpeedButton10: TTS_SpeedButton;
        TS_SpeedButton11: TTS_SpeedButton;
        TS_SpeedButton12: TTS_SpeedButton;
        TS_SpeedButton13: TTS_SpeedButton;
        ButtonFormaPgto: TTS_SpeedButton;
        TS_SpeedButton17: TTS_SpeedButton;
        TS_SpeedButton18: TTS_SpeedButton;
        TS_SpeedButton19: TTS_SpeedButton;
        TS_SpeedButton20: TTS_SpeedButton;
        PanelLeituraX: TTS_Panel;
        TS_Label2: TTS_Label;
        PanelAberturaDia: TTS_Panel;
        TS_Label10: TTS_Label;
        TS_Label11: TTS_Label;
        PanelMemReducao: TTS_Panel;
        TS_Label7: TTS_Label;
        TS_Label8: TTS_Label;
        TS_Label9: TTS_Label;
        edReducaoI: TTS_Edit;
        edReducaoF: TTS_Edit;
        PanelMemData: TTS_Panel;
        TS_Label3: TTS_Label;
        TS_Label5: TTS_Label;
        TS_Label6: TTS_Label;
        dtInicial: TTS_DateTimePicker;
        dtFinal: TTS_DateTimePicker;
        PanelReducaoZ: TTS_Panel;
        TS_Label4: TTS_Label;
        TS_Label12: TTS_Label;
        TS_Label13: TTS_Label;
        PanelCadAliq: TTS_Panel;
        TS_Label14: TTS_Label;
        TS_Label15: TTS_Label;
        TS_Label16: TTS_Label;
        edAliquota: TTS_CalcEdit;
        edTributacao: TTS_ImageEdit;
        PanelCadPgto: TTS_Panel;
        TS_Label21: TTS_Label;
        TS_Label22: TTS_Label;
        PanelSuprimento: TTS_Panel;
        TS_Label29: TTS_Label;
        TS_Label30: TTS_Label;
        edSuprimento: TTS_CalcEdit;
        PanelSangria: TTS_Panel;
        TS_Label26: TTS_Label;
        TS_Label27: TTS_Label;
        TS_Label28: TTS_Label;
        edSangria: TTS_CalcEdit;
        TS_Label31: TTS_Label;
        PanelVerao: TTS_Panel;
        TS_Label32: TTS_Label;
        TS_Label33: TTS_Label;
        rbEntra: TTS_RadioButton;
        rbSai: TTS_RadioButton;
        PanelBobina: TTS_Panel;
        TS_Label17: TTS_Label;
        TS_Label18: TTS_Label;
        tsComandos: TTS_TabSheet;
        TS_SpeedButton1: TTS_SpeedButton;
        TS_SpeedButton2: TTS_SpeedButton;
        PanelCancelaCupom: TTS_Panel;
        TS_Label19: TTS_Label;
        TS_Label20: TTS_Label;
        TS_SpeedButton3: TTS_SpeedButton;
        TS_SpeedButton4: TTS_SpeedButton;
        TS_SpeedButton5: TTS_SpeedButton;
        TS_SpeedButton6: TTS_SpeedButton;
        TS_SpeedButton7: TTS_SpeedButton;
        PanelMemFiscal: TTS_Panel;
        TS_Label23: TTS_Label;
        TS_Label24: TTS_Label;
        PanelStatusECF: TTS_Panel;
        TS_Label25: TTS_Label;
        TS_Label34: TTS_Label;
        PanelStatusCupom: TTS_Panel;
        TS_Label35: TTS_Label;
        TS_Label36: TTS_Label;
        PanelStatusGaveta: TTS_Panel;
        TS_Label37: TTS_Label;
        TS_Label38: TTS_Label;
        PanelStatusVerao: TTS_Panel;
        TS_Label39: TTS_Label;
        TS_Label40: TTS_Label;
        PanelDecimais: TTS_Panel;
        TS_Label41: TTS_Label;
        TS_Label42: TTS_Label;
        edFormaPgto: TTS_ImageEdit;
        PanelTroco: TTS_Panel;
        TS_Label43: TTS_Label;
        TS_Label44: TTS_Label;
    TS_SpeedButton14: TTS_SpeedButton;
    pnArredondamento: TTS_Panel;
    TS_Label45: TTS_Label;
    TS_Label46: TTS_Label;
    TS_Label47: TTS_Label;
    edArredondar: TTS_ImageEdit;
    TS_SpeedButton15: TTS_SpeedButton;
    pnNaoFiscal: TTS_Panel;
    lbNaoFiscal: TTS_Label;
    TS_Label49: TTS_Label;
    btResetarECF: TTS_SpeedButton;
    pnResetar: TTS_Panel;
    TS_Label48: TTS_Label;
    TS_Label50: TTS_Label;
    TS_SpeedButton16: TTS_SpeedButton;
    PanelVenda: TTS_Panel;
    TS_Label51: TTS_Label;
    TS_Label52: TTS_Label;
    TS_Label53: TTS_Label;
    edDataI: TTS_DateTimePicker;
    edDataF: TTS_DateTimePicker;
    Q_Vendas: TIBQuery;
    P_Vendas: TDataSetProvider;
    C_Vendas: TClientDataSet;
    C_VendasITEM: TIntegerField;
    C_VendasDESCRICAO: TStringField;
    C_VendasQTD: TBCDField;
    C_VendasTOTAL: TBCDField;
    TS_Label54: TTS_Label;
    cbSimmplificada: TCheckBox;
    TS_SpeedButton21: TTS_SpeedButton;
    TS_SpeedButton22: TTS_SpeedButton;
    TS_SpeedButton23: TTS_SpeedButton;
        procedure FormShow(Sender: TObject);
        procedure TS_SpeedButton8Click(Sender: TObject);
        procedure TS_SpeedButton9Click(Sender: TObject);
        procedure TS_SpeedButton10Click(Sender: TObject);
        procedure TS_SpeedButton11Click(Sender: TObject);
        procedure TS_SpeedButton12Click(Sender: TObject);
        procedure TS_SpeedButton13Click(Sender: TObject);
        procedure ButtonFormaPgtoClick(Sender: TObject);
        procedure TS_SpeedButton17Click(Sender: TObject);
        procedure TS_SpeedButton18Click(Sender: TObject);
        procedure TS_SpeedButton19Click(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure TS_SpeedButton20Click(Sender: TObject);
        procedure TS_SpeedButton1Click(Sender: TObject);
        procedure TS_SpeedButton2Click(Sender: TObject);
        procedure TS_SpeedButton3Click(Sender: TObject);
        procedure TS_SpeedButton4Click(Sender: TObject);
        procedure TS_SpeedButton5Click(Sender: TObject);
        procedure TS_SpeedButton6Click(Sender: TObject);
        procedure TS_SpeedButton7Click(Sender: TObject);
    procedure TS_SpeedButton14Click(Sender: TObject);
    procedure TS_SpeedButton15Click(Sender: TObject);
    procedure btResetarECFClick(Sender: TObject);
    procedure TS_SpeedButton16Click(Sender: TObject);
    procedure cbSimmplificadaClick(Sender: TObject);
    procedure TS_SpeedButton21Click(Sender: TObject);
    procedure TS_SpeedButton22Click(Sender: TObject);
    procedure TS_SpeedButton23Click(Sender: TObject);
    private
        { Private declarations }
        s: string;
        comando, cont: integer;
    public
        { Public declarations }
        procedure GerarChavePublica();
    end;

var
    FrmConfigECF: TFrmConfigECF;
    cregChaves: TChavesAssimetricas;


implementation

uses DM_Projeto, DM_ECF, funcoes, FuncoesPAF, RegAuxiliar, Dlg_Wait;

{Comentar as 2 linha abaixo para computadores sem o .NET}
//function genkkey( cChavePublica: String; cChavePrivada: String ): integer; stdcall; external 'sign_bema.dll';
//function generateEAD( cNomeArquivo: String; cChavePublica: String; cChavePrivada: String; cEAD: String; iSign: Integer): integer; stdcall; external 'sign_bema.dll';



{$R *.dfm}

procedure TFrmConfigECF.FormShow(Sender: TObject);
Var
 r: TRegistry;
 sTipo: String;
begin
    inherited;
    r := TRegistry.Create();
    r.RootKey := HKEY_LOCAL_MACHINE;
    r.OpenKey('SOFTWARE\DARUMA\ECF\',True);
    sTipo := r.ReadString('MFDLeituraMFCompleta');
    If (sTipo = '0') Then
       cbSimmplificada.Checked := True
    Else
       cbSimmplificada.Checked := false;   
    r.Free;
   //  DMProjeto.ConfiguraECF;
    edDataI.Date := DMProjeto.dDataSistema;
    edDataF.Date := DMProjeto.dDataSistema;
    cont := 0;
    PanelResults.BringToFront;
    pcECF.ActivePage := tsRelatorios;
    btGravar.Enabled := False;
    //  if DMECF.ECF1.Modelo <> Elgin then btTroco.Visible := False;
end;

procedure TFrmConfigECF.TS_SpeedButton8Click(Sender: TObject);
begin
    inherited;
    comando := 1;
    PanelLeituraX.BringToFront;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton9Click(Sender: TObject);
begin
    inherited;
    comando := 2;
    PanelReducaoZ.BringToFront;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton10Click(Sender: TObject);
begin
    inherited;
    comando := 3;
    PanelMemData.BringToFront;
    dtInicial.SetFocus;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton11Click(Sender: TObject);
begin
    inherited;
    comando := 4;
    PanelMemReducao.BringToFront;
    edReducaoI.SetFocus;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton12Click(Sender: TObject);
begin
    inherited;
    comando := 5;
    PanelAberturaDia.BringToFront;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton13Click(Sender: TObject);
begin
    inherited;
    comando := 6;
    PanelCadAliq.BringToFront;
    edAliquota.SetFocus;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.ButtonFormaPgtoClick(Sender: TObject);
begin
    inherited;
    comando := 7;
    PanelCadPgto.BringToFront;
    edFormaPgto.SetFocus;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton17Click(Sender: TObject);
begin
    inherited;
    comando := 8;
    PanelSangria.BringToFront;
    edSangria.SetFocus;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton18Click(Sender: TObject);
begin
    inherited;
    comando := 9;
    PanelSuprimento.BringToFront;
    edSuprimento.SetFocus;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton19Click(Sender: TObject);
begin
    inherited;
    comando := 10;
    PanelVerao.BringToFront;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.btGravarClick(Sender: TObject);
var sl : TStringList;
    total : currency;
    sDesc, sQtd, sTotal : string;
begin
    inherited;
    case comando of
        1:
            begin //Leitura X
                DMECF.ECF1.LeituraX;
                //  Inc(Cont);
                //  if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                //  else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        2:
            begin //Redução Z
                DMECF.ECF1.FechamentoDia(ExtractFilePath(Application.ExeName));
                //  Inc(Cont);
                //  if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                //  else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        3:
            begin //Memória Fiscal por Data
                DMECF.ECF1.MemoriaFiscal('D', FormatDateTime('dd/mm/yyyy', dtInicial.Date), FormatDateTime('dd/mm/yyyy', dtFinal.Date));
                //  Inc(Cont);
                //  if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                //  else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        4:
            begin //Memória Fiscal por Redução
                DMECF.ECF1.MemoriaFiscal('R', edReducaoI.Text, edReducaoF.Text);
                //  Inc(Cont);
                //  if s ='' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                //  else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        5:
            begin // Abertura do Dia
                DMECF.ECF1.AberturaDia('0,01', 'Dinheiro');
                //  Inc(Cont);
                //  if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                //  else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        6:
            begin //Programação de Alíquotas
                DMECF.ECF1.ProgAliquota(edTributacao.Text, FormatFloat('00.00', edAliquota.Value));
                DMECF.ECF1.CarregaAliquotas;
                //  Inc(Cont);
                //  if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                ///  else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        7:
            begin // Programação de Formas de Pagamento
                DMECF.ECF1.ProgFormaPgto(edFormaPgto.Text);
                //  Inc(Cont);
                //  if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                //  else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        8:
            begin //Sangria
                DMECF.ECF1.Sangria(FormatFloat('0.00', edSangria.Value), DMProjeto.sLoginName);
                //  Inc(Cont);
                //  if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                //  else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        9:
            begin //Suprimento
                DMECF.ECF1.Suprimento(FormatFloat('0.00', edSuprimento.Value), DMProjeto.sLoginName);
                //  Inc(Cont);
                //  if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                //  else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        10:
            begin //Horário de Verão
                if rbEntra.Checked then
                begin
                    DMECF.ECF1.EntraHorarioVerao;
                    //  Inc(Cont);
                    //  if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                    //  else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
                end
                else
                begin
                    if rbSai.Checked then
                    begin
                        DMECF.ECF1.SaiHorarioVerao;
                        //   Inc(Cont);
                        //   if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                         //  else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
                    end;
                end;
            end;
        11:
            begin // Troca de Bobina
                if DlgMsg.ShowMsg(6031) = 100 then
                begin
                    DMECF.ECF1.LeituraX;
                    //   Inc(Cont);
                     //  if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                     //  else begin
                    //     lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
                      //   PanelResults.BringToFront;
                       //  btGravar.Enabled := False;
                        // Exit;
                     //  end;
                    if DlgMsg.ShowMsg(6028) = 100 then
                    begin
                        DMECF.ECF1.LeituraX;
                        //     Inc(Cont);
                         //    if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                          //   else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
                    end;
                end;
            end;
        12:
            begin //Cancela Último Cupom Fiscal
                DMECF.ECF1.CancelaUltimoCupom;
                //   Inc(Cont);
                //   if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                //   else lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        13:
            begin // Habilitar ou Desabilitar Casas Decimais
                DMECF.ECF1.CasasDecimais;
                //  Inc(Cont);
                //  if s = '' then lbRetornos.Items.Add(IntToStr(Cont) + '- Comando Ok')
                //  else lbRetornos.Items.Add(IntToStr(Cont)+ '- ' + s);
            end;
        14:
            begin // Status da Memória Fiscal
                s := DMECF.ECF1.ChkMemoriaFiscal;
                Inc(Cont);
                if s = '' then
                    lbRetornos.Items.Add(IntToStr(Cont) + '- Status Não Retornado')
                else
                    lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        15:
            begin // Status do ECF
                s := DMECF.ECF1.ChkECFAberto;
                Inc(Cont);
                if s = '' then
                    lbRetornos.Items.Add(IntToStr(Cont) + '- Status Não Retornado')
                else
                    lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        16:
            begin // Status do Cupom Fiscal
                s := DMECF.ECF1.ChkCupomAberto;
                Inc(Cont);
                if s = '' then
                    lbRetornos.Items.Add(IntToStr(Cont) + '- Status Não Retornado')
                else
                    lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        17:
            begin // Status da Gaveta de Dinheiro
                s := DMECF.ECF1.ChkGavetaAberta;
                Inc(Cont);
                if s = '' then
                    lbRetornos.Items.Add(IntToStr(Cont) + '- Status Não Retornado')
                else
                    lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        18:
            begin // Status do Horário de Verão
                s := DMECF.ECF1.ChkHorarioVerao;
                Inc(Cont);
                if s = '' then
                    lbRetornos.Items.Add(IntToStr(Cont) + '- Status Não Retornado')
                else
                    lbRetornos.Items.Add(IntToStr(Cont) + '- ' + s);
            end;
        19:
            begin // Status do Horário de Verão
              if edArredondar.Text = 'T' then
                DMECF.ECF1.Truncamento
              else
                DMECF.ECF1.Arredondamento;
            end;
         20:
            begin // Cancelamento do Cupom Não-Fiscal Vinculado
              DMECF.ECF1.CancelaVinculado;
            end;
         21 : begin
                DMECF.ECF1.ResetarECF;
              end;
              // Vendas no Período
         22 : begin
                C_Vendas.Close;
                Q_Vendas.ParamByName('d1').AsDateTime := edDataI.Date;
                Q_Vendas.ParamByName('d2').AsDateTime := edDataF.Date;
                C_Vendas.Open;
                if C_Vendas.RecordCount > 0 then begin
                  total := 0;
                  sl := TStringList.Create;
                  sl.Append( '        VENDAS NO PERIODO     ');
                  sl.Append( 'De ' + edDataI.Text + ' a ' + edDataF.Text );
                  sl.Append( '========================================');
                  sl.Append( 'DESCRICAO             QTD.    TOTAL     ');
                  sl.Append( '========================================');
                  C_Vendas.First;
                  while not C_Vendas.EOF do begin
                    sDesc := Copy(RetiraAcentos(C_VendasDESCRICAO.AsString),1,22);
                    sDesc := sDesc + StrRepeat(' ', 22 - Length(sDesc));
                    sQtd := FormatFloat('0.###', C_VendasQTD.AsFloat );
                    sQtd := StrRepeat(' ', 8 - Length(sQtd)) + sQtd;
                    sTotal := FormatFloat('#,###,##0.00', C_VendasTOTAL.AsCurrency );
                    sTotal := StrRepeat(' ', 10 - Length(sTotal)) + sTotal;
                    sl.Append( sDesc + sQtd + sTotal );
                    total := total + C_VendasTOTAL.AsCurrency;
                    C_Vendas.Next;
                  end;
                  sl.Append( '========================================');
                  sl.Append( 'TOTAL GERAL:' + FormatFloat('#,###,###,##0.00', total ));
                  DMECF.ECF1.AbreRelatTEF;
                  DMECF.ECF1.ImprimeRelatTEF(sl,1,false);
                  DMECF.ECF1.FechaRelatTEF;
                  sl.Free;
                end
                else
                  DlgMsg.ShowMsg( 50, ['Não há produtos vendidos neste período.'] );
                C_Vendas.Close;
              end;
    end;
    PanelResults.BringToFront;
    btGravar.Enabled := False;
end;

procedure TFrmConfigECF.TS_SpeedButton20Click(Sender: TObject);
begin
    inherited;
    comando := 11;
    PanelBobina.BringToFront;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton1Click(Sender: TObject);
begin
    inherited;
    comando := 12;
    PanelCancelaCupom.BringToFront;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton2Click(Sender: TObject);
begin
    inherited;
    comando := 13;
    PanelDecimais.BringToFront;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton3Click(Sender: TObject);
begin
    inherited;
    comando := 14;
    PanelMemFiscal.BringToFront;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton4Click(Sender: TObject);
begin
    inherited;
    comando := 15;
    PanelStatusECF.BringToFront;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton5Click(Sender: TObject);
begin
    inherited;
    comando := 16;
    PanelStatusCupom.BringToFront;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton6Click(Sender: TObject);
begin
    inherited;
    comando := 17;
    PanelStatusGaveta.BringToFront;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton7Click(Sender: TObject);
begin
    inherited;
    comando := 18;
    PanelStatusVerao.BringToFront;
    btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton14Click(Sender: TObject);
begin
  inherited;
  comando := 19;
  pnArredondamento.BringToFront;
  btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton15Click(Sender: TObject);
begin
  inherited;
  comando := 20;
  pnNaoFiscal.BringToFront;
  btGravar.Enabled := True;
end;

procedure TFrmConfigECF.btResetarECFClick(Sender: TObject);
begin
  inherited;
  comando := 21;
  pnResetar.BringToFront;
  btGravar.Enabled := True;
end;

procedure TFrmConfigECF.TS_SpeedButton16Click(Sender: TObject);
begin
  inherited;
  comando := 22;
  PanelVenda.BringToFront;
  btGravar.Enabled := True;
end;

procedure TFrmConfigECF.cbSimmplificadaClick(Sender: TObject);
var
 r: TRegistry;
 sTipo: String;
begin
    inherited;
    r := TRegistry.Create();
    r.RootKey := HKEY_LOCAL_MACHINE;
    r.OpenKey('SOFTWARE\DARUMA\ECF\',True);
    if (cbSimmplificada.Checked) Then
     sTipo := '0'
    else
     sTipo := '1';
    r.WriteString('MFDLeituraMFCompleta',sTipo);
    r.Free;
end;

procedure TFrmConfigECF.TS_SpeedButton21Click(Sender: TObject);
Var Retorno: integer;
    camposPAF: TCamposPAF;
    linha, ultZ, data, TMPDataHoraSB: string;
begin
  inherited;
    Try
      camposPAF.CNPJ_Desenv            := fCNPJ_Desenv;
      camposPAF.IE_Desenv              := fIE_Desenv;
      camposPAF.IM_Desenv              := fIM_Desenv;
      camposPAF.RAZAO_Desenv           := fRAZAO_Desenv;
      camposPAF.Systema                := fSystema;
      camposPAF.Versao                 := fVersao;
      camposPAF.NroFabricacao_ECF      := Copy(DMECF.ECF1.GetNumeroFabricacao(),1,20);
      camposPAF.Ultimo_COO             := DMECF.ECF1.COO;
      camposPAF.GrandeTotal            := DMECF.ECF1.GetGrandeTotal;
      camposPAF.NroECF                 := SoNumeros(IntToStr(StrToInt(DMECF.ECF1.GetNumeroECF)),3);
      camposPAF.MFDAdicional           := Copy(DMECF.ECF1.GetNumeroFabricacao(),21,1);
      if (camposPAF.MFDAdicional = '') Then camposPAF.MFDAdicional := ' ';
      camposPAF.ProximaZ               := SoNumeros(IntToStr(StrToInt(DMECF.ECF1.GetNroUltimaReducaoZ()) + 1),4);
      camposPAF.TipoECF                := DMECF.ECF1.GetTipoECF;
      camposPAF.MarcaECF               := DMECF.ECF1.GetMarcaECF;
      camposPAF.ModeloECF              := DMECF.ECF1.GetModeloECF;
      camposPAF.VersaoSB               := DMECF.ECF1.GetVersaoSB;
      TMPDataHoraSB                    := DMECF.ECF1.GetDataHoraInstalacaoSB;
      camposPAF.DataInstalacaoSB       := Copy(TMPDataHoraSB,5,4)+Copy(TMPDataHoraSB,3,2)+Copy(TMPDataHoraSB,1,2);
      camposPAF.HoraInstalacaoSB       := Copy(TMPDataHoraSB,9,6);
      camposPAF.NumeroSeqECF           := camposPAF.NroECF;{DMECF.ECF1.GetNumeroSeqECF;}
      camposPAF.CNPJ_Usuario           := DMECF.ECF1.GetCNPJ_Usuario;
      camposPAF.IE_Usuario             := DMECF.ECF1.GetIE_Usuario;
      camposPAF.MD5_Exe                := RetornaMD5SYNCLOJA(ExtractFilePath(Application.ExeName)) ;
      camposPAF.Ass_Expoente           := fAss_Expoente;
      camposPAF.Ass_Publica            := fAss_Publica;
      camposPAF.VersaoPAF              := fVersaoPAF;
      camposPAF.MD5_ArqAutenticacao    := RetornaMD5ArquivoAutenticacao(ExtractFilePath(Application.ExeName)) ;
      CriarArquivoAuxiliar(camposPAF , ExtractFilePath(Application.ExeName));
      DMPRojeto.PAFCampos := LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
      MessageDlg(pChar('Arquivo auxiliar gerado com sucesso.'), mtInformation, [mbOK], 0);
    Except
      On E:Exception Do
        MessageDlg(pChar(E.Message), mtWarning, [mbOK], 0);
      //raise Exception.Create('Erro ao tentar accessar a impressora fiscal!!!');
    End;
End;


procedure TFrmConfigECF.TS_SpeedButton22Click(Sender: TObject);
var
  dataI, dataF: string;
begin
  inherited;
  try
    dataI := '01' + FormatDateTime('mmyy', now );
    dataf := FormatDateTime('ddmmyy', now );
    dataI := InputBox('Sintegra','Informe a Data Inicial (ddmmaa)',dataI);
    dataF := InputBox('Sintegra','Informe a Data Final (ddmmaa)',dataF);
    DlgWait := TDlgWait.Create(self);
    DlgWait.lblMsg.Caption := 'Aguarde, Gerando Arquivo SINTEGRA...';
    DlgWait.Show;
    DlgWait.Update;
    if (DMECF.ECF1.Sintegra(dataI,dataF,ExtractFilePath(Application.ExeName))) Then
      DMPRojeto.AtualizarSintegra(ExtractFilePath(Application.ExeName))
    Else
      raise Exception.Create('Não foi possivel gerar o SINTEGRA!!!');
  finally
     DlgWait.Close;
  End;
end;

Procedure TFrmConfigECF.GerarChavePublica();
var cChavePublica, cChavePrivada: String;
Begin
  SetLength (cChavePublica, 256 );
  SetLength (cChavePrivada, 256 );
  //genkkey( cChavePublica, cChavePrivada );
  cregChaves.cChavePublica := cChavePublica;
  cregChaves.cChavePrivada := cChavePrivada;
End;



procedure TFrmConfigECF.TS_SpeedButton23Click(Sender: TObject);
Var Retorno, i, k: integer;
    camposPAF: TCamposPAF;
    linha, ultZ, data, cChavePublica, cChavePrivada: string;
    arq: TStringList;
begin
 inherited;
 SetLength (Linha,445);
 //Linha := DMECF.ECF1.GetTotalizadoresParciais();
 ultZ := linha;
 i:=1;
 k:=1;
 //while (i <= 300) do Begin
  ultZ := Copy(linha,i,6);
  ultz := SoNumeros(intToStr(k),2) + copy(ultz,1,1) + copy(ultz,3,4);
  SetLength (cChavePublica, 256 );
  SetLength (cChavePrivada, 256 );
  GerarChavePublica();
  cChavePublica := cregChaves.cChavePublica;
  cChavePrivada := cregChaves.cChavePrivada;
  arq := tstringList.Create();
  arq.Add(cregChaves.cChavePublica);
  arq.Add(cregChaves.cChavePrivada);
  arq.SaveToFile('e:\chaves.txt');
  DMECF.ECF1.AssinarAquivo('E:\TesteAssinatura.txt');




//  if (LEngth(Trim(ultz)) = 7) Then Begin
//    With Q_Vendas do Begin
//     Close;
//     Sql.Text := 'Update saidasitens set idcfopcst = :Totalizador where situacaoecf = :sit and aliqicms = :aliq and idcfopcst is null ';
//     paramByName('Totalizador').Value := ultz;
//     paramByName('sit').AsString := Copy(ultz,3,1);
//     paramByName('Aliq').Value := StrToInt(Copy(ultz,4,4))/100.00;
//     Open;
//    End;
//  End;
  i:=i+6;
  inc(k);
// End;


end;

end.

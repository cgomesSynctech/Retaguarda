unit Start;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, dxfLabel, ExtCtrls, TS_Image, ComCtrls, TS_PageControl,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, TS_ButtonEdit, inifiles,
  shlobj, ActiveX, f2, TS_Edit, ShellApi, TS_Shape, Gauges;

Const
  NomeEXE = 'MaxPlus.exe';
  BackupEXE = 'Backup.exe';
  RestoreEXE = 'Restaurar.exe';
  SIGLA_EMPRESA = 'TradeSoft Plus Ltda';

type
  TFrmStart = class(TForm)
    TS_PCStart: TTS_PageControl;
    tsPagina1: TTS_TabSheet;
    tsPagina2: TTS_TabSheet;
    TS_Image1: TTS_Image;
    lbCriarEmpresa: TdxfLabel;
    TS_Image2: TTS_Image;
    lbRegistrarEmpresa: TdxfLabel;
    TS_Image3: TTS_Image;
    lbBackup: TdxfLabel;
    TS_Image4: TTS_Image;
    lbRestaurar: TdxfLabel;
    TS_Image5: TTS_Image;
    lbTutoriais: TdxfLabel;
    TS_Image6: TTS_Image;
    esStart: TdxEditStyleController;
    btEdCompartilhamento: TTS_ButtonEdit;
    lbAbrirModelo: TdxfLabel;
    TS_Image8: TTS_Image;
    lbAbrirEmpresa: TdxfLabel;
    TS_Label1: TLabel;
    lbServidor: TLabel;
    Label2: TLabel;
    edNomeServidor: TTS_Edit;
    edNomeDiretorio: TTS_Edit;
    lbMudarServidor: TdxfLabel;
    TS_Image9: TTS_Image;
    pnStatus: TPanel;
    Gauge: TGauge;
    lbStatus: TLabel;
    ShapeAtualiza: TTS_Shape;
    procedure btEdCompartilhamentoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure lbAbrirEmpresaClick(Sender: TObject);
    procedure lbCriarEmpresaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbAbrirModeloClick(Sender: TObject);
    procedure lbBackupClick(Sender: TObject);
    procedure lbRestaurarClick(Sender: TObject);
    procedure lbRegistrarEmpresaClick(Sender: TObject);
    procedure lbMudarServidorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    bAtualizar, bServidorOK : Boolean;
  public
    { Public declarations }
    procedure DistribuirCompartilhamento;
    function GetNomeComputador : String;
    function GetNomeServidor : String;
    function GetDirServidor : String;
    function ValidarCaminhoServidor (Caminho : String) : Boolean;
    function GetArquivoServidor (Caminho : String): String; overload;
    function GetArquivoServidor : String; overload;
    function sPathServidor :String;
    function sPath : String;
    function AtualizarExe(Origem, Destino : TFileName) : Boolean;
    procedure AtualizaExe;
  end;

var
  FrmStart: TFrmStart;

implementation

uses Frm_Empresas, Frm_CriarEmpresas, Frm_Maquinas, Frm_Compartilhamento,
  Frm_EmpresaExterna;

{$R *.DFM}

procedure TFrmStart.DistribuirCompartilhamento;
var
    S : String;
begin
  if pos('\\', btEdCompartilhamento.Text) <> 0 then begin
    S := copy(btEdCompartilhamento.Text, 3,length(btEdCompartilhamento.Text));
    edNomeServidor.Text := copy(S,1,pos('\',S)-1);
    edNomeDiretorio.Text := copy(S, pos('\',S)+1 , length(S));
    if UpperCase(GetNomeComputador) = UpperCase(edNomeServidor.Text) then
      lbServidor.Caption := 'Nome do Servidor:<LOCAL>'
    else
      lbServidor.Caption := 'Nome do Servidor:';
  end
  else begin
    S := copy(btEdCompartilhamento.Text, 3,length(btEdCompartilhamento.Text));
    edNomeServidor.Text := GetNomeComputador;
    edNomeDiretorio.Text := '';
    lbServidor.Caption := 'Nome do Servidor:<LOCAL>';
  end;
end;

function TFrmStart.GetNomeComputador : String;
var
  b: DWORD;
  ArrayMaquina: array[0..100] of Char;
begin
  result := '';
  b := 101;
  if GetComputerName(ArrayMaquina,b) then
     result := StrPas(ArrayMaquina);
end;

function TFrmStart.GetNomeServidor : String;
var
  Servidor : String;
begin
  if pos('\\', btEdCompartilhamento.Text) = 1 then begin
    Servidor := copy(btEdCompartilhamento.Text,3,length(btEdCompartilhamento.Text));
    Result := copy(Servidor,1,pos('\',Servidor)-1);
  end
  else begin
    Result := GetNomeComputador;
  end;
end;

function TFrmStart.GetDirServidor : String;
begin
  with TIniFile.Create(sPathServidor+'Servidor.ini') do begin
    try
      Result := ReadString('Servidor', 'DirServidor', '');
    except
      Free;
    end;
  end;
end;

// Verificar se o Exe poderá ser atualizado
function TFrmStart.AtualizarExe(Origem, Destino : TFileName) : Boolean;
var
   OrigemAge, DestinoAge : integer;
begin
  Result := False;
  OrigemAge := FileAge(Origem);
  DestinoAge := FileAge(Destino);
  if (OrigemAge = -1) or (DestinoAge = -1) then
    exit;
  Result := ((OrigemAge - DestinoAge) > 0);
end;

// Atualiza o EXE para a máquina local
procedure TFrmStart.AtualizaExe;
var
   bMsg : Boolean;
begin
  bMsg := False;
  if UpperCase(FrmStart.GetNomeComputador) <> UpperCase(FrmStart.edNomeServidor.Text) then begin
    pnStatus.Visible := True;
    lbStatus.Caption := 'Atualizando Sistema';
    Application.ProcessMessages;
    if AtualizarExe(FrmStart.sPathServidor+NomeEXE,FrmStart.sPath+NomeEXE) then begin
      if not bMsg then
        Application.MessageBox('Será realizado uma atualização do Sistema.',SIGLA_EMPRESA,
                                         MB_OK or MB_ICONINFORMATION);
      CopyFileEx(FrmStart.sPathServidor+NomeEXE,FrmStart.sPath+NomeEXE,False,False, Gauge);
    end;
    if AtualizarExe(FrmStart.sPathServidor+BackupEXE,FrmStart.sPath+BackupEXE) then begin
      if not bMsg then
        Application.MessageBox('Será realizado uma atualização do Sistema.',SIGLA_EMPRESA,
                                         MB_OK or MB_ICONINFORMATION);
      CopyFileEx(FrmStart.sPathServidor+BackupEXE,FrmStart.sPath+BackupEXE,False,False, Gauge);
    end;
    if AtualizarExe(FrmStart.sPathServidor+RestoreEXE,FrmStart.sPath+RestoreEXE) then begin
      if not bMsg then
        Application.MessageBox('Será realizado uma atualização do Sistema.',SIGLA_EMPRESA,
                                         MB_OK or MB_ICONINFORMATION);
      CopyFileEx(FrmStart.sPathServidor+RestoreEXE,FrmStart.sPath+RestoreEXE,False,False, Gauge);
    end;
    pnStatus.Visible := False;
    Application.ProcessMessages;
    if AtualizarExe(FrmStart.sPathServidor+'Empresas.ini', FrmStart.sPath+'Empresas.ini') then
       CopyFileEx(FrmStart.sPathServidor+'Empresas.ini', FrmStart.sPath+'Empresas.ini',False, False, nil);
    if bMsg then begin
      Application.MessageBox('Sistema Atualizado com Sucesso.',SIGLA_EMPRESA,
                               MB_OK or MB_ICONINFORMATION);
    end;                           
  end;
end;

function TFrmStart.ValidarCaminhoServidor (Caminho : String) : Boolean;
begin
  Result := False;
  if pos('\',copy(Caminho,1,2))>0 then
     Result := True;
end;

function TFrmStart.GetArquivoServidor (Caminho : String): String;
var
   NomeServidor : String;
begin
  Result := '';
  if (FileExists(Caminho+'\Servidor.ini')) then begin
     with TIniFile.Create(Caminho+'\Servidor.ini') do begin
       NomeServidor := ReadString('Servidor','Nome','');
       Free;
     end;
     Result := Caminho+'Servidor.ini';
  end;
end;

function TFrmStart.GetArquivoServidor : String;
var
   NomeServidor : String;
begin
  Result := '';
  if (FileExists(sPathServidor+'\Servidor.ini')) then begin
     with TIniFile.Create(sPathServidor+'\Servidor.ini') do begin
       NomeServidor := ReadString('Servidor','Nome','');
       Free;
     end;
     Result := sPathServidor+'Servidor.ini';
  end;
end;

function TFrmStart.sPathServidor : String;
begin
// Result := btEdCompartilhamento.Text;
 Result := btEdCompartilhamento.Text+'\';
end;

function TFrmStart.sPath : String;
begin
 Result := ExtractFilePath(Application.ExeName);
end;

procedure TFrmStart.btEdCompartilhamentoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
   PathOLD : String;
   bRegValido : Boolean;
begin
  PathOLD := '';
  bRegValido := False;
  with TFrmCompartilhamento.Create(Self) do begin
    try
      ShowModal;
      if Path <> '' then
        if GetArquivoServidor(Path) <> '' then begin
          PathOLD := btEdCompartilhamento.Text;
          try
            btEdCompartilhamento.Text := Path;          
            with TIniFile.Create(sPath+'Servidor.ini') do begin
              if UpperCase(GetNomeServidor) = UpperCase(GetNomeComputador) then begin
                 WriteString('Servidor','Nome','<LOCAL>');
                 WriteString('Servidor','DirSistema', Path);
                 WriteString('Servidor','DirServidor',ExtractFilePath(Application.ExeName));
               end
              else begin
                 WriteString('Servidor','Nome',GetNomeServidor);
                 WriteString('Servidor','DirSistema', Path);
                 WriteString('Servidor','DirServidor','');
              end;
              Free;
            end;
            DistribuirCompartilhamento;
            Application.MessageBox('Servidor registrado com Sucesso.',SIGLA_EMPRESA,
                                     MB_OK or MB_ICONINFORMATION);
            bRegValido := True;
            bServidorOK := True;              
          except
            Application.MessageBox('Falha ao registrar o servidor.',SIGLA_EMPRESA,
                                     MB_OK or MB_ICONERROR);
            btEdCompartilhamento.Text := PathOLD;
            DistribuirCompartilhamento;
          end;
          if bRegValido then
             AtualizaExe;
        end
        else begin
          Application.MessageBox('O Registro de identificação do Servidor não foi encontrado no caminho especificado.',SIGLA_EMPRESA,
                               MB_OK or MB_ICONERROR);
        end;
    except
      Free;
    end;
  end
end;

procedure TFrmStart.lbAbrirEmpresaClick(Sender: TObject);
begin
  with TFrmEmpresas.Create(Self) do begin
   try
      Operacao := mdEmpresas;   
      ShowModal;
    except
      Free;
    end;
  end;
end;

procedure TFrmStart.lbCriarEmpresaClick(Sender: TObject);
begin
  with TFrmCriarEmpresas.Create(Self) do begin
    try
      ShowModal;
    except
      Free;
    end;
  end;
end;

procedure TFrmStart.FormShow(Sender: TObject);
begin
  if FileExists(sPath+'Servidor.ini') then begin
    with TIniFile.Create(sPath+'Servidor.ini') do begin
      btEdCompartilhamento.Text := ReadString('Servidor', 'DirSistema' , '');
      DistribuirCompartilhamento;
    end;
    if (edNomeServidor.Text <> GetNomeComputador) then begin // se não for o servidor local
      if FileExists(sPathServidor+'\Empresas.ini') then begin // Se o compartilhamento não existir
        bServidorOK := True;
        TS_PCStart.ActivePageIndex := 1;
      end
      else begin
        Application.MessageBox('Não é possível encontrar o servidor do sistema!', SIGLA_EMPRESA, MB_OK or MB_ICONERROR);
        bServidorOK := False;        
        TS_PCStart.ActivePageIndex := 0;
      end;
    end
    else begin
      bAtualizar := False;
      TS_PCStart.ActivePageIndex := 1;
    end;
  end
  else begin
     Application.MessageBox('Não é possível encontrar os arquivos do sistema!', SIGLA_EMPRESA, MB_OK or MB_ICONERROR);
     Application.Terminate;
  end;
end;

procedure TFrmStart.lbAbrirModeloClick(Sender: TObject);
var
  j : TStringList;
begin
  FrmStart.AtualizaExe;
  J := TStringList.Create;
  with J do begin
    Add(FrmStart.sPath+'Samples\Samples.gdb');
    SaveToFile(FrmStart.sPath+'program.als');
    Free;
  end;
  ShellExecute(0,'Open',pChar(FrmStart.sPath+'Maxplus.exe'),nil,nil,SW_SHOWNORMAL);
//  Application.Terminate;
end;

procedure TFrmStart.lbBackupClick(Sender: TObject);
begin
  with TFrmEmpresas.Create(Self) do begin
   try
      Operacao := mdBackup;
      ShowModal;
    except
      Free;
    end;
  end;
end;

procedure TFrmStart.lbRestaurarClick(Sender: TObject);
begin
  with TFrmEmpresas.Create(Self) do begin
   try
      Operacao := mdRestored;
      ShowModal;
    except
      Free;
    end;
  end;
end;

procedure TFrmStart.lbRegistrarEmpresaClick(Sender: TObject);
begin
  with TFrmEmpresaExterna.Create(Self) do begin
    try
      ShowModal;
    except
      Free
    end;
  end;
end;

procedure TFrmStart.lbMudarServidorClick(Sender: TObject);
begin
  btEdCompartilhamentoButtonClick(Sender,0);
end;

procedure TFrmStart.FormCreate(Sender: TObject);
begin
  bServidorOK := True;
  bAtualizar  := True; 
end;

procedure TFrmStart.FormActivate(Sender: TObject);
begin
  if bAtualizar and bServidorOK then begin
     AtualizaExe;
     bAtualizar := False;
  end;
end;

end.



program Backup;

uses
  Forms,
  Form_Padrao in '..\..\Classes\ClassesIB\FORM_PADRAO.pas' {FormPadrao},
  Dlg_PadraoChild in '..\..\Classes\ClassesIB\DLG_PADRAOCHILD.pas' {DlgPadraoChild},
  Frm_ModeloCadastros in '..\..\Classes\ClassesIB\FRM_MODELOCADASTROS.pas' {FrmModeloCadastros},
  TDM_Projeto in '..\..\Classes\ClassesIB\TDM_PROJETO.pas' {DMProject: TDataModule},
  Dlg_Backup in 'Dlg_Backup.pas' {DlgBackup};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TDMProject, DMProject);
  Application.CreateForm(TDlgBackup, DlgBackup);
  Application.Run;
end.

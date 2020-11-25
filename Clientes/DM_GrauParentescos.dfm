inherited DMGrauParentescos: TDMGrauParentescos
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from GrauParentescos')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from GrauParentescos '
      'where'
      '  GRAUPARENTESCO = :GRAUPARENTESCO')
    ModifySQL.Strings = (
      'update GrauParentescos'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  GRAUPARENTESCO = :OLD_GRAUPARENTESCO')
    InsertSQL.Strings = (
      'insert into GrauParentescos'
      '  (GRAUPARENTESCO, DESCRICAO)'
      'values'
      '  (:GRAUPARENTESCO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from GrauParentescos'
      'where'
      '  GRAUPARENTESCO = :OLD_GRAUPARENTESCO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'GRAUPARENTESCOS'
    Tabela_Nome = 'GRAUPARENTESCOS'
    Tabela_Chave = 'GRAUPARENTESCO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaGRAUPARENTESCO: TIntegerField
      FieldName = 'GRAUPARENTESCO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 25
    end
  end
end

�
 TDMTERMOSCONTRATOS 0�  TPF0�TDMTermosContratosDMTermosContratosLeft(TophHeightlWidth �TIBQueryQ_TabelaDatabaseDMProjeto.DB_ProjetoTransactionDMProjeto.IBT_ProjetoSQL.StringsSelect * from TERMOSCONTRATOS   �TIBUpdateSQLU_TabelaRefreshSQL.StringsSelect   TERMOCONTRATO,  DESCRICAO,  DESATIVADO,  TITULOfrom TERMOSCONTRATOS where   TERMOCONTRATO = :TERMOCONTRATO ModifySQL.Stringsupdate TERMOSCONTRATOSset  DESCRICAO = :DESCRICAO,  DESATIVADO = :DESATIVADO,  TITULO = :TITULOwhere$  TERMOCONTRATO = :OLD_TERMOCONTRATO InsertSQL.Stringsinsert into TERMOSCONTRATOS0  (TERMOCONTRATO, DESCRICAO, DESATIVADO, TITULO)values4  (:TERMOCONTRATO, :DESCRICAO, :DESATIVADO, :TITULO) DeleteSQL.Stringsdelete from TERMOSCONTRATOSwhere$  TERMOCONTRATO = :OLD_TERMOCONTRATO   �TDMComponentDMComponent	KeyForIDsNOIDTabela_NomeTERMOSCONTRATOTabela_ChaveTERMOCONTRATO  �TClientDataSetC_Tabela TIntegerFieldC_TabelaTERMOCONTRATO	FieldNameTERMOCONTRATORequired	  TStringFieldC_TabelaDESCRICAO	FieldName	DESCRICAOSize�  TStringFieldC_TabelaDESATIVADO	FieldName
DESATIVADOSize  TStringFieldC_TabelaTITULO	FieldNameTITULOSize    
inherited RptVendasItensTabelaspreco: TRptVendasItensTabelaspreco
  Caption = 'Vendas Por tabelas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    inherited lbCaption: TdxfLabel
      Width = 186
      Caption = 'Vendas Por tabelas'
    end
  end
  inherited pnGrid: TPanel
    inherited dbgConsulta: TTS_QDBGrid
      Filter.Criteria = {00000000}
    end
    inherited PainelFullSelect: TTS_Panel
      inherited cbFullSelect: TTS_CheckBox
        Height = 19
      end
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 45835.443230706
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    Modulo = 'Vendas Por tabelas'
    Caption = 'Vendas Por tabelas'
  end
  object Q_Block: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'EXECUTE BLOCK RETURNS ('
      '    sql_query VARCHAR(32000)'
      ') AS'
      '    DECLARE VARIABLE id_tabela INTEGER;'
      '    DECLARE VARIABLE campos_sql VARCHAR(32000);'
      'BEGIN'
      '    -- Inicializa a parte din'#226'mica do SQL'
      '    campos_sql = '#39#39';'
      ''
      '    -- Loop pelos tabelas de preco'
      '    FOR'
      '        select t.tabelapreco  from tabelaspreco t'
      '        INTO :id_tabela'
      '    DO'
      '    BEGIN'
      '        campos_sql = campos_sql ||'
      
        '            '#39'SUM(CASE WHEN SI.tabelapreco = '#39' || id_tabela || '#39' ' +
        'THEN SI.quantidade ELSE 0 END) AS qtd_tabela'#39' || id_tabela || '#39',' +
        ' '#39' ||'
      
        '            '#39'SUM(CASE WHEN SI.tabelapreco = '#39' || id_tabela || '#39' ' +
        'THEN SI.preco ELSE 0 END) AS total_tabela'#39' || id_tabela || '#39', '#39' ' +
        '||'
      
        '            '#39'SUM(CASE WHEN SI.tabelapreco = '#39' || id_tabela || '#39' ' +
        'THEN SI.preco - (SI.precotabela * SI.quantidade) ELSE 0 END) AS ' +
        'diferenca_tabela'#39' || id_tabela || '#39', '#39';'
      '    END'
      ''
      '    -- Remove a ultima virgula'
      '    campos_sql = trim(trailing '#39','#39' FROM :campos_sql);'
      '    campos_sql = campos_sql || '#39'si.item '#39' ;'
      ''
      '    -- Monta a query completa'
      '    sql_query = '#39
      '        SELECT '
      
        '        i.codigo, i.descricao, i.referencia, i.unidade, gi.descr' +
        'icaogrupo as grupo,i.customanual, i.customedio,'
      '        i.precocompra, i.custocontabil,'
      
        '        sum(cast(cast(si.quantidade as Numeric(15,3)) * si.fator' +
        '  as Float)) as TotalVendido,'
      '        sum(si.subtotalitem) as SubtotalVendaIten,'
      '            '#39' || campos_sql || '#39
      '        from  Saidas s'
      
        '             inner join SaidasItens si on s.empresa = si.empresa' +
        ' and s.saida = si.saida and s.pdv = si.pdv'
      
        '             inner join Itens i on si.empresa = i.empresa and si' +
        '.item = i.item'
      
        '             left join Favorecidos f on s.empresa = f.empresa an' +
        'd s.favorecido = f.favorecido'
      
        '             left join Favorecidos v on s.vendedor = v.favorecid' +
        'o'
      '             left join Grupos gi on i.grupo = gi.grupo'
      
        '        group by si.item, i.codigo, i.descricao, i.referencia, i' +
        '.unidade, I.piscofins, gi.descricaogrupo, i.customanual, i.custo' +
        'medio, i.precocompra, i.custocontabil'
      '        ORDER BY I.item'#39';'
      ''
      '    -- Retorna a query pronta'
      '    SUSPEND;'
      'END')
    Left = 468
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_tabela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'campos_sql'
        ParamType = ptUnknown
      end>
  end
end

object DlgCompromissoRelatorio: TDlgCompromissoRelatorio
  Left = 93
  Top = 142
  Width = 704
  Height = 375
  Caption = 'DlgCompromissoRelatorio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 694
    Height = 1083
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = C_Comp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    OnPreview = QuickRep1Preview
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      100
      2865.4375
      100
      1836.20833333333
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object bandTitulo: TQRBand
      Left = 38
      Top = 38
      Width = 618
      Height = 75
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        198.4375
        1635.125)
      BandType = rbTitle
      object QRImage1: TQRImage
        Left = 6
        Top = 3
        Width = 81
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667
          15.875
          7.9375
          214.3125)
        Picture.Data = {
          0A544A504547496D61676592100000FFD8FFE000104A46494600010101004800
          480000FFDB0043000403030403030404040405050405070B07070606070E0A0A
          080B100E1111100E100F12141A16121318130F10161F17181B1B1D1D1D111620
          221F1C221A1C1D1CFFDB0043010505050706070D07070D1C1210121C1C1C1C1C
          1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
          1C1C1C1C1C1C1C1C1C1C1C1C1CFFC2001108005A008303012200021101031101
          FFC4001C0000020301010101000000000000000000050600040703080201FFC4
          00190100030101010000000000000000000000000203010405FFDA000C030100
          02100310000001DFFF0001669A6ACBE88C55531F5C06EE11F9E6564E44D55AAA
          14E795D7A66823C018752728F093B7CA914CC80155EA864ED1E554BC74407DCD
          0FB25BCF352C621B7E15A11BC299EB8C3C28F1D5266A89783919F514C84568CE
          4E60351A957AE7D695DA5557ED6B25D6BCFB54C2772F37016E8AE5FA16ED4B74
          7A27F4EF9970E3B7ABE2D480D3240C6555A957B67D695DA5657ED6B25D6BCFB7
          1F3E7A246A9E642DAA2EF4AAD517EAB64463A4C1F2D592508A6E924998CAAB52
          AF6CFAD2BB4ACAFDAD64BAD79F6FC516E5F52AF0B40DF390EB9C6C8B037BB14E
          9426D9267792288B9DEFDF155F3D75DDEDD5531D24E6A7E2CB265C05B9B3196C
          49E4FD37029A926D2481FFC40028100002020201020602030100000000000002
          0301040005061012111314313335152024253432FFDA0008010100010502E8FD
          856AF85C8EBF77AED8D88356CC8594D18B8D5786BD15163D08C431DB9A699FCD
          1BB00F64D99AD7BB963221B2DB23580DD86CB745E46BAA926F39B12BBCDC956B
          5780CD6C62AC37C50464177608A00CE4172FB3D28C626CD75C04ED9B248F2C7F
          AC5E56944A37FE52B62D9738AA9A7B662CB73F8032974F67F667008BB83E352B
          DD79596226D594D72A49C57E45AB6D4494016A552373C169619AF70C25EC8610
          B30AD7CD49FC75729DE2D10DE437A7344C7ECDB1A7ADDCDACAAF567B85C2A58C
          D7B6FED35AF16DA0521F93F1056C2454B602F70B965AA5EB2C66C69BA93C30B0
          F388FCD96A0A6B944C921F52A61DD7D8C9F6929091D95B466BB9694109898D9D
          29EC762A48217CA7EC430B0F388FCD977FC8FB45301EE193EC78CE9AA5CAB5DD
          394FD886161E711F9B1AB872F69A3B14181EE193EC78AA6EB662BADAB94D6ABE
          5F4E53F62185879C47E6E8DBB5978F8D33C99ABF3A0740C8828D655869DFB0A5
          982B2B15714F4E53F62185879C47E6E87610B6FA8B7E129DA3B1D5A92A42E446
          5F4CF77FA86B3AFF0091D394FD886161E711F9BA30F65DEE4EC190CAD58705B5
          821ABD83D6C9A75F35BA4B57EC028161D379A43BEC650B15B086717ADB563343
          A83D6C74247978E4EB172BB34233BB64F88E3C760E9EAAAD1FDA62263CA0FD0B
          FE75295B46B5748640C47EDFFFC4001911000301010100000000000000000000
          00000102102011FFDA0008010301013F0118B589FBC513AC5C591B44F1646D12
          B8B2358B86BD2678F37FFFC4001F110002020300020300000000000000000000
          0102031011311241215161FFDA0008010201013F01488C10D2F43C461BE92828
          E510271931FC1122490F1E452584FA44AD16124B3470B09F44F457327627C1E6
          8E1613E88892FD19E58AED712CBF7E86F6237A1D9F59FFC40037100001030201
          0905070403010000000000010002030411121021222331415161710513204252
          14243233627291438182D13453A1E1FFDA0008010100063F02C9AC99A15A363D
          FD10EEA9432FBDCAEEAB8A2E8177953DA2F77F2B2B77EE93F9129CFA5606876D
          CBA4E011065B9FA73A1ECD472BFAE65F2E18873CEAE6B9A0700C4019311E2AF2
          9D23B1A37AD56A29C6FD9FF55E7A875449C19B0AF72A16B5A3CD65AEAB643C82
          266AB7CD6F2DD02CA291C77686D5A1D9B87AD82BC91F76785D639DF86FB39A74
          543168FA917768D6EB3D0D372B0D2513A577A9C15ED140D57AAED3767E04355D
          D3BA5BFD45C99DCFCBDC8C92EBA5CD822DD6E681AFA8EEA23FA636FE135B4944
          64977BA4CEB5F571C037B1A762CE66A97725EEDD976BEF72B06C1173DAB595AD
          FD9AA691F29948D2CE8CF58F71BE78E359DEDA5A3FC2B3627D549CF62181B153
          468FB5769B8F101C9BDD42E9DC3837121ECF41261E8026B9D16027CBC14ED880
          333882E908F802B341ACA877E3FF0055E69994B10DDB15DC64A8774B05EEF4AC
          6F5599E1BD02944D532D9A37158887B8FD4E2A711C62C5BB38A7B70096B1E785
          C3562AFA8739DBA361BAB51523618FD6562AFAEC47D0C2AD4D42E99FF594D105
          3D3C31F3DCB4E785A7E96201F2E377AACAA74BBBA46BEEE7EF71E08C7D9D0606
          8DAFDFF94193C98E470C47C151D324B87E2C3993A1A4D160F9B3BB794ED5FB44
          BEB76C5A6F36E192ED2415A13BC7EE9ACAB6DC7AC20E06E0A74952EF746FC0C0
          9AC60B35A2C137ECF05474C935CD86139D772D76A470DFCFC74ED73DB7C395BF
          6782A3A647C67638593C861741B9DE10D8A3279A0EC42A2AAD99A3E1694DEFAB
          1CD97CCDDB6395BF6782A3A65224959D0956EEB11E31B4A6FB252CE3EF579E56
          46DEA8E10EAA9765B604461651D2EFF2A74347AC90FEBBB3614D0690CB6F3E23
          9F2B7ECF05474CAF2DECF95E4ED7066D5A8ECF0D69F53ACB593C50B7E957AAAC
          7CA785D16F67D067F5BB39424AFABBBBFD6CCE50185B4F4ADDFBDDFD94CEE213
          DD79746F95BF6782A3A65D08E0C3CDCBFCB8E2E8D5EF7DA2E79DE015EE944E98
          8F3109C647B2921FC21DD8754CFCFE1427AD1821DB80FF004831AD01A32B6689
          DA605AC56B22705B16AE171523A5231BF70DD96F3768BC5F98083E7AA7CBCB1D
          D1F65A274AEFB501042DA66AC75952E7F20B5518C5C4EDF1675F037F1E029F8E
          36BB3F985D68C4C1D1AB30F17FFFC40026100100020103040202030100000000
          000001001121103141516171A181B191C120D1E1F1FFDA0008010100013F21D3
          71BE97995379E4730EFA87C41DD70400A602B04FA82593E1930F384157A8D607
          760003E0415C8DE76C96C6C6A9AEBAE221F428FF00710D999759812CF7F424A5
          8E743CC150BE54C9E63236B9708C589467AB2101EAF2A5FC4F3BCB7DA358DDEA
          15716EDB40E11B1CC3A1138AE6BE896947271CFEA141F3912CDB5AA72D758A07
          6C68189E673F523C5B7EC7AC5D1A1387FA41819CEF8F0DBE63F22460BB3D22D8
          E1B0BE411B6B83A8216BF00CA399F247C4CBA7E32518EA9A631B4222BA2F1D6B
          818A858F4A3C796342AECE16F105FCB62A908F633B187E209086ED1972E04BC8
          C92CC1B820354514F1B96CE25430D5FB8AD2CC5CC7C112C63A59FDCAC3BD60D4
          3FB32BFC8D5770ED837B572C2257E294273CF712B6BFA884EF907E788EDBB88E
          7CDB0D95DE52B0C78189537E457E9117900FEE5539DF05FC4B9804ACD3D9D6B3
          8E33285A4C066775FA993CD96BA3668F5FA013A4AD759A96E28A4D1DC7820C0C
          FC613F1CC369D7C1C04CE298472315C52E4BE61C756B9CF242543B1EB2F25BB2
          ADC5C20E601D27A7FB746CD1EBF4A179921B988DEBAE0C4EF75F9D6EC6A05B46
          F2B98977EB9D7D3FDBA3668F5FA5E4DE5502C66C7A77D6EC68B606E4183CC1F3
          786BEE3AD7F512C9F39BA8CEBE9FEDD1B347AFD4A1F58412AA3E16FC40722B95
          81069339B82E0B8649DE1E7B0A95F6CAD986A182B35D3CFF00D8B72B15033DEB
          5F4FF6E8D9A3D7E9B446F7FEAA6FF28092F9218DE770E4868EB8DAE6C77D8A89
          474DCDFE241441B93C1D61C41776C5F5AD7D3FDBA3668F5FAA157E375FD45376
          B8DAF9654F07FD39166EE16A9819897BCF21A16683D6B98B241A055F6E886A86
          80D41317DB691AC6EF7589D43F13616DED288F142681D994D00B1804080709FA
          93A065D1F963DFD6D5CB30F9DA807B4BF918004EF3FE2200182B5F5D892DDF23
          1EB1C26D61E0FE5FFFDA000C0301000200030000001069BEFE989B40381772C8
          199638245DAA824F814080FEAA1664C58D03FAA8F10DDCF809C3012041080FFF
          C4001B11000203010101000000000000000000000110001131412021FFDA0008
          010301013F10844423D65509E421C414FC610413137063C204162106C0F081B7
          F20C75A51D645C15D7FFC4002311010002020103040300000000000000000100
          1121311041A1C1618191B15171D1FFDA0008010201013F105733792FB109A1EC
          2F765A6567549D1BE5F047D3818264E32FCFDE26E0F97C10DA99D6CF47F226CE
          C7966DC502A3B078EF86E15DCD229CC4E3471DF1F48439C4C567FA89599E3471
          DFC2B78FAB96AF2C76220DCA7E38542AE2E908AD86E1D6CFBC4D008AB978FFC4
          0026100100020201030305010100000000000001112100314151617110819120
          A1B1C1F0D1E1FFDA0008010100013F10C50DA1E72BD04C42A8D906321FEA0F84
          39153292A1E0C382C834481DD707D04C23DB67155BC61C781D6286213A479F3E
          AC49B9230122CCC93D24A9C711405103A66F123355CFB01F158C8AF1D1E15645
          19108BEB04189F04B6183EC713DF39D3FE37CB6B71075D61E92932475FCAFF00
          CC30E825CC29BA167F7E7241A006574B7A7FB8B899C8121D0DB0A7E1237DA869
          7DF14B7131C4E924DE5A09100C759313D324328130062B3E0D5692AF50678A32
          ACA582530B64BA78BC8AD049C59B5A6B5D30740E4307B8CBEE6B8C914364CBA1
          C95D1C6945C91BE4C60C611A4E534DEE72E3A4CE88B044F240DCE2CC51182CA0
          1C6D4C7737850CC0922660E5B3468DCB812514276DB4A5EDD98267618013AB4E
          1A6514063AAA4B83DB420BD84846B2988E073E55C9734E840D01415F7C52D68B
          338856081DDDF49995E801161005ACDAD2EF590E0286F69095FBE04A46AF877F
          E7B65229DC6F4DBE2323C8362C152CD4B84B97329439A59DF6C888E550ACD295
          ACAEFE266024E9625C4464DCC0405FB0367C753235CC078AFD0F31EC60D29917
          79712578BBA5E28C7443DA74B9C86971BD2F259ED9C1CB8BE42DE0DA26531753
          17F18BBF71A261561A644857523DDE88F31232884EBFCCA00929D9616EDF3318
          F4137209276D7C18E187041E5B5FC639107697C3C461430A080F77F5C7B87461
          3CBC28AAF6C057E2D4C0CFBC21A6C4231085E8C9CD7651A8738A9008F255225D
          EB79A19AB3967F67ABE913DDE8248678F390AD187DCDA512B016C4B2985DF971
          FDA72279627A1C802D4A2D3A038A2B122AABDF386445098E2133410F7C19AE63
          12BBE435AE9CE197A1DA0E9C6F63097412306966599A380CE2DE25020279AF4E
          9A19AB3967F67ABE8993D199095872E1505C1499E88A7AD8D7A5A9E9B9E6C79C
          62054C11921B222302474B84FA3A6866ACE59FD9EAFA25212F60486314BC8E98
          9D534E048B4CE6A7A6E795E2C463E55C1942624A553B490C75B11580951508AB
          169733E352EDF5E9A19AB3967F67ABEBCDA735E2327889621DCA627EF8858440
          0E207DFF00EE1F186F21CF6C6A65B253C8E9AA99FB8CD92C817A2DD97A37D31F
          A96EA345FADB2D3DA0C4981886AA90A1E9F474D0CD59CB3FB3D5F4582F4C9D81
          89B7B87ED93C14C22BD9D7CE119C8A5F2BFEE4E91A1CBB1894FB64F433568E5B
          D229CB8C93BAC2AE200F3FE96B1530E272104A2D6051BD5E081251155D16BF9F
          C6BE8E9A19AB3967F67ABE8CC31BE32F9D6CFDD183C1CDCB7C1326BD1E07E443
          0152645ED21AE7282E1A042D1058F985C943095B214113E0FF0098AB5D707A38
          28DEE0A6722C086803D64C30E813243C36EFB6B2041095C098D95914FCEC5ACA
          16A0E99702E6B620179E664F432430C6FA64C704F6B3578D0534DCFCBFAC854E
          24CE9D605270A31B9F81AFD60879B4B0EA0BA27A06396436737BBADF19AFA5D0
          A21049961FDDED86801D023D6BFCD582FBD80DF731814A37F82300F870FABFFF
          D9}
        Stretch = True
      end
      object QRLabel6: TQRLabel
        Left = 98
        Top = 6
        Width = 64
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          259.291666666667
          15.875
          169.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TradeSoft'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 97
        Top = 26
        Width = 291
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666667
          256.645833333333
          68.7916666666667
          769.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Av. São Paulo, 1417 - Bairro dos Estados - CEP: 58000-000 João P' +
          'essoa-PN - Fone: (83) 244-9008                               e-M' +
          'ail: tradesoft@tsoft.com.br'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 177
      Width = 618
      Height = 36
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        95.25
        1635.125)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 133
        Top = 0
        Width = 51
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          351.895833333333
          0
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = C_Comp
        DataField = 'ASSUNTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 599
        Top = 0
        Width = 14
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1584.85416666667
          0
          37.0416666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = C_Comp
        DataField = 'DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 133
        Top = 13
        Width = 60
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          351.895833333333
          34.3958333333333
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = C_Comp
        DataField = 'DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object DF_Categoria: TQRDBText
        Left = 5
        Top = 13
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          13.2291666666667
          34.3958333333333
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = C_Comp
        DataField = 'CATEGORIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object Lbl_Horario: TQRLabel
        Left = 5
        Top = 0
        Width = 56
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          13.2291666666667
          0
          148.166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lbl_Horario'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRImg_Concluido: TQRImage
        Left = 118
        Top = 1
        Width = 11
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.4583333333333
          312.208333333333
          2.64583333333333
          29.1041666666667)
        AutoSize = True
        Picture.Data = {
          07544269746D61709E010000424D9E0100000000000036000000280000000B00
          00000A000000010018000000000068010000130B0000130B0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFD3D3D3D3D3D3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFCECECE008400CECECECECECEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF008400008400008400CECECE
          CECECEFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF1A911A008400FFFFFF0084
          00008400CECECECECECEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF008400008400CECECECECECEFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF008400008400CECECED3D3D3FFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008400008400FFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000}
      end
    end
    object bandTurno: TQRGroup
      Left = 38
      Top = 144
      Width = 618
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = bandTurnoBeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        87.3125
        1635.125)
      Expression = 'STR(C_Comp.COMPROMISSO)'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRShape1: TQRShape
        Left = 0
        Top = 1
        Width = 618
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.0208333333333
          0
          2.64583333333333
          1635.125)
        Shape = qrsTopAndBottom
      end
      object LblTurno: TQRLabel
        Left = 5
        Top = 2
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          13.2291666666667
          5.29166666666667
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LblTurno'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 5
        Top = 16
        Width = 44
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          13.2291666666667
          42.3333333333333
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Horário:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 134
        Top = 16
        Width = 48
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          354.541666666667
          42.3333333333333
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Assunto'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 596
        Top = 16
        Width = 18
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1576.91666666667
          42.3333333333333
          47.625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'De:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object bandTituloChild: TQRChildBand
      Left = 38
      Top = 113
      Width = 618
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        82.0208333333333
        1635.125)
      ParentBand = bandTitulo
      object QRLabel5: TQRLabel
        Left = 3
        Top = 8
        Width = 116
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          7.9375
          21.1666666666667
          306.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Agenda do Funcionário:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 123
        Top = 7
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          325.4375
          18.5208333333333
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = C_Comp
        DataField = 'PARA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 422
        Top = 8
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1116.54166666667
          21.1666666666667
          283.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Compromissos do dia:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 531
        Top = 6
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1404.9375
          15.875
          158.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = C_Comp
        DataField = 'DATASEL'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object C_CompProvider: TDataSetProvider
    DataSet = Q_Comp
    Constraints = True
    Options = [poAllowCommandText]
    Left = 290
    Top = 220
  end
  object C_Comp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'C_CompProvider'
    Left = 240
    Top = 220
  end
  object Q_Comp: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select '#39'01/01/2001'#39' As datasel, c.compromisso, uo.loginname As d' +
        'e, '
      
        '       ud.loginname As para, c.data As inicial, c.hora_ampm, c.H' +
        'ORA_TURNO, c.HORA_ORDEM, c.assunto,'
      '       c.hora_ampm_F, c.HORA_TURNO_F, c.HORA_ORDEM_F, '
      '       c.descricao, c.concluido, c.desativado, '
      '       ca.descricao As categoria, ca.cor, ca.cor_fonte'
      
        '      From compromissos c Join usuarios uo On c.usuorigem=uo.usu' +
        'ario'
      '        Join usuarios ud On c.usudestino=ud.usuario'
      '        Left Join categorias ca On ca.categoria=c.categoria')
    Left = 340
    Top = 220
  end
end

object Fmcadche: TFmcadche
  Left = 215
  Top = 122
  Width = 783
  Height = 540
  Caption = 'Cadastro cheque'
  Color = clScrollBar
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 112
    Width = 90
    Height = 13
    Caption = 'COD'#205'GO CHEQUE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 152
    Width = 59
    Height = 13
    Caption = 'N'#186' CHEQUE'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 192
    Width = 97
    Height = 13
    Caption = 'NOME DO CLIENTE'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 232
    Width = 37
    Height = 13
    Caption = 'BANCO'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 272
    Width = 96
    Height = 13
    Caption = 'DATA DO CHEQUE'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 312
    Width = 37
    Height = 13
    Caption = 'VALOR'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 352
    Width = 20
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 8
    Top = 128
    Width = 89
    Height = 25
    DataField = 'CODCHEQUE'
    DataSource = dmBasedados1.DataSource2
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 168
    Width = 144
    Height = 21
    DataField = 'NCHEQUE'
    DataSource = dmBasedados1.DataSource2
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 208
    Width = 632
    Height = 21
    DataField = 'CLIENTE'
    DataSource = dmBasedados1.DataSource2
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 248
    Width = 629
    Height = 21
    DataField = 'BANCO'
    DataSource = dmBasedados1.DataSource2
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 288
    Width = 121
    Height = 21
    DataField = 'DATA'
    DataSource = dmBasedados1.DataSource2
    MaxLength = 8
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 328
    Width = 320
    Height = 21
    DataField = 'VALOR'
    DataSource = dmBasedados1.DataSource2
    MaxLength = 10
    TabOrder = 4
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 368
    Width = 678
    Height = 21
    DataField = 'CPF'
    DataSource = dmBasedados1.DataSource2
    MaxLength = 12
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 424
    Width = 775
    Height = 82
    Align = alBottom
    Color = clScrollBar
    TabOrder = 6
    object SpeedButton1: TSpeedButton
      Left = 24
      Top = 16
      Width = 97
      Height = 49
      Hint = 'OK'
      Caption = 'OK'
      Flat = True
      Glyph.Data = {
        6E110000424D6E11000000000000360000002800000026000000260000000100
        18000000000038110000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFEFEFEFCFCFCFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF0F0EFD8D6D5CDCAC9CBC9C7D6D4
        D3EEEEEEFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F6F5F5DAD7D6CAC5C4C8C4C3C3C4BFC4C4BFCEC9C8C5C0BFD5D3D1F4F4F4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDECEBD1CDCCC7C5C2A6C3AD95CEA5
        91D0A390CEA096C49DB7C5B8CECAC9CECBC9EDECECFEFEFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEEEEEDCDC9C7BBC2B890C79F85CE9E84CE9C82CC987EC9927CC8907BC48C
        9EBEA2D3D2CECDCAC9EEEEEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEECCC8C7AEBFAE81C79479
        C89278C79075C58D72C4886FC2856CC08168BE7C69BD7B86B78CDADAD6D2CECD
        F0F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF3F2F2CDCAC9B0BDAF77C38B6EC1856BBF8065BC7A61BA755EB9735E
        B8705DB86F5AB66B57B3675AB36A7EB587E3E2E0D6D5D4F3F2F2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD3D0CFBABFB776BC
        8463BA785DB67057B26750AE5E4CAC5B4BAD594CAE5A4CAF5C4DAF5C4CAE5B4C
        AC5951AE5F91BA95E1E0DED9D7D5FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEE0DEDDC2C3BD7CB9865AB46C54AF634BAA5843A44E3EA0
        473DA0463DA2463FA44841A84C43AA4F44AB5244A95244A64F4DA95AA8C0A9DB
        D8D7E1E0DFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F0EFC8C4C3
        8AB78F54AF634BA95744A44D3D9D443A973C39953A39963A39993B3A9D3D3BA1
        403DA54440A84A41A74C3FA5493FA14959A863BDC8BCCFCCCBF3F3F2FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFBFBFBD6D2D2AEBCAB56AC6043A54D3FA0473B993F
        399438388F32388D31388F33399234399837399C3A3AA03D3DA5433EA5463DA3
        453B9D433E9F4770A876D6D4D3D8D6D5FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA
        E9E8C6C5C06BAE723EA0463C9C403A983C399133388C2E388A2C3C8C39669064
        508752388E2F399835399C373AA03C3BA33F3BA1403B9D403A983E42A04AA6BB
        A5CFCCCCECEBEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCD2CECD9BB69A43A64B3B9C3D3A
        983B399335388B2D38872B398A3286947D9F9894A7A19D44854238912F399732
        399B353A9E393A9F3C399B3B39963939953A59A15ECACBC6D5D3D1FDFDFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFECEAEAC1C1BC68B06D3C9F3F3B9C3B3A983939913038882B398A307B
        9A769F9794A49B98ACA3A18E9D8739863038922E389630399A33399B36399836
        399335388E323A963D9FB69DC9C5C4F1F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED7D3D2A4BDA445A7
        4D3CA03D3C9E3D3A9937388F2D398B2C7AA176ABA3A0A9A19EABA2A0B0A8A5B6
        AEAD5F905F38872938912C38932E399530399432388F3038892E39893061A365
        C7C4C1D9D7D6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF8F7F7CDC8C76FB07340A5453EA4413EA23F3A98353993
        318DAF89BCB7B4B7B0AFB5ADACB4ACABB3ADABB5ADACA7A99D3D8337388B2838
        8C2A388D2A388D2C388A2C39842B39802C3C8B3AAEBDABCBC7C5FAFAF9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E6E6
        BFC0B959B26340A74441A64440A4413E9F3F9BBF98CFCBC9CAC4C2C4BEBDB0B6
        A887AC83B9B2B0B6AFAEB4ADAC839B7D387D2739872738882838872938832A38
        7F2A387A2A397F2D83A983C3BEBEF4F4F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCDBABC1A953B25E48AD5048AA4C
        43A6456BB46EE1DEDCDBD7D6D6D1CFCBCAC4469844398B2CA3B69BBCB5B4B8B1
        B0B4AEAC468343387F26388226388128387E29387A2A37752A37752B539156C8
        C2C2E7E7E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFBFBFBD3CFCF9AC39D58B66558B5625DB56447AA4B55AE59DBDFD8E4E1DF
        B8CCB53F9A3F398426388225449A44C8C2C0C0BAB9BBB4B39EA595397A2C387E
        26387C2738792A37762A37712A366E2A40843DC3C0BDD7D5D3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF6F5F5CECAC88EC39460
        BB6F62BA6E69BC7359B4623DA33D47A84956AC58399530398726398625388325
        39842692B88EC9C4C2C0BAB9B7B0AF6D906837752937782837752937712A366D
        2A36692A3B7C35B3B6ADD0CDCBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFF5F4F4CFCDCA82C28B63BC7366BC726DBE7862B86C4A
        AE52399E3439912A398C273989263987263986253984253A9436BDC7B8C7C1C0
        BBB4B3ABA8A1457B43377128377129366D2A366A2A35662A387330A2AE9CCCC9
        C7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF5F4
        F4D4D1CE7AC08665BE7668BD776EBF7B66BB7252B15A41A9463BA23938972E39
        8E283989263987253985253883255FA65FCCC9C6BEB8B7B4ADACA0A297366B30
        366C2A366A2A35662A35622A366D2E95A991C8C5C3FCFCFCFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF5F4F4D6D5D175BF8268BF786ABF
        7971C17F6BBE785AB66548AD4F41A9453EA6403AA23838962E388D2839882639
        852539892A92B78FC3BDBCB5AFAEAFA9A67F917835682D35682A35642A34602A
        35682D8DA58AC6C1BFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFF5F4F4D8D7D373BF8169C07B6EC07C76C38374C28168BC7559B5
        634FB1584AAE5244AB4A3FA6413AA037399931388F2A3987263A9032BBBFB4B6
        B0AFAFA9A6AEA8A55B7D5835632B35622A335D2A35652C89A285C5C1BFFAFAFA
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF5F4F4DAD9D5
        73C0836AC17D70C27F7DC78B84C88F7EC68971C07D68BC7362B96C59B4624CAF
        5542A9473CA43E3A9F38399B353993305FA65FB6B4AFB4ADACB3ADABA8A69F3C
        703A35642A335D2A35652C87A184C6C0BFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFF7F6F5E0DFDD76C2866CC27F73C48385CA91
        90CE9A93CE9B8BCB9483C78D7BC38570BF7C62B86B53B15A44AB4A3CA33D3A9D
        3839973539943379AB78B8B4B0B8B2B1B5B0AD467E45366B2A35642A356A2C88
        A386C5C0BEFBFBFBFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFF9F8F8E8E8E67EC58D6FC48374C58685CB9396D09F9FD4A7A1D4A89BD2A2
        93CD9A87C99075C18065B96E51B15A40A8453BA03B3999373993323A90367BA8
        79B3B6AC83A07E39772F366C2A35682A36702D8FA78CC5C0BEFBFBFBFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAEFF0EF8ECC9A78
        C88B7AC88B84CB9395D19FA5D6ADB1D9B8B1D9B8A8D6AF9AD1A187C99072C07E
        5EB76948AC4F3DA3403A9A39399233388A3039832D397F2E38792B37732A3770
        2A37702B3B7F359CAF98C9C5C3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFAF9F9F3F2F1CBD8CCB0D3B6A1D2AA95CF9F9BD3A5A8
        D7AFB7DCBEBEDEC4B6DABCA5D5AC90CC987BC48666BA714DAE563DA3413A9939
        39903239872E39802C397B2B38782C397C30458D46639C6688AC87BDBCB7D1CE
        CCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEF2F1F0F3F2F1F0EFEEE8E7E5D7DFD9BBD0BEB5D8BBB9DCC0BFDEC4B7DBBDA6
        D6AD91CE9A7CC58766BB724CAE553DA13F399637398D3039842D397E2D3B8434
        56965794AE91B7BAB0C2BDBCC5C0C0C7C3C1E8E7E6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F5
        F5EFEFEEE6E4E4D6D5D3C5D2C5BADAC0AFD9B79FD4A68CCB9576C28362B96D49
        AC513B9F3E3994353989303987324C954F9CB299C2BEBCC9C4C4DBD8D7EFEEEE
        FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F9E9E8E7D9D6
        D4C9C9C5B6D0B89AD1A282C88E70C07D5CB76744AA4C3B9D3B3993353F954282
        AB81BEBDB8CAC5C4E5E3E3FBFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7F7E0DDDCCAC6C4B4CAB486C9
        926BBF7957B56343A94B3DA1414EA353A1B59EC6C1BFD7D5D4F7F6F6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEEAE8E8CAC5C5B6C5B486C48D68BD7658B26378B3
        7DB5BEB0C8C2C1E9E7E6FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF5F4F4D3CFCEC8C2C1BEBBB8C0BCB9C5C1BFCFCAC9F5F4F4FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFAEBE9E9
        CAC5C5DFDDDCF0EEEEF9F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 648
      Top = 16
      Width = 70
      Height = 49
      Hint = 'Sair'
      Flat = True
      Glyph.Data = {
        F6120000424DF612000000000000360000002800000028000000280000000100
        180000000000C0120000232E0000232E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFF6F9FBEF
        F3F8E4EBF3D8E3EDCDDAE7BECFE0B1C5D9A5BBD397B1CC8BA7C582A0C07898BB
        6187AF4371A12E629733649838669939669AF6F5F5F5F5F5F4F3F3F2F2F1F1F1
        F0F0F0EFEFEFEEEFEFEEEFEEEEEFEEEEEFEEEEEFEEEDEEEEEDEEEEEDEEEEEDEE
        EEEDEEEEEDEEEEEDEEEDEDEEEDEDEEEDEDECEDEEE4E9EEDBE5EED2DFEBC7D7E6
        BDD1E2B0C6DBA4BED598B5D08CACCA81A3C4799DBF7297BB5B87B04073A32E65
        9933669938669939669ACFCDCCCDCBCAC6C4C1BEBCB9B7B6B3B2B1AEAEACA9AE
        ACA9ADABA8ACAAA8ACAAA8ACAAA7ABAAA7AAA9A6AAA8A5AAA8A5A9A8A5A9A7A4
        A8A6A3A8A6A3A8A6A3A4A6A898AAB98EADC88AADCB85AACB81A8CA79A4C874A0
        C56F9DC3699AC16497BF5F94BE5B91BC4D86B43D7AAA3170A2346C9F39689A3A
        679AA9A5A2A5A19F97948F8A86817E7B7675726D6D6A656D69646B67636A6662
        6A666269666068666066645E66635D66635D65625D65615C635F5A625F59625F
        595C60634C6A834275A1427AAB447EAF4480B24782B44784B54986B84A87B84D
        8ABB4D8ABC4E8BBD4887B84282B2387AAC3672A53B6B9D3B689BBCB9B7B9B6B4
        AEACA8A4A19D8D8A8573706B605D57696560706C66716E68716E68706D67706D
        676F6B656E6A646F6B656E6A646D69636C68626B67616C686263676947698533
        6C9D3474A93E7EB24787B84A88BB4D8ABC508CBD528EBE5490C05591C15591C2
        4E8CBC4585B63C7DAE3875A63B6C9E3B699CE2E1E0E1E0DFDDDBDAD8D7D5B3B1
        AE83817C65625C78746E8C8883908C87908C87908C87918D89908C87908C8790
        8C87908C87908C878F8B878F8B87908C8784898B5B7C973771A33D7CB0518EBD
        629BC7649DC8659DC9669DC9659DCA649DCA639BC9609AC85692C24888B83C7E
        AF3875A73B6C9E3B699CFFFFFFFFFFFFFFFFFFFFFFFFD0CFCD908E8A68645E84
        817BA19D9AA5A39EA0A19A9EA098A3A39DA8A4A1A9A5A2AAA6A3AAA6A3AAA6A3
        AAA6A3AAA6A3ABA7A49DA1A56B8BA63D77A84683B6629AC677ACD376ABD474AB
        D373A9D271A7D26EA4D16BA3CF67A0CE5B96C54B8ABA3D7EAF3876A73B6D9F3B
        6A9DFFFFFFFFFFFFFFFFFFFFFFFFD0CFCD928F8B6A666085817CA19D9A989D92
        81947F7790758D9989A2A29CA7A5A2A9A5A2AAA6A3AAA6A3AAA6A3AAA6A3ABA7
        A49DA1A56D8CA73F79AA4785B8649BC778ADD471A9D26AA4D066A2CE65A0CE61
        9ECD609DCD5F9DCC5594C44989BA3E7FB03976A83B6FA13B6C9FFFFFFFFFFFFF
        FFFFFFFFFFFFD1D0CE93918D6C686286827DA09C998A9786638765517F557690
        759C9F97A7A4A1A8A4A1A9A5A2A9A5A2A9A5A2A9A5A2AAA6A39DA1A56E8DA840
        7BAC4987BA669DC879AED46BA7D05F9ECC5A9BCA579ACA5597C95697CA5897CA
        5091C24788B93F80B03977A93B6FA23C6DA0FFFFFFFFFFFFFFFFFFFFFFFFD1D0
        CE94928D6D696386827DA09C998795835C855E467B4A6086627D917A8F9A8B9D
        A098A9A5A2A9A5A2A9A5A2A9A5A2AAA6A39DA1A56F8EA9437CAE4C88BC699FC9
        7BAFD56DA7D15E9ECC599BCA569ACA5497C95698CA5898CA5191C34889B94080
        B03A77AA3B6FA33C6EA1FFFFFFFFFFFFFFFFFFFFFFFFD2D1CF95928E6E6A6487
        837EA09C998695835D855F437B474C7F4F568258708D6F909A8AA8A4A1A8A4A1
        A8A4A1A8A4A1A9A5A29DA1A3708EAA457EB04F8ABE6BA1CB7DB1D56FA9D261A0
        CD5C9DCB589CCA569AC9589ACA5A9ACA5393C34989BA4081B13B77AA3B71A43C
        70A2ECF3ECECF3ECECF3ECECF3ECC2C9C18B9187686D617E827894988F7D937C
        5A875D427D46407B434079405684597E937C9EA098A2A29CA7A3A0A8A4A1A9A5
        A29DA1A3718FAB4880B2528CBE6DA2CC7FB2D672AAD364A1CE5F9ECC5B9DCB59
        9ACA5B9BCB5D9BCB5494C44A8ABA4181B13B78AB3B72A43C70A39FC2A09FC2A0
        9FC1A09EC09F84A9876389664F74525A7F5D668B685E8B614F89554787494585
        484484454E8753628A647690748C9888A3A19CA8A4A1A9A5A29DA1A37390AC4B
        81B4558EC070A4CE81B4D774ACD366A3D061A0CE5E9ECD5C9DCC5D9DCC5F9DCC
        5696C44C8BBB4182B23D7AAD3B74A63C72A5539153539153528F53518D524B88
        4D4481463E7B403F7C41407D42438245478B4B4A914E49904D488F4B47894B47
        814B4F7F52758F739D9F97A7A3A0A8A4A19D9FA37591AC4C83B55790C172A7CF
        83B6D876AED468A5D163A2CF60A0CE5E9ECD5F9FCD619FCD5897C54D8CBB4282
        B33E7BAE3C75A83C73A7408742418944468F4C4C95534E96544C95524B94514B
        925049904E4D9553539D5A58A25F57A15D55A05B4E965447894B47814B628B64
        7F937C909A8A9DA0989D9FA37692AD4F85B75A92C375A9D086B7D979B0D56AA8
        D265A4D063A2CF60A1CF60A3D160A5D2579DC94D8EBD4383B33E7CAE3D77AA3D
        75A9418944448D48559F5D6AB0736FB3786DB2766BB17469B07367AF7069B072
        6BB2746CB4756AB37368B2725DA6644E965448894C4F875459855B728E71909A
        8B9D9FA37793AE5287B95D94C477ABD188B9D97BB2D66EAAD268A7D165A5D162
        A4D161AAD55FAEDA57A2CE4D92BF4483B4407EAE3E79AC3E77AB418A4446914B
        63AA6B82C38D89C79387C79184C58F82C48D80C48B7FC38A7DC2887BC1867AC0
        8578BF836AB47359A3604C945147894A437E455B865C80947E969D9C7593AC54
        88BB6096C57AACD28ABADA7EB3D671ACD36AA9D366A9D363AAD560B1DB5BB6E1
        54A9D54B95C24585B54180B03F7AAE3F79AD428C4647934D65AC6D84C5908AC8
        9585C69182C48D80C48B7EC38A7CC2887AC18678C08478BF8377BF8271B97A67
        B16F5DA66452985748894B548A586C8F6D7A9182678D9F5489BA6397C77DAED3
        8DBCDB81B5D874AED56CADD666AFD860B2DC5ABAE454C0EA4EB3DE499BC74388
        B74182B2417CB0417AAE438E4848944E67AE6F87C6928BC99683C58F7FC38B7D
        C2897BC18779C08577BF8375BE8176BE8175BE8176BE8176BD7F6FB8795EA665
        4D95524E8D5357895B5D86695988915389B8659AC97FB0D48FBDDC83B7D976B0
        D66EB0D865B5DD5EB9E255C2EB4CC9F248BBE747A1CD418AB94184B4427DB142
        7CB044904949965168AF7289C6948DCA9988C89484C68F82C58E80C48B7EC38A
        7CC2887BC1877BC1867AC08577BD8171B97B69B2725AA2604D9150528D57628C
        636B8C76608C99578BBA689BCA81B1D591BEDD86B9DA79B2D671B2D969B5DC63
        B8E059C1E950C9F14BBAE549A0CB4489B94284B5427EB2437EB244914B4A9852
        6AB1758BC89791CC9D8DCA998CCA978AC99588C79387C79185C69083C58E82C4
        8D81C48C76BB7F67AF705AA36051955749894D598B5D77927588968E7292A75D
        8FBF6A9DCC83B3D793C0DE88BBDB7CB4D776B2D870B3D96AB5DD61BEE657C5EC
        51B6E04B9DC84689B74585B54580B4457FB445924B4B995267AF7185C4908BC9
        988AC89689C79488C69286C59086C59086C58F86C59084C48E81C38C72B77B5E
        A5664F96564E8E544D8552668C688A98869C9FA27E98B36191C36D9FCE85B4D8
        95C2DF8ABCDC7FB7D87AB4D876B2D771B2D968B9E160C0E857B2DC519BC54988
        B64885B54882B64781B646944D49985157A36167AF716AB27569B17468B07267
        AE7065AC6E6AB0736FB47873B87D72B67B70B47965AA6C569B5D5091565F9163
        6E906F81957F969C909C9FA27F99B46393C46FA0D087B6DA97C4E08DBEDD82B9
        DA7DB6D87AB4D876B4D972B8DE6CBBE162ADD65599C34B89B74A86B74984B849
        83B847964E47964F4998514B99534B99524A975149965148944F47934E4E9956
        59A36061A96A60A7685EA566579D5E4E92544F8B54709371919A8D9D9E97A19F
        9A9C9FA18099B56594C671A2D289B8DB99C6E08FC0DE84BBDB7FB8D97DB6D87B
        B5D87BB6D97AB6DA6DA8D05A97C24D8AB84B87B94A86BA4B85BA7EB6837EB683
        7DB5827CB3816FA7745E9664528B58568D5C59905F59945F559A5C549E5C559D
        5C559B5B59975E5D92626790698297809C9E97A4A09DA4A09D9C9FA1819AB567
        95C774A3D38CB9DB9CC7E192C1DF87BBDC82BADA80B8D97EB7D87FB7D87FB6D8
        71A9CF5D98C14E8BB84E88BA4D88BC4D88BCC8E0CAC8E0CAC7DFCAC7DFC9AAC3
        AD859D866D836C778D747F957D70967258955F49944F4C94524E94545F936274
        9676899785959B90A19E9AA39F9CA39F9C9C9EA1829AB66996C776A6D38EBBDC
        9EC9E294C3DF89BDDC84BCDA82BADA80B9D981B9D981B8D973ABCF5E99C24F8B
        B9508ABA5089BE5089BEFFFFFFFFFFFFFFFFFFFFFFFFD8D7D6A5A29E827F7990
        8C879D99968297815B9161458E4B4A8E4F508F566A936B899986A29E9BA39F9C
        A39F9CA39F9CA39F9C9C9EA1839BB66C97C878A7D490BCDCA0CAE296C4E08CBE
        DD87BDDB85BBDB83BADA84BADA84BADA75ACD05F9AC2508CB9518CBB538ABF52
        8BC0FFFFFFFFFFFFFFFFFFFFFFFFD9D8D6A5A39F83807A918D899D9996849883
        6193674D91545E92636F947181977F939B8FA29E9BA39F9CA39F9CA39F9CA39F
        9C9C9EA1849CB76E9ACA7AA9D692BDDEA2CCE398C6E18EC0DF89BEDD87BCDC85
        BCDB86BCDB87BCDB77AED1609BC2518DBA538DBD558CC1558CC2FFFFFFFFFFFF
        FFFFFFFFFFFFD9D8D7A7A5A084817B918D899C989586998567956B57935E7397
        748F9A8B999B949D9D97A19D9AA29E9BA29E9BA29E9BA29E9B9B9EA0859CB770
        9ACC7CABD794BEDFA5CDE39AC8E190C2E08BC0DE89BEDD87BDDC88BDDC89BDDC
        79B0D2639CC2528EBA558FBF578EC3588EC4FFFFFFFFFFFFFFFFFFFFFFFFDAD9
        D7A7A5A185817C918D899C98958E9A8B7897796E9670849982999B94A09C99A0
        9D99A19D9AA29E9BA29E9BA29E9BA29E9B9B9EA0859CB7719CCD7EACD795BFDF
        A7CEE49FCBE398C7E193C4E090C2DF8CC0DE8CBFDD8CBFDD7BB1D2649DC3538F
        BA5790BF5A91C55B91C6FFFFFFFFFFFFFFFFFFFFFFFFDAD9D7A8A6A286827D91
        8E899C9895989A928E998B8A9987939B8F9D9C97A09C99A09C99A09C99A19D9A
        A19D9AA19D9AA19D9A9B9DA0879DB8719DCD7FADD896C0DFA9D0E5A6CEE5A2CD
        E49DCAE297C6E192C4E091C3DF8FC1DD7DB3D3669EC3558FBB5991C05C93C65D
        93C7FFFFFFFFFFFFFFFFFFFFFFFFDAD9D7A9A7A287837E918D899A96939C9895
        9C98959C98959D99969D99969D99969D99969D99969D99969D99969D99969D99
        9698999D849BB6729ECE7EADD993BEDFA3CCE4A6CDE5A7CEE5A2CCE49DCAE298
        C8E296C6E193C4DF80B5D4689FC45690BB5A92C15F94C76095C9FFFFFFFFFFFF
        FFFFFFFFFFFFDBDAD8AAA7A387837E8C8883918D89918E89918E89918E89918E
        89918D89918D89908C87908C87908C878F8B878F8B878E8A868A8B8F7E93AE71
        9DCD78A7D883B1DB8DB9DE92BDDF97C1E09BC5E29ECAE3A0CDE49FCCE39DCAE2
        87B9D66BA1C65791BC5C93C36296C96396CBFFFFFFFFFFFFFFFFFFFFFFFFDBDA
        D8ABA8A587837E87837E87837E87837E87837E86827D85817C84817B83807A82
        7F79827F79817E78817D777F7C767E7B757C7D80768CA6709ACB71A1D673A2D7
        76A6DA7FADDA88B4DC93BEE09FC9E3A9D2E6A8D1E5A7CFE48EBDD86EA3C75892
        BC5D94C46397CB6598CDFFFFFFFFFFFFFFFFFFFFFFFFE6E5E4C4C2C0ABA8A5AA
        A7A4AAA7A3A9A7A2A9A7A2A8A6A2A7A5A1A7A5A0A7A4A0A5A39FA5A29EA4A29E
        A4A19DA3A09CA2A09BA0A1A39EADBF9BB8DB9ABCE39ABCE397BBE38FB6E188B3
        DD8AB6DE91BDE098C3E19AC5E19DC6E189B7D66CA1C65992BD5F95C56699CC67
        9ACFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F4E6E5E4DBDAD8DBDAD8DBD9D8DAD9D7
        DAD9D7DAD9D7DAD9D7D9D8D7D9D8D6D9D8D6D8D7D6D8D7D5D8D7D5D8D7D5D7D6
        D4D7D7D8D5DCE4D4E1F0D4E2F3D4E2F3CCDDF1ABC8E88CB4DF82AEDD80AFDC80
        AFDB87B5DC8DBADD7FAFD2699DC55A93BD6196C6689BCE6A9CD1FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF4F8FCC7DAF09BBDE489B0DE81ABDC7CA8DA82AFDB87B3DB
        7AAAD3689DC65C94C06398C86B9CD06D9DD1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F9FBFEE0EBF7C7DAF0BED4EDB9D0ECB2CCEAA7C7E69DC0E289B2DA73A3CF6397
        C8689ACD6C9DD26E9ED3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF9FBFEF4F8
        FCF2F7FCF2F6FCEAF1F9CEDEF1B3CDEA99BAE17EA8D76A9CD26C9CD36E9ED26E
        9ED3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
        FAFDD8E5F4B8D0EB9CBCE380A9DA6C9CD46D9ED46F9ED36F9ED3}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 97
    Align = alTop
    Color = clScrollBar
    TabOrder = 7
    object Label8: TLabel
      Left = 56
      Top = 32
      Width = 211
      Height = 25
      Caption = 'Cadastro de cheque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
  end
end

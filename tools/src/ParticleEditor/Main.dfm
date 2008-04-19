object MainFrm: TMainFrm
  Left = 0
  Top = 0
  Caption = 'Particle Editor'
  ClientHeight = 624
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 250
    Top = 33
    Height = 572
    Color = clGray
    ParentColor = False
    ExplicitLeft = 24
    ExplicitTop = 288
    ExplicitHeight = 100
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 796
    Height = 33
    ButtonHeight = 34
    ButtonWidth = 34
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    EdgeBorders = [ebBottom]
    Images = ImageList1
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton4: TToolButton
      Left = 34
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 42
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 1
      OnClick = ToolButton3Click
    end
    object ToolButton2: TToolButton
      Left = 76
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 2
      OnClick = ToolButton2Click
    end
  end
  object Surface: TPanel
    Left = 253
    Top = 33
    Width = 543
    Height = 572
    Align = alClient
    BevelOuter = bvNone
    Color = clBlack
    TabOrder = 1
    OnMouseDown = SurfaceMouseDown
    OnMouseMove = SurfaceMouseMove
    OnResize = SurfaceResize
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 250
    Height = 572
    Align = alLeft
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 2
      Top = 2
      Width = 246
      Height = 81
      Align = alTop
      Caption = 'Basic settings'
      TabOrder = 0
      DesignSize = (
        246
        81)
      object Label1: TLabel
        Left = 11
        Top = 24
        Width = 77
        Height = 13
        Caption = 'Particle class:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cmb_classes: TComboBox
        Left = 11
        Top = 43
        Width = 219
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemHeight = 13
        TabOrder = 0
        OnChange = cmb_classesChange
      end
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 93
      Width = 246
      Height = 477
      ActivePage = tbs_Particle
      Align = alClient
      TabOrder = 1
      object tbs_Particle: TTabSheet
        Caption = 'Default Particle'
      end
      object tbs_Colors: TTabSheet
        Caption = 'Colors'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox4: TGroupBox
          Left = 0
          Top = 0
          Width = 238
          Height = 57
          Align = alTop
          Caption = 'Preview'
          TabOrder = 0
          DesignSize = (
            238
            57)
          object pntb_pre: TPaintBox
            Left = 4
            Top = 18
            Width = 230
            Height = 31
            Anchors = [akLeft, akTop, akRight]
            OnPaint = pntb_prePaint
          end
        end
        object GroupBox5: TGroupBox
          Left = 0
          Top = 57
          Width = 238
          Height = 235
          Align = alClient
          Caption = 'Color control'
          TabOrder = 1
          DesignSize = (
            238
            235)
          object lb_colors: TListBox
            Left = 5
            Top = 24
            Width = 230
            Height = 169
            Style = lbOwnerDrawFixed
            Anchors = [akLeft, akTop, akBottom]
            ItemHeight = 13
            TabOrder = 0
            OnClick = lb_colorsClick
            OnDrawItem = lb_colorsDrawItem
          end
          object btn_delete: TButton
            Left = 160
            Top = 199
            Width = 75
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = 'Delete color'
            Enabled = False
            TabOrder = 2
            OnClick = btn_deleteClick
          end
          object btn_add: TButton
            Left = 80
            Top = 199
            Width = 74
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = 'Add color'
            TabOrder = 1
            OnClick = btn_addClick
          end
        end
        object GroupBox6: TGroupBox
          Left = 0
          Top = 292
          Width = 238
          Height = 157
          Align = alBottom
          Caption = 'Mixer'
          TabOrder = 2
          DesignSize = (
            238
            157)
          object Label5: TLabel
            Left = 6
            Top = 36
            Width = 11
            Height = 13
            Caption = 'R:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 7
            Top = 67
            Width = 11
            Height = 13
            Caption = 'G:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 7
            Top = 98
            Width = 10
            Height = 13
            Caption = 'B:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 6
            Top = 129
            Width = 11
            Height = 13
            Caption = 'A:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object pnl_r: TPanel
            Left = 23
            Top = 24
            Width = 42
            Height = 25
            BevelOuter = bvLowered
            BevelWidth = 2
            Color = clBlack
            ParentBackground = False
            TabOrder = 0
          end
          object pnl_g: TPanel
            Left = 23
            Top = 55
            Width = 42
            Height = 25
            BevelOuter = bvLowered
            BevelWidth = 2
            Color = clBlack
            ParentBackground = False
            TabOrder = 2
          end
          object pnl_b: TPanel
            Left = 23
            Top = 86
            Width = 42
            Height = 25
            BevelOuter = bvLowered
            BevelWidth = 2
            Color = clBlack
            ParentBackground = False
            TabOrder = 4
          end
          object pnl_a: TPanel
            Left = 23
            Top = 117
            Width = 42
            Height = 25
            BevelOuter = bvLowered
            BevelWidth = 2
            Color = clBlack
            ParentBackground = False
            TabOrder = 6
            object pntb_a: TPaintBox
              Left = 2
              Top = 2
              Width = 38
              Height = 21
              Align = alClient
              Color = clBlack
              ParentColor = False
              OnPaint = trbr_rChange
              ExplicitLeft = 16
              ExplicitTop = 8
              ExplicitWidth = 105
              ExplicitHeight = 105
            end
          end
          object trbr_r: TTrackBar
            Left = 71
            Top = 24
            Width = 164
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Max = 255
            Position = 255
            PositionToolTip = ptTop
            TabOrder = 1
            TickMarks = tmBoth
            TickStyle = tsNone
            OnChange = trbr_rChange
          end
          object trbr_g: TTrackBar
            Left = 71
            Top = 55
            Width = 164
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Max = 255
            Position = 255
            PositionToolTip = ptTop
            TabOrder = 3
            TickMarks = tmBoth
            TickStyle = tsNone
            OnChange = trbr_rChange
          end
          object trbr_b: TTrackBar
            Left = 71
            Top = 86
            Width = 164
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Max = 255
            Position = 255
            PositionToolTip = ptTop
            TabOrder = 5
            TickMarks = tmBoth
            TickStyle = tsNone
            OnChange = trbr_rChange
          end
          object trbr_a: TTrackBar
            Left = 71
            Top = 117
            Width = 164
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Max = 255
            Position = 255
            PositionToolTip = ptTop
            TabOrder = 7
            TickMarks = tmBoth
            TickStyle = tsNone
            OnChange = trbr_rChange
          end
        end
      end
      object tbs_Editor: TTabSheet
        Caption = 'Editor'
        ImageIndex = 2
        object Label2: TLabel
          Left = 0
          Top = 285
          Width = 238
          Height = 68
          Align = alTop
          AutoSize = False
          Caption = 
            'Please notice, that settings on this page are not stored in the ' +
            'particle data file!'
          WordWrap = True
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 238
          Height = 97
          Align = alTop
          Caption = 'Image'
          TabOrder = 0
          DesignSize = (
            238
            97)
          object Button1: TButton
            Left = 82
            Top = 24
            Width = 144
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Load...'
            TabOrder = 0
            OnClick = Button1Click
          end
          object Panel1: TPanel
            Left = 7
            Top = 24
            Width = 69
            Height = 65
            BevelOuter = bvLowered
            Color = clBlack
            ParentBackground = False
            TabOrder = 1
            object img_part: TImage
              Left = 1
              Top = 1
              Width = 67
              Height = 63
              Align = alClient
              Center = True
              Picture.Data = {
                07544269746D617036030000424D360300000000000036000000280000001000
                000010000000010018000000000000030000880B0000880B0000000000000000
                0000000000000000000000000000000000010101040404050505050505040404
                0101010000000000000000000000000000000000000000000000000101010707
                070E0E0E1414141717171717171414140E0E0E07070701010100000000000000
                00000000000000000202020B0B0B171717252525313131383838383838313131
                2525251717170B0B0B0202020000000000000000000101010B0B0B1B1B1B3131
                314848485C5C5C6767676767675C5C5C4848483131311B1B1B0B0B0B01010100
                00000000000707071717173131315252527373738D8D8D9C9C9C9C9C9C8D8D8D
                7373735252523131311717170707070000000101010E0E0E2525254848487373
                739B9B9BB9B9B9C9C9C9C9C9C9B9B9B99B9B9B7373734848482525250E0E0E01
                01010404041414143131315C5C5C8D8D8DB9B9B9D9D9D9E8E8E8E8E8E8D9D9D9
                B9B9B98D8D8D5C5C5C3131311414140404040505051717173838386767679C9C
                9CC9C9C9E8E8E8F7F7F7F7F7F7E8E8E8C9C9C99C9C9C67676738383817171705
                05050505051717173838386767679C9C9CC9C9C9E8E8E8F7F7F7F7F7F7E8E8E8
                C9C9C99C9C9C6767673838381717170505050404041414143131315C5C5C8D8D
                8DB9B9B9D9D9D9E8E8E8E8E8E8D9D9D9B9B9B98D8D8D5C5C5C31313114141404
                04040101010E0E0E2525254848487373739B9B9BB9B9B9C9C9C9C9C9C9B9B9B9
                9B9B9B7373734848482525250E0E0E0101010000000707071717173131315252
                527373738D8D8D9C9C9C9C9C9C8D8D8D73737352525231313117171707070700
                00000000000101010B0B0B1B1B1B3131314848485C5C5C6767676767675C5C5C
                4848483131311B1B1B0B0B0B0101010000000000000000000202020B0B0B1717
                172525253131313838383838383131312525251717170B0B0B02020200000000
                00000000000000000000000101010707070E0E0E141414171717171717141414
                0E0E0E0707070101010000000000000000000000000000000000000000000000
                0001010104040405050505050504040401010100000000000000000000000000
                0000}
              Proportional = True
              ExplicitLeft = -1
              ExplicitWidth = 63
              ExplicitHeight = 69
            end
          end
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 97
          Width = 238
          Height = 188
          Align = alTop
          Caption = 'Creation'
          TabOrder = 1
          object Label3: TLabel
            Left = 30
            Top = 47
            Width = 132
            Height = 13
            Caption = 'Emits a particle every x ms:'
          end
          object Label4: TLabel
            Left = 30
            Top = 119
            Width = 132
            Height = 29
            AutoSize = False
            Caption = 'When there are no particles, emit x'
            WordWrap = True
          end
          object rb_emittime: TRadioButton
            Left = 14
            Top = 24
            Width = 151
            Height = 17
            Caption = 'Emit by time'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object edt_emittime: TEdit
            Left = 30
            Top = 66
            Width = 92
            Height = 21
            TabOrder = 1
            Text = '10'
            OnChange = edt_emitcountChange
          end
          object edt_emitcount: TEdit
            Left = 30
            Top = 154
            Width = 92
            Height = 21
            TabOrder = 3
            Text = '100'
            OnChange = edt_emitcountChange
          end
          object rb_emitcount: TRadioButton
            Left = 14
            Top = 96
            Width = 151
            Height = 17
            Caption = 'Emit by particle count'
            TabOrder = 2
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 83
      Width = 246
      Height = 10
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 605
    Width = 796
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object MainMenu1: TMainMenu
    Left = 264
    Top = 40
    object File1: TMenuItem
      Caption = 'File'
      object New1: TMenuItem
        Caption = 'New'
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Open1: TMenuItem
        Caption = 'Open...'
        ImageIndex = 2
        ShortCut = 16463
        OnClick = ToolButton2Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Save1: TMenuItem
        Caption = 'Save'
        ImageIndex = 1
        ShortCut = 16467
        OnClick = ToolButton2Click
      end
      object Saveas1: TMenuItem
        Caption = 'Save as...'
        OnClick = Saveas1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
    object Image1: TMenuItem
      Caption = 'Image'
      object Loadparticleimage1: TMenuItem
        Caption = 'Load particle image...'
        OnClick = Button1Click
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object Grid1: TMenuItem
        Caption = 'Grid'
        Checked = True
        OnClick = Boundsrect1Click
      end
      object Particleorign1: TMenuItem
        Caption = 'Particle origin'
        Checked = True
        OnClick = Boundsrect1Click
      end
      object Boundsrect1: TMenuItem
        Caption = 'Boundsrect'
        Checked = True
        OnClick = Boundsrect1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Setbackgroundcolor1: TMenuItem
        Caption = 'Set background color...'
        OnClick = Setbackgroundcolor1Click
      end
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 296
    Top = 40
    Bitmap = {
      494C010103000400040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      000000000000000000000000000000000000000000000000000000000000AB7E
      7900B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B781830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B9ED100019ACF00019A
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AE7A
      7F00F3DDC200F5E0C600F4DEC200F0D6B700F1D7B300F1D5AD00F1D4AB00F0D0
      A000EFCE9B00EFCD9900EFCD9900EFCD9900EFCD9900EFCD9900EFCD9900EFCD
      9900EFCD9900B881840000000000000000000000000000000000006600000066
      00000066000000660000A29A8B00A29A8B00A29A8B00A29A8B00A29A8B00A29A
      8B00A29A8B00A29A8B00A29A8B00A29A8B00A29A8B0000660000006600000066
      000000660000000000000000000000000000019ACF006ACEF1008EE9F8003FB6
      E200019ACF00019ACF00019ACF00019ACF00019ACF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AE7A
      7F00F5E0C600F6E3CC00F4DEC200F2DCC200F1D7B300F1D6B100F1D4AB00EED1
      A500EFCF9E00EFCD9900EECC9700EECC9700EECC9700EECC9700EECC9700EFCD
      9900EDCB9600B881840000000000000000000000000000660000009800000098
      00000098000000980000768D5800E7E2E100CFCDCD00CFCDCD00E0DCDB00F5F1
      EF00F5F1EF00EAE6E500EAE6E500EAE6E50072904C003D6D0E003E7B12000098
      000000980000006600000000000000000000019ACF002EAEDC00C0F2FA0074D8
      F90076D8F90076D8F90072D2F5004EBEE6003FB6E200019ACF00019ACF00019A
      CF00019ACF00019ACF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AE7A
      7F00F6E3CC00F6E5CF00F5E2C900F4DEC200F2DCC200F0D6B700F1D6B100F1D4
      AB00EED1A500F0D0A000EFCD9900EECC9700EECC9700EECC9700EECC9700EFCD
      9900EDCB9600B881840000000000000000000000000000660000009800000098
      0000009800000098000046791900E7E2E100006600000066000002980200F0EC
      EA00FEFEFE00F9F8F600F9F8F600F9F8F60072904C003D6D0E003E7B12000098
      000000980000006600000000000000000000019ACF000B9ED100ACEEF80080DF
      F80073D4F60073D4F60075D7F80076D8F90078D9F80076D8F90074D5F7006ACE
      F10047BAE4002EAEDC00019ACF00019ACF00019ACF00019ACF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AE7A
      7F00F7E6D200F7E7D400F6E3CC00F5E0C600F4DEC200F2DCC200F1D7B300F1D6
      B100F1D4AB00EED1A500F0D0A000EECC9800EECC9700EECC9700EECC9700EFCD
      9900EDCB9600B881840000000000000000000000000000660000009800000098
      0000009800000098000046791900E7E2E100006600000066000002980200E4DF
      DE00FBFAF800FBFAF800FDFEFE00FDFEFE0072904C003D6D0E003E7B12000098
      000000980000006600000000000000000000019ACF003FB6E20047BAE400ACEE
      F8006ED1F40073D4F60073D4F60073D4F60073D4F60073D4F60074D5F70076D8
      F90076D8F90078D9F80076D8F90074D5F7004EBEE60047BAE400019ACF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AE7A
      7F00F7E8D600F8EBDB00F7E7D400F6E3CC00F5E0C600F4DEC200F2DCC200F1D7
      B300F1D6B100F1D4AB00EFD2A800F0D0A000EFCD9900EECC9700EECC9700EFCD
      9900EDCB9600B881840000000000000000000000000000660000009800000098
      0000009800000098000046791900E7E2E100006600000066000002980200D0CE
      CD00F3EFED00F9F8F600FEFEFE00FDFEFE0072904C003D6D0E003E7B12000098
      000000980000006600000000000000000000019ACF006ED1F4001CA5D600C9F4
      FB0074D8F90075D7F80075D7F80075D7F80075D7F80075D7F80075D7F80075D7
      F80075D7F80075D7F80075D7F80078D9F8007BDBF8005EC8EE0073D4F600019A
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AE7A
      7F00F8EBDB00F9EEE100F8EAD900F7E6D200F6E3CC00F5E2C900F4DEC200F2DC
      C200F1D7B300F1D6B100F1D4AB00EFD2A800F0D0A000EECC9800EECC9700EFCD
      9900EDCB9600B881840000000000000000000000000000660000009800000098
      0000009800000098000046791900E7E2E100006600000066000002980200ADBA
      A500E2DEDD00F0ECEA00FEFEFE00FDFEFE0072904C003D6D0E003E7B12000098
      000000980000006600000000000000000000019ACF0074D8F900019ACF00A1EF
      F80094ECF80078D9F8007BDBF8007BDBF8007BDBF8007BDBF8007BDBF8007BDB
      F8007BDBF8007BDBF8007BDBF8007BDBF8007CDCF8005EC8EE0080DFF800019A
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B27C
      8100F9EEE100FAF1E700F9ECDE00F8EAD900F7E6D200F6E3CC00F5E0C600F4DE
      C200F2DCC200F1D7B300F1D6B100F1D4AB00EED1A500F0D0A000EECC9800EFCD
      9900EDCB9600B881840000000000000000000000000000660000009800000098
      0000009800000098000046791900E7E2E100006600000066000002980200A39B
      8E00BBCEBB00E0DCDB00FDFEFE00FDFEFE0072904C003D6D0E003E7B12000098
      000000980000006600000000000000000000019ACF0074D8F9003FB6E2002EAE
      DC00C0F2FA007CDCF80080DFF80080DFF80080DFF80080DFF80080DFF80080DF
      F80080DFF80080DFF80080DFF80080DFF80081E1F8005EC8EE008EE9F8006CCF
      F200019ACF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B781
      8400FAF1E700FBF5ED00F9F0E400F9ECDE00F8EAD900F7E7D400F6E3CC00F5E0
      C600F4DEC200F2DCC200F0D6B700F1D6B100F1D4AB00EED1A500EFCF9E00EFCD
      9900EDCA9500B881840000000000000000000000000000660000009800000098
      0000009800000098000046791900E7E2E100E7E2E100E7E2E100E7E2E100E7E2
      E100E7E2E100E7E2E100E7E2E100E7E2E10072904C00437915003E7B12000098
      000000980000006600000000000000000000019ACF0074D8F9005AC4EB00039B
      CF00CFF5FB0088E5F80085E4F80085E4F80085E4F80085E4F80085E4F80085E4
      F80085E4F80085E4F80085E4F80085E4F80085E4F80065CBF00091EBF80087E5
      F800019ACF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BA83
      8500FAF3EA00FCF8F300FAF3EA00F9F0E400F9ECDE00F8EAD900F7E6D200F6E3
      CC00F5E0C600F4DEC200F2DCC200F1D7B300F1D6AF00F1D4AB00EED1A500F0D0
      A000EECB9700B881840000000000000000000000000000660000009800000098
      0000009800000098000000980000009800000098000000980000009800000098
      0000009800000098000000980000009800000098000000980000009800000098
      000000980000006600000000000000000000019ACF0074D8F9005AC4EB00019A
      CF0091EBF800B1EFF80085E4F80089E7F80089E7F80089E7F80089E7F80089E7
      F80089E7F80089E7F80089E7F80089E7F8008BE8F8006ACEF10097EDF8009AED
      F800019ACF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD86
      8700FCF8F300FDFBFA00FCF6F000FAF3EA00F9F0E400F9ECDE00F8EAD900F7E6
      D200F6E3CC00F5E0C600F4DEC200F2DCC200F1D7B300F1D6B100F1D4AB00EED1
      A500EFCE9D00B881840000000000000000000000000000660000009800000098
      0000009800000098000000980000009800000098000000980000009800000098
      0000009800000098000000980000009800000098000000980000009800000098
      000000980000006600000000000000000000019ACF0074D8F90065CBF00047BA
      E4000B9ED100D5F6FB0097EDF80097EDF80097EDF80092ECF8008FEBF8008FEB
      F8008FEBF8008FEBF8008FEBF8008FEBF8008FEBF8006ED1F4009AEDF800A1EF
      F80083E2F800019ACF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C089
      8900FCF9F500FEFEFE00FDFAF700FCF6F000FAF3EA00F9F0E400F9ECDE00F8EA
      D900F7E6D200F6E3CC00F5E0C600F4DEC200F2DCC200F1D7B300F1D6B100F1D4
      AB00EFD0A200B982850000000000000000000000000000660000009800000098
      0000B1CFB000B1CFB000B1CFB000B1CFB000B1CFB000B1CFB000B1CFB000B1CF
      B000B1CFB000B1CFB000B1CFB000B1CFB000B1CFB000B1CFB000B1CFB0000098
      000000980000006600000000000000000000019ACF008EE9F8006ACEF10065CB
      F000019ACF00C0F2FA00CFF5FB00CCF5FB00CFF5FB00CFF5FB00A4EFF8009EEF
      F70094ECF80097EDF80097EDF80097EDF80097EDF80074D8F900A1EFF800A4EF
      F800A1EFF800019ACF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C089
      8900FCF9F500FEFEFE00FEFEFD00FCF9F500FCF6F000FAF3EA00F9F0E400F9EC
      DE00F8EAD900F7E6D200F6E3CC00F5E0C600F4DEC200F2DCC200F1D7B300F1D6
      B100EFD2A800BA83850000000000000000000000000000660000009800000098
      0000B1CFB000FEFDFD00FEFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFDFD00FDFCFC00B1CFB0000098
      000000980000006600000000000000000000019ACF00ACEEF8006CCFF2006ACE
      F10065CBF0004EBEE600019ACF00019ACF00019ACF00019ACF0094ECF800C9F4
      FB00BCF2F900A8F0F800A8F0F800A8F0F800A8F0F80088E5F800BCF2F900BCF2
      F900C6F3FB00019ACF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B98F
      8C00FCF9F500FEFEFE00FEFEFE00FEFDFC00FCF9F500FCF6F000FAF3EA00F9F0
      E400F9ECDE00F8EAD900F7E6D200F6E3CC00F5E0C600F4DEC200F2DCC200F1D7
      B300F1D5AD00B882840000000000000000000000000000660000009800000098
      0000B1CFB000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B1CFB0000098
      000000980000006600000000000000000000019ACF00BCF2F90074D5F70072D2
      F50072D2F50072D2F5006ED1F4006ED1F4006ED1F4004EBEE600039BCF0047BA
      E400D5F6FB00D5F6FB00CCF5FB00C6F3FB00C6F3FB00A1EFF800D5F6FB00D5F6
      FB00E2F9FD00B5EFF700019ACF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BA94
      9100FCF9F500FEFEFE00FEFEFE00FEFEFE00FEFEFD00FCF9F500FCF6F000FAF3
      EA00F9F0E400F9ECDE00F8EAD900F7E6D200F6E3CC00F5E0C600F4DEC200F2DC
      C200EED1A700A881810000000000000000000000000000660000009800000098
      0000B1CFB000FEFEFE00FEFEFE00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00FEFEFE00FEFEFE00B1CFB0000098
      000000980000006600000000000000000000019ACF00BCF2F9007BDBF80078D9
      F80078D9F80078D9F80078D9F80078D9F80078D9F80078D9F80074D5F7004EBE
      E6001CA5D6009DEEF700DEF5FC00D8F6FB00D5F6FB00B5EFF700E2F9FD00E2F9
      FD00E2F9FD00E2F9FD00019ACF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BA94
      9100FCF9F500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFD00FCF9F500FCF6
      F000FAF3EA00F9F0E400F9ECDE00F8EAD900F7E6D200F6E3CC00EBD3C000CFAA
      9700C0A398009F7E7E0000000000000000000000000000660000009800000098
      0000B1CFB000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B1CFB0000098
      000000980000006600000000000000000000019ACF00C6F3FB0083E2F80080DF
      F80080DFF80080DFF80080DFF80080DFF80080DFF80080DFF80080DFF8007EDE
      F8005AC4EB00019ACF001CA5D6009DEEF700C0F2FA00ACEEF800DFF1FB00DFF1
      FB00DFF1FB00DEF5FC00019ACF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4AC
      9400FCF9F500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFDFC00FDFA
      F700FCF6F000FAF3EA00F9EEE100F9ECDE00F8EBDB00F0DBC400C9A89900C0A3
      9800C0A398009F7E7E0000000000000000000000000000660000009800000098
      0000B1CFB000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B1CFB0000098
      000000980000006600000000000000000000019ACF00C6F3FB008BE8F80087E5
      F80087E5F80087E5F80087E5F80087E5F80087E5F80085E4F80085E4F80085E4
      F80085E4F80083E2F8004EBEE600019ACF00019ACF00019ACF00019ACF00019A
      CF00019ACF00019ACF00019ACF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9AD
      9000FCF9F500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FD00FCF9F500FBF5ED00FBF5ED00F0DBC400AE7F7700AD7F7700AD7F7700AD7F
      7700AD7F7700AE7F770000000000000000000000000000660000009800000098
      0000B1CFB000FEFEFE00FEFEFE00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00FEFEFE00FEFEFE00B1CFB0000098
      000000980000006600000000000000000000019ACF00D5F6FB008FEBF8008FEB
      F8008FEBF8008FEBF8008FEBF8008EE9F80092ECF80097EDF80094ECF80092EC
      F80092ECF80092ECF8008FEBF80092ECF80097EDF800019ACF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4AC
      9400FCF9F500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFDFC00FCF9F500FCF8F300EBD3C000AE7F7700E0B38300EDB56A00EFB1
      5F00EFB15F00B882840000000000000000000000000000660000009800000098
      0000B1CFB000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B1CFB0000098
      000000980000006600000000000000000000019ACF00E2F9FD00A8F0F8008FEB
      F80092ECF80092ECF80092ECF80097EDF800A1EFF800B5EFF700B5EFF700B9F0
      F800BCF2F900BCF2F900B1EFF800A8F0F800A8F0F800019ACF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4AC
      9400FDFAF700FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFDFC00FEFEFD00EBD3C000AE7F7700EDC68E00EEB77100F0B2
      5E00B88284000000000000000000000000000000000000660000009800000098
      0000B1CFB000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B1CFB0000098
      00000098000000660000000000000000000000000000019ACF00DCF8FC00A4EF
      F800A1EFF8009EEFF7009EEFF7009AEDF80072D2F500019ACF00019ACF00019A
      CF00019ACF00019ACF00019ACF00019ACF00019ACF00019ACF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4AC
      9400FDFAF700FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00EBD3C000AE7F7700EDC68E00EEB77100B882
      8400000000000000000000000000000000000000000000660000009800000098
      0000B1CFB000FEFEFE00FEFEFE00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00FEFEFE00FEFEFE00B1CFB0000098
      0000009800000066000000000000000000000000000000000000019ACF00B9F0
      F800B9F0F800BCF2F900C6F3FB00B1EFF800019ACF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4AC
      9400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00F0DBC400AE7F7700EDC68E00B88284000000
      0000000000000000000000000000000000000000000000660000009800000098
      0000B1CFB000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B1CFB0000098
      000000980000006600000000000000000000000000000000000000000000019A
      CF00019ACF00019ACF00019ACF00019ACF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCB1
      8B00EBD2BE00EBD3C000EBD3C000EBD3C000EBD3C000EBD3C000EBD2BE00EBD2
      BE00EBD2BE00EBD2BE00EBD2BE00CFAA9700AE7F7700B8828400000000000000
      0000000000000000000000000000000000000000000000000000006600000066
      0000B1CFB000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B1CFB0000066
      0000006600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00E00003FFFFFF8FFFFF000000E00003C0
      0007007FFF000000E000038000030003FF000000E0000380000300003F000000
      E0000380000300001F000000E0000380000300000F000000E000038000030000
      0F000000E00003800003000007000000E00003800003000007000000E0000380
      0003000007000000E00003800003000003000000E00003800003000003000000
      E00003800003000003000000E00003800003000001000000E000038000030000
      01000000E00003800003000001000000E00003800003000001000000E0000380
      000300003F000000E0000380000300003F000000E0000780000380003F000000
      E0000F800003C07FFF000000E0001F800003E0FFFF000000E0003FC00007FFFF
      FF000000FFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      000000000000}
  end
  object XPManifest1: TXPManifest
    Left = 328
    Top = 40
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 360
    Top = 40
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 392
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Andorra XML Particle System (*.axp)|*.axp|All files (*.*)|*.*'
    Left = 264
    Top = 72
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Andorra XML Particle System (*.axp)|*.axp'
    Left = 296
    Top = 72
  end
  object ColorDialog1: TColorDialog
    Left = 424
    Top = 40
  end
end

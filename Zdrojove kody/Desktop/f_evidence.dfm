object Form_evidence: TForm_evidence
  Left = 0
  Top = 0
  Caption = 'Evidence m'#283#345'idel'
  ClientHeight = 903
  ClientWidth = 1213
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    1213
    903)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 165
    Top = 0
    Width = 1048
    Height = 903
    Align = alClient
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 394
      Width = 1046
      Height = 6
      Cursor = crVSplit
      Align = alBottom
      ResizeStyle = rsUpdate
      ExplicitTop = 313
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1046
      Height = 393
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object DBGrid_HLevd: TDBGrid
        Left = 1
        Top = 36
        Width = 1044
        Height = 356
        Align = alClient
        DataSource = dm_evidence.DataSource_hlEvidence
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Evidencni_cislo'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kategorie_kod'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vyr_cis'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nazev'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Typ_kod'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Datum_kalibrace'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Doba_platnosti'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Konec_platnosti'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Kalibracni_metoda'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Kalibracni_postup'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Rok_vyroby'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Do_provozu'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vyrobce'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Merici_velicina'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Os_cislo_vl'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Do_uzivani'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Kalibroval'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cis_protokolu'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vysledek'
            Width = 150
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Os_cislo_vyp'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Kal_stredisko'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Stav_meridla'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Obor_mereni'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Zacleneni'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Kod_zavodu'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Datum_udrzby'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nasledna_udrzba'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Provedl_udrzbu'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CenaMer'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NakladyNaKal'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Dodavatel_mer'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Presnost'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DatumVyrazeni'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OVyslRohodl'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ObjDnuPred'
            Width = 110
            Visible = True
          end>
      end
      object Panel10: TPanel
        Left = 1
        Top = 1
        Width = 1044
        Height = 35
        Align = alTop
        BevelEdges = []
        BevelInner = bvLowered
        Caption = 'Panel10'
        ShowCaption = False
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          AlignWithMargins = True
          Left = 1018
          Top = 3
          Width = 23
          Height = 29
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alRight
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000B67B
            4F86B67C50850000000000000000000000000000000000000000000000000000
            00000000000000000000B67C5085B87C50850000000000000000B87B508EBD82
            56F4BC8155F5B67D518A00000000000000000000000000000000000000000000
            000000000000B77C508BBC8155F5BD8256F4B87B508E00000000B67B4F86BC82
            56F5E5AC80FFBB8054F4B67B5078000000000000000000000000000000000000
            0000B67B5078BC8054F4E5AC80FFBD8256F4B67B4F860000000000000000B87B
            4F90BC8256F5E5AC80FFBB8054F4B67A4F77000000000000000000000000B67A
            4F77BB8054F4E5AC80FFBC8256F5B77C508F0000000000000000000000000000
            0000B87B4F90BE8457F3E6AC80FFBB8053F4B77B4F7600000000B67A4F77BB80
            54F4E5AB7FFFBD8256F4B87B4F90000000000000000000000000000000000000
            000000000000B77D5184BC8256F5E6AC80FFBC8156F2B57A4FC3BD8255F1E6AC
            80FFBC8154F6B67C518300000000000000000000000000000000000000000000
            00000000000000000000B77D5184BC8156F4E7AD81FFC98E62FAE7AD81FFBC81
            55F4B67C51830000000000000000000000000000000000000000000000000000
            0000000000000000000000000000B67A4EC5C98E62FBF0B78BFFC98D61FBB77C
            4FC3000000000000000000000000000000000000000000000000000000000000
            00000000000000000000B57B5088BD8256F4E6AD81FFC98E62FAE6AD81FFBD81
            56F4B87D4F860000000000000000000000000000000000000000000000000000
            000000000000B77C4F87BC8256F3E6AD81FFBD8256F5B67B4FC6BC8256F5E6AD
            81FFBC8156F3B67B4F8600000000000000000000000000000000000000000000
            0000B87C507BBB8055F5E6AD81FFBD8458F3B67B509100000000B67B5091BD84
            58F3E6AD81FFBB8055F5B57B517A00000000000000000000000000000000B77D
            507CBD8155F4E6AD81FFBE8458F3B87B4F90000000000000000000000000B87B
            4F90BE8458F3E6AD81FFBB8055F5B87C507B0000000000000000B77C528FBE83
            57F4E6AD81FFBD8255F4B87C507F000000000000000000000000000000000000
            0000B77D5180BD8255F4E6AD81FFBE8356F4B87C4F8D00000000B77E517DBC81
            56F6BC8154F6B97D518000000000000000000000000000000000000000000000
            000000000000B97C5181BC8154F6BC8156F6B77E517D0000000000000000B57C
            4F7DB57C4F7D0000000000000000000000000000000000000000000000000000
            00000000000000000000B67B507EB57C4F7D0000000000000000}
          OnClick = SpeedButton1Click
          ExplicitLeft = 1021
          ExplicitTop = 2
          ExplicitHeight = 27
        end
        object Panel11: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 522
          Height = 25
          Align = alLeft
          BevelEdges = []
          BevelOuter = bvNone
          Caption = 'Panel11'
          ShowCaption = False
          TabOrder = 0
          ExplicitHeight = 23
          object Bevel1: TBevel
            Left = 515
            Top = 0
            Width = 7
            Height = 25
            Margins.Left = 0
            Margins.Top = 2
            Margins.Right = 0
            Margins.Bottom = 2
            Align = alRight
            Shape = bsRightLine
            ExplicitLeft = 296
            ExplicitHeight = 23
          end
          object Label1: TLabel
            Left = 300
            Top = 5
            Width = 78
            Height = 13
            Caption = 'Konec kalibrace:'
          end
          object Label2: TLabel
            Left = 89
            Top = 5
            Width = 34
            Height = 13
            Caption = 'Z'#225'vod:'
          end
          object cb_aktivni: TCheckBox
            Left = 0
            Top = 0
            Width = 82
            Height = 25
            Align = alLeft
            Caption = 'Jen aktivn'#237
            TabOrder = 0
            OnClick = cb_aktivniClick
            ExplicitHeight = 23
          end
          object ComboBox_zavodFiltr: TComboBox
            Left = 129
            Top = 2
            Width = 145
            Height = 22
            Style = csOwnerDrawFixed
            TabOrder = 1
            TabStop = False
            OnEnter = ComboBox_zavodFiltrEnter
            OnSelect = ComboBox_zavodFiltrSelect
          end
          object Dp_koneckal: TDateTimePicker
            Left = 384
            Top = 2
            Width = 126
            Height = 22
            Date = 45039.000000000000000000
            Time = 0.709689976851223000
            ShowCheckbox = True
            Checked = False
            TabOrder = 2
            OnClick = Dp_koneckalClick
            OnChange = Dp_koneckalChange
          end
        end
        object ActionToolBar1: TActionToolBar
          Left = 530
          Top = 2
          Width = 487
          Height = 31
          ActionManager = dm_evidence.ActionManager_evid
          Align = alClient
          Caption = 'ActionToolBar1'
          Color = clMenuBar
          ColorMap.DisabledFontColor = 7171437
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedFont = clBlack
          ColorMap.UnusedColor = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Spacing = 0
          ExplicitLeft = 270
          ExplicitWidth = 747
          ExplicitHeight = 29
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 400
      Width = 1046
      Height = 502
      Align = alBottom
      Caption = 'Panel4'
      ShowCaption = False
      TabOrder = 1
      object PageControl2: TPageControl
        Left = 1
        Top = 1
        Width = 1044
        Height = 500
        ActivePage = TabSheet9
        Align = alClient
        TabOrder = 0
        object Tab1: TTabSheet
          Caption = 'Karta m'#283#345'idla 1'
          object Panel14: TPanel
            Left = 0
            Top = 0
            Width = 1036
            Height = 472
            Align = alClient
            Caption = 'Panel14'
            Color = clSilver
            ParentBackground = False
            TabOrder = 0
            object ScrollBox1: TScrollBox
              Left = 1
              Top = 1
              Width = 1034
              Height = 470
              Align = alClient
              TabOrder = 0
              object Panel19: TPanel
                Left = -2
                Top = -2
                Width = 1029
                Height = 467
                BevelEdges = []
                BevelOuter = bvNone
                Caption = 'Panel19'
                TabOrder = 0
                object Panel5: TPanel
                  Left = 0
                  Top = 0
                  Width = 1029
                  Height = 201
                  Align = alClient
                  Alignment = taLeftJustify
                  BevelEdges = []
                  BevelOuter = bvNone
                  Caption = 'Panel5'
                  Color = clSilver
                  ParentBackground = False
                  ShowCaption = False
                  TabOrder = 0
                  object GridPanel1: TGridPanel
                    Left = 0
                    Top = 0
                    Width = 1029
                    Height = 201
                    Align = alClient
                    BevelEdges = []
                    BevelOuter = bvNone
                    Caption = 'GridPanel2'
                    ColumnCollection = <
                      item
                        SizeStyle = ssAbsolute
                        Value = 100.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 85.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 50.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 35.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 100.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 115.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 35.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 125.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 155.000000000000000000
                      end>
                    ControlCollection = <
                      item
                        Column = 0
                        Control = StaticText93
                        Row = 0
                      end
                      item
                        Column = 4
                        Control = StaticText94
                        Row = 0
                      end
                      item
                        Column = 7
                        Control = StaticText96
                        Row = 0
                      end
                      item
                        Column = 0
                        Control = StaticText97
                        Row = 1
                      end
                      item
                        Column = 4
                        Control = StaticText98
                        Row = 1
                      end
                      item
                        Column = 7
                        Control = StaticText99
                        Row = 1
                      end
                      item
                        Column = 0
                        Control = StaticText100
                        Row = 2
                      end
                      item
                        Column = 4
                        Control = StaticText101
                        Row = 2
                      end
                      item
                        Column = 7
                        Control = StaticText102
                        Row = 2
                      end
                      item
                        Column = 0
                        Control = StaticText103
                        Row = 3
                      end
                      item
                        Column = 4
                        Control = StaticText104
                        Row = 3
                      end
                      item
                        Column = 7
                        Control = StaticText105
                        Row = 3
                      end
                      item
                        Column = 0
                        Control = StaticText106
                        Row = 4
                      end
                      item
                        Column = 4
                        Control = StaticText107
                        Row = 4
                      end
                      item
                        Column = 7
                        Control = StaticText109
                        Row = 4
                      end
                      item
                        Column = 1
                        Control = DBEdit3
                        Row = 0
                      end
                      item
                        Column = 5
                        Control = DBEdit8
                        Row = 1
                      end
                      item
                        Column = 8
                        Control = DBEdit10
                        Row = 1
                      end
                      item
                        Column = 5
                        Control = DBEdit12
                        Row = 2
                      end
                      item
                        Column = 5
                        Control = DBEdit15
                        Row = 3
                      end
                      item
                        Column = 8
                        Control = DBEdit17
                        Row = 3
                      end
                      item
                        Column = 5
                        Control = DBEdit18
                        Row = 4
                      end
                      item
                        Column = 8
                        Control = DBLookupComboBox5
                        Row = 0
                      end
                      item
                        Column = 8
                        Control = DBLookupComboBox12
                        Row = 2
                      end
                      item
                        Column = 1
                        ColumnSpan = 2
                        Control = DBLookupComboBox13
                        Row = 3
                      end
                      item
                        Column = 1
                        ColumnSpan = 2
                        Control = DBLookupComboBox21
                        Row = 2
                      end
                      item
                        Column = 1
                        ColumnSpan = 2
                        Control = DBEdit5
                        Row = 1
                      end
                      item
                        Column = 5
                        Control = DBComboBox2
                        Row = 0
                      end
                      item
                        Column = 1
                        ColumnSpan = 2
                        Control = DBComboBox10
                        Row = 4
                      end
                      item
                        Column = 8
                        Control = JvDB_Date_Provoz
                        Row = 4
                      end>
                    RowCollection = <
                      item
                        SizeStyle = ssAbsolute
                        Value = 25.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 25.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 25.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 25.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 25.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 25.000000000000000000
                      end>
                    ShowCaption = False
                    TabOrder = 0
                    ExplicitLeft = -1
                    DesignSize = (
                      1029
                      201)
                    object StaticText93: TStaticText
                      AlignWithMargins = True
                      Left = 3
                      Top = 5
                      Width = 94
                      Height = 17
                      Align = alBottom
                      Caption = '       Eviden'#269'n'#237' '#269#237'slo:'
                      TabOrder = 0
                    end
                    object StaticText94: TStaticText
                      AlignWithMargins = True
                      Left = 273
                      Top = 5
                      Width = 94
                      Height = 17
                      Align = alBottom
                      Caption = 'Stav m'#283#345'idla:'
                      TabOrder = 1
                    end
                    object StaticText96: TStaticText
                      AlignWithMargins = True
                      Left = 523
                      Top = 5
                      Width = 119
                      Height = 17
                      Align = alBottom
                      Caption = 'Z'#225'vod:'
                      TabOrder = 2
                    end
                    object StaticText97: TStaticText
                      AlignWithMargins = True
                      Left = 3
                      Top = 30
                      Width = 94
                      Height = 17
                      Align = alBottom
                      Caption = '       N'#225'zev m'#283#345'idla:'
                      TabOrder = 3
                    end
                    object StaticText98: TStaticText
                      AlignWithMargins = True
                      Left = 273
                      Top = 30
                      Width = 94
                      Height = 17
                      Align = alBottom
                      Caption = 'Rozsah m'#283#345'idla:'
                      TabOrder = 4
                    end
                    object StaticText99: TStaticText
                      AlignWithMargins = True
                      Left = 523
                      Top = 30
                      Width = 119
                      Height = 17
                      Align = alBottom
                      Caption = 'V'#253'robn'#237' '#269#237'slo:'
                      TabOrder = 5
                    end
                    object StaticText100: TStaticText
                      AlignWithMargins = True
                      Left = 3
                      Top = 55
                      Width = 94
                      Height = 17
                      Align = alBottom
                      Caption = '       Kategorie:'
                      TabOrder = 6
                    end
                    object StaticText101: TStaticText
                      AlignWithMargins = True
                      Left = 273
                      Top = 55
                      Width = 94
                      Height = 17
                      Align = alBottom
                      Caption = 'M'#283#345'en'#225' veli'#269'ina:'
                      TabOrder = 7
                    end
                    object StaticText102: TStaticText
                      AlignWithMargins = True
                      Left = 523
                      Top = 55
                      Width = 119
                      Height = 17
                      Align = alBottom
                      Caption = 'V'#253'robce m'#283#345'idla:'
                      TabOrder = 8
                    end
                    object StaticText103: TStaticText
                      AlignWithMargins = True
                      Left = 3
                      Top = 80
                      Width = 94
                      Height = 17
                      Align = alBottom
                      Caption = '       Typ m'#283#345'idla:'
                      TabOrder = 9
                    end
                    object StaticText104: TStaticText
                      AlignWithMargins = True
                      Left = 273
                      Top = 80
                      Width = 94
                      Height = 17
                      Align = alBottom
                      Caption = 'T'#345#237'da p'#345'esnosti:'
                      TabOrder = 10
                    end
                    object StaticText105: TStaticText
                      AlignWithMargins = True
                      Left = 523
                      Top = 80
                      Width = 119
                      Height = 17
                      Align = alBottom
                      Caption = 'Rok v'#253'roby:'
                      TabOrder = 11
                    end
                    object StaticText106: TStaticText
                      AlignWithMargins = True
                      Left = 3
                      Top = 105
                      Width = 94
                      Height = 17
                      Align = alBottom
                      Caption = '       Za'#269'len'#283'n'#237':'
                      TabOrder = 12
                    end
                    object StaticText107: TStaticText
                      AlignWithMargins = True
                      Left = 273
                      Top = 105
                      Width = 94
                      Height = 17
                      Align = alBottom
                      Caption = 'P'#345'esnost:'
                      TabOrder = 13
                    end
                    object StaticText109: TStaticText
                      AlignWithMargins = True
                      Left = 523
                      Top = 105
                      Width = 119
                      Height = 17
                      Align = alBottom
                      Caption = 'Uvedeno do provozu:'
                      TabOrder = 14
                    end
                    object DBEdit3: TDBEdit
                      Left = 100
                      Top = 4
                      Width = 85
                      Height = 21
                      Align = alBottom
                      DataField = 'Evidencni_cislo'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      TabOrder = 15
                    end
                    object DBEdit8: TDBEdit
                      Left = 370
                      Top = 29
                      Width = 115
                      Height = 21
                      Align = alBottom
                      DataField = 'Rozsah'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      TabOrder = 16
                    end
                    object DBEdit10: TDBEdit
                      Left = 645
                      Top = 29
                      Width = 155
                      Height = 21
                      Align = alBottom
                      DataField = 'Vyr_cis'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      TabOrder = 17
                    end
                    object DBEdit12: TDBEdit
                      Left = 370
                      Top = 54
                      Width = 115
                      Height = 21
                      Align = alBottom
                      DataField = 'Merici_velicina'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      TabOrder = 18
                    end
                    object DBEdit15: TDBEdit
                      Left = 370
                      Top = 79
                      Width = 115
                      Height = 21
                      Align = alBottom
                      DataField = 'Trida_presnosti'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      TabOrder = 19
                    end
                    object DBEdit17: TDBEdit
                      Left = 645
                      Top = 79
                      Width = 155
                      Height = 21
                      Align = alBottom
                      DataField = 'Rok_vyroby'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      TabOrder = 20
                    end
                    object DBEdit18: TDBEdit
                      Left = 370
                      Top = 104
                      Width = 115
                      Height = 21
                      Align = alBottom
                      DataField = 'Presnost'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      TabOrder = 21
                    end
                    object DBLookupComboBox5: TDBLookupComboBox
                      Left = 645
                      Top = 4
                      Width = 155
                      Height = 21
                      Align = alBottom
                      DataField = 'Kod_zavodu'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      KeyField = 'Kod'
                      ListField = 'Nazev'
                      ListSource = dm_evidence.DataSource_zavody
                      TabOrder = 22
                    end
                    object DBLookupComboBox12: TDBLookupComboBox
                      Left = 645
                      Top = 54
                      Width = 155
                      Height = 21
                      Align = alBottom
                      DataField = 'Vyrobce'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      KeyField = 'Kod'
                      ListField = 'Nazev'
                      ListSource = dm_evidence.DataSource_vyrobce
                      TabOrder = 23
                    end
                    object DBLookupComboBox13: TDBLookupComboBox
                      Left = 100
                      Top = 79
                      Width = 135
                      Height = 21
                      Align = alBottom
                      DataField = 'Typ_kod'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      KeyField = 'Kod'
                      ListField = 'Nazev'
                      ListSource = dm_evidence.DataSource_typmeridel
                      TabOrder = 24
                    end
                    object DBLookupComboBox21: TDBLookupComboBox
                      Left = 100
                      Top = 54
                      Width = 135
                      Height = 21
                      Align = alBottom
                      DataField = 'kategorie_kod'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      DropDownWidth = 330
                      KeyField = 'Kod'
                      ListField = 'Nazev;Kod'
                      ListSource = dm_evidence.DataSource_subkategorieALL
                      TabOrder = 25
                      ExplicitLeft = 103
                      ExplicitTop = 52
                    end
                    object DBEdit5: TDBEdit
                      Left = 100
                      Top = 29
                      Width = 135
                      Height = 21
                      Align = alBottom
                      DataField = 'Nazev'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      TabOrder = 26
                    end
                    object DBComboBox2: TDBComboBox
                      Left = 370
                      Top = 2
                      Width = 115
                      Height = 21
                      Anchors = []
                      DataField = 'Stav_meridla'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      Items.Strings = (
                        'Aktivn'#237
                        'Neaktivn'#237
                        'Vy'#345'azeno'
                        'V oprav'#283
                        'V kalibraci'
                        'Ztraceno'
                        'Nekalibrov'#225'no'
                        'P'#345#237'prava kalib.')
                      TabOrder = 27
                    end
                    object DBComboBox10: TDBComboBox
                      Left = 100
                      Top = 104
                      Width = 135
                      Height = 21
                      Align = alBottom
                      DataField = 'Zacleneni'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      Items.Strings = (
                        'akreditovan'#253' syst'#233'm'
                        'neakreditovan'#253' syst'#233'm')
                      TabOrder = 28
                    end
                    object JvDB_Date_Provoz: TJvDBComboEdit
                      Left = 645
                      Top = 104
                      Width = 155
                      Height = 21
                      Align = alBottom
                      ClickKey = 0
                      DataField = 'Do_provozu'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      Images = dm_evidence.ImageList_evid
                      ImageKind = ikDatePicker
                      BiDiMode = bdLeftToRight
                      ParentBiDiMode = False
                      TabOrder = 29
                      OnButtonClick = JvDB_Date_ProvozButtonClick
                    end
                  end
                end
                object Panel8: TPanel
                  Left = 0
                  Top = 201
                  Width = 1029
                  Height = 266
                  Align = alBottom
                  BevelEdges = []
                  BevelOuter = bvNone
                  Caption = 'Panel8'
                  Color = clSilver
                  ParentBackground = False
                  ShowCaption = False
                  TabOrder = 1
                  object GridPanel3: TGridPanel
                    Left = 0
                    Top = 0
                    Width = 1029
                    Height = 266
                    Align = alClient
                    BevelEdges = []
                    BevelOuter = bvNone
                    Caption = 'GridPanel3'
                    ColumnCollection = <
                      item
                        SizeStyle = ssAbsolute
                        Value = 420.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 420.000000000000000000
                      end>
                    ControlCollection = <
                      item
                        Column = 0
                        Control = GroupBox10
                        Row = 0
                      end
                      item
                        Column = 1
                        Control = GroupBox11
                        Row = 0
                      end
                      item
                        Column = 0
                        Control = StaticText139
                        Row = 1
                      end
                      item
                        Column = 0
                        ColumnSpan = 2
                        Control = DBMemo2
                        Row = 2
                      end>
                    RowCollection = <
                      item
                        SizeStyle = ssAbsolute
                        Value = 125.000000000000000000
                      end
                      item
                        SizeStyle = ssAbsolute
                        Value = 18.000000000000000000
                      end
                      item
                        SizeStyle = ssAuto
                        Value = 100.000000000000000000
                      end>
                    ShowCaption = False
                    TabOrder = 0
                    object GroupBox10: TGroupBox
                      Left = 0
                      Top = 0
                      Width = 414
                      Height = 125
                      Align = alLeft
                      Caption = 'Vlastn'#237'k m'#283#345'idla'
                      Color = clSilver
                      Padding.Right = 300
                      ParentBackground = False
                      ParentColor = False
                      TabOrder = 0
                      DesignSize = (
                        414
                        125)
                      object StaticText95: TStaticText
                        Left = 22
                        Top = 24
                        Width = 69
                        Height = 17
                        Caption = 'Jm'#233'no/Firma:'
                        TabOrder = 0
                      end
                      object StaticText108: TStaticText
                        Left = 22
                        Top = 47
                        Width = 58
                        Height = 17
                        Caption = 'Pracovi'#353't'#283':'
                        TabOrder = 1
                      end
                      object StaticText133: TStaticText
                        Left = 22
                        Top = 70
                        Width = 72
                        Height = 17
                        Caption = 'Do u'#382#237'v'#225'n'#237' od:'
                        TabOrder = 2
                      end
                      object DBLookupComboBox1: TDBLookupComboBox
                        Left = 97
                        Top = 20
                        Width = 216
                        Height = 21
                        DataField = 'Os_cislo_vl'
                        DataSource = dm_evidence.DataSource_hlEvidence
                        KeyField = 'Osobni_cislo'
                        ListField = 'Jmeno'
                        ListSource = dm_evidence.DataSource_osoby
                        TabOrder = 3
                      end
                      object DBLookupComboBox2: TDBLookupComboBox
                        Left = 97
                        Top = 43
                        Width = 216
                        Height = 21
                        DataField = 'Pracoviste_kod_vl'
                        DataSource = dm_evidence.DataSource_hlEvidence
                        KeyField = 'kod'
                        ListField = 'Nazev'
                        ListSource = dm_evidence.DataSource_pracoviste
                        TabOrder = 4
                      end
                      object JvDBComboEdit2: TJvDBComboEdit
                        Left = 97
                        Top = 67
                        Width = 132
                        Height = 21
                        DataField = 'Do_uzivani'
                        DataSource = dm_evidence.DataSource_hlEvidence
                        ImageIndex = 18
                        Images = dm_evidence.ImageList_evid
                        ImageKind = ikDatePicker
                        Anchors = []
                        BiDiMode = bdLeftToRight
                        ParentBiDiMode = False
                        TabOrder = 5
                        OnButtonClick = JvDB_Date_ProvozButtonClick
                      end
                    end
                    object GroupBox11: TGroupBox
                      Left = 426
                      Top = 0
                      Width = 414
                      Height = 125
                      Align = alRight
                      Caption = 'Aktualn'#237' um'#237'st'#283'n'#237
                      Padding.Left = 15
                      Padding.Bottom = 15
                      TabOrder = 1
                      DesignSize = (
                        414
                        125)
                      object StaticText135: TStaticText
                        Left = 32
                        Top = 24
                        Width = 69
                        Height = 17
                        Caption = 'Jm'#233'no/Firma:'
                        TabOrder = 0
                      end
                      object StaticText136: TStaticText
                        Left = 32
                        Top = 47
                        Width = 58
                        Height = 17
                        Caption = 'Pracovi'#353't'#283':'
                        TabOrder = 1
                      end
                      object StaticText137: TStaticText
                        Left = 32
                        Top = 70
                        Width = 58
                        Height = 17
                        Caption = 'Vyp'#367'j'#269'eno:'
                        TabOrder = 2
                      end
                      object StaticText138: TStaticText
                        Left = 301
                        Top = 47
                        Width = 26
                        Height = 17
                        Caption = 'St'#345'.:'
                        TabOrder = 3
                      end
                      object DBLookupComboBox6: TDBLookupComboBox
                        Left = 107
                        Top = 20
                        Width = 216
                        Height = 21
                        DataField = 'Os_cislo_vyp'
                        DataSource = dm_evidence.DataSource_hlEvidence
                        KeyField = 'Osobni_cislo'
                        ListField = 'Jmeno'
                        ListSource = dm_evidence.DataSource_osoby
                        TabOrder = 4
                      end
                      object DBLookupComboBox7: TDBLookupComboBox
                        Left = 107
                        Top = 43
                        Width = 216
                        Height = 21
                        DataField = 'Pracoviste_kod_vyp'
                        DataSource = dm_evidence.DataSource_hlEvidence
                        KeyField = 'kod'
                        ListField = 'Nazev'
                        ListSource = dm_evidence.DataSource_pracoviste
                        TabOrder = 5
                      end
                      object JvDBComboEdit3: TJvDBComboEdit
                        Left = 107
                        Top = 66
                        Width = 134
                        Height = 21
                        DataField = 'Vypujceno'
                        DataSource = dm_evidence.DataSource_hlEvidence
                        ImageIndex = 18
                        Images = dm_evidence.ImageList_evid
                        ImageKind = ikDatePicker
                        Anchors = []
                        BiDiMode = bdLeftToRight
                        ParentBiDiMode = False
                        TabOrder = 6
                        OnButtonClick = JvDB_Date_ProvozButtonClick
                      end
                    end
                    object StaticText139: TStaticText
                      Left = 0
                      Top = 125
                      Width = 65
                      Height = 18
                      Align = alLeft
                      BevelOuter = bvNone
                      Caption = '   Pozn'#225'mka:'
                      TabOrder = 2
                    end
                    object DBMemo2: TDBMemo
                      Left = 0
                      Top = 143
                      Width = 840
                      Height = 100
                      Align = alLeft
                      DataField = 'Poznamka'
                      DataSource = dm_evidence.DataSource_hlEvidence
                      TabOrder = 3
                    end
                  end
                end
              end
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Karta m'#283#345'idla 2'
          ImageIndex = 1
          object ScrollBox2: TScrollBox
            Left = 0
            Top = 0
            Width = 1036
            Height = 472
            Align = alClient
            TabOrder = 0
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 1032
              Height = 468
              Align = alClient
              BorderStyle = bsSingle
              Caption = 'Panel7'
              Color = clSilver
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              object Image_evd: TImage
                Left = 354
                Top = 37
                Width = 281
                Height = 204
              end
              object StaticText1: TStaticText
                Left = 354
                Top = 16
                Width = 67
                Height = 17
                Caption = 'Foto m'#283#345'idla:'
                TabOrder = 0
              end
              object Button1: TButton
                Left = 640
                Top = 39
                Width = 16
                Height = 23
                ImageIndex = 16
                ImageMargins.Left = -3
                Images = dm_evidence.ImageList_evid
                TabOrder = 1
                OnClick = ButtonAddImage
              end
              object Button2: TButton
                Left = 640
                Top = 68
                Width = 16
                Height = 16
                ImageIndex = 17
                ImageMargins.Left = -3
                Images = dm_evidence.ImageList_evid
                TabOrder = 2
                OnClick = ButtonRemoveImage
              end
              object GroupBox1: TGroupBox
                Left = 17
                Top = 30
                Width = 320
                Height = 209
                Caption = #218'dr'#382'ba'
                TabOrder = 3
                object StaticText12: TStaticText
                  Left = 25
                  Top = 26
                  Width = 75
                  Height = 17
                  Caption = 'Datum '#250'dr'#382'by:'
                  TabOrder = 0
                end
                object StaticText13: TStaticText
                  Left = 25
                  Top = 50
                  Width = 88
                  Height = 17
                  Caption = 'N'#225'sledn'#225' '#250'dr'#382'ba:'
                  TabOrder = 1
                end
                object StaticText14: TStaticText
                  Left = 25
                  Top = 73
                  Width = 77
                  Height = 17
                  Caption = #218'd'#382'bu provedl:'
                  TabOrder = 2
                end
                object StaticText15: TStaticText
                  Left = 25
                  Top = 99
                  Width = 92
                  Height = 17
                  Caption = 'Pozn'#225'mky '#250'dr'#382'by:'
                  TabOrder = 3
                end
                object JvDBComboEdit4: TJvDBComboEdit
                  Left = 144
                  Top = 22
                  Width = 161
                  Height = 21
                  DataField = 'Datum_udrzby'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  ImageKind = ikDatePicker
                  TabOrder = 4
                  OnButtonClick = JvDB_Date_ProvozButtonClick
                end
                object JvDBComboEdit5: TJvDBComboEdit
                  Left = 144
                  Top = 46
                  Width = 161
                  Height = 21
                  DataField = 'Nasledna_udrzba'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  ImageKind = ikDatePicker
                  TabOrder = 5
                  OnButtonClick = JvDB_Date_ProvozButtonClick
                end
                object DBLookupComboBox3: TDBLookupComboBox
                  Left = 144
                  Top = 69
                  Width = 161
                  Height = 21
                  DataField = 'Provedl_udrzbu'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  KeyField = 'Osobni_cislo'
                  ListField = 'Jmeno'
                  ListSource = dm_evidence.DataSource_osoby
                  TabOrder = 6
                end
                object DBMemo4: TDBMemo
                  Left = 25
                  Top = 117
                  Width = 280
                  Height = 76
                  DataField = 'Pozn_vl'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  TabOrder = 7
                end
              end
              object GroupBox2: TGroupBox
                Left = 17
                Top = 245
                Width = 320
                Height = 203
                Caption = 'Invent'#225'rn'#237' info.'
                TabOrder = 4
                object StaticText5: TStaticText
                  Left = 25
                  Top = 29
                  Width = 94
                  Height = 17
                  Caption = 'Dodavatel m'#283#345'idla:'
                  TabOrder = 0
                end
                object DBLookupComboBox10: TDBLookupComboBox
                  Left = 144
                  Top = 25
                  Width = 164
                  Height = 21
                  DataField = 'Dodavatel_mer'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  KeyField = 'Kod_dodavatele'
                  ListField = 'Nazev'
                  ListSource = dm_evidence.DataSource_dodavatel
                  TabOrder = 1
                end
                object StaticText6: TStaticText
                  Left = 25
                  Top = 52
                  Width = 79
                  Height = 17
                  Caption = 'Objednac'#237' '#269#237'slo:'
                  TabOrder = 2
                end
                object DBEdit2: TDBEdit
                  Left = 144
                  Top = 48
                  Width = 164
                  Height = 21
                  DataField = 'Obj_cislo'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  TabOrder = 3
                end
                object DBEdit4: TDBEdit
                  Left = 144
                  Top = 71
                  Width = 164
                  Height = 21
                  DataField = 'Cis_objednavky'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  TabOrder = 4
                end
                object StaticText7: TStaticText
                  Left = 25
                  Top = 75
                  Width = 89
                  Height = 17
                  Caption = #268#237'slo objedn'#225'vky:'
                  TabOrder = 5
                end
                object DBEdit6: TDBEdit
                  Left = 144
                  Top = 94
                  Width = 103
                  Height = 21
                  DataField = 'CenaMer'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  TabOrder = 6
                end
                object StaticText8: TStaticText
                  Left = 253
                  Top = 98
                  Width = 15
                  Height = 17
                  Caption = 'K'#269
                  TabOrder = 7
                end
                object StaticText9: TStaticText
                  Left = 25
                  Top = 98
                  Width = 70
                  Height = 17
                  Caption = 'Cena m'#283#345'idla:'
                  TabOrder = 8
                end
                object StaticText10: TStaticText
                  Left = 25
                  Top = 121
                  Width = 81
                  Height = 17
                  Caption = 'Invent'#225'rn'#237' '#269#237'slo:'
                  TabOrder = 9
                end
                object DBEdit7: TDBEdit
                  Left = 144
                  Top = 117
                  Width = 164
                  Height = 21
                  DataField = 'InvCislo'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  TabOrder = 10
                end
                object JvDBComboEdit1: TJvDBComboEdit
                  Left = 144
                  Top = 140
                  Width = 164
                  Height = 21
                  DataField = 'DatumVyrazeni'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  ImageKind = ikDatePicker
                  TabOrder = 11
                  OnButtonClick = JvDB_Date_ProvozButtonClick
                end
                object StaticText11: TStaticText
                  Left = 25
                  Top = 144
                  Width = 83
                  Height = 17
                  Caption = 'Datum vy'#345'azen'#237':'
                  TabOrder = 12
                end
              end
            end
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Dokumentace'
          ImageIndex = 2
          object dbg_dokum: TDBGrid
            Left = 113
            Top = 0
            Width = 923
            Height = 472
            Align = alClient
            DataSource = dm_evidence.DataSource_dokum
            DrawingStyle = gdsGradient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Popis'
                Width = 291
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cesta'
                Width = 300
                Visible = True
              end>
          end
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 113
            Height = 472
            Align = alLeft
            BorderStyle = bsSingle
            Caption = 'Panel9'
            Color = 6313157
            ParentBackground = False
            ShowCaption = False
            TabOrder = 1
            object Button4: TButton
              Left = 1
              Top = 1
              Width = 107
              Height = 97
              Align = alTop
              Caption = 'Otev'#345#237't dokument'
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Stencil'
              Font.Style = []
              ImageAlignment = iaCenter
              ImageIndex = 0
              ImageMargins.Top = -50
              Images = dm_evidence.ImageList_evid
              ParentFont = False
              TabOrder = 0
              WordWrap = True
              OnClick = ButtonDocOpen
            end
            object Button10: TButton
              Left = 1
              Top = 98
              Width = 107
              Height = 97
              Align = alTop
              Caption = 'Vlo'#382'it nov'#253' dokument'
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Stencil'
              Font.Style = []
              ImageAlignment = iaCenter
              ImageIndex = 2
              ImageMargins.Top = -50
              Images = dm_evidence.ImageList_evid
              ParentFont = False
              TabOrder = 1
              WordWrap = True
              OnClick = ButtonDocInsertNew
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = #218'daje o kalibraci'
          ImageIndex = 3
          object ScrollBox3: TScrollBox
            Left = 0
            Top = 0
            Width = 1036
            Height = 472
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clSilver
            ParentColor = False
            TabOrder = 0
            object Panel12: TPanel
              Left = -3
              Top = -2
              Width = 2000
              Height = 384
              BevelOuter = bvNone
              Caption = 'Panel9'
              Color = clSilver
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              object GroupBox_kalib: TGroupBox
                Left = 23
                Top = 192
                Width = 843
                Height = 192
                Caption = #218'daje kalibrace v protokolu'
                Enabled = False
                TabOrder = 0
                object StaticText43: TStaticText
                  Left = 16
                  Top = 31
                  Width = 95
                  Height = 17
                  Caption = 'V'#253'sledek kalibrace:'
                  TabOrder = 0
                end
                object StaticText44: TStaticText
                  Left = 16
                  Top = 54
                  Width = 99
                  Height = 17
                  Caption = 'O v'#253'sledku rozhodl:'
                  TabOrder = 1
                end
                object StaticText45: TStaticText
                  Left = 16
                  Top = 77
                  Width = 82
                  Height = 17
                  Caption = 'Datum kalbrace:'
                  TabOrder = 2
                end
                object StaticText46: TStaticText
                  Left = 16
                  Top = 100
                  Width = 81
                  Height = 17
                  Caption = 'Konec platnosti:'
                  TabOrder = 3
                end
                object StaticText47: TStaticText
                  Left = 16
                  Top = 123
                  Width = 102
                  Height = 17
                  Caption = 'N'#225'klady na kalibraci:'
                  TabOrder = 4
                end
                object StaticText48: TStaticText
                  Left = 16
                  Top = 146
                  Width = 71
                  Height = 17
                  Caption = #268'as kalibrace:'
                  TabOrder = 5
                end
                object StaticText49: TStaticText
                  Left = 360
                  Top = 28
                  Width = 86
                  Height = 17
                  Caption = 'Kalibraci provedl:'
                  TabOrder = 6
                end
                object StaticText51: TStaticText
                  Left = 360
                  Top = 50
                  Width = 111
                  Height = 17
                  Caption = 'Max. dovolen'#225' chyba:'
                  TabOrder = 7
                end
                object StaticText53: TStaticText
                  Left = 360
                  Top = 72
                  Width = 95
                  Height = 17
                  Caption = 'Kalibra'#269'n'#237' protokol:'
                  TabOrder = 8
                end
                object StaticText54: TStaticText
                  Left = 257
                  Top = 123
                  Width = 15
                  Height = 17
                  Caption = 'K'#269
                  TabOrder = 9
                end
                object StaticText55: TStaticText
                  Left = 257
                  Top = 146
                  Width = 24
                  Height = 17
                  Caption = 'min.'
                  TabOrder = 10
                end
                object DBEdit_cena: TDBEdit
                  Left = 130
                  Top = 119
                  Width = 123
                  Height = 21
                  DataField = 'NakladyNaKal'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  TabOrder = 11
                end
                object DBEdit_caskalib: TDBEdit
                  Left = 130
                  Top = 142
                  Width = 123
                  Height = 21
                  DataField = 'CasKalibrace'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  TabOrder = 12
                end
                object DBEdit_kalibprovedl: TDBEdit
                  Left = 496
                  Top = 24
                  Width = 225
                  Height = 21
                  DataField = 'Kalibroval'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  TabOrder = 13
                end
                object DBEdit_maxdobchyba: TDBEdit
                  Left = 496
                  Top = 46
                  Width = 123
                  Height = 21
                  DataField = 'Povolena_odchylka'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  TabOrder = 14
                end
                object DBEdit_kaliprot: TDBEdit
                  Left = 496
                  Top = 68
                  Width = 225
                  Height = 21
                  DataField = 'kalprot_cesta'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  TabOrder = 15
                end
                object Button8: TButton
                  Left = 757
                  Top = 73
                  Width = 16
                  Height = 16
                  ImageIndex = 4
                  ImageMargins.Left = -3
                  Images = dm_evidence.ImageList_evid
                  TabOrder = 16
                  OnClick = OpenLastKalibDokument
                end
                object Button9: TButton
                  Left = 735
                  Top = 73
                  Width = 16
                  Height = 16
                  ImageIndex = 3
                  ImageMargins.Left = -3
                  Images = dm_evidence.ImageList_evid
                  TabOrder = 17
                  OnClick = ButtonAddKalibProtkol
                end
                object DBComboBox_vslkalib: TDBComboBox
                  Left = 130
                  Top = 27
                  Width = 215
                  Height = 21
                  DataField = 'Vysledek'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  Items.Strings = (
                    'Vyhovuje'
                    'Nevyhovuje'
                    'Vyhovuje s podm'#237'nkou')
                  TabOrder = 18
                end
                object DatumKalibrEdit: TJvDBComboEdit
                  Left = 130
                  Top = 73
                  Width = 175
                  Height = 21
                  DataField = 'Datum_kalibrace'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  ImageIndex = 18
                  Images = dm_evidence.ImageList_evid
                  ImageKind = ikDatePicker
                  BiDiMode = bdLeftToRight
                  ParentBiDiMode = False
                  TabOrder = 19
                  OnButtonClick = JvDB_Date_ProvozButtonClick
                end
                object DatumKonec: TJvDBComboEdit
                  Left = 130
                  Top = 96
                  Width = 175
                  Height = 21
                  DataField = 'Konec_platnosti'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  ImageIndex = 18
                  Images = dm_evidence.ImageList_evid
                  ImageKind = ikDatePicker
                  BiDiMode = bdLeftToRight
                  ParentBiDiMode = False
                  ReadOnly = True
                  TabOrder = 20
                  OnButtonClick = JvDB_Date_ProvozButtonClick
                end
                object DBLookupComboBox_vslrozhodl: TDBLookupComboBox
                  Left = 130
                  Top = 50
                  Width = 215
                  Height = 21
                  DataField = 'OVyslRohodl'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  KeyField = 'Jmeno'
                  ListField = 'Jmeno'
                  ListSource = dm_evidence.DataSource_osoby
                  TabOrder = 21
                end
              end
              object GroupBox3: TGroupBox
                Left = 23
                Top = 13
                Width = 843
                Height = 140
                Caption = 'Zp'#367'sob Kalibrace'
                TabOrder = 1
                object StaticText36: TStaticText
                  Left = 135
                  Top = 22
                  Width = 89
                  Height = 17
                  Caption = 'Kalibra'#269'n'#237' postup:'
                  TabOrder = 0
                end
                object StaticText37: TStaticText
                  Left = 135
                  Top = 45
                  Width = 92
                  Height = 17
                  Caption = 'Kalibra'#269'n'#237' metoda:'
                  TabOrder = 1
                end
                object StaticText38: TStaticText
                  Left = 135
                  Top = 68
                  Width = 77
                  Height = 17
                  Caption = 'Doba platnosti:'
                  TabOrder = 2
                end
                object StaticText39: TStaticText
                  Left = 135
                  Top = 91
                  Width = 99
                  Height = 17
                  Caption = 'Kalibra'#269'n'#237' st'#345'edisko:'
                  TabOrder = 3
                end
                object StaticText40: TStaticText
                  Left = 451
                  Top = 68
                  Width = 49
                  Height = 17
                  Caption = 'Objednat'
                  TabOrder = 4
                end
                object StaticText41: TStaticText
                  Left = 565
                  Top = 68
                  Width = 61
                  Height = 17
                  Caption = 'dn'#367' p'#345'edem'
                  TabOrder = 5
                end
                object DBRadioGroup1: TDBRadioGroup
                  Left = 3
                  Top = 24
                  Width = 126
                  Height = 89
                  DataField = 'Kalibracekde'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  Items.Strings = (
                    'Intern'#283
                    'Extern'#283)
                  TabOrder = 6
                  Values.Strings = (
                    '0'
                    '1')
                  OnChange = DBRadioGroup1Click
                end
                object DBEdit_inter: TDBEdit
                  Left = 256
                  Top = 41
                  Width = 161
                  Height = 21
                  DataField = 'Kalibracni_metoda'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  TabOrder = 7
                end
                object DBEdit_kalibstredisko: TDBEdit
                  Left = 433
                  Top = 88
                  Width = 312
                  Height = 21
                  DataField = 'Dokument'
                  DataSource = dm_evidence.DataSource_akrDoku
                  TabOrder = 8
                end
                object periodaHod: TJvDBRadioPanel
                  Left = 327
                  Top = 65
                  Width = 114
                  Height = 17
                  BevelOuter = bvNone
                  Columns = 2
                  DataField = 'TypPeriody'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  Items.Strings = (
                    'm'#283's'#237'ce'
                    'dny')
                  TabOrder = 9
                  Values.Strings = (
                    '1'
                    '2')
                end
                object Button6: TButton
                  Left = 751
                  Top = 91
                  Width = 16
                  Height = 16
                  ImageIndex = 4
                  ImageMargins.Left = -3
                  Images = dm_evidence.ImageList_evid
                  TabOrder = 10
                  OnClick = Button6Click
                end
                object DBLookupComboBox_kalibstredisko: TDBLookupComboBox
                  Left = 256
                  Top = 88
                  Width = 161
                  Height = 21
                  DataField = 'Kal_stredisko'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  KeyField = 'Kod'
                  ListField = 'Nazev;Mesto'
                  ListSource = dm_evidence.DataSource_akrDoku
                  TabOrder = 11
                end
                object JvDBSpinEdit1: TJvDBSpinEdit
                  Left = 502
                  Top = 64
                  Width = 57
                  Height = 21
                  TabOrder = 12
                  DataField = 'ObjDnuPred'
                  DataSource = dm_evidence.DataSource_hlEvidence
                end
                object platnostEdit: TJvDBSpinEdit
                  Left = 256
                  Top = 65
                  Width = 73
                  Height = 21
                  TabOrder = 13
                  DataField = 'Doba_platnosti'
                  DataSource = dm_evidence.DataSource_hlEvidence
                end
                object DBLookupComboBox_inter: TDBLookupComboBox
                  Left = 256
                  Top = 18
                  Width = 161
                  Height = 21
                  DataField = 'Kalibracni_postup'
                  DataSource = dm_evidence.DataSource_hlEvidence
                  KeyField = 'Kod'
                  ListField = 'Nazev'
                  ListSource = dm_evidence.DataSource_kalpostupy
                  TabOrder = 14
                end
                object DBMemo_inter: TDBMemo
                  Left = 433
                  Top = 16
                  Width = 312
                  Height = 46
                  DataField = 'Zneni'
                  DataSource = dm_evidence.DataSource_kalpostupy
                  ReadOnly = True
                  TabOrder = 15
                end
              end
              object StaticText20: TStaticText
                Left = 874
                Top = 14
                Width = 147
                Height = 17
                Caption = 'Pozn'#225'mky k posledn'#237' kalibraci:'
                TabOrder = 2
              end
              object Button7: TButton
                Left = 1103
                Top = 44
                Width = 16
                Height = 16
                ImageIndex = 1
                ImageMargins.Left = -3
                Images = dm_evidence.ImageList_evid
                TabOrder = 3
              end
              object DBMemo1: TDBMemo
                Left = 872
                Top = 37
                Width = 259
                Height = 340
                DataField = 'PoznKalibrace'
                DataSource = dm_evidence.DataSource_hlEvidence
                TabOrder = 4
              end
              object StaticText2: TStaticText
                Left = 23
                Top = 166
                Width = 78
                Height = 17
                Caption = #268#237'slo protokolu:'
                TabOrder = 5
              end
              object DBEdit27: TDBEdit
                Left = 102
                Top = 163
                Width = 99
                Height = 21
                DataField = 'Cis_protokolu'
                DataSource = dm_evidence.DataSource_hlEvidence
                TabOrder = 6
                OnChange = DBEdit27Change
              end
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Historie kalibrac'#237
          ImageIndex = 4
          object Panel13: TPanel
            Left = 0
            Top = 0
            Width = 1036
            Height = 472
            Align = alClient
            Caption = 'Panel13'
            TabOrder = 0
            object ActionToolBar3: TActionToolBar
              Left = 1
              Top = 1
              Width = 1034
              Height = 27
              ActionManager = dm_evidence.ActionManager_evid
              Caption = 'ActionToolBar3'
              Color = clMenuBar
              ColorMap.DisabledFontColor = 7171437
              ColorMap.HighlightColor = clWhite
              ColorMap.BtnSelectedFont = clBlack
              ColorMap.UnusedColor = clWhite
              EdgeBorders = [ebBottom]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Spacing = 0
            end
            object DBG_kalibrHS: TDBGrid
              Left = 1
              Top = 28
              Width = 1034
              Height = 443
              Align = alClient
              DataSource = dm_evidence.DataSource_hskalibrace
              DrawingStyle = gdsGradient
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Cis_protokolu'
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Datum_kalibrace'
                  Width = 115
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Konec_platnosti'
                  Width = 115
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Kalibroval'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Vysledek'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NakladyNaKal'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'kalprot_cesta'
                  Width = 170
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Kal_stredisko'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'OVyslRohodl'
                  Width = 115
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CasKalibrace'
                  Width = 75
                  Visible = True
                end>
            end
          end
        end
        object TabSheet15: TTabSheet
          Caption = 'Historie stavu m'#283#345'idla'
          ImageIndex = 8
          object Panel16: TPanel
            Left = 0
            Top = 0
            Width = 1036
            Height = 472
            Align = alClient
            Caption = 'Panel16'
            TabOrder = 0
            object ActionToolBar6: TActionToolBar
              Left = 1
              Top = 1
              Width = 1034
              Height = 26
              ActionManager = dm_evidence.ActionManager_evid
              Caption = 'ActionToolBar6'
              Color = clMenuBar
              ColorMap.DisabledFontColor = 7171437
              ColorMap.HighlightColor = clWhite
              ColorMap.BtnSelectedFont = clBlack
              ColorMap.UnusedColor = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Spacing = 0
            end
            object DBGrid_HSstavu: TDBGrid
              Left = 1
              Top = 27
              Width = 1034
              Height = 444
              Align = alClient
              DataSource = dm_evidence.DataSource_hsStavuMeridla
              DrawingStyle = gdsGradient
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Datum'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Popis'
                  Width = 350
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Odkaz'
                  Width = 250
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NakladyOpravy'
                  Width = 120
                  Visible = True
                end>
            end
          end
        end
        object TabSheet16: TTabSheet
          Caption = 'V'#253'p'#367'j'#269'ky'
          ImageIndex = 9
          object Panel17: TPanel
            Left = 0
            Top = 0
            Width = 1036
            Height = 472
            Align = alClient
            Caption = 'Panel17'
            TabOrder = 0
            object DBGrid_vydejna: TDBGrid
              Left = 1
              Top = 1
              Width = 1034
              Height = 470
              Align = alClient
              DataSource = dm_evidence.DataSource_vydejna
              DrawingStyle = gdsGradient
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Vydano'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Os_cislo_vyp'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Pracoviste_kod_vyp'
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Vraceno'
                  Width = 120
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Os_cis_vratil'
                  Width = 90
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 165
    Height = 903
    Align = alLeft
    Caption = 'Tree_pick_ev'
    ShowCaption = False
    TabOrder = 1
    object tree_kategorie: TTreeView
      Left = 1
      Top = 24
      Width = 163
      Height = 233
      Align = alTop
      HideSelection = False
      HotTrack = True
      Indent = 19
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      OnChange = tree_kategorieChange
      ExplicitLeft = 3
      ExplicitTop = 21
    end
    object tree_typ: TTreeView
      Left = 1
      Top = 280
      Width = 163
      Height = 622
      Align = alClient
      HideSelection = False
      HotTrack = True
      Indent = 19
      ReadOnly = True
      RowSelect = True
      TabOrder = 1
      OnChange = tree_kategorieChange
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 163
      Height = 23
      Align = alTop
      BorderStyle = bsSingle
      Caption = 'Panel6'
      Color = 6313157
      ParentBackground = False
      ShowCaption = False
      TabOrder = 2
      object StaticText3: TStaticText
        Left = 1
        Top = 1
        Width = 105
        Height = 17
        Align = alLeft
        Caption = 'Kategorie m'#283#345'idel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel18: TPanel
      Left = 1
      Top = 257
      Width = 163
      Height = 23
      Align = alTop
      BorderStyle = bsSingle
      Caption = 'Panel18'
      Color = 6313157
      ParentBackground = False
      ShowCaption = False
      TabOrder = 3
      object StaticText4: TStaticText
        Left = 1
        Top = 1
        Width = 71
        Height = 17
        Align = alLeft
        Caption = 'Typ m'#283#345'idla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object CalendarView_provoz: TJvMonthCalendar2
    Left = 11
    Top = 529
    Width = 148
    Height = 154
    Anchors = []
    ParentColor = False
    TabStop = True
    TabOrder = 2
    Visible = False
    DateFirst = 44989.000000000000000000
    Today = 44989.671194780090000000
    OnSelect = CalendarView_provozSelect
  end
  object OpenDialog1: TOpenDialog
    Left = 70
    Top = 393
  end
  object ADOQuery1: TADOQuery
    Connection = dmmain.ADOConnection_metr
    Parameters = <>
    Left = 64
    Top = 300
  end
end

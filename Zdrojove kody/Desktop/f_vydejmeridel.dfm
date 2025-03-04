object f_vydejmer: Tf_vydejmer
  Left = 0
  Top = 0
  Caption = 'V'#253'dejna m'#283#345'idel'
  ClientHeight = 695
  ClientWidth = 1118
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel24: TPanel
    Left = 0
    Top = 0
    Width = 161
    Height = 695
    Align = alLeft
    Caption = 'Panel24'
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 159
      Height = 693
      Align = alClient
      Caption = 'Tree_pick_ev'
      ShowCaption = False
      TabOrder = 0
      object tree_kategorie: TTreeView
        Left = 1
        Top = 24
        Width = 157
        Height = 233
        Align = alTop
        HideSelection = False
        Indent = 19
        RowSelect = True
        TabOrder = 0
        OnChange = tree_kategorieChange
      end
      object tree_typ: TTreeView
        Left = 1
        Top = 280
        Width = 157
        Height = 529
        Align = alTop
        HideSelection = False
        Indent = 19
        RowSelect = True
        TabOrder = 1
        OnChange = tree_kategorieChange
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 157
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
        Width = 157
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
  end
  object Panel26: TPanel
    Left = 161
    Top = 0
    Width = 957
    Height = 695
    Align = alClient
    Caption = 'Panel26'
    ShowCaption = False
    TabOrder = 1
    object Panel27: TPanel
      Left = 1
      Top = 1
      Width = 955
      Height = 384
      Align = alTop
      Caption = 'Panel27'
      TabOrder = 0
      object Panel29: TPanel
        Left = 1
        Top = 1
        Width = 953
        Height = 24
        Align = alTop
        Caption = 'Panel29'
        ShowCaption = False
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          AlignWithMargins = True
          Left = 928
          Top = 2
          Width = 23
          Height = 20
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
          ExplicitHeight = 27
        end
        object StaticText89: TStaticText
          Left = 1
          Top = 1
          Width = 123
          Height = 22
          Align = alLeft
          Caption = 'Seznam m'#283#345'idel'
          Color = 263403
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object DBGrid_vydejEVD: TDBGrid
        Left = 1
        Top = 51
        Width = 953
        Height = 332
        Align = alClient
        DataSource = dm_vydejmeridel.DataSource_Seznam_meridel
        DrawingStyle = gdsGradient
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Evidencni_cislo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kategorie_kod'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nazev'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Typ_kod'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Do_provozu'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pracoviste_kod_vl'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Os_cislo_vl'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Do_uzivani'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Os_cislo_vyp'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Poznamka'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Zacleneni'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Kod_zavodu'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Datum_udrzby'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pozn_vl'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TypoveOznaceni'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DatumVyrazeni'
            Width = 64
            Visible = True
          end>
      end
      object Panel31: TPanel
        Left = 1
        Top = 25
        Width = 953
        Height = 26
        Align = alTop
        Caption = 'Panel31'
        TabOrder = 2
        object Panel32: TPanel
          Left = 1
          Top = 1
          Width = 192
          Height = 24
          Align = alLeft
          Caption = 'Panel32'
          ShowCaption = False
          TabOrder = 0
          object StaticText91: TStaticText
            Left = 1
            Top = 4
            Width = 38
            Height = 17
            Margins.Top = 0
            Caption = 'Z'#225'vod:'
            TabOrder = 0
          end
          object ComboBox_zavodFiltr: TComboBox
            Left = 39
            Top = 1
            Width = 145
            Height = 21
            TabOrder = 1
            OnEnter = ComboBox_zavodFiltrEnter
            OnSelect = ComboBox_zavodFiltrSelect
          end
        end
        object ActionToolBar10: TActionToolBar
          Left = 193
          Top = 1
          Width = 759
          Height = 24
          ActionManager = dm_vydejmeridel.ActionManager1
          Align = alClient
          Caption = 'ActionToolBar10'
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
      end
    end
    object Panel28: TPanel
      Left = 1
      Top = 385
      Width = 955
      Height = 309
      Align = alClient
      Caption = 'Panel28'
      TabOrder = 1
      object Panel30: TPanel
        Left = 1
        Top = 1
        Width = 953
        Height = 20
        Align = alTop
        Caption = 'Panel30'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ShowCaption = False
        TabOrder = 0
        object StaticText90: TStaticText
          Left = 1
          Top = 1
          Width = 192
          Height = 18
          Align = alLeft
          Caption = 'V'#253'dej / V'#253'p'#367'j'#269'ky m'#283#345'idel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object DBGrid12: TDBGrid
        Left = 1
        Top = 21
        Width = 953
        Height = 287
        Align = alClient
        DataSource = dm_vydejmeridel.DataSource_vypujcky
        DrawingStyle = gdsGradient
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Evidencni_cislo'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vydano'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Os_cislo_vyp'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pracoviste_kod_vyp'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vraceno'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Os_cis_vratil'
            Width = 80
            Visible = True
          end>
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = dmmain.ADOConnection_metr
    Parameters = <>
    Left = 40
    Top = 552
  end
end

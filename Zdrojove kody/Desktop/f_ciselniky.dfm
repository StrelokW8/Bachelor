object f_cisel: Tf_cisel
  Left = 0
  Top = 0
  Caption = #268#237'seln'#237'ky'
  ClientHeight = 766
  ClientWidth = 1060
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormShow
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel25: TPanel
    Left = 0
    Top = 29
    Width = 1060
    Height = 737
    Align = alClient
    Caption = 'Panel25'
    TabOrder = 0
    object PageControl4: TPageControl
      Left = 1
      Top = 1
      Width = 1058
      Height = 735
      ActivePage = TabSheet32
      Align = alClient
      TabOrder = 0
      object TabSheet18: TTabSheet
        Caption = 'Kategorie m'#283#345'idel'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid13: TDBGrid
          Left = 0
          Top = 0
          Width = 1050
          Height = 329
          Align = alTop
          DataSource = dm_ciselniky.DataSource_kategorie_meridel
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Kod'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nazev'
              Width = 350
              Visible = True
            end>
        end
        object DBGrid14: TDBGrid
          Left = 0
          Top = 329
          Width = 1050
          Height = 378
          Align = alClient
          DataSource = dm_ciselniky.DataSource_subkategorie
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Kod'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Subkod'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nazev'
              Visible = True
            end>
        end
      end
      object TabSheet19: TTabSheet
        Caption = 'Typ m'#283#345'idel'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid15: TDBGrid
          Left = 0
          Top = 0
          Width = 1050
          Height = 707
          Align = alClient
          DataSource = dm_ciselniky.DataSource_typmeridel
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Kod'
              Width = 80
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
              FieldName = 'Popis'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CasKalibrace'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NadrazenyTyp'
              Visible = True
            end>
        end
      end
      object TabSheet20: TTabSheet
        Caption = 'Kalibra'#269'n'#237' postupy'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid16: TDBGrid
          Left = 0
          Top = 0
          Width = 1050
          Height = 257
          Align = alTop
          DataSource = dm_ciselniky.DataSource_kalipostup
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Kod'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cislo_kalpostupu'
              Width = 130
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
              FieldName = 'Teplota'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tlak'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vlhkost'
              Width = 64
              Visible = True
            end>
        end
        object StaticText92: TStaticText
          Left = 0
          Top = 257
          Width = 131
          Height = 17
          Align = alTop
          Caption = 'Zn'#283'n'#237' kalibra'#269'n'#237'ho postupu'
          TabOrder = 1
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 274
          Width = 1050
          Height = 433
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          DataField = 'Zneni'
          DataSource = dm_ciselniky.DataSource_kalipostup
          TabOrder = 2
          ExplicitTop = 300
          ExplicitHeight = 407
        end
      end
      object TabSheet21: TTabSheet
        Caption = 'Kalibra'#269'n'#237' st'#345'ediska'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object ActionToolBar12: TActionToolBar
          Left = 0
          Top = 0
          Width = 1050
          Height = 26
          ActionManager = dm_ciselniky.ActionManager1
          Caption = 'ActionToolBar12'
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
        object DBGrid17: TDBGrid
          Left = 0
          Top = 26
          Width = 1050
          Height = 681
          Align = alClient
          DataSource = dm_ciselniky.DataSource_kalstrediska
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Kod'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nazev'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ulice'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Mesto'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PSC'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Poznamky'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dokument'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Telefon'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DIC'
              Width = 64
              Visible = True
            end>
        end
      end
      object TabSheet22: TTabSheet
        Caption = 'Z'#225'vod (Podniky)'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid18: TDBGrid
          Left = 0
          Top = 0
          Width = 1050
          Height = 707
          Align = alClient
          DataSource = dm_ciselniky.DataSource_zavody
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Kod'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nazev'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Adresa'
              Width = 300
              Visible = True
            end>
        end
      end
      object TabSheet23: TTabSheet
        Caption = 'Osoby / Vlastn'#237'k m'#283#345'idel'
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbg_osoby: TDBGrid
          Left = 0
          Top = 0
          Width = 1050
          Height = 707
          Align = alClient
          DataSource = dm_ciselniky.DataSource_osoby
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Osobni_cislo'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Jmeno'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ulice'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PSC'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Mesto'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Telefon'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Mail'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Kod_zavodu'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Neaktivni'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Firma'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KodFunkce'
              Width = 64
              Visible = True
            end>
        end
      end
      object TabSheet24: TTabSheet
        Caption = 'Pracovi'#353't'#283
        ImageIndex = 6
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid20: TDBGrid
          Left = 0
          Top = 0
          Width = 1050
          Height = 707
          Align = alClient
          DataSource = dm_ciselniky.DataSource_pracoviste
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'kod'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nazev'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tel'
              Width = 158
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Width = 250
              Visible = True
            end>
        end
      end
      object TabSheet28: TTabSheet
        Caption = 'Dodavatel'#233
        ImageIndex = 10
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid23: TDBGrid
          Left = 0
          Top = 0
          Width = 1050
          Height = 707
          Align = alClient
          DataSource = dm_ciselniky.DataSource_dodavatele
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Kod_dodavatele'
              Width = 80
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
              FieldName = 'ICO'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DIC'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ulice'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PSC'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Mesto'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Stat'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Telefon'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'POBOX'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mail'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'www'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'perioda'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Schvaleny'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Platnost_certifikace'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Pozn'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Mobil'
              Width = 185
              Visible = True
            end>
        end
      end
      object TabSheet31: TTabSheet
        Caption = 'Texty '#250'dr'#382'by'
        ImageIndex = 13
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid26: TDBGrid
          Left = 0
          Top = 0
          Width = 1050
          Height = 707
          Align = alClient
          DataSource = dm_ciselniky.DataSource_txtudrzby
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Kod'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Texty'
              Width = 300
              Visible = True
            end>
        end
      end
      object TabSheet32: TTabSheet
        Caption = 'V'#253'robce m'#283#345'idel'
        ImageIndex = 14
        object DBGrid27: TDBGrid
          Left = 0
          Top = 0
          Width = 1050
          Height = 707
          Align = alClient
          DataSource = dm_ciselniky.DataSource_vyrmeridel
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Kod'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nazev'
              Width = 64
              Visible = True
            end>
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1060
    Height = 29
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 1035
      Top = 2
      Width = 23
      Height = 25
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
  end
end

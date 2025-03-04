object win_vydejna_out: Twin_vydejna_out
  Left = 0
  Top = 0
  Caption = 'V'#253'dej m'#283#345'idel'
  ClientHeight = 203
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 433
    Height = 105
    Caption = 'V'#253'dej komu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DBLookUp_Jmeno: TDBLookupComboBox
      Left = 72
      Top = 24
      Width = 145
      Height = 21
      DataField = 'Os_cislo_vyp'
      DataSource = dm_vydejmeridel.DataSource_Seznam_meridel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'Osobni_cislo'
      ListField = 'Jmeno'
      ListSource = dm_vydejmeridel.DataSource_osoby
      ParentFont = False
      TabOrder = 0
    end
    object StaticText1: TStaticText
      Left = 15
      Top = 28
      Width = 39
      Height = 17
      Caption = 'Jm'#233'no:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object StaticText2: TStaticText
      Left = 15
      Top = 53
      Width = 58
      Height = 17
      Caption = 'Pracovi'#353't'#283':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBLook_prac: TDBLookupComboBox
      Left = 72
      Top = 49
      Width = 145
      Height = 21
      DataField = 'Pracoviste_kod_vyp'
      DataSource = dm_vydejmeridel.DataSource_Seznam_meridel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'kod'
      ListField = 'Nazev'
      ListSource = dm_vydejmeridel.DataSource_pracoviste
      ParentFont = False
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 119
    Width = 433
    Height = 74
    Caption = 'M'#283#345'idlo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object StaticText3: TStaticText
      Left = 15
      Top = 32
      Width = 76
      Height = 17
      Caption = 'Eviden'#269'n'#237' '#269#237'slo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object evdcis_edit: TEdit
      Left = 96
      Top = 28
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 447
    Top = 155
    Width = 98
    Height = 40
    Caption = 'Dokon'#269'it v'#253'dej'
    TabOrder = 2
    OnClick = Button1Click
  end
end

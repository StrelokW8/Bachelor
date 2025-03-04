object Vydej_in_win: TVydej_in_win
  Left = 0
  Top = 0
  Caption = 'P'#345#237'jem m'#283#345'idel'
  ClientHeight = 160
  ClientWidth = 574
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
    Height = 73
    Caption = 'Vr'#225'til'
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
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 87
    Width = 433
    Height = 66
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
      Left = 97
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
  object Over_edit: TButton
    Left = 453
    Top = 115
    Width = 113
    Height = 40
    Caption = 'Dokon'#269'it p'#345#237'jem'
    TabOrder = 2
    OnClick = Over_editClick
  end
end

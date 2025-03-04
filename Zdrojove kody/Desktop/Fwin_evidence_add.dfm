object win_evidence_add: Twin_evidence_add
  Left = 0
  Top = 0
  Caption = 'Nov'#253' z'#225'znam o m'#283#345'idle'
  ClientHeight = 286
  ClientWidth = 387
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
    Left = 0
    Top = 0
    Width = 387
    Height = 286
    Align = alClient
    TabOrder = 0
    object GridPanel1: TGridPanel
      Left = 2
      Top = 73
      Width = 383
      Height = 107
      Align = alTop
      Anchors = [akLeft, akTop, akBottom]
      BevelInner = bvRaised
      BevelKind = bkSoft
      Caption = 'GridPanel1'
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 125.000000000000000000
        end
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = StaticText1
          Row = 0
        end
        item
          Column = 0
          Control = StaticText2
          Row = 1
        end
        item
          Column = 1
          Control = pl_evcis
          Row = 1
        end
        item
          Column = 1
          Control = pl_typ
          Row = 0
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end
        item
          SizeStyle = ssAuto
        end>
      ShowCaption = False
      TabOrder = 0
      object StaticText1: TStaticText
        Left = 2
        Top = 34
        Width = 125
        Height = 17
        Align = alBottom
        Caption = 'Typ m'#283#345'idla:'
        TabOrder = 0
      end
      object StaticText2: TStaticText
        Left = 2
        Top = 83
        Width = 125
        Height = 17
        Align = alBottom
        Caption = 'Eviden'#269'n'#237' '#269#237'slo:'
        TabOrder = 1
      end
      object pl_evcis: TEdit
        Left = 127
        Top = 79
        Width = 250
        Height = 21
        Align = alBottom
        TabOrder = 2
      end
      object pl_typ: TJvDBLookupEdit
        Left = 127
        Top = 30
        Width = 250
        Height = 21
        LookupDisplay = 'Nazev'
        LookupField = 'Kod'
        LookupSource = dm_evidence.DataSource_typmeridel
        Align = alBottom
        TabOrder = 3
        Text = ''
        OnExit = pl_typ1Exit
      end
    end
    object Button1: TButton
      Left = 149
      Top = 233
      Width = 113
      Height = 50
      Caption = 'Ok'
      TabOrder = 1
      OnClick = ButtonInsert
    end
    object Button2: TButton
      Left = 268
      Top = 233
      Width = 116
      Height = 50
      Caption = 'Zru'#353'it'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Panel1: TPanel
      Left = 2
      Top = 180
      Width = 383
      Height = 25
      Align = alTop
      BevelEdges = []
      BevelOuter = bvNone
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 3
      StyleElements = []
    end
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 383
      Height = 58
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel2'
      ShowCaption = False
      TabOrder = 4
      object StaticText4: TStaticText
        Left = 0
        Top = 0
        Width = 383
        Height = 58
        Align = alClient
        Caption = 
          'Eviden'#269'n'#237' '#269#237'slo m'#283#345'idla se generuje ve tvaru: K'#243'd typu m'#283#345'idla /' +
          ' Po'#345'adov'#233' '#269#237'slo m'#283#345'idla'
        Color = 6313157
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = dmmain.ADOConnection_metr
    Parameters = <>
    Left = 24
    Top = 228
  end
end

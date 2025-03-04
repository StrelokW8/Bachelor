object form_main: Tform_main
  Left = 0
  Top = 0
  Caption = 'MEFT - '#344#237'zen'#237' metrologie'
  ClientHeight = 543
  ClientWidth = 1089
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 0
    Width = 1089
    Height = 28
    ActionManager = dmmain.ActionManager1
    Caption = 'ActionToolBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    EdgeBorders = [ebTop, ebBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 28
    Width = 1089
    Height = 23
    Caption = 'ToolBar1'
    TabOrder = 1
    object b_evd: TButton
      Left = 0
      Top = 0
      Width = 105
      Height = 22
      Align = alLeft
      Caption = 'Evidence m'#283#345'idel'
      TabOrder = 0
      OnClick = b_evdClick
    end
    object b_vydejmer: TButton
      Left = 105
      Top = 0
      Width = 112
      Height = 22
      Caption = 'V'#253'dejna m'#283#345'idel'
      TabOrder = 1
      OnClick = b_vydejmerClick
    end
    object b_analyz: TButton
      Left = 217
      Top = 0
      Width = 88
      Height = 22
      Align = alLeft
      Caption = 'Anal'#253'zy'
      TabOrder = 2
      OnClick = b_analyzClick
    end
    object b_cisel: TButton
      Left = 305
      Top = 0
      Width = 88
      Height = 22
      Caption = #268#237'seln'#237'ky'
      TabOrder = 3
      OnClick = b_ciselClick
    end
  end
  object pc_hlavni: TPageControl
    Left = 0
    Top = 51
    Width = 1089
    Height = 492
    Align = alClient
    DockSite = True
    MultiLine = True
    TabOrder = 2
    TabPosition = tpRight
    OnGetSiteInfo = pc_hlavniGetSiteInfo
  end
end

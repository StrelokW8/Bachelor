object win_setting_main: Twin_setting_main
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Nastaven'#237' p'#345'ipojen'#237' k SQL serveru'
  ClientHeight = 180
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    513
    180)
  PixelsPerInch = 96
  TextHeight = 13
  object Edit_login: TEdit
    Left = 106
    Top = 20
    Width = 385
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object StaticText1: TStaticText
    Left = 25
    Top = 22
    Width = 33
    Height = 17
    Caption = 'Login:'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 327
    Top = 116
    Width = 164
    Height = 41
    Anchors = [akTop, akRight]
    Caption = 'Potvrdit'
    TabOrder = 2
    OnClick = Button1Click
  end
  object StaticText2: TStaticText
    Left = 25
    Top = 51
    Width = 34
    Height = 17
    Caption = 'Heslo:'
    TabOrder = 3
  end
  object Edit_hes: TEdit
    Left = 106
    Top = 50
    Width = 385
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    PasswordChar = '*'
    TabOrder = 4
  end
  object Edit_datasource: TEdit
    Left = 106
    Top = 80
    Width = 385
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 5
  end
  object StaticText3: TStaticText
    Left = 25
    Top = 83
    Width = 66
    Height = 17
    Caption = 'Data source:'
    TabOrder = 6
  end
end

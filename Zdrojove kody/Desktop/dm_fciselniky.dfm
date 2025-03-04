object dm_ciselniky: Tdm_ciselniky
  OldCreateOrder = False
  Height = 712
  Width = 970
  object ActionManager1: TActionManager
    ActionBars = <
      item
      end
      item
        Items = <
          item
            Action = OpenDoc
            Caption = '&Otev'#345#237't dokument'
            ImageIndex = 0
          end>
      end>
    Images = ImageList1
    Left = 40
    Top = 16
    StyleName = 'Platform Default'
    object OtevritPostup: TAction
      Caption = 'Otev'#345#237't '
      ImageIndex = 0
      OnExecute = OtevritPostupExecute
    end
    object OpenDoc: TAction
      Caption = 'Otev'#345#237't dokument'
      ImageIndex = 0
      OnExecute = OpenDocExecute
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 128
    Top = 16
    Bitmap = {
      494C010101000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FFFFFF
      FFFFFFFFFFFF9C8B77FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFF9C8B77FF9C8B77FF9C8B77FF9C8B77FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FFFFFF
      FFFFFFFFFFFF9C8B77FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B77FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B77FF9C8B77FF9C8B
      77FF9C8B77FF9C8B77FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B77FFFFFFFFFFF9F8
      F7FFAA9C8CFE61574CC700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B77FFF9F8F7FFAD9E
      8FFF6B6054D10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B77FFAC9D8EFF6359
      4EC8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B77FF9C8B
      77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF9C8B77FF64594ECA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ADOQuery_Kategorie_mer: TADOQuery
    Connection = dmmain.ADOConnection_metr
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM kategorie')
    Left = 56
    Top = 512
    object ADOQuery_Kategorie_merKod: TWideStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'Kod'
      Size = 10
    end
    object ADOQuery_Kategorie_merNazev: TWideStringField
      DisplayLabel = 'N'#225'zev'
      FieldName = 'Nazev'
      Size = 60
    end
  end
  object DataSource_kategorie_meridel: TDataSource
    DataSet = ADOQuery_Kategorie_mer
    Left = 56
    Top = 568
  end
  object ADOQuery_subkategorie: TADOQuery
    Connection = dmmain.ADOConnection_metr
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM subkategorie')
    Left = 224
    Top = 512
    object ADOQuery_subkategorieKod: TWideStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'Kod'
      Size = 10
    end
    object ADOQuery_subkategorieSubkod: TWideStringField
      DisplayLabel = 'Subk'#243'd'
      FieldName = 'Subkod'
      Size = 10
    end
    object ADOQuery_subkategorieNazev: TWideStringField
      DisplayLabel = 'N'#225'zev'
      FieldName = 'Nazev'
      Size = 60
    end
  end
  object DataSource_subkategorie: TDataSource
    DataSet = ADOQuery_subkategorie
    Left = 232
    Top = 568
  end
  object DataSource_typmeridel: TDataSource
    DataSet = ADOQuery_typmeridel
    Left = 376
    Top = 576
  end
  object ADOQuery_kalipostup: TADOQuery
    Connection = dmmain.ADOConnection_metr
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM metr..kalpostupy')
    Left = 512
    Top = 512
    object ADOQuery_kalipostupKod: TWideStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'Kod'
      Size = 10
    end
    object ADOQuery_kalipostupCislo_kalpostupu: TWideStringField
      DisplayLabel = #268#237'slo kalibra'#269'n'#237'ho postupu'
      FieldName = 'Cislo_kalpostupu'
    end
    object ADOQuery_kalipostupNazev: TWideStringField
      DisplayLabel = 'N'#225'zev'
      FieldName = 'Nazev'
      Size = 500
    end
    object ADOQuery_kalipostupTeplota: TWideStringField
      FieldName = 'Teplota'
    end
    object ADOQuery_kalipostupTlak: TWideStringField
      FieldName = 'Tlak'
    end
    object ADOQuery_kalipostupVlhkost: TWideStringField
      FieldName = 'Vlhkost'
    end
    object ADOQuery_kalipostupZneni: TWideMemoField
      DisplayLabel = 'Zn'#283'n'#237
      FieldName = 'Zneni'
      BlobType = ftWideMemo
    end
  end
  object DataSource_kalipostup: TDataSource
    DataSet = ADOQuery_kalipostup
    Left = 520
    Top = 576
  end
  object ADOQuery_kalstrediska: TADOQuery
    Connection = dmmain.ADOConnection_metr
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM metr..kailbstrediska')
    Left = 656
    Top = 512
    object ADOQuery_kalstrediskaKod: TWideStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'Kod'
      Size = 10
    end
    object ADOQuery_kalstrediskaNazev: TWideStringField
      DisplayLabel = 'N'#225'zev'
      FieldName = 'Nazev'
      Size = 80
    end
    object ADOQuery_kalstrediskaUlice: TWideStringField
      FieldName = 'Ulice'
      Size = 30
    end
    object ADOQuery_kalstrediskaMesto: TWideStringField
      DisplayLabel = 'M'#283'sto'
      FieldName = 'Mesto'
      Size = 25
    end
    object ADOQuery_kalstrediskaPSC: TWideStringField
      DisplayLabel = 'PS'#268
      FieldName = 'PSC'
      Size = 6
    end
    object ADOQuery_kalstrediskaPoznamky: TWideStringField
      DisplayLabel = 'Pozn'#225'mky'
      FieldName = 'Poznamky'
      Size = 200
    end
    object ADOQuery_kalstrediskaDokument: TWideStringField
      FieldName = 'Dokument'
      Size = 250
    end
    object ADOQuery_kalstrediskaEmail: TWideStringField
      FieldName = 'Email'
      Size = 100
    end
    object ADOQuery_kalstrediskaTelefon: TWideStringField
      FieldName = 'Telefon'
      Size = 40
    end
    object ADOQuery_kalstrediskaICO: TWideStringField
      FieldName = 'ICO'
    end
    object ADOQuery_kalstrediskaDIC: TWideStringField
      FieldName = 'DIC'
    end
  end
  object DataSource_kalstrediska: TDataSource
    DataSet = ADOQuery_kalstrediska
    Left = 656
    Top = 576
  end
  object ADOQuery_zavod: TADOQuery
    Connection = dmmain.ADOConnection_vsdata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM vsdata..Zavody')
    Left = 792
    Top = 512
    object ADOQuery_zavodKod: TWideStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'Kod'
      Size = 30
    end
    object ADOQuery_zavodNazev: TWideStringField
      DisplayLabel = 'N'#225'zev'
      FieldName = 'Nazev'
      Size = 50
    end
    object ADOQuery_zavodAdresa: TWideStringField
      FieldName = 'Adresa'
      Size = 200
    end
  end
  object DataSource_zavody: TDataSource
    DataSet = ADOQuery_zavod
    Left = 792
    Top = 576
  end
  object ADOQuery_osoby: TADOQuery
    Connection = dmmain.ADOConnection_vsdata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM vsdata..osoby')
    Left = 56
    Top = 368
    object ADOQuery_osobyOsobni_cislo: TWideStringField
      DisplayLabel = 'Osobn'#237' '#269#237'slo'
      FieldName = 'Osobni_cislo'
      Size = 10
    end
    object ADOQuery_osobyJmeno: TWideStringField
      DisplayLabel = 'Jm'#233'no'
      FieldName = 'Jmeno'
      Size = 70
    end
    object ADOQuery_osobyUlice: TWideStringField
      FieldName = 'Ulice'
      Size = 50
    end
    object ADOQuery_osobyPSC: TWideStringField
      DisplayLabel = 'PS'#268
      FieldName = 'PSC'
      Size = 8
    end
    object ADOQuery_osobyMesto: TWideStringField
      DisplayLabel = 'M'#283'sto'
      FieldName = 'Mesto'
      Size = 50
    end
    object ADOQuery_osobyTelefon: TWideStringField
      FieldName = 'Telefon'
      Size = 50
    end
    object ADOQuery_osobyMail: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'Mail'
      Size = 150
    end
    object ADOQuery_osobyKod_zavodu: TWideStringField
      DisplayLabel = 'K'#243'd z'#225'vodu'
      FieldName = 'Kod_zavodu'
      Size = 30
    end
    object ADOQuery_osobyNeaktivni: TBooleanField
      DisplayLabel = 'Neaktivn'#237
      FieldName = 'Neaktivni'
    end
    object ADOQuery_osobyFirma: TWideStringField
      FieldName = 'Firma'
      Size = 10
    end
    object ADOQuery_osobyKodFunkce: TWideStringField
      DisplayLabel = 'K'#243'd funkce'
      FieldName = 'KodFunkce'
      Size = 15
    end
  end
  object DataSource_osoby: TDataSource
    DataSet = ADOQuery_osoby
    Left = 56
    Top = 424
  end
  object ADOQuery_pracoviste: TADOQuery
    Connection = dmmain.ADOConnection_vsdata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM vsdata..pracoviste')
    Left = 168
    Top = 368
    object ADOQuery_pracovistekod: TWideStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'kod'
      Size = 15
    end
    object ADOQuery_pracovisteNazev: TWideStringField
      DisplayLabel = 'N'#225'zev'
      FieldName = 'Nazev'
      Size = 100
    end
    object ADOQuery_pracovisteTel: TWideStringField
      DisplayLabel = 'Telefon'
      FieldName = 'Tel'
      Size = 10
    end
    object ADOQuery_pracovisteEmail: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'Email'
      Size = 250
    end
  end
  object DataSource_pracoviste: TDataSource
    DataSet = ADOQuery_pracoviste
    Left = 176
    Top = 424
  end
  object ADOQuery_dodavatele: TADOQuery
    Connection = dmmain.ADOConnection_vsdata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM vsdata..dodavatele')
    Left = 600
    Top = 368
    object ADOQuery_dodavateleKod_dodavatele: TWideStringField
      DisplayLabel = 'K'#243'd dodavatele'
      FieldName = 'Kod_dodavatele'
      Size = 15
    end
    object ADOQuery_dodavateleNazev: TWideStringField
      DisplayLabel = 'N'#225'zev'
      FieldName = 'Nazev'
      Size = 150
    end
    object ADOQuery_dodavateleICO: TWideStringField
      FieldName = 'ICO'
    end
    object ADOQuery_dodavateleDIC: TWideStringField
      FieldName = 'DIC'
    end
    object ADOQuery_dodavateleUlice: TWideStringField
      FieldName = 'Ulice'
      Size = 50
    end
    object ADOQuery_dodavatelePSC: TWideStringField
      DisplayLabel = 'PS'#268
      FieldName = 'PSC'
      Size = 8
    end
    object ADOQuery_dodavateleMesto: TWideStringField
      DisplayLabel = 'M'#283'sto'
      FieldName = 'Mesto'
      Size = 50
    end
    object ADOQuery_dodavateleStat: TWideStringField
      DisplayLabel = 'St'#225't'
      FieldName = 'Stat'
      Size = 80
    end
    object ADOQuery_dodavateleTelefon: TWideStringField
      DisplayLabel = 'Telef'#243'n'
      FieldName = 'Telefon'
      Size = 50
    end
    object ADOQuery_dodavatelePOBOX: TWideStringField
      FieldName = 'POBOX'
    end
    object ADOQuery_dodavatelemail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'mail'
      Size = 50
    end
    object ADOQuery_dodavatelewww: TWideStringField
      DisplayLabel = 'Web'
      FieldName = 'www'
      Size = 30
    end
    object ADOQuery_dodavateleperioda: TSmallintField
      DisplayLabel = 'Perioda objedn'#225'vky'
      FieldName = 'perioda'
    end
    object ADOQuery_dodavateleSchvaleny: TBooleanField
      DisplayLabel = 'Schv'#225'len'#253
      FieldName = 'Schvaleny'
    end
    object ADOQuery_dodavatelePlatnost_certifikace: TDateTimeField
      DisplayLabel = 'Platnost certifikace'
      FieldName = 'Platnost_certifikace'
    end
    object ADOQuery_dodavatelePozn: TWideStringField
      DisplayLabel = 'Pozn'#225'mky'
      FieldName = 'Pozn'
      Size = 1000
    end
    object ADOQuery_dodavateleMobil: TWideStringField
      FieldName = 'Mobil'
      Size = 30
    end
  end
  object DataSource_dodavatele: TDataSource
    DataSet = ADOQuery_dodavatele
    Left = 600
    Top = 424
  end
  object ADOQuery_txtudrzby: TADOQuery
    Connection = dmmain.ADOConnection_metr
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM metr..UdrzbaTexty')
    Left = 184
    Top = 232
    object ADOQuery_txtudrzbyKod: TWideStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'Kod'
      Size = 8
    end
    object ADOQuery_txtudrzbyTexty: TWideStringField
      DisplayLabel = 'Dokument'
      FieldName = 'Texty'
      Size = 250
    end
  end
  object DataSource_txtudrzby: TDataSource
    DataSet = ADOQuery_txtudrzby
    Left = 176
    Top = 304
  end
  object ADOQuery_vyrmeridel: TADOQuery
    Connection = dmmain.ADOConnection_vsdata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM vsdata..VyrobceMer')
    Left = 336
    Top = 240
    object ADOQuery_vyrmeridelKod: TWideStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'Kod'
      Size = 15
    end
    object ADOQuery_vyrmeridelNazev: TWideStringField
      DisplayLabel = 'N'#225'zev'
      FieldName = 'Nazev'
      Size = 50
    end
  end
  object DataSource_vyrmeridel: TDataSource
    DataSet = ADOQuery_vyrmeridel
    Left = 328
    Top = 304
  end
  object ADOQuery_typmeridel: TADOQuery
    Connection = dmmain.ADOConnection_metr
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM metr..typymeridel')
    Left = 368
    Top = 512
    object ADOQuery_typmeridelKod: TWideStringField
      DisplayLabel = 'K'#243'd'
      FieldName = 'Kod'
      Size = 15
    end
    object ADOQuery_typmeridelNazev: TWideStringField
      DisplayLabel = 'N'#225'zev'
      FieldName = 'Nazev'
      Size = 40
    end
    object ADOQuery_typmeridelPopis: TWideStringField
      FieldName = 'Popis'
      Size = 200
    end
    object ADOQuery_typmeridelCasKalibrace: TFloatField
      DisplayLabel = #268'as kalibrace'
      FieldName = 'CasKalibrace'
    end
    object ADOQuery_typmeridelNadrazenyTyp: TWideStringField
      DisplayLabel = 'Nad'#345'azen'#253' typ'
      FieldName = 'NadrazenyTyp'
      Size = 15
    end
  end
end

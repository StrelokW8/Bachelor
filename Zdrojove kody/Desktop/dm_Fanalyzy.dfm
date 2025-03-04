object dm_analyzy: Tdm_analyzy
  OldCreateOrder = False
  Height = 599
  Width = 988
  object ADOQuery_typmeridel: TADOQuery
    Connection = dmmain.ADOConnection_metr
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM metr..typymeridel')
    Left = 64
    Top = 40
  end
  object DataSource_typmeridel: TDataSource
    DataSet = ADOQuery_typmeridel
    Left = 64
    Top = 95
  end
  object ADOQuery_kategorie: TADOQuery
    Connection = dmmain.ADOConnection_metr
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM metr..kategorie')
    Left = 208
    Top = 40
  end
  object DataSource_kategorie: TDataSource
    DataSet = ADOQuery_kategorie
    Left = 208
    Top = 96
  end
  object ADOQuery_hlEvidence: TADOQuery
    Connection = dmmain.ADOConnection_metr
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM metr..evidence')
    Left = 72
    Top = 152
    object ADOQuery_hlEvidenceEvidencni_cislo: TWideStringField
      FieldName = 'Evidencni_cislo'
    end
    object ADOQuery_hlEvidencekategorie_kod: TWideStringField
      FieldName = 'kategorie_kod'
    end
    object ADOQuery_hlEvidenceVyr_cis: TWideStringField
      FieldName = 'Vyr_cis'
      Size = 30
    end
    object ADOQuery_hlEvidenceNazev: TWideStringField
      FieldName = 'Nazev'
      Size = 150
    end
    object ADOQuery_hlEvidenceTyp_kod: TWideStringField
      FieldName = 'Typ_kod'
      Size = 15
    end
    object ADOQuery_hlEvidenceDatum_kalibrace: TDateTimeField
      FieldName = 'Datum_kalibrace'
    end
    object ADOQuery_hlEvidenceDoba_platnosti: TIntegerField
      FieldName = 'Doba_platnosti'
    end
    object ADOQuery_hlEvidenceKonec_platnosti: TDateTimeField
      FieldName = 'Konec_platnosti'
    end
    object ADOQuery_hlEvidenceKalibracni_metoda: TWideStringField
      FieldName = 'Kalibracni_metoda'
    end
    object ADOQuery_hlEvidenceKalibracni_postup: TWideStringField
      FieldName = 'Kalibracni_postup'
    end
    object ADOQuery_hlEvidenceRok_vyroby: TSmallintField
      FieldName = 'Rok_vyroby'
    end
    object ADOQuery_hlEvidenceDo_provozu: TDateTimeField
      FieldName = 'Do_provozu'
    end
    object ADOQuery_hlEvidenceVyrobce: TWideStringField
      FieldName = 'Vyrobce'
      Size = 50
    end
    object ADOQuery_hlEvidencePovolena_odchylka: TWideStringField
      FieldName = 'Povolena_odchylka'
    end
    object ADOQuery_hlEvidenceNejistota: TWideStringField
      FieldName = 'Nejistota'
    end
    object ADOQuery_hlEvidenceMerici_velicina: TWideStringField
      FieldName = 'Merici_velicina'
      Size = 10
    end
    object ADOQuery_hlEvidenceTrida_presnosti: TWideStringField
      FieldName = 'Trida_presnosti'
      Size = 80
    end
    object ADOQuery_hlEvidencePracoviste_kod_vl: TWideStringField
      FieldName = 'Pracoviste_kod_vl'
      Size = 15
    end
    object ADOQuery_hlEvidenceOs_cislo_vl: TWideStringField
      FieldName = 'Os_cislo_vl'
      Size = 10
    end
    object ADOQuery_hlEvidenceDo_uzivani: TDateTimeField
      FieldName = 'Do_uzivani'
    end
    object ADOQuery_hlEvidenceKalibroval: TWideStringField
      FieldName = 'Kalibroval'
      Size = 50
    end
    object ADOQuery_hlEvidenceCis_protokolu: TWideStringField
      FieldName = 'Cis_protokolu'
      Size = 30
    end
    object ADOQuery_hlEvidenceVysledek: TWideStringField
      FieldName = 'Vysledek'
      Size = 40
    end
    object ADOQuery_hlEvidenceOs_cislo_vyp: TWideStringField
      FieldName = 'Os_cislo_vyp'
      Size = 10
    end
    object ADOQuery_hlEvidencePracoviste_kod_vyp: TWideStringField
      FieldName = 'Pracoviste_kod_vyp'
      Size = 15
    end
    object ADOQuery_hlEvidenceVypujceno: TDateTimeField
      FieldName = 'Vypujceno'
    end
    object ADOQuery_hlEvidencePoznamka: TWideStringField
      FieldName = 'Poznamka'
      Size = 400
    end
    object ADOQuery_hlEvidenceKalibracekde: TSmallintField
      FieldName = 'Kalibracekde'
    end
    object ADOQuery_hlEvidenceKal_stredisko: TWideStringField
      FieldName = 'Kal_stredisko'
      Size = 10
    end
    object ADOQuery_hlEvidencekalprot_cesta: TWideStringField
      FieldName = 'kalprot_cesta'
      Size = 250
    end
    object ADOQuery_hlEvidenceStav_meridla: TWideStringField
      FieldName = 'Stav_meridla'
      Size = 15
    end
    object ADOQuery_hlEvidenceObor_mereni: TWideStringField
      FieldName = 'Obor_mereni'
      Size = 30
    end
    object ADOQuery_hlEvidenceZacleneni: TWideStringField
      FieldName = 'Zacleneni'
      Size = 30
    end
    object ADOQuery_hlEvidenceKod_zavodu: TWideStringField
      FieldName = 'Kod_zavodu'
      Size = 10
    end
    object ADOQuery_hlEvidenceDatum_udrzby: TDateTimeField
      FieldName = 'Datum_udrzby'
    end
    object ADOQuery_hlEvidenceNasledna_udrzba: TDateTimeField
      FieldName = 'Nasledna_udrzba'
    end
    object ADOQuery_hlEvidenceProvedl_udrzbu: TWideStringField
      FieldName = 'Provedl_udrzbu'
      Size = 50
    end
    object ADOQuery_hlEvidencePozn_vl: TWideStringField
      FieldName = 'Pozn_vl'
      Size = 40
    end
    object ADOQuery_hlEvidenceTypPeriody: TSmallintField
      FieldName = 'TypPeriody'
    end
    object ADOQuery_hlEvidenceCenaMer: TFloatField
      FieldName = 'CenaMer'
    end
    object ADOQuery_hlEvidenceNakladyNaKal: TFloatField
      FieldName = 'NakladyNaKal'
    end
    object ADOQuery_hlEvidenceMetrRetezec: TWideStringField
      FieldName = 'MetrRetezec'
    end
    object ADOQuery_hlEvidenceInvCislo: TWideStringField
      FieldName = 'InvCislo'
    end
    object ADOQuery_hlEvidenceDodavatel_mer: TWideStringField
      FieldName = 'Dodavatel_mer'
      Size = 150
    end
    object ADOQuery_hlEvidenceObj_cislo: TWideStringField
      FieldName = 'Obj_cislo'
      Size = 15
    end
    object ADOQuery_hlEvidenceCis_objednavky: TWideStringField
      FieldName = 'Cis_objednavky'
    end
    object ADOQuery_hlEvidencePoznKalibrace: TWideStringField
      FieldName = 'PoznKalibrace'
      Size = 400
    end
    object ADOQuery_hlEvidencePresnost: TWideStringField
      FieldName = 'Presnost'
      Size = 250
    end
    object ADOQuery_hlEvidenceTypoveOznaceni: TWideStringField
      FieldName = 'TypoveOznaceni'
      Size = 30
    end
    object ADOQuery_hlEvidenceDatumVyrazeni: TDateTimeField
      FieldName = 'DatumVyrazeni'
    end
    object ADOQuery_hlEvidenceOVyslRohodl: TWideStringField
      FieldName = 'OVyslRohodl'
      Size = 70
    end
    object ADOQuery_hlEvidenceObjDnuPred: TSmallintField
      FieldName = 'ObjDnuPred'
    end
    object ADOQuery_hlEvidenceCasKalibrace: TFloatField
      FieldName = 'CasKalibrace'
    end
    object ADOQuery_hlEvidenceRozsah: TStringField
      FieldName = 'Rozsah'
      Size = 10
    end
    object ADOQuery_hlEvidencekal_postup_posl: TStringField
      FieldName = 'kal_postup_posl'
      Size = 50
    end
  end
  object DataSource_hlEvidence: TDataSource
    DataSet = ADOQuery_hlEvidence
    Left = 72
    Top = 224
  end
  object ADOQuery_osoby: TADOQuery
    Connection = dmmain.ADOConnection_vsdata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM vsdata..osoby')
    Left = 344
    Top = 40
    object ADOQuery_osobyOsobni_cislo: TWideStringField
      FieldName = 'Osobni_cislo'
      Size = 10
    end
    object ADOQuery_osobyJmeno: TWideStringField
      FieldName = 'Jmeno'
      Size = 70
    end
    object ADOQuery_osobyUlice: TWideStringField
      FieldName = 'Ulice'
      Size = 50
    end
    object ADOQuery_osobyPSC: TWideStringField
      FieldName = 'PSC'
      Size = 8
    end
    object ADOQuery_osobyMesto: TWideStringField
      FieldName = 'Mesto'
      Size = 50
    end
    object ADOQuery_osobyTelefon: TWideStringField
      FieldName = 'Telefon'
      Size = 50
    end
    object ADOQuery_osobyMail: TWideStringField
      FieldName = 'Mail'
      Size = 150
    end
    object ADOQuery_osobyKod_zavodu: TWideStringField
      FieldName = 'Kod_zavodu'
      Size = 30
    end
    object ADOQuery_osobyNeaktivni: TBooleanField
      FieldName = 'Neaktivni'
    end
    object ADOQuery_osobyFirma: TWideStringField
      FieldName = 'Firma'
      Size = 10
    end
    object ADOQuery_osobyKodFunkce: TWideStringField
      FieldName = 'KodFunkce'
      Size = 15
    end
  end
  object DataSource_osoby: TDataSource
    DataSet = ADOQuery_osoby
    Left = 344
    Top = 112
  end
  object ADOQuery_zavody: TADOQuery
    Connection = dmmain.ADOConnection_vsdata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM vsdata..Zavody')
    Left = 336
    Top = 176
    object ADOQuery_zavodyKod: TWideStringField
      FieldName = 'Kod'
      Size = 30
    end
    object ADOQuery_zavodyNazev: TWideStringField
      FieldName = 'Nazev'
      Size = 50
    end
    object ADOQuery_zavodyAdresa: TWideStringField
      FieldName = 'Adresa'
      Size = 200
    end
  end
  object DataSource_zavody: TDataSource
    DataSet = ADOQuery_zavody
    Left = 336
    Top = 232
  end
  object ADOQuery_pracoviste: TADOQuery
    Connection = dmmain.ADOConnection_vsdata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM vsdata..pracoviste')
    Left = 456
    Top = 40
    object ADOQuery_pracovistekod: TWideStringField
      FieldName = 'kod'
      Size = 15
    end
    object ADOQuery_pracovisteNazev: TWideStringField
      FieldName = 'Nazev'
      Size = 100
    end
    object ADOQuery_pracovisteTel: TWideStringField
      FieldName = 'Tel'
      Size = 10
    end
    object ADOQuery_pracovisteEmail: TWideStringField
      FieldName = 'Email'
      Size = 250
    end
  end
  object DataSource_pracoviste: TDataSource
    DataSet = ADOQuery_pracoviste
    Left = 456
    Top = 112
  end
  object DataSource_grid: TDataSource
    Left = 512
    Top = 416
  end
end

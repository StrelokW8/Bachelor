{ Invokable implementation File for TOVservis which implements IOVservis }

unit f_main;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, OVservisIntf,SysUtils,ADODB;

type


  { TOVservis }
  TOVservis = class(TInvokableClass, IOVservis)
  public

    function InfoMer(const evcis : String): string; stdcall;
    function StavMer(const evcis : String): string; stdcall;
    function VlastnikMer(const evcis : String): string; stdcall;
    function PracMer(const evcis : String): string; stdcall;
    function VyrNumMer(const evcis : String): string; stdcall;
    function DatKalMer(const evcis : String): string; stdcall;
    function TestConnection: string; stdcall;
  end;



implementation

uses form_main;

function TOVservis.InfoMer(const evcis : String): string; stdcall;
var
  sqltext,nzv : String;
  q : TADOQuery;
begin
  ///// vrati informace o meridle

  q:=TADOQuery.Create(nil);
  try
    q.ConnectionString:=formmain.pripstr;
    sqltext:=' SELECT * FROM metr..evidence'+
             ' WHERE Evidencni_cislo=N'+quotedStr(evcis);
    q.SQL.text:=sqltext;
    q.Open;
    nzv:=q.FieldByName('Nazev').AsString;
    result:=nzv;

  finally
    q.Close;
    q.Free;
  end;
end;


function TOVservis.StavMer(const evcis : String): string; stdcall;
var
  sqltext,nzv : String;
  q : TADOQuery;
begin
  ///// vrati informace o meridle

  q:=TADOQuery.Create(nil);
  try
    q.ConnectionString:=formmain.pripstr;;
    sqltext:=' SELECT * FROM metr..evidence'+
             ' WHERE Evidencni_cislo=N'+quotedStr(evcis);
    q.SQL.text:=sqltext;
    q.Open;
    nzv:=q.FieldByName('Stav_meridla').AsString;
    result:=nzv;

  finally
    q.Close;
    q.Free;
  end;
end;


function TOVservis.VlastnikMer(const evcis : String): string; stdcall;
var
  sqltext,nzv : String;
  q : TADOQuery;
begin
  ///// vrati informace o meridle

  q:=TADOQuery.Create(nil);
  try
    q.ConnectionString:=formmain.pripstr;;
    sqltext:=' SELECT * FROM metr..evidence'+
             ' WHERE Evidencni_cislo=N'+quotedStr(evcis);
    q.SQL.text:=sqltext;
    q.Open;
    nzv:=q.FieldByName('Os_cislo_vl').AsString;
    result:=nzv;

  finally
    q.Close;
    q.Free;
  end;
end;


function TOVservis.PracMer(const evcis : String): string; stdcall;
var
  sqltext,nzv : String;
  q : TADOQuery;
begin
  ///// vrati informace o meridle

  q:=TADOQuery.Create(nil);
  try
    q.ConnectionString:=formmain.pripstr;
    sqltext:=' SELECT * FROM metr..evidence'+
             ' WHERE Evidencni_cislo=N'+quotedStr(evcis);
    q.SQL.text:=sqltext;
    q.Open;
    nzv:=q.FieldByName('Pracoviste_kod_vl').AsString;
    result:=nzv;

  finally
    q.Close;
    q.Free;
  end;
end;

function TOVservis.VyrNumMer(const evcis : String): string; stdcall;
var
 sqltext,nzv : String;
  q : TADOQuery;
begin
  ///// vrati informace o meridle

  q:=TADOQuery.Create(nil);
  try
    q.ConnectionString:=formmain.pripstr;
    sqltext:=' SELECT * FROM metr..evidence'+
             ' WHERE Evidencni_cislo=N'+quotedStr(evcis);
    q.SQL.text:=sqltext;
    q.Open;
    nzv:=q.FieldByName('Vyr_cis').AsString;
    result:=nzv;

  finally
    q.Close;
    q.Free;
  end;
end;


function TOVservis.DatKalMer(const evcis : String): string; stdcall;
var
  sqltext,nzv : String;
  q : TADOQuery;
begin
  ///// vrati informace o meridle

  q:=TADOQuery.Create(nil);
  try
    q.ConnectionString:=formmain.pripstr;
    sqltext:=' SELECT * FROM metr..evidence'+
             ' WHERE Evidencni_cislo=N'+quotedStr(evcis);
    q.SQL.text:=sqltext;
    q.Open;
    nzv:=q.FieldByName('Datum_kalibrace').AsString;
    result:=nzv;

  finally
    q.Close;
    q.Free;
  end;
end;

function TOVservis.TestConnection: string; stdcall;
begin
  result := 'OK';
end;








initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TOVservis);
end.


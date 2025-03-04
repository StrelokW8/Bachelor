{ Invokable interface IOVservis }

unit OVservisIntf;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns;

type


  { Invokable interfaces must derive from IInvokable }
  IOVservis = interface(IInvokable)
  ['{FA961643-76CC-454C-AD2D-F99C66C963A0}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
   function InfoMer(const evcis : String): string; stdcall;
   function StavMer(const evcis : String): string; stdcall;
   function VlastnikMer(const evcis : String): string; stdcall;
   function PracMer(const evcis : String): string; stdcall;
   function VyrNumMer(const evcis : String): string; stdcall;
   function DatKalMer(const evcis : String): string; stdcall;
   function TestConnection: string; stdcall;
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(IOVservis));

end.

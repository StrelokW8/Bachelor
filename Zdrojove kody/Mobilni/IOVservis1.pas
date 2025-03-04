// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:8080/wsdl/IOVservis
// Version  : 1.0
// (09.04.2023 20:18:07 - - $Rev: 96726 $)
// ************************************************************************ //

unit IOVservis1;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[]


  // ************************************************************************ //
  // Namespace : urn:OVservisIntf-IOVservis
  // soapAction: urn:OVservisIntf-IOVservis#%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : IOVservisbinding
  // service   : IOVservisservice
  // port      : IOVservisPort
  // URL       : http://localhost:8080/soap/IOVservis
  // ************************************************************************ //
  IOVservis = interface(IInvokable)
  ['{625CDC59-4A3A-52DF-317A-73FCA92EC2BB}']
    function  InfoMer(const evcis: string): string; stdcall;
    function  StavMer(const evcis: string): string; stdcall;
    function  VlastnikMer(const evcis: string): string; stdcall;
    function  PracMer(const evcis: string): string; stdcall;
    function  VyrNumMer(const evcis: string): string; stdcall;
    function  DatKalMer(const evcis: string): string; stdcall;
    function  TestConnection: string; stdcall;
  end;

function GetIOVservis(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IOVservis;


implementation
  uses System.SysUtils;

function GetIOVservis(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IOVservis;
const
  defWSDL = 'http://localhost:8080/wsdl/IOVservis';
  defURL  = 'http://localhost:8080/soap/IOVservis';
  defSvc  = 'IOVservisservice';
  defPrt  = 'IOVservisPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IOVservis);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  { IOVservis }
  InvRegistry.RegisterInterface(TypeInfo(IOVservis), 'urn:OVservisIntf-IOVservis', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IOVservis), 'urn:OVservisIntf-IOVservis#%operationName%');

end.
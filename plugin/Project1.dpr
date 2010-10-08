library Project1;

uses
  ComServ,
  Unit1 in 'Unit1.pas',
  Unit2 in 'Unit2.pas' {frmplugin};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.RES}

begin
end.

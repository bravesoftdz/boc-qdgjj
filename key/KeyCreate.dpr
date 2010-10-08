program KeyCreate;

uses
  Forms,
  keycreator in 'keycreator.pas' {Form1},
  reg in 'reg.pas' {RegFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Key Creator';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TRegFrm, RegFrm);
  Application.Run;
end.

program main;

uses
  Forms,
  Unisendmsgtest in 'Unisendmsgtest.pas' {frmmain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmmain, frmmain);
  Application.Run;
end.

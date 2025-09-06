program CalcularMédia;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {LblSituacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLblSituacao, LblSituacao);
  Application.Run;
end.

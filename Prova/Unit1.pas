unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TLblSituacao = class(TForm)
    EditNota1: TEdit;
    EditNota2: TEdit;
    EditNota3: TEdit;
    BtnCalcular: TButton;
    LblMedia: TLabel;
    LblSituacao: TLabel;
    lblNota1: TLabel;
    lblNota2: TLabel;
    lblNota3: TLabel;
    procedure BtnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LblSituacao: TLblSituacao;

implementation

{$R *.dfm}

procedure TLblSituacao.BtnCalcularClick(Sender: TObject);
var
  n1, n2, n3, media: Double;
  valido: Boolean;
begin
  valido := True;

  if not TryStrToFloat(EditNota1.Text, n1) or (n1 < 0) or (n1 > 10) then
    valido := False;

  if not TryStrToFloat(EditNota2.Text, n2) or (n2 < 0) or (n2 > 10) then
    valido := False;

  if not TryStrToFloat(EditNota3.Text, n3) or (n3 < 0) or (n3 > 10) then
    valido := False;

  if not valido then
    ShowMessage('Digite apenas valores numéricos entre 0 e 10 para todas as notas.')
  else
  begin

    media := (n1 + n2 + n3) / 3;
    LblMedia.Caption := 'Média: ' + FormatFloat('0.00', media);

    if media >= 7.0 then
    begin
      LblSituacao.Caption := 'Situação: Aprovado';
      LblSituacao.Font.Color := clGreen;
    end
    else if media >= 5.0 then
    begin
      LblSituacao.Caption := 'Situação: Recuperação';
      LblSituacao.Font.Color := clOlive;
    end
    else
    begin
      LblSituacao.Caption := 'Situação: Reprovado';
      LblSituacao.Font.Color := clRed;
    end;
  end;
end;

end.

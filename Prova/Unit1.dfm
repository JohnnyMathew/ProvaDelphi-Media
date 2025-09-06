object LblSituacao: TLblSituacao
  Left = 0
  Top = 0
  Caption = 'Situa'#231#227'o'
  ClientHeight = 311
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LblMedia: TLabel
    Left = 128
    Top = 226
    Width = 33
    Height = 15
    Caption = 'M'#233'dia'
  end
  object LblSituacao: TLabel
    Left = 128
    Top = 258
    Width = 45
    Height = 15
    Caption = 'Situa'#231#227'o'
  end
  object lblNota1: TLabel
    Left = 8
    Top = 8
    Width = 38
    Height = 15
    Caption = 'Nota 1:'
  end
  object lblNota2: TLabel
    Left = 8
    Top = 80
    Width = 38
    Height = 15
    Caption = 'Nota 2:'
  end
  object lblNota3: TLabel
    Left = 8
    Top = 152
    Width = 38
    Height = 15
    Caption = 'Nota 3:'
  end
  object EditNota1: TEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object EditNota2: TEdit
    Left = 8
    Top = 101
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object EditNota3: TEdit
    Left = 8
    Top = 173
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object BtnCalcular: TButton
    Left = 8
    Top = 216
    Width = 89
    Height = 25
    Caption = 'Calcular M'#233'dia'
    TabOrder = 3
    OnClick = BtnCalcularClick
  end
end

object Fmnotes: TFmnotes
  Left = 322
  Top = 253
  Width = 416
  Height = 436
  Align = alClient
  Caption = 'Bloco de Notas'
  Color = cl3DLight
  Constraints.MaxHeight = 436
  Constraints.MaxWidth = 436
  Constraints.MinHeight = 436
  Constraints.MinWidth = 416
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 39
  object Memo: TMemo
    Left = 0
    Top = 0
    Width = 400
    Height = 400
    Align = alClient
    Color = clYellow
    Constraints.MaxHeight = 400
    Constraints.MaxWidth = 400
    Constraints.MinHeight = 400
    Constraints.MinWidth = 400
    Lines.Strings = (
      ' ')
    TabOrder = 0
  end
end

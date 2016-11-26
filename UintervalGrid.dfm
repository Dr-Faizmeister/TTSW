object gridForm: TgridForm
  Left = 0
  Top = 0
  Caption = 'Production Intervals'
  ClientHeight = 292
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object strngrd1: TStringGrid
    Left = 0
    Top = 0
    Width = 780
    Height = 225
    Align = alTop
    ColCount = 7
    FixedCols = 0
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object closeGridbtn: TButton
    Left = 344
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Apply'
    TabOrder = 1
    OnClick = closeGridbtnClick
  end
end

object Form5: TForm5
  Left = 267
  Top = 265
  Width = 437
  Height = 389
  Caption = 'Form5'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object TabbedNotebook1: TTabbedNotebook
    Left = 7
    Top = 9
    Width = 415
    Height = 345
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -11
    TabFont.Name = 'MS Sans Serif'
    TabFont.Style = []
    TabOrder = 0
    object TTabPage
      Left = 4
      Top = 27
      Caption = #1043#1088#1072#1092#1110#1082
      object BitBtn1: TBitBtn
        Left = 31
        Top = 30
        Width = 77
        Height = 30
        Cursor = crHandPoint
        Caption = #1050#1086#1083#1110#1088
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          06030000424D060300000000000036000000280000000F0000000F0000000100
          180000000000D002000000000000000000000000000000000000D8E9ECFFFFFF
          D8E9ECFFFFFFD8E9ECFFFFFFD8E9ECFFFFFFD8E9ECFFFFFFD8E9ECFFFFFFD8E9
          ECFFFFFFD8E9EC000000FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000FFFFFF000000D8E9EC000000
          00FF0000FF0000FF00000000FFFF00FFFF00FFFF00000000FF00FFFF00FFFF00
          FF000000D8E9EC000000FFFFFF00000000FF0000FF0000FF00000000FFFF00FF
          FF00FFFF00000000FF00FFFF00FFFF00FF000000FFFFFF000000D8E9EC000000
          00FF0000FF0000FF00000000FFFF00FFFF00FFFF00000000FF00FFFF00FFFF00
          FF000000D8E9EC000000FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000FFFFFF000000D8E9EC000000
          99A8AC99A8AC99A8AC000000FFFFFFFFFFFFFFFFFF0000000000000000000000
          00000000D8E9EC000000FFFFFF00000099A8AC99A8AC99A8AC000000FFFFFFFF
          FFFFFFFFFF000000000000000000000000000000FFFFFF000000D8E9EC000000
          99A8AC99A8AC99A8AC000000FFFFFFFFFFFFFFFFFF0000000000000000000000
          00000000D8E9EC000000FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000FFFFFF000000D8E9EC000000
          0000FF0000FF0000FF00000000FFFF00FFFF00FFFF000000FF0000FF0000FF00
          00000000D8E9EC000000FFFFFF0000000000FF0000FF0000FF00000000FFFF00
          FFFF00FFFF000000FF0000FF0000FF0000000000FFFFFF000000D8E9EC000000
          0000FF0000FF0000FF00000000FFFF00FFFF00FFFF000000FF0000FF0000FF00
          00000000D8E9EC000000FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000FFFFFF000000D8E9ECFFFFFF
          D8E9ECFFFFFFD8E9ECFFFFFFD8E9ECFFFFFFD8E9ECFFFFFFD8E9ECFFFFFFD8E9
          ECFFFFFFD8E9EC000000}
      end
      object ComboBox1: TComboBox
        Left = 177
        Top = 30
        Width = 179
        Height = 24
        ItemHeight = 16
        TabOrder = 1
        Text = 'ComboBox1'
      end
      object GroupBox1: TGroupBox
        Left = 10
        Top = 108
        Width = 109
        Height = 70
        Caption = #1058#1086#1074#1097#1080#1085#1072
        TabOrder = 2
        object UpDown1: TUpDown
          Left = 11
          Top = 20
          Width = 19
          Height = 40
          TabOrder = 0
          OnChanging = UpDown1Changing
        end
        object StaticText1: TStaticText
          Left = 52
          Top = 21
          Width = 16
          Height = 30
          BevelKind = bkSoft
          BorderStyle = sbsSunken
          Caption = '1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -23
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object ColorDialog1: TColorDialog
    Left = 136
    Top = 32
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Check Database Connection'
  ClientHeight = 473
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 221
    Width = 100
    Height = 15
    Caption = 'Messages / Errors:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 421
    Width = 519
    Height = 45
    Caption = 
      'Note: Even when "Allow password saving" is checked, the password' +
      ' is not contained in the  connection string after creating a con' +
      'nection string. You will have to manually add this if you want t' +
      'o "Test Connection"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Memo1: TMemo
    Left = 8
    Top = 48
    Width = 521
    Height = 161
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 169
    Height = 25
    Caption = 'Build Connection String'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 183
    Top = 8
    Width = 169
    Height = 25
    Caption = 'Test Connection'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 358
    Top = 8
    Width = 169
    Height = 25
    Caption = 'Copy Connection String'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Memo2: TMemo
    Left = 8
    Top = 242
    Width = 521
    Height = 161
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
    WordWrap = False
  end
  object ADOConnection1: TADOConnection
    Left = 360
    Top = 96
  end
end

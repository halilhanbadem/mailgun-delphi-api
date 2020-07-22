object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Mailgun Example'
  ClientHeight = 402
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 101
    Width = 845
    Height = 13
    Align = alTop
    Caption = 'Subject:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 46
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 150
    Width = 845
    Height = 13
    Align = alTop
    Caption = 'Body:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 31
  end
  object Label3: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 845
    Height = 13
    Align = alTop
    Caption = 'To:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 17
  end
  object Label5: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 845
    Height = 13
    Align = alTop
    Caption = 'From:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 32
  end
  object Label4: TLabel
    Left = 0
    Top = 389
    Width = 851
    Height = 13
    Align = alBottom
    Caption = 'Developer: Halil Han Badem g: github.com/halilhanbadem'
    ExplicitWidth = 273
  end
  object edtFrom: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 22
    Width = 845
    Height = 24
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtTo: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 71
    Width = 845
    Height = 24
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtSubject: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 120
    Width = 845
    Height = 24
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object memBody: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 169
    Width = 845
    Height = 159
    Align = alTop
    TabOrder = 3
  end
  object btnSend: TButton
    AlignWithMargins = True
    Left = 3
    Top = 334
    Width = 845
    Height = 53
    Align = alTop
    Caption = 'Send Mailgun Mail!'
    TabOrder = 4
    OnClick = btnSendClick
  end
end

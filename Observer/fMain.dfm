object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Design Patterns: Observer'
  ClientHeight = 278
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object panSubscriber1: TPanel
    Left = 32
    Top = 35
    Width = 169
    Height = 94
    TabOrder = 0
    object labSubscriber1Notifies: TLabel
      Left = 127
      Top = 44
      Width = 6
      Height = 13
      Caption = '0'
    end
    object labSubscriber1: TLabel
      Left = 58
      Top = 8
      Width = 59
      Height = 13
      Caption = 'Subscriber 1'
    end
    object btnSubscribe1: TButton
      Left = 8
      Top = 27
      Width = 75
      Height = 25
      Caption = 'Subscribe'
      TabOrder = 0
      OnClick = btnSubscribe1Click
    end
    object btnUnSubscribe1: TButton
      Left = 8
      Top = 58
      Width = 75
      Height = 25
      Caption = 'Unsubscribe'
      TabOrder = 1
      OnClick = btnUnSubscribe1Click
    end
  end
  object panSubscriber2: TPanel
    Left = 32
    Top = 147
    Width = 169
    Height = 94
    TabOrder = 1
    object labSubscriber2Notifies: TLabel
      Left = 127
      Top = 44
      Width = 6
      Height = 13
      Caption = '0'
    end
    object labSubscriber2: TLabel
      Left = 58
      Top = 8
      Width = 59
      Height = 13
      Caption = 'Subscriber 2'
    end
    object btnSubscribe2: TButton
      Left = 8
      Top = 27
      Width = 75
      Height = 25
      Caption = 'Subscribe'
      TabOrder = 0
      OnClick = btnSubscribe2Click
    end
    object btnUnSubscribe2: TButton
      Left = 8
      Top = 58
      Width = 75
      Height = 25
      Caption = 'Unsubscribe'
      TabOrder = 1
      OnClick = btnUnSubscribe2Click
    end
  end
  object panPublisher: TPanel
    Left = 288
    Top = 93
    Width = 169
    Height = 94
    TabOrder = 2
    object labPublisher: TLabel
      Left = 56
      Top = 8
      Width = 43
      Height = 13
      Caption = 'Publisher'
    end
    object btnPublisherNotify: TButton
      Left = 40
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Notify'
      TabOrder = 0
      OnClick = btnPublisherNotifyClick
    end
  end
end

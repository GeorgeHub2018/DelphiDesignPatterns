unit fMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Patterns.Observer;

type
  TfrmMain = class(TForm)
    panSubscriber1: TPanel;
    btnSubscribe1: TButton;
    btnUnSubscribe1: TButton;
    labSubscriber1Notifies: TLabel;
    labSubscriber1: TLabel;
    panSubscriber2: TPanel;
    labSubscriber2Notifies: TLabel;
    labSubscriber2: TLabel;
    btnSubscribe2: TButton;
    btnUnSubscribe2: TButton;
    panPublisher: TPanel;
    btnPublisherNotify: TButton;
    labPublisher: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnPublisherNotifyClick(Sender: TObject);
    procedure btnSubscribe1Click(Sender: TObject);
    procedure btnUnSubscribe1Click(Sender: TObject);
    procedure btnSubscribe2Click(Sender: TObject);
    procedure btnUnSubscribe2Click(Sender: TObject);
  private
    FSubscriber1Notifies: Integer;
    FSubscriber2Notifies: Integer;
    FSubscriber1: TSubscriber;
    FSubscriber2: TSubscriber;
    FPublisher: TPublisher;
    procedure OnSubscriber1Notify(Sender: TObject);
    procedure OnSubscriber2Notify(Sender: TObject);
    procedure RefreshUI;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FSubscriber1Notifies := 0;
  FSubscriber2Notifies := 0;
  FSubscriber1 := TSubscriber.Create;
  FSubscriber1.OnNotify := OnSubscriber1Notify;
  FSubscriber2 := TSubscriber.Create;
  FSubscriber2.OnNotify := OnSubscriber2Notify;
  FPublisher := TPublisher.Create;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FSubscriber1);
  FreeAndNil(FSubscriber2);
  FreeAndNil(FPublisher);
end;

procedure TfrmMain.btnPublisherNotifyClick(Sender: TObject);
begin
  FPublisher.NotifyAll;
end;

procedure TfrmMain.btnSubscribe1Click(Sender: TObject);
begin
  FPublisher.AddSubscriber(FSubscriber1);
end;

procedure TfrmMain.btnSubscribe2Click(Sender: TObject);
begin
  FPublisher.AddSubscriber(FSubscriber2);
end;

procedure TfrmMain.btnUnSubscribe1Click(Sender: TObject);
begin
  FPublisher.RemoveSubscriber(FSubscriber1);
end;

procedure TfrmMain.btnUnSubscribe2Click(Sender: TObject);
begin
  FPublisher.RemoveSubscriber(FSubscriber2);
end;

procedure TfrmMain.OnSubscriber1Notify(Sender: TObject);
begin
  Inc(FSubscriber1Notifies);
  RefreshUI;
end;

procedure TfrmMain.OnSubscriber2Notify(Sender: TObject);
begin
  Inc(FSubscriber2Notifies);
  RefreshUI;
end;

procedure TfrmMain.RefreshUI;
begin
  labSubscriber1Notifies.Caption := IntToStr(FSubscriber1Notifies);
  labSubscriber2Notifies.Caption := IntToStr(FSubscriber2Notifies);
end;

end.

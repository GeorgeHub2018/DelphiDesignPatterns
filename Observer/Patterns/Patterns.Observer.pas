unit Patterns.Observer;

interface

uses
  System.Classes;

type
  TSubscriber = class;

  TPublisher = class(TObject)
  private
    FSubscribers: TList;
  public
    constructor Create;
    destructor Destroy; override;

    procedure NotifyAll;
    procedure AddSubscriber(const ASubscriber: TSubscriber);
    procedure RemoveSubscriber(const ASubscriber: TSubscriber);
  end;

  TSubscriber = class(TObject)
  private
    FOnNotify: TNotifyEvent;
  protected
    procedure Notify;
  public
    property OnNotify: TNotifyEvent read FOnNotify write FOnNotify;
  end;

implementation

uses
  System.SysUtils, System.Types;

{ TPublisher }

procedure TPublisher.AddSubscriber(const ASubscriber: TSubscriber);
begin
  if FSubscribers.IndexOf(ASubscriber) = -1 then
    FSubscribers.Add(ASubscriber);
end;

procedure TPublisher.RemoveSubscriber(const ASubscriber: TSubscriber);
begin
  FSubscribers.Remove(ASubscriber);
end;

constructor TPublisher.Create;
begin
  inherited Create;

  FSubscribers := TList.Create;
end;

destructor TPublisher.Destroy;
begin
  FreeAndNil(FSubscribers);

  inherited;
end;

procedure TPublisher.NotifyAll;
var
  LSubscriber: TSubscriber;
  I: Integer;
begin
  for I := 0 to Pred(FSubscribers.Count) do
  begin
    LSubscriber := FSubscribers[I];
    LSubscriber.Notify;
  end;
end;

{ TSubscriber }

procedure TSubscriber.Notify;
begin
  if Assigned(FOnNotify) then
    FOnNotify(Self);
end;

end.

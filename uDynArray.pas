unit uDynArray;

interface

type
  TDynArray<T> = class
  public
    Data: array of T;

    constructor Create;
    destructor Destroy;

    procedure Erase(const Id: Integer);
    procedure PushBack(const X: T);
  end;

implementation

{ TDynArray<T> }

constructor TDynArray<T>.Create;
begin
  Inherited;
end;

destructor TDynArray<T>.Destroy;
begin
  SetLength(Data, 0);
  Inherited;
end;

procedure TDynArray<T>.Erase(const Id: Integer);
var
  I: Integer;
begin
  for I := Id to Length(Data) - 2 do
    Data[I] := Data[I + 1];
  SetLength(Data, Length(Data) - 1);
end;

procedure TDynArray<T>.PushBack(const X: T);
begin
  SetLength(Data, Length(Data) + 1);
  Data[Length(Data) - 1] := X;
end;

end.

unit uStructures;

interface

uses
  uDynArray,
  System.Classes;

type
  TStudent = class
  private
    FName: String;
    FTimeIn: TDateTime;
    FTimeOut: TDateTime;
  public
    procedure SaveToFStream(Stream: TFileStream);
    procedure LoadFromFStream(Stream: TFileStream);

    property Name: String read FName write FName;
    property TimeIn: TDateTime read FTimeIn write FTimeIn;
    property TimeOut: TDateTime read FTimeOut write FTimeOut;
  end;

  TRoom = class
  private
    FNumber: Integer;
    FStudents: TDynArray<TStudent>;
    function GetQuantity: Integer;
  public
    constructor Create;
    destructor Destroy;

    procedure SaveToFStream(Stream: TFileStream);
    procedure LoadFromFStream(Stream: TFileStream);

    property Number: Integer read FNumber write FNumber;
    property Students: TDynArray<TStudent> read FStudents write FStudents;
    property Quantity: Integer read GetQuantity;
  end;

  TFloor = class
  private
    FNumber: Integer;
    FRooms: TDynArray<TRoom>;
    function GetCount: Integer;
  public
    constructor Create;
    destructor Destroy;

    procedure SaveToFStream(Stream: TFileStream);
    procedure LoadFromFStream(Stream: TFileStream);

    property Number: Integer read FNumber write FNumber;
    property Rooms: TDynArray<TRoom> read FRooms write FRooms;
    property Count: Integer read GetCount;
  end;

  TDorminotory = class
  private
    FName: String;
    FAddress: String;
    FFloors: TDynArray<TFloor>;
    function GetCount: Integer;
  public
    constructor Create;
    destructor Destroy;
    procedure SaveToFStream(Stream: TFileStream);
    procedure LoadFromFStream(Stream: TFileStream);

    property Name: String read FName write FName;
    property Addres: String read FAddress write FAddress;
    property Floors: TDynArray<TFloor> read FFloors write FFloors;
    property Count: Integer read GetCount;
  end;

procedure SaveInteger(Value: Integer; Stream: TFileStream);

procedure LoadInteger(var Value: Integer; Stream: TFileStream);

implementation

procedure SaveString(Value: String; Stream: TFileStream);
var
  Tmp: Integer;
begin
  Tmp := Length(Value);
  Stream.Write(Tmp, SizeOf(Tmp));
  Stream.Write(Pointer(Value)^, Tmp * 2);
end;

procedure LoadString(var Value: String; Stream: TFileStream);
var
  Tmp: Integer;
begin
  Stream.Read(Tmp, SizeOf(Tmp));
  SetLength(Value, Tmp);
  Stream.Read(Pointer(Value)^, Tmp * 2);
end;

procedure SaveInteger(Value: Integer; Stream: TFileStream);
begin
  Stream.Write(Value, SizeOf(Value));
end;

procedure LoadInteger(var Value: Integer; Stream: TFileStream);
begin
  Stream.Read(Value, SizeOf(Value));
end;

procedure SaveDate(Value: TDateTime; Stream: TFileStream);
begin
  Stream.Write(Value, SizeOf(Value));
end;

procedure LoadDate(var Value: TDateTime; Stream: TFileStream);
begin
  Stream.Read(Value, SizeOf(Value));
end;

{ TRoom }

constructor TRoom.Create;
begin
  Inherited Create;
  FStudents := TDynArray<TStudent>.Create;
end;

destructor TRoom.Destroy;
begin
  FStudents.Free;
  Inherited Destroy;
end;

function TRoom.GetQuantity: Integer;
begin
  Result := Length(FStudents.Data);
end;

procedure TRoom.LoadFromFStream(Stream: TFileStream);
var
  I, Tmp: Integer;
begin
  LoadInteger(FNumber, Stream);
  LoadInteger(Tmp, Stream);
  for I := 0 to Length(FStudents.Data) - 1 do
    FStudents.Data[I].Free;
  SetLength(FStudents.Data, Tmp);
  for I := 0 to Tmp - 1 do
  begin
    FStudents.Data[I] := TStudent.Create;
    FStudents.Data[I].LoadFromFStream(Stream);
  end;
end;

procedure TRoom.SaveToFStream(Stream: TFileStream);
var
  I: Integer;
begin
  SaveInteger(FNumber, Stream);
  SaveInteger(Length(FStudents.Data), Stream);
  for I := 0 to Length(FStudents.Data) - 1 do
    FStudents.Data[I].SaveToFStream(Stream);
end;

{ TFloor }

constructor TFloor.Create;
begin
  Inherited Create;
  FRooms := TDynArray<TRoom>.Create;
end;

destructor TFloor.Destroy;
begin
  FRooms.Free;
  Inherited Destroy;
end;

function TFloor.GetCount: Integer;
begin
  Result := Length(FRooms.Data);
end;

procedure TFloor.LoadFromFStream(Stream: TFileStream);
var
  I, Tmp: Integer;
begin
  LoadInteger(FNumber, Stream);
  LoadInteger(Tmp, Stream);
  for I := 0 to Length(FRooms.Data) - 1 do
    FRooms.Data[I].Free;
  SetLength(FRooms.Data, Tmp);
  for I := 0 to Tmp - 1 do
  begin
    FRooms.Data[I] := TRoom.Create;
    FRooms.Data[I].LoadFromFStream(Stream);
  end;
end;

procedure TFloor.SaveToFStream(Stream: TFileStream);
var
  I: Integer;
begin
  SaveInteger(FNumber, Stream);
  SaveInteger(Length(FRooms.Data), Stream);
  for I := 0 to Length(FRooms.Data) - 1 do
    FRooms.Data[I].SaveToFStream(Stream);
end;

{ TDorminotory }

constructor TDorminotory.Create;
begin
  FFloors := TDynArray<TFloor>.Create;
  Inherited Create;
end;

destructor TDorminotory.Destroy;
begin
  FFloors.Free;
  Inherited Destroy;
end;

function TDorminotory.GetCount: Integer;
begin
  Result := Length(FFloors.Data);
end;

procedure TDorminotory.LoadFromFStream(Stream: TFileStream);
var
  Tmp: Integer;
  I: Integer;
begin
  LoadString(FName, Stream);
  LoadString(FAddress, Stream);
  LoadInteger(Tmp, Stream);
  SetLength(FFloors.Data, Tmp);
  for I := 0 to Length(FFloors.Data) - 1 do
    FFloors.Data[I].Free;
  for I := 0 to Tmp - 1 do
  begin
    FFloors.Data[I] := TFloor.Create;
    FFloors.Data[I].LoadFromFStream(Stream);
  end;
end;

procedure TDorminotory.SaveToFStream(Stream: TFileStream);
var
  I: Integer;
begin
  SaveString(FName, Stream);
  SaveString(FAddress, Stream);
  SaveInteger(Length(FFloors.Data), Stream);
  for I := 0 to Length(FFloors.Data) - 1 do
    FFloors.Data[I].SaveToFStream(Stream);
end;

{ TStudent }

procedure TStudent.LoadFromFStream(Stream: TFileStream);
begin
  LoadString(FName, Stream);
  LoadDate(FTimeIn, Stream);
  LoadDate(FTimeOut, Stream);
end;

procedure TStudent.SaveToFStream(Stream: TFileStream);
begin
  SaveString(FName, Stream);
  SaveDate(FTimeIn, Stream);
  SaveDate(FTimeOut, Stream);
end;

end.

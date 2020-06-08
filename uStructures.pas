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
    procedure SaveToFStream(Stream: TFileStream);
    procedure LoadFromFStream(Stream: TFileStream);

    property Name: String read FName write FName;
    property Addres: String read FAddress write FAddress;
    property Floors: TDynArray<TFloor> read FFloors write FFloors;
    property Count: Integer read GetCount;
  end;

implementation

{ TRoom }

function TRoom.GetQuantity: Integer;
begin
  Result := Length(FStudents.Data);
end;

procedure TRoom.LoadFromFStream(Stream: TFileStream);
begin

end;

procedure TRoom.SaveToFStream(Stream: TFileStream);
begin

end;

{ TFloor }

function TFloor.GetCount: Integer;
begin
  Result := Length(FRooms.Data);
end;

procedure TFloor.LoadFromFStream(Stream: TFileStream);
begin

end;

procedure TFloor.SaveToFStream(Stream: TFileStream);
begin

end;

{ TDorminotory }

function TDorminotory.GetCount: Integer;
begin
  Result := Length(FFloors.Data);
end;

procedure TDorminotory.LoadFromFStream(Stream: TFileStream);
begin

end;

procedure TDorminotory.SaveToFStream(Stream: TFileStream);
begin

end;

{ TStudent }

procedure TStudent.LoadFromFStream(Stream: TFileStream);
begin

end;

procedure TStudent.SaveToFStream(Stream: TFileStream);
begin

end;

end.

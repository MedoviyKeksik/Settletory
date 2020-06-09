{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.StdActns,
  Vcl.Menus, Vcl.StdCtrls, uStructures, uDynArray;

type
  TfrmMain = class(TForm)
    lvMain: TListView;
    alMain: TActionList;
    ilMain: TImageList;
    pnlButtons: TPanel;
    mmMain: TMainMenu;
    FileOpen: TFileOpen;
    FileSaveAs: TFileSaveAs;
    FileExit: TFileExit;
    File1: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    Exit1: TMenuItem;
    TableAddDorminotory: TAction;
    able1: TMenuItem;
    Adddorminotary1: TMenuItem;
    btnAdd: TButton;
    btnEdit: TButton;
    btnChange: TButton;
    btnDelete: TButton;
    TableEditDorminotory: TAction;
    TableDeleteDorminotory: TAction;
    TableChangeDorminotory: TAction;
    Editdorminotory1: TMenuItem;
    Changedorminotory1: TMenuItem;
    Deletedorminotory1: TMenuItem;
    procedure TableAddDorminotoryExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TableEditDorminotoryExecute(Sender: TObject);
    procedure TableDeleteDorminotoryExecute(Sender: TObject);
    procedure alMainUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure TableChangeDorminotoryExecute(Sender: TObject);
    procedure FileOpenAccept(Sender: TObject);
    procedure FileSaveAsAccept(Sender: TObject);
  private
    FDorminotories: TDynArray<TDorminotory>;
    procedure Update;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uDorminotory, uChangeDorminotory;

procedure TfrmMain.alMainUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  TableAddDorminotory.Enabled := True;
  TableChangeDorminotory.Enabled := lvMain.ItemIndex <> -1;
  TableEditDorminotory.Enabled := lvMain.ItemIndex <> -1;
  TableDeleteDorminotory.Enabled := lvMain.ItemIndex <> -1;
end;

procedure TfrmMain.FileOpenAccept(Sender: TObject);
var
  Stream: TFileStream;
  Tmp: Integer;
  FileName: String;
  I: Integer;
begin
  FileName := (Sender as TFileOpen).Dialog.FileName;
  Stream := TFileStream.Create(FileName, fmOpenRead);
  LoadInteger(Tmp, Stream);
  for I := 0 to Length(FDorminotories.Data) - 1 do
    FDorminotories.Data[I].Free;
  SetLength(FDorminotories.Data, Tmp);
  for I := 0 to Tmp - 1 do
  begin
    FDorminotories.Data[I] := TDorminotory.Create;
    FDorminotories.Data[I].LoadFromFStream(Stream);
  end;
  Stream.Free;
  Update;
end;

procedure TfrmMain.FileSaveAsAccept(Sender: TObject);
  var
  Stream: TFileStream;
  FileName: String;
  I: Integer;
begin
  FileName := (Sender as TFileSaveAs).Dialog.FileName;
  Stream := TFileStream.Create(FileName, fmCreate);
  SaveInteger(Length(FDorminotories.Data), Stream);
  for I := 0 to Length(FDorminotories.Data) - 1 do
    FDorminotories.Data[I].SaveToFStream(Stream);
  Stream.Free;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FDorminotories := TDynArray<TDorminotory>.Create;
end;

procedure TfrmMain.TableAddDorminotoryExecute(Sender: TObject);
var
  Res: Integer;
  Tmp: TDorminotory;
begin
  Res := frmDorminotory.ShowVal;
  if Res = mrOk then
  begin
    Tmp := TDorminotory.Create;
    Tmp.Name := frmDorminotory.Name;
    Tmp.Addres := frmDorminotory.Address;
    FDorminotories.PushBack(Tmp);
    Update;
  end;
end;

procedure TfrmMain.TableChangeDorminotoryExecute(Sender: TObject);
begin
  frmChangeDorminotory.Dorminotory := FDorminotories.Data[lvMain.ItemIndex];
  frmChangeDorminotory.ShowModal;
end;

procedure TfrmMain.TableDeleteDorminotoryExecute(Sender: TObject);
var
  Tmp: TDorminotory;
begin
  Tmp := FDorminotories.Data[lvMain.ItemIndex];
  Tmp.Free;
  FDorminotories.Erase(lvMain.ItemIndex);
  Update;
end;

procedure TfrmMain.TableEditDorminotoryExecute(Sender: TObject);
var
  Res: Integer;
  Tmp: TDorminotory;
begin
  Tmp := FDorminotories.Data[lvMain.ItemIndex];
  Res := frmDorminotory.ShowVal(Tmp.Name, Tmp.Addres);
  if Res = mrOk then
  begin
    Tmp.Name := frmDorminotory.Name;
    Tmp.Addres := frmDorminotory.Address;
    Update;
  end;
end;

procedure TfrmMain.Update;
var
  I: Integer;
  Item: TListItem;
begin
  lvMain.Items.Clear;
  for I := Low(FDorminotories.Data) to High(FDorminotories.Data) do
  begin
    Item := lvMain.Items.Add;
    Item.Caption := IntToStr(I + 1);
    with FDorminotories.Data[I] do
    begin
      Item.SubItems.Add(Name);
      Item.SubItems.Add(Addres);
    end;
  end;

end;

end.

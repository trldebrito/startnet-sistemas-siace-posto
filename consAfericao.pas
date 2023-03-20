unit consAfericao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RXCtrls, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  ExtCtrls, Buttons, DB, XDBGrids;

type
  TFormConsAfericao = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    XDBGrid1: TXDBGrid;
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SuidbGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure XDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure XDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsAfericao: TFormConsAfericao;

implementation

uses ModuleDados1, Z_RotinasGerais;

{$R *.dfm}

procedure TFormConsAfericao.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsAfericao.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
xDBGrid1.SetFocus;
end;

procedure TFormConsAfericao.SuidbGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsAfericao.Edit1Change(Sender: TObject);
begin
DM1.QBuscaAfericao.Locate('DESCRICAO',Edit1.Text,[lopartialkey]);
end;

procedure TFormConsAfericao.FormShow(Sender: TObject);
begin
DM1.QBuscaAfericao.Active:=False;
DM1.QBuscaAfericao.Active:=true;

end;

procedure TFormConsAfericao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormConsAfericao := nil;
end;

procedure TFormConsAfericao.XDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsAfericao.XDBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFormConsAfericao.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsAfericao.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key= VK_DOWN then
begin
  xDBGrid1.SetFocus;
end;
end;

procedure TFormConsAfericao.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin
 if not odd(DM1.QBuscaAfericao.RecNo) then
  if not (gdselected in State) then
    begin
    xDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    xDBGrid1.Canvas.FillRect(Rect);
    xDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

end.

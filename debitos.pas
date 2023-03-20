unit debitos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, XDBGrids, Mylabel, ExtCtrls, 
  DBCtrls;

type
  TFormDebitos = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Image1: TImage;
    Bevel2: TBevel;
    XDBGrid1: TXDBGrid;
    myLabel3d2: TmyLabel3d;
    DBText1: TDBText;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    myLabel3d1: TmyLabel3d;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDebitos: TFormDebitos;

implementation

{$R *.dfm}

procedure TFormDebitos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormDebitos:= nil;
end;

procedure TFormDebitos.FormShow(Sender: TObject);
begin
BitBtn1.SetFocus;
end;

procedure TFormDebitos.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormDebitos.BitBtn1KeyPress(Sender: TObject; var Key: Char);
begin
if Key =#13 then
begin
  Close;
end;
end;

end.

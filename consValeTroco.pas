unit consvaletroco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RXCtrls, Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  ExtCtrls, Buttons, DB, XDBGrids;

type
  TFormConsValetroco = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    XDBGrid1: TXDBGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SuidbGrid1KeyPress(Sender: TObject; var Key: Char);
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
  FormConsValetroco: TFormConsValetroco;

implementation

uses Z_RotinasGerais, ModuleDados1;

{$R *.dfm}

procedure TFormConsValetroco.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsValetroco.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
xDBGrid1.SetFocus;
end;

procedure TFormConsValetroco.SuidbGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsValetroco.FormShow(Sender: TObject);
begin
//DM1.Sds_valeTroco.Active:=False;
//DM1.Sds_valeTroco.Active:=true;
EDIT1.SetFocus;
end;

procedure TFormConsValetroco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormConsValetroco := nil;
end;

procedure TFormConsValetroco.XDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsValetroco.XDBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFormConsValetroco.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
{if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close; }
end;


procedure TFormConsValetroco.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_DOWN then
begin
  xDBGrid1.SetFocus;
end;


 if key = VK_RETURN then
 BEGIN
if RadioButton1.Checked = True then
begin
if DM1.Sds_valeTroco.Locate('CODIGO',Edit1.Text,[lopartialkey]) = True then
begin
  xDBGrid1.SetFocus;
end else
if not DM1.Sds_valeTroco.Locate('CODIGO',Edit1.Text,[lopartialkey]) = True then
begin
  ShowMessage('Nº do vale Não Localizado');
end;
end else
if RadioButton2.Checked = True then
begin
//DM1.Sds_valeTroco.Locate('NOME_CLIENTE',Edit1.Text,[lopartialkey]);
if DM1.Sds_valeTroco.Locate('NOME_CLIENTE',Edit1.Text,[lopartialkey]) = True then
begin
  xDBGrid1.SetFocus;
end else
if not DM1.Sds_valeTroco.Locate('NOME_CLIENTE',Edit1.Text,[lopartialkey]) = True then
begin
  ShowMessage('Nº do vale Não Localizado');
end;
end;
end;
end;

procedure TFormConsValetroco.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin
 if not odd(DM1.Sds_valeTroco.RecNo) then
  if not (gdselected in State) then
    begin
    xDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    xDBGrid1.Canvas.FillRect(Rect);
    xDBGrid1.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

end.

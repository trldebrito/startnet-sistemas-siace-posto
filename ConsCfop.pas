unit ConsCfop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, StdCtrls, DB, RXCtrls, ExtCtrls;

type
  TFormConsCFOP = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    suiDBGrid1: TsuiDBGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsCFOP: TFormConsCFOP;

implementation

uses ModulodeDados, Z_RotinasGerais;

{$R *.dfm}

procedure TFormConsCFOP.Edit1Change(Sender: TObject);
begin
if RadioButton1.Checked = True then
begin
DM.SDS_CFOP.Locate('CODIGO_CFOP',Edit1.Text,[lopartialkey]);
end else
if RadioButton2.Checked = True then
begin
DM.SDS_CFOP.Locate('DESCRICAO',Edit1.Text,[lopartialkey]);
end;
end;

procedure TFormConsCFOP.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
suiDBGrid1.SetFocus;
end;
if key=#40 then
 begin
suiDBGrid1.SetFocus;
end;
end;

procedure TFormConsCFOP.suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;

end;

procedure TFormConsCFOP.Edit1Enter(Sender: TObject);
begin
corentrada(Sender);
end;

procedure TFormConsCFOP.Edit1Exit(Sender: TObject);
begin
corsaida(Sender);
suiDBGrid1.SetFocus;
end;

procedure TFormConsCFOP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormConsCFOP := nil;
end;

procedure TFormConsCFOP.suiDBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFormConsCFOP.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.

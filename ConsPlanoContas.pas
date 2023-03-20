unit ConsPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIImagePanel, ExtCtrls,  RXCtrls,
  SUIButton, Grids, DBGrids, SUIDBCtrls, DB, DBTables;

type
  TFormConsPlanoContas = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    suiDBGrid1: TsuiDBGrid;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsPlanoContas: TFormConsPlanoContas;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal;

{$R *.dfm}

procedure TFormConsPlanoContas.FormShow(Sender: TObject);
begin
dm.SDS_PlContas.active:= false;
dm.SDS_PlContas.active:= true;
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TFormConsPlanoContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsPlanoContas:=nil;
end;

procedure TFormConsPlanoContas.Edit1Change(Sender: TObject);
begin
DM.SDS_PlContas.Locate('NOME',Edit1.Text,[lopartialkey]);
//suiDBGrid1.SetFocus;
end;

procedure TFormConsPlanoContas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsPlanoContas.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsPlanoContas.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsPlanoContas.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsPlanoContas.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsPlanoContas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

procedure TFormConsPlanoContas.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsPlanoContas.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  suiDBGrid1.SetFocus;
end;
end;

end.

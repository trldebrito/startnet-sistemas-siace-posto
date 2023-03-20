unit DetalhesCrediario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, ExtCtrls,  StdCtrls, SUIDlg, Mask, DBCtrls,
  SUIDBCtrls;

type
  TFormDetCrediario = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label16: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    suiDBEdit1: TsuiDBEdit;
    suiDBEdit2: TsuiDBEdit;
    suiDBEdit4: TsuiDBEdit;
    suiDBEdit5: TsuiDBEdit;
    suiDBEdit6: TsuiDBEdit;
    suiDBEdit7: TsuiDBEdit;
    suiDBEdit8: TsuiDBEdit;
    suiDBEdit9: TsuiDBEdit;
    suiDBEdit10: TsuiDBEdit;
    Bevel1: TBevel;
    Label1: TLabel;
    suiDBEdit3: TsuiDBEdit;
    suiDBEdit11: TsuiDBEdit;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDetCrediario: TFormDetCrediario;

implementation

uses ModulodeDadosBaixas, Acesso, Principal;

{$R *.dfm}

procedure TFormDetCrediario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=CaFree;
FormDetCrediario:=nil;
end;

procedure TFormDetCrediario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormDetCrediario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.

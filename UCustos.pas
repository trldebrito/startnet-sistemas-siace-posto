unit UCustos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIButton, StdCtrls, Mask, DBCtrls, RXCtrls, ExtCtrls;

type
  TFormCustos = class(TForm)
    Panel1: TPanel;
    RxLabel7: TRxLabel;
    suiDBEdit1: TDBEdit;
    RxLabel8: TRxLabel;
    suiDBEdit3: TDBEdit;
    RxLabel50: TRxLabel;
    DBEdit14: TDBEdit;
    RxLabel10: TRxLabel;
    suiDBEdit5: TDBEdit;
    RxLabel14: TRxLabel;
    suiDBEdit9: TDBEdit;
    RxLabel17: TRxLabel;
    RxLabel12: TRxLabel;
    RxLabel15: TRxLabel;
    RxLabel9: TRxLabel;
    suiDBEdit4: TDBEdit;
    suiDBEdit13: TDBEdit;
    suiDBEdit7: TDBEdit;
    suiDBEdit10: TDBEdit;
    suiDBEdit12: TDBEdit;
    suiDBEdit14: TDBEdit;
    DBEdit20: TDBEdit;
    suiDBEdit6: TDBEdit;
    Panel2: TPanel;
    Label1: TLabel;
    RxLabel16: TRxLabel;
    RxLabel18: TRxLabel;
    RxLabel51: TRxLabel;
    RxLabel11: TRxLabel;
    RxLabel13: TRxLabel;
    suiDBEdit8: TDBEdit;
    Panel3: TPanel;
    suiButton1: TsuiButton;
    procedure suiButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCustos: TFormCustos;

implementation

{$R *.dfm}

procedure TFormCustos.suiButton1Click(Sender: TObject);
begin
close;
end;

procedure TFormCustos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
FormCustos := nil;
end;

procedure TFormCustos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

end.

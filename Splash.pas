unit Splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Gauges, StdCtrls, Mylabel, RXCtrls, jpeg,
  sSkinManager, sSkinProvider, sLabel;

type
  TFormSplash = class(TForm)
    Memo1: TRxLabel;
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    Gauge1: TGauge;
    sLabelFX1: TsLabelFX;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.dfm}

procedure TFormSplash.Timer1Timer(Sender: TObject);
begin
{Gauge1.Progress := Gauge1.Progress +1;
if Gauge1.Progress = 2 then
Label7.Caption := 'Carregando formulários...';
if Gauge1.Progress = 5 then
Label7.Caption := 'Abrindo tabelas...';
if Gauge1.Progress = 8 then
Label7.Caption := 'Finalizando...';
if Gauge1.Progress = 10 then
begin
Timer1.Enabled := false;
end; }
    if Gauge1.Progress >= 100 then
begin
      Timer1.Enabled:= false;
     // FormSplash.Destroy;
  end
    else
      Gauge1.Progress := Gauge1.Progress+1;
end;

end.

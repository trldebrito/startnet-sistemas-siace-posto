unit ImpNotafiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, StdCtrls;

type
  TFormImpNotafiscal = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText21: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText2: TRLDBText;
    dia: TRLLabel;
    mes: TRLLabel;
    ano: TRLLabel;
    RLBand2: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    Label1: TLabel;
    RLDBText4: TRLDBText;
    Label2: TLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImpNotafiscal: TFormImpNotafiscal;

implementation

uses ModulodeDadosConsultas;

{$R *.dfm}

procedure TFormImpNotafiscal.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var
  dtaux : TDateTime;
begin
 dtAux := (StrToDate (dmc.CDS_PedidosDATA_PEDIDO.AsString));
 ano.Caption := FormatDateTime('yy',dtAux);
 mes.Caption := FormatDateTime('MMMM',dtAux);
 dia.Caption := FormatDateTime('dd',dtAux);
end;

procedure TFormImpNotafiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action :=caFree;
FormImpNotafiscal:=nil;
end;

end.

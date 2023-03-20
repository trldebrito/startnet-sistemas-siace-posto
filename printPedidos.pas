unit printPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLFilters, RLDraftFilter,
  RLParser, RLHTMLFilter, RLPDFFilter, RLRichText, RLRichFilter;

type
  TImprimirPedidos = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand3: TRLBand;
    RLDBText18: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel37: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLBand5: TRLBand;
    RLDBText30: TRLDBText;
    RLLabel39: TRLLabel;
    RLLabel34: TRLLabel;
    rlbl1: TRLLabel;
    rldbtxtQUANTIDADE: TRLDBText;
    RLRichFilter1: TRLRichFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel32: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLSubDetail1: TRLSubDetail;
    RLBand7: TRLBand;
    RLDBText19: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLBand8: TRLBand;
    RLLabel22: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLDraftFilter1: TRLDraftFilter;
    RLLabel47: TRLLabel;
    RLDBText39: TRLDBText;
    RLLabel31: TRLLabel;
    RLLabel48: TRLLabel;
    RLDBText29: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLLabel2: TRLLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    RLLabel7: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText32: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImprimirPedidos: TImprimirPedidos;

implementation

uses ModulodeDadosConsultas, ModulodeDados;

{$R *.dfm}

procedure TImprimirPedidos.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 DMC.SQLD_Pedidos.Active:=True;
 DMC.CDS_Pedidos.Active:=True;
 DMC.SDS_Pedido_Itens.Active:= True;
 DMC.SDS_Cliente.Active:= True;
 DM.SDS_Empresa.active := true;
 dmc.sds_Crediario_contrato.active := true;
                     {
  with TRLReport.Create do
   begin
     RLReport1.PageSetup.PaperSize := FpCustom; // nome do novo papel que foi definido
     PrinterIndex := RLReport1.PageSetup.PrinterIndex;
     RLReport1.Pages.PaperSize := PaperSize;
     free;
   end;
                      }
end;

procedure TImprimirPedidos.FormShow(Sender: TObject);
begin
 DMC.SQLD_Pedidos.Active:=True;
 DMC.CDS_Pedidos.Active:=True;
 DMC.SDS_Pedido_Itens.Active:= True;
 DMC.SDS_Cliente.Active:= True;
 DM.SDS_Empresa.active := true;
 dmc.sds_Crediario_contrato.active := true;
end;

procedure TImprimirPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
ImprimirPedidos:=nil;
end;

procedure TImprimirPedidos.RLReport1PageStarting(Sender: TObject);
begin
if DMc.CDS_PedidosVALOR_TROCO.AsFloat > 0 then
begin
  RLLabel7.Visible := True;
  RLLabel6.Visible := True;
  RLDBText32.Visible := True;
  RLDBText33.Visible := True;
end;
end;

end.

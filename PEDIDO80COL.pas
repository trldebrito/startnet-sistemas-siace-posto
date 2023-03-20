unit PEDIDO80COL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, RLFilters, RLDraftFilter,
  RLParser, RLHTMLFilter, RLPDFFilter, RLRichText, RLRichFilter;

type
  TFormPedido40col = class(TForm)
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel40: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel2: TRLLabel;
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
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText28: TRLDBText;
    rlbl1: TRLLabel;
    RLBand2: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText17: TRLDBText;
    rldbtxtQUANTIDADE: TRLDBText;
    RLBand3: TRLBand;
    RLLabel38: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel47: TRLLabel;
    RLDBText39: TRLDBText;
    RLBand5: TRLBand;
    RLDBText30: TRLDBText;
    RLLabel39: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel31: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand7: TRLBand;
    RLDBText19: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLBand8: TRLBand;
    RLLabel22: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLLabel11: TRLLabel;
    RLLabel18: TRLLabel;
    RLDraftFilter1: TRLDraftFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLHTMLFilter1: TRLHTMLFilter;
    RLLabel19: TRLLabel;
    RLLabel35: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLLabel36: TRLLabel;
    RLLabel41: TRLLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedido40col: TFormPedido40col;

implementation

uses modulodeDadosConsultas, ModulodeDados;

{$R *.dfm}

procedure TFormPedido40col.FormShow(Sender: TObject);
begin
 DMC.SQLD_Pedidos.Active:=True;
 DMC.CDS_Pedidos.Active:=True;
 DMC.SDS_Pedido_Itens.Active:= True;
 DMC.SDS_Cliente.Active:= True;
 DM.SDS_Empresa.active := true;
 dmc.sds_Crediario_contrato.active := true;
end;

procedure TFormPedido40col.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormPedido40col:=nil;
end;

procedure TFormPedido40col.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 DMC.SQLD_Pedidos.Active:=True;
 DMC.CDS_Pedidos.Active:=True;
 DMC.SDS_Pedido_Itens.Active:= True;
 DMC.SDS_Cliente.Active:= True;
 DM.SDS_Empresa.active := true;
 dmc.sds_Crediario_contrato.active := true;
end;

end.

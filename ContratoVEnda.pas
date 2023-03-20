unit ContratoVEnda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLHTMLFilter, RLFilters, RLPDFFilter, RLDraftFilter;

type
  TFormContratoVenda = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLLabel29: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel22: TRLLabel;
    RLBand3: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLBand4: TRLBand;
    RLLabel36: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText26: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel35: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel31: TRLLabel;
    RLDraftFilter1: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    procedure FormShow(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContratoVenda: TFormContratoVenda;

implementation

uses ModulodeDadosConsultas, ModulodeDados;

{$R *.dfm}

procedure TFormContratoVenda.FormShow(Sender: TObject);
begin
 DMC.SQLD_Pedidos.Active:=True;
 DMC.CDS_Pedidos.Active:=True;
// DMC.SDS_Pedido_Itens.Active:= True;
 DMC.SDS_Cliente.Active:= True;
 DM.SDS_Empresa.active := true;
 dmc.sds_Crediario_Contrato.active := true;
 DM.SDS_Contrato.Active :=false;
 DM.SDS_Contrato.Active :=true;
 RLReport1.DefaultFilter.OptionIndex := 0;
end;

procedure TFormContratoVenda.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 DMC.SQLD_Pedidos.Active:=True;
 DMC.CDS_Pedidos.Active:=True;
// DMC.SDS_Pedido_Itens.Active:= True;
 DMC.SDS_Cliente.Active:= True;
 DM.SDS_Empresa.active := true;
 dmc.sds_Crediario_Contrato.active := true;
 DM.SDS_Contrato.Active :=false;
 DM.SDS_Contrato.Active :=true;
end;

procedure TFormContratoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormContratoVenda:=nil;
end;

end.

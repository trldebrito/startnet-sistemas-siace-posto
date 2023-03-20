unit RelatorioCaixaEspecifico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLHTMLFilter, RLPDFFilter, RLFilters, RLRichFilter,
  RLParser, RLDraftFilter;

type
  TFormRelCaixaEsp = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rlbl5: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    rlbl9: TRLLabel;
    rlbl10: TRLLabel;
    datai: TRLLabel;
    dataf: TRLLabel;
    rldbtxtRAZAO_SOCIAL: TRLDBText;
    rldbtxtRAZAO_SOCIAL1: TRLDBText;
    rlbl12: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLBand3: TRLBand;
    RLDBResult1: TRLDBResult;
    RLExpressionParser1: TRLExpressionParser;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLDBResult2: TRLDBResult;
    RLSubDetail2: TRLSubDetail;
    RLBand4: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLBand5: TRLBand;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel8: TRLLabel;
    RLSubDetail3: TRLSubDetail;
    RLBand6: TRLBand;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLBand7: TRLBand;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabel12: TRLLabel;
    RLBand8: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLBand9: TRLBand;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLBand10: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    saldo: TRLLabel;
    Matricial: TRLDraftFilter;
    RLLabel31: TRLLabel;
    RLSubDetail4: TRLSubDetail;
    RLBand11: TRLBand;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLBand12: TRLBand;
    RLDBResult8: TRLDBResult;
    RLLabel36: TRLLabel;
    RLBand13: TRLBand;
    RLLabel35: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLSubDetail5: TRLSubDetail;
    RLBand14: TRLBand;
    RLDBText26: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLBand15: TRLBand;
    RLDBResult10: TRLDBResult;
    RLLabel44: TRLLabel;
    RLBand16: TRLBand;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel49: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel54: TRLLabel;
    user: TRLLabel;
    RLDBResult9: TRLDBResult;
    RLLabel5: TRLLabel;
    RLLabel24: TRLLabel;
    RLBand17: TRLBand;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    RLLabel62: TRLLabel;
    RLLabel10: TRLLabel;
    RLSubDetail6: TRLSubDetail;
    RLBand18: TRLBand;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLBand19: TRLBand;
    RLDBResult7: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand20: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel64: TRLLabel;
    RLLabel65: TRLLabel;
    RLSubDetail7: TRLSubDetail;
    RLBand21: TRLBand;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLBand22: TRLBand;
    RLDBResult13: TRLDBResult;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLBand23: TRLBand;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLLabel76: TRLLabel;
    RLSubDetail8: TRLSubDetail;
    RLBand24: TRLBand;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText50: TRLDBText;
    RLBand25: TRLBand;
    RLDBResult12: TRLDBResult;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    RLBand26: TRLBand;
    RLLabel79: TRLLabel;
    RLLabel80: TRLLabel;
    RLLabel81: TRLLabel;
    RLLabel82: TRLLabel;
    RLLabel83: TRLLabel;
    RLLabel84: TRLLabel;
    RLLabel85: TRLLabel;
    RLLabel86: TRLLabel;
    procedure dataiAfterPrint(Sender: TObject);
    procedure datafAfterPrint(Sender: TObject);
    procedure saldoAfterPrint(Sender: TObject);
    procedure userAfterPrint(Sender: TObject);
    procedure RLLabel24AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelCaixaEsp: TFormRelCaixaEsp;

implementation

uses  ModulodeDados, CaixaEspecifico;

{$R *.dfm}

procedure TFormRelCaixaEsp.dataiAfterPrint(Sender: TObject);
begin
datai.Caption:= FormCaixaEspecifico.DateEdit1.Text;
end;

procedure TFormRelCaixaEsp.datafAfterPrint(Sender: TObject);
begin
dataf.Caption:= FormCaixaEspecifico.DateEdit1.Text;
end;

procedure TFormRelCaixaEsp.saldoAfterPrint(Sender: TObject);
begin
saldo.Caption:= FormatFloat('R$: ##,##0.00',FormCaixaEspecifico.CurrencyEdit7.Value);
end;

procedure TFormRelCaixaEsp.userAfterPrint(Sender: TObject);
begin
user.Caption := FormCaixaEspecifico.edit1.Text;
end;

procedure TFormRelCaixaEsp.RLLabel24AfterPrint(Sender: TObject);
begin
RLLabel24.Caption:= FormatFloat('R$: ##,##0.00',FormCaixaEspecifico.CurrencyEdit10.value);
end;

end.

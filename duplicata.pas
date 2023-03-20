unit duplicata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLParser, RLRichText, RLHTMLFilter, RLFilters,
  RLPDFFilter, RLDraftFilter, Estenso, RLRichFilter;

type
  TFormDuplicatas = class(TForm)
    RLReport1: TRLReport;
    RLLabel1: TRLLabel;
    RLBand1: TRLBand;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLBand3: TRLBand;
    RLLabel26: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText28: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel33: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    rlbl2: TRLLabel;
    rldbtxt1: TRLDBText;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLSubDetail1: TRLSubDetail;
    RLBand5: TRLBand;
    RLDBText16: TRLDBText;
    RLDBText11: TRLDBText;
    procedure Rlmemo1AfterPrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rldbtxt1AfterPrint(Sender: TObject);
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDuplicatas: TFormDuplicatas;
  texto : string;

implementation

uses ModulodeDadosConsultas, Extensos, ModulodeDados, Udmcob;

{$R *.dfm}

function NumeroExtenso(const Valor: double; Moeda: Boolean = False): string;

const
  Centenas: array[1..9] of string[12] = ('CEM', 'DUZENTOS', 'TREZENTOS',
    'QUATROCENTOS', 'QUINHENTOS', 'SEISCENTOS', 'SETECENTOS',
    'OITOCENTOS', 'NOVECENTOS');
  Dezenas: array[2..9] of string[10] = ('VINTE', 'TRINTA', 'QUARENTA',
    'CINQUENTA', 'SESSENTA', 'SETENTA', 'OITENTA', 'NOVENTA');
  Dez: array[0..9] of string[10] = ('DEZ', 'ONZE', 'DOZE', 'TREZE', 'QUATORZE',
    'QUINZE', 'DEZESSEIS', 'DEZESSETE', 'DEZOITO', 'DEZENOVE');
  Unidades: array[1..9] of string[10] = ('UM', 'DOIS', 'TRES', 'QUATRO', 'CINCO',
    'SEIS', 'SETE', 'OITO', 'NOVE');
  Zero = 'ZERO';

  function Ext3(Parte: string): string;
  var
    Base: string;
    digito: integer;
  begin
    Base := '';
    digito := StrToInt(Parte[1]);
    if digito = 0 then
      Base := ''
    else
      Base := Centenas[digito];
    if (digito = 1) and (Parte > '100') then
      Base := 'CENTO';
    Digito := StrToInt(Parte[2]);
    if digito = 1 then
    begin
      Digito := StrToInt(Parte[3]);
      if Base <> '' then
        Base := Base + ' E ';
      Base := Base + Dez[Digito];
    end
    else
    begin
      if (Base <> '') and (Digito > 0) then
        Base := Base + ' E ';
      if Digito > 1 then
        Base := Base + Dezenas[digito];
      Digito := StrToInt(Parte[3]);
      if Digito > 0 then
      begin
        if Base <> '' then
          Base := Base + ' E ';
        Base := Base + Unidades[Digito];
      end;
    end;
    Result := Base;
  end;

var
  ComoTexto: string;
  Parte: string;
  MoedaSingular: String;
  MoedaPlural: String;
  CentSingular: String;
  CentPlural: String;

begin
  if Moeda then
  begin
    MoedaSingular := 'REAL';
    MoedaPlural := 'REAIS';
    CentSingular := 'CENTAVO';
    CentPlural := 'CENTAVOS';
  end
  else
  begin
    MoedaSingular := '';
    MoedaPlural := '';
    CentSingular := '';
    CentPlural := '';
  end;

  Result := '';
  ComoTexto := FloatToStrF(Abs(Valor), ffFixed, 18, 2);
  // Acrescenta zeros a esquerda ate 12 digitos
  while length(ComoTexto) < 15 do
    Insert('0', ComoTexto, 1);
  // Retira caracteres a esquerda para o máximo de 12 digitos
  while length(ComoTexto) > 15 do
    delete(ComoTexto, 1, 1);
  // Calcula os bilhões
  Parte := Ext3(copy(ComoTexto, 1, 3));
  if StrToInt(copy(ComoTexto, 1, 3)) = 1 then
    Parte := Parte + ' BILHAO'
  else
    if Parte <> '' then
      Parte := Parte + ' BILHOES';
  Result := Parte;
  // Calcula os nilhões
  Parte := Ext3(copy(ComoTexto, 4, 3));
  if Parte <> '' then
  begin
    if Result <> '' then
      Result := Result + ', ';
    if StrToInt(copy(ComoTexto, 4, 3)) = 1 then
      Parte := Parte + ' MILHAO'
    else
      Parte := Parte + ' MILHOES';
    Result := Result + Parte;
  end;
  // Calcula os nilhares
  Parte := Ext3(copy(ComoTexto, 7, 3));
  if Parte <> '' then
  begin
    if Result <> '' then
      Result := Result + ', ';
    Parte := Parte + ' MIL';
    Result := Result + Parte;
  end;
  // Calcula as unidades
  Parte := Ext3(copy(ComoTexto, 10, 3));
  if Parte <> '' then
  begin
    if Result <> '' then
      if Frac(Valor) = 0 then
        Result := Result + ' E '
      else
        Result := Result + ', ';
    Result := Result + Parte;
  end;
  // Acrescenta o texto da moeda
  if Int(Valor) = 1 then
    Parte := ' ' + MoedaSingular
  else
    Parte := ' ' + MoedaPlural;
  if copy(ComoTexto, 7, 6) = '000000' then
    Parte := 'DE ' + MoedaPlural;
  Result := Result + Parte;
  // Se o valor for zero, limpa o resultado
  if int(Valor) = 0 then
    Result := '';
  //Calcula os centavos
  Parte := Ext3('0' + copy(ComoTexto, 14, 2));
  if Parte <> '' then
  begin
    if Result <> '' then
      Result := Result + ' E ';
    if Parte = Unidades[1] then
      Parte := Parte + ' ' + CentSingular
    else
      Parte := Parte + ' ' + CentPlural;
    Result := Result + Parte;
  end;
  // Se o valor for zero, assume a constante ZERO
  if Valor = 0 then
    Result := Zero;
    end;

procedure TFormDuplicatas.Rlmemo1AfterPrint(Sender: TObject);
begin
//RLMemo1.lines.Add( NumeroExtenso(StrToFloat(DMC.SDS_Crediario_ContratoVALOR_TOTAL.Text), True) );
end;
procedure TFormDuplicatas.FormShow(Sender: TObject);
begin
 //dmc.sds_Crediario_contrato.active := false;
 //dmc.sds_Crediario_contrato.active := true;
// RLMemo1.fie := ( NumeroExtenso(StrToFloat(DMC.SDS_Crediario_ContratoVALOR_TOTAL.Text), True) );
end;

procedure TFormDuplicatas.rldbtxt1AfterPrint(Sender: TObject);
begin

{RLDBText15.text := DMC.SDS_Crediario_ContratoDATA_VENCIMENTO.text;
RLDBText19.text := DMC.SDS_Crediario_ContratoPARCELA.text;
RLDBText20.text := DMC.SDS_Crediario_ContratoPARCELA.text;
RLDBText16.text := DMC.SDS_Crediario_ContratoCODIGO_COMPRA.text;
RLDBText17.text := DMC.SDS_Crediario_ContratoVALOR_TOTAL.text;
RLDBText14.text := DMC.SDS_Crediario_ContratoVALOR_TOTAL.text;
RLDBText18.text := DMC.SDS_Crediario_ContratoCODIGO_COMPRA.text;  }
//Texto := RLDBText17.text;
//rldbtxt1.Text := NumeroParaExtenso(StrToFloat(texto));

end;

procedure TFormDuplicatas.RLReport1PageStarting(Sender: TObject);
begin
 rldbtxt1.Text := ( NumeroExtenso(DMC.SDS_Crediario_ContratoVALOR_compra.AsFloat, true) );
end;

end.




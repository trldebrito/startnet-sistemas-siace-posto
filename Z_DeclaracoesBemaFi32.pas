unit Z_DeclaracoesBemaFi32;

interface
Uses Dialogs, Windows, SysUtils, Classes, Messages, Forms, Variants;


{===============================================================================
********************************************************************************

                      DECLARA��O DAS FUN��ES DA BEMAFI32.DLL

********************************************************************************
===============================================================================}

function  Analisa_Retorno_Bematech(const bECFMFD : boolean) : integer;
function  verifica_Bematech_Ligada : integer;
procedure MensagemErroBematech(const iIndice : integer);
procedure LeituraMFPeriodo(const iAuxECF : integer; DataIni, DataFin : TDateTime; const bCompleta : boolean);

// Fun��es de Inicializa��o


function Bematech_FI_AlteraSimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaHorarioVerao: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NomeiaDepartamento( Indice: Integer; Departamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaArredondamento: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaTruncamento: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ProgramaTruncamento'; 
function Bematech_FI_LinhasEntreCupons( Linhas: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EspacoEntreLinhas( Dots: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ForcaImpactoAgulhas( ForcaImpacto: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es do Cupom Fiscal 

function Bematech_FI_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaItemAnterior: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FechaCupomResumido( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FechaCupom( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ResetaImpressora: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EfetuaFormaPagamentoDescricaoForma( FormaPagamento: string; ValorFormaPagamento: string; DescricaoFormaPagto: string ): integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EstornoFormasPagamento( FormaOrigem: String; FormaDestino: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_UsaUnidadeMedida( UnidadeMedida: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AumentaDescricaoItem( Descricao: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoImpAntiga( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es dos Relat�rios Fiscais 

function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ; 
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_RelatorioGerencialTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalSerialData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalSerialReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es das Opera��es N�o Fiscais 

function Bematech_FI_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_UsaComprovanteNaoFiscalVinculadoTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Sangria( Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es de Informa��es da Impressora 

function Bematech_FI_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ModeloImpressora( cModeloImp: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraXSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VersaoFirmware( VersaoFirmware: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CGC_IE( CGC: String; IE: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Cancelamentos( ValorCancelamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Descontos( ValorDescontos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroOperacoesNaoFiscais( NumeroOperacoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroCuponsCancelados( NumeroCancelamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroIntervencoes( NumeroIntervencoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroReducoes( NumeroReducoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroSubstituicoesProprietario( NumeroSubstituicoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_UltimoItemVendido( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ClicheProprietario( Cliche: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroLoja( NumeroLoja: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_SimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_MinutosLigada( Minutos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_MinutosImprimindo( Minutos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaModoOperacao( Modo: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaEpromConectada( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FlagsFiscais( Var Flag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ValorPagoUltimoCupom( ValorCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ContadoresTotalizadoresNaoFiscais( Contadores: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DataMovimento( Data: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTruncamento( Flag: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Acrescimos( ValorAcrescimos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ContadorBilhetePassagem( ContadorPassagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaFormasPagamento( Formas: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaRecebimentoNaoFiscal( Recebimentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaDepartamentos( Departamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTipoImpressora( Var TipoImpressora: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTotalizadoresParciais( Totalizadores: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DadosUltimaReducao( DadosReducao: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_MonitoramentoPapel( Var Linhas: Integer): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaIndiceAliquotasIss( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ValorFormaPagamento( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ValorTotalizadorNaoFiscal( Totalizador: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es de Autentica��o e Gaveta de Dinheiro 

function Bematech_FI_Autenticacao:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_Autenticacao'; 
function Bematech_FI_ProgramaCaracterAutenticacao( Parametros: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta'; 
function Bematech_FI_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es para a Impressora Restaurante 

function Bematech_FIR_AbreCupomRestaurante( Mesa: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RegistraVenda( Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_CancelaVenda( Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_ConferenciaMesa( Mesa: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_AbreConferenciaMesa( Mesa: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaConferenciaMesa( FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_TransferenciaMesa( MesaOrigem: String; MesaDestino: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_ContaDividida( NumeroCupons: String; ValorPago: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaCupomContaDividida( NumeroCupons: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; FormasPagamento: String; ValorFormasPagamento: String; ValorPagoCliente: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_TransferenciaItem( MesaOrigem: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String; MesaDestino: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RelatorioMesasAbertas( TipoRelatorio: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_ImprimeCardapio: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RelatorioMesasAbertasSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_CardapioPelaSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RegistroVendaSerial( Mesa: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_VerificaMemoriaLivre( Bytes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaCupomRestaurante( FormaPagamento: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorFormaPagto: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaCupomResumidoRestaurante( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��o para a Impressora Bilhete de Passagem 

function Bematech_FI_AbreBilhetePassagem( ImprimeValorFinal: string; ImprimeEnfatizado: string; Embarque: string; Destino: string; Linha: string; Prefixo: string; Agente: string; Agencia: string; Data: string; Hora: string; Poltrona: string; Plataforma: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es de Impress�o de Cheques 

function Bematech_FI_ProgramaMoedaSingular( MoedaSingular: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaMoedaPlural( MoedaPlural: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaImpressaoCheque: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaStatusCheque( Var StatusCheque: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ImprimeCheque( Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_IncluiCidadeFavorecido( Cidade: String; Favorecido: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ImprimeCopiaCheque: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeCopiaCheque'; 

// Outras Fun��es
function Bematech_FI_AbrePortaSerial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaPortaSerial: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechaPortaSerial';
function Bematech_FI_MapaResumo:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumo';
function Bematech_FI_AberturaDoDia( ValorCompra: string; FormaPagamento: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechamentoDoDia: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechamentoDoDia';
function Bematech_FI_ImprimeConfiguracoesImpressora:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeConfiguracoesImpressora';
function Bematech_FI_ImprimeDepartamentos: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeDepartamentos';
function Bematech_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
function Bematech_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';
function Bematech_FI_VerificaImpressoraLigada: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';

//function Bematech_FI_DadosSintegra( DataInicial: string; DataFinal: string ): integer; StdCall; External 'BEMAFI32.DLL';
// Fun��es da Impressora Fiscal MFD

function Bematech_FI_AbreCupomMFD(CGC: string; Nome: string; Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupomMFD(CGC, Nome, Endereco: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaFormaPagamentoMFD(FormaPagto, OperacaoTef: String) : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoMFD(FormaPagamento, ValorFormaPagamento, Parcelas, DescricaoFormaPagto: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CupomAdicionalMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoItemMFD (Item, AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimoDesconto: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioGerencialMFD (Indice, Descricao : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AutenticacaoMFD(Linhas, Texto : string) : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculadoMFD(FormaPagamento, Valor, NumeroCupom, CGC, nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReimpressaoNaoFiscalVinculadoMFD() : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaRecebimentoNaoFiscalMFD(IndiceTotalizador, ValorRecebimento : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupomMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoRecebimentoNaoFiscalMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRecebimentoNaoFiscalMFD(Mensagem : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRelatorioGerencialMFD(Indice : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaRelatorioGerencialMFD(Texto : string): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_VersaoDll( Versao: String ): Integer; StdCall; External 'BEMAFI32.DLL';

//function Bematech_FI_UsaRelatorioGerencialMFDTEF(Texto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SegundaViaNaoFiscalVinculadoMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EstornoNaoFiscalVinculadoMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieMFD(NumeroSerie : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmwareMFD(VersaoFirmware : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CNPJMFD(CNPJ : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InscricaoEstadualMFD(InscricaoEstadual : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InscricaoMunicipalMFD(InscricaoMunicipal : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TempoOperacionalMFD(TempoOperacional : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MinutosEmitindoDocumentosFiscaisMFD(Minutos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadoresTotalizadoresNaoFiscaisMFD(Contadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscaisMFD(Totalizadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamentoMFD(FormasPagamento : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRecebimentoNaoFiscalMFD(Recebimentos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRelatorioGerencialMFD(Relatorios : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorComprovantesCreditoMFD(Comprovantes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorOperacoesNaoFiscaisCanceladasMFD(OperacoesCanceladas : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorRelatoriosGerenciaisMFD (Relatorios : String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorCupomFiscalMFD(CuponsEmitidos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorFitaDetalheMFD(ContadorFita : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ComprovantesNaoFiscaisNaoEmitidosMFD(Comprovantes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieMemoriaMFD(NumeroSerieMFD : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MarcaModeloTipoImpressoraMFD(Marca, Modelo, Tipo : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReducoesRestantesMFD(Reducoes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresParciaisMFD(Totalizadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducaoMFD(DadosReducao : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraChequeMFD(CodigoCMC7 : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ImprimeChequeMFD(NumeroBanco, Valor, Favorecido, Cidade, Data, Mensagem, ImpressaoVerso, Linhas : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressoraMFD(var ACK, ST1, ST2, ST3 : Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreBilhetePassagemMFD(Embarque, Destino, Linha, Agencia, Data, Hora, Poltrona, Plataforma, TipoPassagem: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoItemMFD( cFlag, cItem: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalizaCupomMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalizaRecebimentoMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalLivreMFD( cMemoriaLivre: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TamanhoTotalMFD( cTamanhoMFD: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoSubtotalRecebimentoMFD( cFlag, cTipo, cValor: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoSubtotalMFD( cFlag, cTipo, cValor: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoSubtotalMFD( cFlag: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoSubtotalRecebimentoMFD( cFlag: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalizaCupomMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalizaRecebimentoMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_PercentualLivreMFD( cMemoriaLivre: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraUltimoDocumentoMFD( cDataHora: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MapaResumoMFD:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumoMFD';
function Bematech_FI_RelatorioTipo60AnaliticoMFD: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60AnaliticoMFD';
function Bematech_FI_ValorFormaPagamentoMFD( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorTotalizadorNaoFiscalMFD( Totalizador: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioSintegraMFD( iRelatorios : Integer;
                                           cArquivo    : String;
                                           cMes        : String;
                                           cAno        : String;
                                           cRazaoSocial: String;
                                           cEndereco   : String;
                                           cNumero     : String;
                                           cComplemento: String;
                                           cBairro     : String;
                                           cCidade     : String;
                                           cCEP        : String;
                                           cTelefone   : String;
                                           cFax        : String;
                                           cContato    : String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DownloadMF( Arquivo: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RegistrosTipo60: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RegistrosTipo60';
function Bematech_FI_FormatoDadosMFD( ArquivoOrigem   : String;
                                      ArquivoDestino  : String;
                                      TipoFormato     : String;
                                      TipoDownload    : String;
                                      ParametroInicial: String;
                                      ParametroFinal  : String;
                                      UsuarioECF      : String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoDll( Versao: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es dispon�veis somente na impressora fiscal MP-2000 TH FI vers�o 01.00.02
function Bematech_FI_AtivaDesativaVendaUmaLinhaMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaAlinhamentoEsquerdaMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaCorteProximoMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaTratamentoONOFFLineMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_StatusEstendidoMFD( Var iStatus: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFlagCorteMFD( Var iStatus: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TempoRestanteComprovanteMFD( cTempo: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UFProprietarioMFD( cUF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotalUltimaReducaoMFD( cGT: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataMovimentoUltimaReducaoMFD( cData: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalComprovanteNaoFiscalMFD( cSubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InicioFimCOOsMFD( cCOOIni, cCOOFim: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InicioFimGTsMFD( cGTIni, cGTFim: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es para a impress�o de C�digo de Barras

function Bematech_FI_TerminaFechamentoCupomCodigoBarrasMFD( cMensagem: string;
                                                            cTipoCodigo: string;
                                                            cCodigo: string;
                                                            iAltura: integer;
                                                            iLargura: integer;
                                                            iPosicaoCaracteres: integer;
                                                            iFonte: integer;
                                                            iMargem: integer;
                                                            iCorrecaoErros: integer;
                                                            iColunas: integer ): Integer; StdCall; External 'BEMAFI32.DLL';



 // Fun��es para o PAF-ECF

function Bematech_FI_AbreDocumentoAuxiliarVenda( cIndice: String; cTitulo: String; cNumeroDAV: String; cNomeEmitente: String; cCNPJ_CPFEmitente: String; cNomeDestinatario: String; CNPJ_CPFDestinatario:  String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaDocumentoAuxiliarVenda( cMercadoria: String; cValorUnitario: String; cValorTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaDocumentoAuxiliarVenda( cTotal: String ): Integer;  StdCall; External'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupomPreVenda( cMD5: String; cNumeroPreVenda: String; cMensagemPromocional: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DAVEmitidosRelatorioGerencial( cIndice: String; cDataInicial: String; cDataFinal:  String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DAVEmitidosArquivo( cNomeArquivo: String; cDataInicial: String; cDataFinal: String; cChavePublica: String; cChavePrivada: String ): Integer;  StdCall; External' BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialDataPAFECF( cDataInicial: String; cDataFinal: String; cFlagLeitura: String; cChavePublica: String; cChavePrivada: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducaoPAFECF( cCRZInicial: String; cCRZFinal: String; cFlagLeitura: String; cChavePublica: String; cChavePrivada: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EspelhoMFD( cNomeArquivoDestino: String; cDadoInicial: String; cDadoFinal: String; cTipoDownload: String; cUsuario: String; cChavePublica: String; cChavePrivada: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ArquivoMFD( cNomeArquivoOrigem: String; cDadoInicial: String; cDadoFinal: String; cTipoDownload: String; cUsuario: String; iTipoGeracao: integer; cChavePublica: String; cChavePrivada: String; iUnicoArquivo: integer ): Integer;  StdCall; External'BEMAFI32.DLL';
function Bematech_FI_IdentificacaoPAFECF( cIndice: String; cNumeroLaudo: String; cCNPJDesenvolvedor: String; cRazaoSocial: String; cEndereco: String; cTelefone: String; cContato: String; cNomeComercial: String; cVersao: String; cPrincipalExecutavel: String; cMD5PrincipalExecutavel: String; cDemaisArquivos: String; cMD5DemaisArquivos: String; cNumerosFabricacao: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotalCriptografado( cGTCriptografado: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotalDescriptografado( cGTCriptografado: String; cGTDescriptografado: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRelatorioMeiosPagamento( cIndice: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaRelatorioMeiosPagamento ( cIdentificacao: String; cTipoDocumento: String; cValorAcumulado: String; cData: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioMeiosPagamento: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioMeiosDePagamento: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioDocumentoAuxiliarDeVenda: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioDAVEmitidos: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioIdentificacaoPAFECF: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatoriosPAFECF: Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��o para o SPED  
function Bematech_FI_GeraRegistrosSpedMFD( arq_origem: string; arq_destino: string; data_inicial: string; data_final: string; perfil: string; CFOP: string; lac_fiscal: string; pis: string; cofins: string ): Integer;  StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GeraRegistrosSpedCompleto( arq_origem: string; arq_destino: string; data_inicial: string; data_final: string; perfil: string; CFOP: string; lac_fiscal: string; pis: string; cofins: string; empresa: string; Municipio: string): Integer;  StdCall; External 'BEMAFI32.DLL';

{ Fim da Declara��o }

function  VersaoDLL(const iAuxECF : integer) : string;

var
  iRetBematech : integer;

implementation
uses
  ModulodeDados;

function VersaoDLL(const iAuxECF : integer) : string;
var sVersaoDLL : string;
begin
   case iAuxECF of
    1: begin
          SetLength(sVersaoDLL, 10);
          iRetBematech:= Bematech_FI_VersaoDll(sVersaoDLL);
          Analisa_Retorno_Bematech(bMFD);
          Result:= sVersaoDLL;
       end;
    {2: begin
          SetLength(sVersaoDll, 10);
          iRetDaruma:= Daruma_FI_RetornarVersaoDLL(sVersaoDLL);
          Analisa_Retorno_Daruma;
          Result:= sVersaoDLL;
       end; }
   end;
end;

function verifica_Bematech_Ligada : integer;
begin
   iRetBematech:= Bematech_FI_VerificaImpressoraLigada();
   if iRetBematech <> 1 then
      begin
         result:= 1;
         dm.MensagemErroECF('ECF Desligada ou desconectada, verifique', bExibeMensagensErro);
      end
   else
      result:= 0;
end;

function Analisa_Retorno_Bematech(const bECFMFD : boolean) : integer;
var iACK, iST1, iST2, iST3, iAux : integer;
    sAux : string;
begin
   iACK  := 0;
   iST1  := 0;
   iST2  := 0;
   iST3  := 0;
   iAux  := 0;

   if bECFMFD then
      begin
         sAux:= '1';
         iRetBematech:= Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(pchar(sAux));
         iRetBematech:= Bematech_FI_RetornoImpressoraMFD(iACK, iST1, iST2, iST3);
      end
   else
      begin
         sAux:= '0';
         iRetBematech:= Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(pchar(sAux));
         iRetBematech:= Bematech_FI_RetornoImpressora(iACK, iST1, iST2);
      end;

   if iACK = 6 then
        begin
           iAux:= 0;
           { DECODIFICA O ST1 }
           if iST1 >= 128 then
              begin
                 iST1:= iST1 - 128;
                 iAux:= 0;
                 dm.MensagemErroECF('FIM DE PAPEL - FAVOR TROCAR A BOBINA', bExibeMensagensErro);
              end;
           if iST1 >= 64 then
              begin
                 iST1:= iST1 - 64;
                 iAux:= 0;
                 //showmessage('O PAPEL EST� TERMINANDO - FAVOR VERIFICAR');
              end;
           if iST1 >= 32 then
              begin
                 iST1:= iST1 - 32;
                 iAux:= 1;
                 dm.MensagemErroECF('ERRO NO REL�GIO INTERNO DO ECF', bExibeMensagensErro);
              end;
           if iST1 >= 16 then
              begin
                 iST1:= iST1 - 16;
                 iAux:= 1;
                 dm.MensagemErroECF('IMPRESSORA EM ERRO - DESLIGUE E LIGUE O ECF', bExibeMensagensErro);
              end;
           if iST1 >= 8 then
              begin
                 iST1:= iST1 - 8;
                 iAux:= 1;
                 dm.MensagemErroECF('ERRO NO ENVIO DO COMANDO', bExibeMensagensErro);
              end;
           if iST1 >= 4 then
              begin
                 iST1:= iST1 - 4;
                 iAux:= 1;
                 dm.MensagemErroECF('COMANDO INEXISTENTE', bExibeMensagensErro);
              end;
           if iST1 >= 2 then
              begin
                 iST1:= iST1 - 2;
                 iAux:= 1;
                 dm.MensagemErroECF('CUPOM FISCAL ABERTO', bExibeMensagensErro);
              end;
           if iST1 >= 1 then
              begin
                 iST1:= iST1 - 1;
                 iAux:= 1;
                 dm.MensagemErroECF('PARAMETRO INV�LIDO', bExibeMensagensErro);
              end;

           { DECODIFICA O ST2 }
           if iST2 >= 128 then
              begin
                 iST2:= iST2 - 128;
                 iAux:= 1;
                 dm.MensagemErroECF('TIPO DE CMD INV�LIDO - FAVOR CHAMAR O SUPORTE', bExibeMensagensErro);
              end;
           if iST2 >= 64 then
              begin
                 iST2:= iST2 - 64;
                 iAux:= 1;
                 dm.MensagemErroECF('MEM�RIA FISCAL CHEIA - FAVOR CHAMAR O SUPORTE', bExibeMensagensErro);
              end;
           if iST2 >= 32 then
              begin
                 iST2:= iST2 - 32;
                 iAux:= 1;
                 dm.MensagemErroECF('ERRO DE CMOS DO ECF - FAVOR CHAMAR O SUPORTE', bExibeMensagensErro);
              end;
           if iST2 >= 16 then
              begin
                 iST2:= iST2 - 16;
                 iAux:= 1;
                 dm.MensagemErroECF('AL�QUOTA N�O PROGRAMADA', bExibeMensagensErro);
              end;
           if iST2 >= 8 then
              begin
                 iST2:= iST2 - 8;
                 iAux:= 1;
                 dm.MensagemErroECF('CAPACIDADE AL�QUOTA LOTADA', bExibeMensagensErro);
              end;
           if iST2 >= 4 then
              begin
                 iST2:= iST2 - 4;
                 iAux:= 1;
                 dm.MensagemErroECF('CANCELAMENTO N�O PERMITIDO PELO ECF', bExibeMensagensErro);
              end;
           if iST2 >= 2 then
              begin
                 iST2:= iST2 - 2;
                 iAux:= 1;
                 dm.MensagemErroECF('CGC/IE N�O PROGRAMADO - FAVOR CHAMAR O SUPORTE', bExibeMensagensErro);
              end;
           if iST2 >= 1 then
              begin
                 iST2:= iST2 - 1;
                 iAux:= 1;
                 dm.MensagemErroECF('COMANDO N�O EXECUTADO', bExibeMensagensErro);
              end;

           { ST3 - RETORNO ESTENDIDO }
           if bECFMFD then
              begin
                 if iST3 > 0 then
                    iAux:= 1
                 else
                    iAux:= 0;

                 case iST3 of
                  1:   dm.MensagemErroECF('COMANDO INV�LIDO', bExibeMensagensErro);
                  2:   dm.MensagemErroECF('ERRO DESCONHECIDO', bExibeMensagensErro);
                  3:   dm.MensagemErroECF('N�MERO DE PAR�METRO INV�LIDO', bExibeMensagensErro);
                  4:   dm.MensagemErroECF('TIPO DE PAR�METRO INV�LIDO', bExibeMensagensErro);
                  5:   dm.MensagemErroECF('TODAS AL�QUOTAS J� PROGRAMADAS', bExibeMensagensErro);
                  6:   dm.MensagemErroECF('TOTALIZADOR N�O FISCAL J� PROGRAMADO', bExibeMensagensErro);
                  7:   dm.MensagemErroECF('CUPOM FISCAL ABERTO', bExibeMensagensErro);
                  8:   dm.MensagemErroECF('CUPOM FISCAL FECHADO', bExibeMensagensErro);
                  9:   dm.MensagemErroECF('ECF OCUPADO', bExibeMensagensErro);
                  10:  dm.MensagemErroECF('IMPRESSORA EM ERRO', bExibeMensagensErro);
                  11:  dm.MensagemErroECF('IMPRESSORA SEM PAPEL', bExibeMensagensErro);
                  12:  dm.MensagemErroECF('IMPRESSORA COM CABE�A LEVANTADA', bExibeMensagensErro);
                  13:  dm.MensagemErroECF('IMPRESSORA OFF LINE', bExibeMensagensErro);
                  14:  dm.MensagemErroECF('AL�QUOTA N�O PROGRAMADA', bExibeMensagensErro);
                  15:  dm.MensagemErroECF('TERMINADOR DE STRING FALTANDO', bExibeMensagensErro);
                  16:  dm.MensagemErroECF('ACR�SCIMO OU DESCONTO MAIOR QUE O TOTAL DO CUPOM FISCAL', bExibeMensagensErro);
                  17:  dm.MensagemErroECF('CUPOM FISCAL SEM ITEM VENDIDO', bExibeMensagensErro);
                  18:  dm.MensagemErroECF('COMANDO N�O EFETIVADO', bExibeMensagensErro);
                  19:  dm.MensagemErroECF('SEM ESPA�O PARA NOVAS FORMAS DE PAGAMENTO', bExibeMensagensErro);
                  20:  dm.MensagemErroECF('FORMA DE PAGAMENTO N�O PROGRAMADA', bExibeMensagensErro);
                  21:  dm.MensagemErroECF('�NDICE MAIOR QUE N�MERO DE FORMA DE PAGAMENTO', bExibeMensagensErro);
                  22:  dm.MensagemErroECF('FORMAS DE PAGAMENTO ENCERRADAS', bExibeMensagensErro);
                  23:  dm.MensagemErroECF('CUPOM N�O TOTALIZADO', bExibeMensagensErro);
                  24:  dm.MensagemErroECF('COMANDO MAIOR QUE 7Fh (127d)', bExibeMensagensErro);
                  25:  dm.MensagemErroECF('CUPOM FISCAL ABERTO E SEM �TEM', bExibeMensagensErro);
                  26:  dm.MensagemErroECF('CANCELAMENTO N�O IMEDIATAMENTE AP�S', bExibeMensagensErro);
                  27:  dm.MensagemErroECF('CANCELAMENTO J� EFETUADO', bExibeMensagensErro);
                  28:  dm.MensagemErroECF('COMPROVANTE DE CR�DITO OU D�BITO N�O PERMITIDO OU J� EMITIDO', bExibeMensagensErro);
                  29:  dm.MensagemErroECF('MEIO DE PAGAMENTO N�O PERMITE TEF', bExibeMensagensErro);
                  30:  dm.MensagemErroECF('SEM COMPROVANTE N�O FISCAL ABERTO', bExibeMensagensErro);
                  31:  dm.MensagemErroECF('COMPROVANTE DE CR�DITO OU D�BITO J� ABERTO', bExibeMensagensErro);
                  32:  dm.MensagemErroECF('REIMPRESS�O N�O PERMITIDA', bExibeMensagensErro);
                  33:  dm.MensagemErroECF('COMPROVANTE N�O FISCAL J� ABERTO', bExibeMensagensErro);
                  34:  dm.MensagemErroECF('TOTALIZADOR N�O FISCAL N�O PROGRAMADO', bExibeMensagensErro);
                  35:  dm.MensagemErroECF('CUPOM N�O FISCAL SEM �TEM VENDIDO', bExibeMensagensErro);
                  36:  dm.MensagemErroECF('ACR�SCIMO E DESCONTO MAIOR QUE TOTAL CNF', bExibeMensagensErro);
                  37:  dm.MensagemErroECF('MEIO DE PAGAMENTO N�O INDICADO', bExibeMensagensErro);
                  38:  dm.MensagemErroECF('MEIO DE PAGAMENTO DIFERENTE DO TOTAL DO RECEBIMENTO', bExibeMensagensErro);
                  39:  dm.MensagemErroECF('N�O PERMITIDO MAIS DE UMA SANGRIA OU SUPRIMENTO', bExibeMensagensErro);
                  40:  dm.MensagemErroECF('RELAT�RIO GERENCIAL J� PROGRAMADO', bExibeMensagensErro);
                  41:  dm.MensagemErroECF('RELAT�RIO GERENCIAL N�O PROGRAMADO', bExibeMensagensErro);
                  42:  dm.MensagemErroECF('RELAT�RIO GERENCIAL N�O PERMITIDO', bExibeMensagensErro);
                  43:  dm.MensagemErroECF('MFD N�O INICIALIZADA', bExibeMensagensErro);
                  44:  dm.MensagemErroECF('MFD AUSENTE', bExibeMensagensErro);
                  45:  dm.MensagemErroECF('MFD SEM N�MERO DE S�RIE', bExibeMensagensErro);
                  46:  dm.MensagemErroECF('MFD J� INICIALIZADA', bExibeMensagensErro);
                  47:  dm.MensagemErroECF('MFD LOTADA', bExibeMensagensErro);
                  48:  dm.MensagemErroECF('CUPOM N�O FISCAL ABERTO', bExibeMensagensErro);
                  49:  dm.MensagemErroECF('MEM�RIA FISCAL DESCONECTADA', bExibeMensagensErro);
                  50:  dm.MensagemErroECF('MEM�RIA FISCAL SEM N�MERO DE S�RIE DA MFD', bExibeMensagensErro);
                  51:  dm.MensagemErroECF('MEM�RIA FISCAL LOTADA', bExibeMensagensErro);
                  52:  dm.MensagemErroECF('DATA INICIAL INV�LIDA', bExibeMensagensErro);
                  53:  dm.MensagemErroECF('DATA FINAL INV�LIDA', bExibeMensagensErro);
                  54:  dm.MensagemErroECF('CONTADOR DE REDU��O Z INICIAL INV�LIDO', bExibeMensagensErro);
                  55:  dm.MensagemErroECF('CONTADOR DE REDU��O Z FINAL INV�LIDO', bExibeMensagensErro);
                  56:  dm.MensagemErroECF('ERRO DE ALOCA��O', bExibeMensagensErro);
                  57:  dm.MensagemErroECF('DADOS DO RTC INCORRETOS', bExibeMensagensErro);
                  58:  dm.MensagemErroECF('DATA ANTERIOR AO �LTIMO DOCUMENTO EMITIDO', bExibeMensagensErro);
                  59:  dm.MensagemErroECF('FORA DE INTERVEN��O T�CNICA', bExibeMensagensErro);
                  60:  dm.MensagemErroECF('EM INTERVEN��O T�CNICA', bExibeMensagensErro);
                  61:  dm.MensagemErroECF('ERRO NA MEM�RIA DE TRABALHO', bExibeMensagensErro);
                  62:  dm.MensagemErroECF('J� HOUVE MOVIMENTO NO DIA', bExibeMensagensErro);
                  63:  dm.MensagemErroECF('BLOQUEIO POR RZ', bExibeMensagensErro);
                  64:  dm.MensagemErroECF('FORMA DE PAGAMENTO ABERTA', bExibeMensagensErro);
                  65:  dm.MensagemErroECF('AGUARDANDO PRIMEIRO PROPRIET�RIO', bExibeMensagensErro);
                  66:  dm.MensagemErroECF('AGUARDANDO RZ', bExibeMensagensErro);
                  67:  dm.MensagemErroECF('ECF OU LOJA IGUAL A ZERO', bExibeMensagensErro);
                  68:  dm.MensagemErroECF('CUPOM ADICIONAL N�O PERMITIDO', bExibeMensagensErro);
                  69:  dm.MensagemErroECF('DESCONTO MAIOR QUE TOTAL VENDIDO EM ICMS', bExibeMensagensErro);
                  70:  dm.MensagemErroECF('RECEBIMENTO N�O FISCAL NULO N�O PERMITIDO', bExibeMensagensErro);
                  71:  dm.MensagemErroECF('ACR�SCIMO OU DESCONTO MAIOR QUE TOTAL N�O FISCAL', bExibeMensagensErro);
                  72:  dm.MensagemErroECF('MEM�RIA FISCAL LOTADA PARA NOVO CARTUCHO', bExibeMensagensErro);
                  73:  dm.MensagemErroECF('ERRO DE GRAVA��O NA MF', bExibeMensagensErro);
                  74:  dm.MensagemErroECF('ERRO DE GRAVA��O NA MFD', bExibeMensagensErro);
                  75:  dm.MensagemErroECF('DADOS DO RTC ANTERIORES AO �LTIMO DOC ARMAZENADO', bExibeMensagensErro);
                  76:  dm.MensagemErroECF('MEM�RIA FISCAL SEM ESPA�O PARA GRAVAR LEITURAS DA MFD', bExibeMensagensErro);
                  77:  dm.MensagemErroECF('MEM�RIA FISCAL SEM ESPA�O PARA GRAVAR VERSAO DO SB', bExibeMensagensErro);
                  78:  dm.MensagemErroECF('DESCRI��O IGUAL A DEFAULT N�O PERMITIDO', bExibeMensagensErro);
                  79:  dm.MensagemErroECF('EXTRAPOLADO N�MERO DE REPETI��ES PERMITIDAS', bExibeMensagensErro);
                  80:  dm.MensagemErroECF('SEGUNDA VIA DO COMPROVANTE DE CR�DITO OU D�BITO N�O PERMITIDO', bExibeMensagensErro);
                  81:  dm.MensagemErroECF('PARCELAMENTO FORA DA SEQU�NCIA', bExibeMensagensErro);
                  82:  dm.MensagemErroECF('COMPROVANTE DE CR�DITO OU D�BITO ABERTO', bExibeMensagensErro);
                  83:  dm.MensagemErroECF('TEXTO COM SEQU�NCIA DE ESC INV�LIDA', bExibeMensagensErro);
                  84:  dm.MensagemErroECF('TEXTO COM SEQU�NCIA DE ESC INCOMPLETA', bExibeMensagensErro);
                  85:  dm.MensagemErroECF('VENDA COM VALOR NULO', bExibeMensagensErro);
                  86:  dm.MensagemErroECF('ESTORNO DE VALOR NULO', bExibeMensagensErro);
                  87:  dm.MensagemErroECF('FORMA DE PAGAMENTO DIFERENTE DO TOTAL DA SANGRIA', bExibeMensagensErro);
                  88:  dm.MensagemErroECF('REDU��O N�O PERMITIDA EM INTERVEN��O T�CNICA', bExibeMensagensErro);
                  89:  dm.MensagemErroECF('AGUARDANDO RZ PARA ENTRADA EM INTERVEN��O T�CNICA', bExibeMensagensErro);
                  90:  dm.MensagemErroECF('FORMA DE PAGAMENTO COM VALOR NULO N�O PERMITIDO', bExibeMensagensErro);
                  91:  dm.MensagemErroECF('ACR�SCIMO E DESCONTO MAIOR QUE VALOR DO �TEM', bExibeMensagensErro);
                  92:  dm.MensagemErroECF('AUTENTICA��O N�O PERMITIDA', bExibeMensagensErro);
                  93:  dm.MensagemErroECF('TIMEOUT NA VALIDA��O', bExibeMensagensErro);
                  94:  dm.MensagemErroECF('COMANDO N�O EXECUTADO EM IMPRESSORA BILHETE DE PASSAGEM', bExibeMensagensErro);
                  95:  dm.MensagemErroECF('COMANDO N�O EXECUTADO EM IMPRESSORA DE CUPOM FISCAL', bExibeMensagensErro);
                  96:  dm.MensagemErroECF('CUPOM N�O FISCAL FECHADO', bExibeMensagensErro);
                  97:  dm.MensagemErroECF('PAR�METRO N�O ASCII EM CAMPO ASCII', bExibeMensagensErro);
                  98:  dm.MensagemErroECF('PAR�METRO N�O ASCII NUM�RICO EM CAMPO ASCII NUM�RICO', bExibeMensagensErro);
                  99:  dm.MensagemErroECF('TIPO DE TRANSPORTE INV�LIDO', bExibeMensagensErro);
                  100: dm.MensagemErroECF('DATA E HORA INV�LIDA', bExibeMensagensErro);
                  101: dm.MensagemErroECF('SEM RELAT�RIO GERENCIAL OU COMPROVANTE DE CR�DITO OU D�BITO ABERTO', bExibeMensagensErro);
                  102: dm.MensagemErroECF('N�MERO DO TOTALIZADOR N�O FISCAL INV�LIDO', bExibeMensagensErro);
                  103: dm.MensagemErroECF('PAR�METRO DE ACR�SCIMO OU DESCONTO INV�LIDO', bExibeMensagensErro);
                  104: dm.MensagemErroECF('ACR�SCIMO OU DESCONTO EM SANGRIA OU SUPRIMENTO N�O PERMITIDO', bExibeMensagensErro);
                  105: dm.MensagemErroECF('N�MERO DO RELAT�RIO GERENCIAL INV�LIDO', bExibeMensagensErro);
                  106: dm.MensagemErroECF('FORMA DE PAGAMENTO ORIGEM N�O PROGRAMADA', bExibeMensagensErro);
                  107: dm.MensagemErroECF('FORMA DE PAGAMENTO DESTINO N�O PROGRAMADA', bExibeMensagensErro);
                  108: dm.MensagemErroECF('ESTORNO MAIOR QUE FORMA PAGAMENTO', bExibeMensagensErro);
                  109: dm.MensagemErroECF('CARACTER NUM�RICO NA CODIFICA��O GT N�O PERMITIDO', bExibeMensagensErro);
                  110: dm.MensagemErroECF('ERRO NA INICIALIZA��O DA MF', bExibeMensagensErro);
                  111: dm.MensagemErroECF('NOME DO TOTALIZADOR EM BRANCO N�O PERMITIDO', bExibeMensagensErro);
                  112: dm.MensagemErroECF('DATA E HORA ANTERIORES AO �LTIMO DOC ARMAZENADO', bExibeMensagensErro);
                  113: dm.MensagemErroECF('PAR�METRO DE ACR�SCIMO OU DESCONTO INV�LIDO', bExibeMensagensErro);
                  114: dm.MensagemErroECF('�TEM ANTERIOR AOS TREZENTOS �LTIMOS', bExibeMensagensErro);
                  115: dm.MensagemErroECF('�TEM N�O EXISTE OU J� CANCELADO', bExibeMensagensErro);
                  116: dm.MensagemErroECF('C�DIGO COM ESPA�OS N�O PERMITIDO', bExibeMensagensErro);
                  117: dm.MensagemErroECF('DESCRICAO SEM CARACTER ALFAB�TICO N�O PERMITIDO', bExibeMensagensErro);
                  118: dm.MensagemErroECF('ACR�SCIMO MAIOR QUE VALOR DO �TEM', bExibeMensagensErro);
                  119: dm.MensagemErroECF('DESCONTO MAIOR QUE VALOR DO �TEM', bExibeMensagensErro);
                  120: dm.MensagemErroECF('DESCONTO EM ISS N�O PERMITIDO', bExibeMensagensErro);
                  121: dm.MensagemErroECF('ACR�SCIMO EM �TEM J� EFETUADO', bExibeMensagensErro);
                  122: dm.MensagemErroECF('DESCONTO EM �TEM J� EFETUADO', bExibeMensagensErro);
                  123: dm.MensagemErroECF('ERRO NA MEM�RIA FISCAL CHAMAR CREDENCIADO', bExibeMensagensErro);
                  124: dm.MensagemErroECF('AGUARDANDO GRAVA��O NA MEM�RIA FISCAL', bExibeMensagensErro);
                  125: dm.MensagemErroECF('CARACTER REPETIDO NA CODIFICA��O DO GT', bExibeMensagensErro);
                  126: dm.MensagemErroECF('VERS�O J� GRAVADA NA MEM�RIA FISCAL', bExibeMensagensErro);
                  127: dm.MensagemErroECF('ESTOURO DE CAPACIDADE NO CHEQUE', bExibeMensagensErro);
                  128: dm.MensagemErroECF('TIMEOUT NA LEITURA DO CHEQUE', bExibeMensagensErro);
                  129: dm.MensagemErroECF('M�S INV�LIDO', bExibeMensagensErro);
                  130: dm.MensagemErroECF('COORDENADA INV�LIDA', bExibeMensagensErro);
                  131: dm.MensagemErroECF('SOBREPOSI��O DE TEXTO', bExibeMensagensErro);
                  132: dm.MensagemErroECF('SOBREPOSI��O DE TEXTO NO VALOR', bExibeMensagensErro);
                  133: dm.MensagemErroECF('SOBREPOSI��O DE TEXTO NO EXTENSO', bExibeMensagensErro);
                  134: dm.MensagemErroECF('SOBREPOSI��O DE TEXTO NO FAVORECIDO', bExibeMensagensErro);
                  135: dm.MensagemErroECF('SOBREPOSI��O DE TEXTO NA LOCALIDADE', bExibeMensagensErro);
                  136: dm.MensagemErroECF('SOBREPOSI��O DE TEXTO NO OPCIONAL', bExibeMensagensErro);
                  137: dm.MensagemErroECF('SOBREPOSI��O DE TEXTO NO DIA', bExibeMensagensErro);
                  138: dm.MensagemErroECF('SOBREPOSI��O DE TEXTO NO M�S', bExibeMensagensErro);
                  139: dm.MensagemErroECF('SOBREPOSI��O DE TEXTO NO ANO', bExibeMensagensErro);
                  140: dm.MensagemErroECF('USANDO MFD DE OUTRO', bExibeMensagensErro);
                  141: dm.MensagemErroECF('PRIMEIRO DADO DIFERENTE DE ESC OU 1C', bExibeMensagensErro);
                  142: dm.MensagemErroECF('N�O PERMITIDO ALTERAR SEM INTERVEN��O T�CNICA', bExibeMensagensErro);
                  143: dm.MensagemErroECF('DADOS DA �LTIMA RZ CORROMPIDOS', bExibeMensagensErro);
                  144: dm.MensagemErroECF('COMANDO N�O PERMITIDO NO MODO INICIALIZA��O', bExibeMensagensErro);
                  145: dm.MensagemErroECF('AGUARDANDO ACERTO DE REL�GIO', bExibeMensagensErro);
                  146: dm.MensagemErroECF('MFD J� INICIALIZADA PARA OUTRA MF', bExibeMensagensErro);
                  147: dm.MensagemErroECF('AGUARDANDO ACERTO DO REL�GIO OU DESBLOQUEIO PELO TECLADO', bExibeMensagensErro);
                  148: dm.MensagemErroECF('VALOR FORMA DE PAGAMENTO MAIOR QUE M�XIMO PERMITIDO', bExibeMensagensErro);
                  149: dm.MensagemErroECF('RAZ�O SOCIAL EM BRANCO', bExibeMensagensErro);
                  150: dm.MensagemErroECF('NOME DE FANTASIA EM BRANCO', bExibeMensagensErro);
                  151: dm.MensagemErroECF('ENDERE�O EM BRANCO', bExibeMensagensErro);
                  152: dm.MensagemErroECF('ESTORNO DE CDC N�O PERMITIDO', bExibeMensagensErro);
                  153: dm.MensagemErroECF('DADOS DO PROPRIET�RIO IGUAIS AO ATUAL', bExibeMensagensErro);
                  154: dm.MensagemErroECF('ESTORNO DE FORMA DE PAGAMENTO N�O PERMITIDO', bExibeMensagensErro);
                  155: dm.MensagemErroECF('DESCRI��O FORMA DE PAGAMENTO IGUAL J� PROGRAMADA', bExibeMensagensErro);
                  156: dm.MensagemErroECF('ACERTO DE HOR�RIO DE VER�O S� IMEDIATAMENTE AP�S RZ', bExibeMensagensErro);
                  157: dm.MensagemErroECF('IT N�O PERMITIDA MF RESERVADA PARA RZ', bExibeMensagensErro);
                  158: dm.MensagemErroECF('SENHA CNPJ INV�LIDA', bExibeMensagensErro);
                  159: dm.MensagemErroECF('TIMEOUT NA INICIALIZA��O DA NOVA MF', bExibeMensagensErro);
                  160: dm.MensagemErroECF('N�O ENCONTRADO DADOS NA MFD', bExibeMensagensErro);
                  161: dm.MensagemErroECF('SANGRIA OU SUPRIMENTO DEVEM SER �NICOS NO CNF', bExibeMensagensErro);
                  162: dm.MensagemErroECF('�NDICE DA FORMA DE PAGAMENTO NULO N�O PERMITIDO', bExibeMensagensErro);
                  163: dm.MensagemErroECF('UF DESTINO INV�LIDA', bExibeMensagensErro);
                  164: dm.MensagemErroECF('TIPO DE TRANSPORTE INCOMPAT�VEL COM UF DESTINO', bExibeMensagensErro);
                  165: dm.MensagemErroECF('DESCRI��O DO PRIMEIRO �TEM DO BILHETE DE PASSAGEM DIFERENTE DE TARIFA', bExibeMensagensErro);
                  166: dm.MensagemErroECF('AGUARDANDO IMPRESS�O DE CHEQUE OU AUTENTICA��O', bExibeMensagensErro);
                  167: dm.MensagemErroECF('N�O PERMITIDO PROGRAMA�AO CNPJ IE COM ESPA�OS EM BRANCO', bExibeMensagensErro);
                  168: dm.MensagemErroECF('N�O PERMITIDO PROGRAMA��O UF COM ESPA�OS EM BRANCO1', bExibeMensagensErro);
                  169: dm.MensagemErroECF('N�MERO DE IMPRESS�ES DA FITA DETALHE NESTA INTERVEN��O T�CNICA ESGOTADO', bExibeMensagensErro);
                  170: dm.MensagemErroECF('CF J� SUBTOTALIZADO', bExibeMensagensErro);
                  171: dm.MensagemErroECF('CUPOM N�O SUBTOTALIZADO', bExibeMensagensErro);
                  172: dm.MensagemErroECF('ACR�SCIMO EM SUBTOTAL J� EFETUADO', bExibeMensagensErro);
                  173: dm.MensagemErroECF('DESCONTO EM SUBTOTAL J� EFETUADO', bExibeMensagensErro);
                  174: dm.MensagemErroECF('ACR�SCIMO NULO N�O PERMITIDO', bExibeMensagensErro);
                  175: dm.MensagemErroECF('DESCONTO NULO N�O PERMITIDO', bExibeMensagensErro);
                  176: dm.MensagemErroECF('CANCELAMENTO DE ACR�SCIMO OU DESCONTO EM SUBTOTAL N�O PERMITIDO', bExibeMensagensErro);
                  177: dm.MensagemErroECF('DATA INV�LIDA', bExibeMensagensErro);
                  178: dm.MensagemErroECF('VALOR DO CHEQUE NULO N�O PERMITIDO', bExibeMensagensErro);
                  179: dm.MensagemErroECF('VALOR DO CHEQUE INV�LIDO', bExibeMensagensErro);
                  180: dm.MensagemErroECF('CHEQUE SEM LOCALIDADE N�O PERMITIDO', bExibeMensagensErro);
                  181: dm.MensagemErroECF('CANCELAMENTO ACR�SCIMO EM �TEM N�O PERMITIDO', bExibeMensagensErro);
                  182: dm.MensagemErroECF('CANCELAMENTO DESCONTO EM �TEM N�O PERMITIDO', bExibeMensagensErro);
                  183: dm.MensagemErroECF('N�MERO M�XIMO DE �TENS ATINGIDO', bExibeMensagensErro);
                  184: dm.MensagemErroECF('N�MERO DE �TEM NULO N�O PERMITIDO', bExibeMensagensErro);
                  185: dm.MensagemErroECF('MAIS QUE DUAS AL�QUOTAS DIFERENTES NO BILHETE DE PASSAGEM N�O PERMITIDO', bExibeMensagensErro);
                  186: dm.MensagemErroECF('ACR�SCIMO OU DESCONTO EM ITEM N�O PERMITIDO', bExibeMensagensErro);
                  187: dm.MensagemErroECF('CANCELAMENTO DE ACR�SCIMO OU DESCONTO EM ITEM N�O PERMITIDO', bExibeMensagensErro);
                  188: dm.MensagemErroECF('CLICHE J� IMPRESSO', bExibeMensagensErro);
                  189: dm.MensagemErroECF('TEXTO OPCIONAL DO CHEQUE EXCEDEU O M�XIMO PERMITIDO', bExibeMensagensErro);
                  190: dm.MensagemErroECF('IMPRESS�O AUTOM�TICA NO VERSO N�O PERMITIDO NESTE EQUIPAMENTO', bExibeMensagensErro);
                  191: dm.MensagemErroECF('TIMEOUT NA INSER��O DO CHEQUE', bExibeMensagensErro);
                  192: dm.MensagemErroECF('OVERFLOW NA CAPACIDADE DE TEXTO DO COMPROVANTE DE CR�DITO OU D�BITO', bExibeMensagensErro);
                  193: dm.MensagemErroECF('PROGRAMA��O DE ESPA�OS ENTRE CUPONS MENOR QUE O M�NIMO PERMITIDO', bExibeMensagensErro);
                  194: dm.MensagemErroECF('EQUIPAMENTO N�O POSSUI LEITOR DE CHEQUE', bExibeMensagensErro);
                  195: dm.MensagemErroECF('PROGRAMA��O DE AL�QUOTA COM VALOR NULO N�O PERMITIDO', bExibeMensagensErro);
                  196: dm.MensagemErroECF('PAR�METRO BAUD RATE INV�LIDO', bExibeMensagensErro);
                  197: dm.MensagemErroECF('CONFIGURA��O PERMITIDA SOMENTE PELA PORTA DOS FISCO', bExibeMensagensErro);
                  198: dm.MensagemErroECF('VALOR TOTAL DO ITEM EXCEDE 11 D�GITOS', bExibeMensagensErro);
                  199: dm.MensagemErroECF('PROGRAMA��O DA MOEDA COM ESPA�OS EM BRACO N�O PERMITIDO', bExibeMensagensErro);
                  200: dm.MensagemErroECF('CASAS DECIMAIS DEVEM SER PROGRAMADAS COM 2 OU 3', bExibeMensagensErro);
                  201: dm.MensagemErroECF('N�O PERMITE CADASTRAR USU�RIOS DIFERENTES NA MESMA MFD', bExibeMensagensErro);
                  202: dm.MensagemErroECF('IDENTIFICA��O DO CONSUMIDOR N�O PERMITIDA PARA SANGRIA OU SUPRIMENTO', bExibeMensagensErro);
                  203: dm.MensagemErroECF('CASAS DECIMAIS EM QUANTIDADE MAIOR DO QUE A PERMITIDA', bExibeMensagensErro);
                  204: dm.MensagemErroECF('CASAS DECIMAIS DO UNIT�RIO MAIOR DO QUE O PERMITIDA', bExibeMensagensErro);
                  205: dm.MensagemErroECF('POSI��O RESERVADA PARA ICMS', bExibeMensagensErro);
                  206: dm.MensagemErroECF('POSI��O RESERVADA PARA ISS', bExibeMensagensErro);
                  207: dm.MensagemErroECF('TODAS AS AL�QUOTAS COM A MESMA VINCULA��O N�O PERMITIDO', bExibeMensagensErro);
                  208: dm.MensagemErroECF('DATA DE EMBARQUE ANTERIOR A DATA DE EMISS�O', bExibeMensagensErro);
                  209: dm.MensagemErroECF('AL�QUOTA DE ISS N�O PERMITIDA SEM INSCRI��O MUNICIPAL', bExibeMensagensErro);
                  210: dm.MensagemErroECF('RETORNO PACOTE CLICHE FORA DA SEQU�NCIA', bExibeMensagensErro);
                  211: dm.MensagemErroECF('ESPA�O PARA ARMAZENAMENTO DO CLICHE ESGOTADO', bExibeMensagensErro);
                  212: dm.MensagemErroECF('CLICHE GR�FICO N�O DISPON�VEL PARA CONFIRMA��O', bExibeMensagensErro);
                  213: dm.MensagemErroECF('CRC DO CLICHE GR�FICO DIFERENTE DO INFORMADO', bExibeMensagensErro);
                  214: dm.MensagemErroECF('INTERVALO INV�LIDO', bExibeMensagensErro);
                  215: dm.MensagemErroECF('USU�RIO J� PROGRAMADO', bExibeMensagensErro);
                  217: dm.MensagemErroECF('DETECTADA ABERTURA DO EQUIPAMENTO', bExibeMensagensErro);
                  218: dm.MensagemErroECF('CANCELAMENTO DE ACR�SCIMO/DESCONTO N�O PERMITIDO', bExibeMensagensErro);
                 end;
              end;
        end;
     if iACK = 21 then
        begin
           iAux:= 1;
           dm.MensagemErroECF('SEM COMUNICA��O', bExibeMensagensErro);
        end;

     Result:= iAux;
  end;

procedure MensagemErroBematech(const iIndice : integer);
begin
   case iIndice of
      0: dm.MensagemErroECF('Erro de comunica��o.', bExibeMensagensErro);
     -2: dm.MensagemErroECF('Par�metro inv�lido na fun��o.', bExibeMensagensErro);
     -3: dm.MensagemErroECF('Al�quota n�o programada.', bExibeMensagensErro);
     -4: dm.MensagemErroECF('O arquivo de inicializa��o BemaFI32.ini n�o foi encontrado no diret�rio de sistema do Windows.', bExibeMensagensErro);
     -5: dm.MensagemErroECF('Erro ao abrir a porta de comunica��o.', bExibeMensagensErro);
    -27: dm.MensagemErroECF('Status da impressora diferente de 6,0,0 (ACK, ST1 e ST2).', bExibeMensagensErro);
   end;
end;

procedure LeituraMFPeriodo(const iAuxECF : integer; DataIni, DataFin : TDateTime; const bCompleta : boolean);
var sDataIni, sDataFin, sTipo : string;
begin
   sDataIni:= datetostr(DataIni);
   sDataFin:= datetostr(DataFin);
   if bCompleta then
      sTipo:= 'c'
   else
      sTipo:= 's';
   case iAuxECF of
     1: begin
           verifica_Bematech_Ligada;
           if bMFD then
              begin
                 iRetBematech:= Bematech_FI_LeituraMemoriaFiscalDataMFD(pchar(sDataIni), pchar(sDataFin), pchar(sTipo));
                 Analisa_Retorno_Bematech(bMFD);
              end
           else
              begin
                 if not bCompleta then
                    showmessage(sMensagemECF)
                 else
                    begin
                       iRetBematech:= Bematech_FI_LeituraMemoriaFiscalData(pchar(sDataIni), pchar(sDataFin));
                       Analisa_Retorno_Bematech(bMFD);
                    end;
              end;
        end;
     2: begin
          { if bCompleta then
              iRetDaruma:= Daruma_Registry_MFD_LeituraMFCompleta('1')     //completa
           else
              iRetDaruma:= Daruma_Registry_MFD_LeituraMFCompleta('0');   //simplificada

           case iRetDaruma of
             1: Analisa_Retorno_Daruma;
             0: showmessage('Erro de comunica��o');
           end;

           if bMFD then
              begin
                 iRetDaruma:= Daruma_FI_LeituraMemoriaFiscalData(pchar(sDataIni), pchar(sDataFin));
                 case iRetDaruma of
                   1: Analisa_Retorno_Daruma;
                   0: showmessage('Erro de comunica��o');
                end;
              end
           else
              begin
                 if bCompleta then
                    begin
                       iRetDaruma:= Daruma_FI_LeituraMemoriaFiscalData(pchar(sDataIni), pchar(sDataFin));
                       case iRetDaruma of
                         1: Analisa_Retorno_Daruma;
                         0: showmessage('Erro de comunica��o');
                       end;
                    end
                 else
                    showmessage(sMensagemECF);
              end;  }
        end;
   end;
end;


end.

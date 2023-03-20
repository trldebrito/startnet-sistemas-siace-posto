unit Z_DeclaracoesBemaFi32;

interface
Uses Dialogs, Windows, SysUtils, Classes, Messages, Forms, Variants;


{===============================================================================
********************************************************************************

                      DECLARAÇÃO DAS FUNÇÕES DA BEMAFI32.DLL

********************************************************************************
===============================================================================}

function  Analisa_Retorno_Bematech(const bECFMFD : boolean) : integer;
function  verifica_Bematech_Ligada : integer;
procedure MensagemErroBematech(const iIndice : integer);
procedure LeituraMFPeriodo(const iAuxECF : integer; DataIni, DataFin : TDateTime; const bCompleta : boolean);

// Funções de Inicialização


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

// Funções do Cupom Fiscal 

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

// Funções dos Relatórios Fiscais 

function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ; 
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_RelatorioGerencialTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalSerialData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalSerialReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Funções das Operações Não Fiscais 

function Bematech_FI_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_UsaComprovanteNaoFiscalVinculadoTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Sangria( Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Funções de Informações da Impressora 

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

// Funções de Autenticação e Gaveta de Dinheiro 

function Bematech_FI_Autenticacao:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_Autenticacao'; 
function Bematech_FI_ProgramaCaracterAutenticacao( Parametros: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta'; 
function Bematech_FI_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Funções para a Impressora Restaurante 

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

// Função para a Impressora Bilhete de Passagem 

function Bematech_FI_AbreBilhetePassagem( ImprimeValorFinal: string; ImprimeEnfatizado: string; Embarque: string; Destino: string; Linha: string; Prefixo: string; Agente: string; Agencia: string; Data: string; Hora: string; Poltrona: string; Plataforma: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Funções de Impressão de Cheques 

function Bematech_FI_ProgramaMoedaSingular( MoedaSingular: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaMoedaPlural( MoedaPlural: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaImpressaoCheque: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaStatusCheque( Var StatusCheque: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ImprimeCheque( Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_IncluiCidadeFavorecido( Cidade: String; Favorecido: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ImprimeCopiaCheque: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeCopiaCheque'; 

// Outras Funções
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
// Funções da Impressora Fiscal MFD

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

// Funções disponíveis somente na impressora fiscal MP-2000 TH FI versão 01.00.02
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

// Funções para a impressão de Código de Barras

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



 // Funções para o PAF-ECF

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

// Função para o SPED  
function Bematech_FI_GeraRegistrosSpedMFD( arq_origem: string; arq_destino: string; data_inicial: string; data_final: string; perfil: string; CFOP: string; lac_fiscal: string; pis: string; cofins: string ): Integer;  StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GeraRegistrosSpedCompleto( arq_origem: string; arq_destino: string; data_inicial: string; data_final: string; perfil: string; CFOP: string; lac_fiscal: string; pis: string; cofins: string; empresa: string; Municipio: string): Integer;  StdCall; External 'BEMAFI32.DLL';

{ Fim da Declaração }

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
                 //showmessage('O PAPEL ESTÁ TERMINANDO - FAVOR VERIFICAR');
              end;
           if iST1 >= 32 then
              begin
                 iST1:= iST1 - 32;
                 iAux:= 1;
                 dm.MensagemErroECF('ERRO NO RELÓGIO INTERNO DO ECF', bExibeMensagensErro);
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
                 dm.MensagemErroECF('PARAMETRO INVÁLIDO', bExibeMensagensErro);
              end;

           { DECODIFICA O ST2 }
           if iST2 >= 128 then
              begin
                 iST2:= iST2 - 128;
                 iAux:= 1;
                 dm.MensagemErroECF('TIPO DE CMD INVÁLIDO - FAVOR CHAMAR O SUPORTE', bExibeMensagensErro);
              end;
           if iST2 >= 64 then
              begin
                 iST2:= iST2 - 64;
                 iAux:= 1;
                 dm.MensagemErroECF('MEMÓRIA FISCAL CHEIA - FAVOR CHAMAR O SUPORTE', bExibeMensagensErro);
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
                 dm.MensagemErroECF('ALÍQUOTA NÃO PROGRAMADA', bExibeMensagensErro);
              end;
           if iST2 >= 8 then
              begin
                 iST2:= iST2 - 8;
                 iAux:= 1;
                 dm.MensagemErroECF('CAPACIDADE ALÍQUOTA LOTADA', bExibeMensagensErro);
              end;
           if iST2 >= 4 then
              begin
                 iST2:= iST2 - 4;
                 iAux:= 1;
                 dm.MensagemErroECF('CANCELAMENTO NÃO PERMITIDO PELO ECF', bExibeMensagensErro);
              end;
           if iST2 >= 2 then
              begin
                 iST2:= iST2 - 2;
                 iAux:= 1;
                 dm.MensagemErroECF('CGC/IE NÃO PROGRAMADO - FAVOR CHAMAR O SUPORTE', bExibeMensagensErro);
              end;
           if iST2 >= 1 then
              begin
                 iST2:= iST2 - 1;
                 iAux:= 1;
                 dm.MensagemErroECF('COMANDO NÃO EXECUTADO', bExibeMensagensErro);
              end;

           { ST3 - RETORNO ESTENDIDO }
           if bECFMFD then
              begin
                 if iST3 > 0 then
                    iAux:= 1
                 else
                    iAux:= 0;

                 case iST3 of
                  1:   dm.MensagemErroECF('COMANDO INVÁLIDO', bExibeMensagensErro);
                  2:   dm.MensagemErroECF('ERRO DESCONHECIDO', bExibeMensagensErro);
                  3:   dm.MensagemErroECF('NÚMERO DE PARÂMETRO INVÁLIDO', bExibeMensagensErro);
                  4:   dm.MensagemErroECF('TIPO DE PARÂMETRO INVÁLIDO', bExibeMensagensErro);
                  5:   dm.MensagemErroECF('TODAS ALÍQUOTAS JÁ PROGRAMADAS', bExibeMensagensErro);
                  6:   dm.MensagemErroECF('TOTALIZADOR NÃO FISCAL JÁ PROGRAMADO', bExibeMensagensErro);
                  7:   dm.MensagemErroECF('CUPOM FISCAL ABERTO', bExibeMensagensErro);
                  8:   dm.MensagemErroECF('CUPOM FISCAL FECHADO', bExibeMensagensErro);
                  9:   dm.MensagemErroECF('ECF OCUPADO', bExibeMensagensErro);
                  10:  dm.MensagemErroECF('IMPRESSORA EM ERRO', bExibeMensagensErro);
                  11:  dm.MensagemErroECF('IMPRESSORA SEM PAPEL', bExibeMensagensErro);
                  12:  dm.MensagemErroECF('IMPRESSORA COM CABEÇA LEVANTADA', bExibeMensagensErro);
                  13:  dm.MensagemErroECF('IMPRESSORA OFF LINE', bExibeMensagensErro);
                  14:  dm.MensagemErroECF('ALÍQUOTA NÃO PROGRAMADA', bExibeMensagensErro);
                  15:  dm.MensagemErroECF('TERMINADOR DE STRING FALTANDO', bExibeMensagensErro);
                  16:  dm.MensagemErroECF('ACRÉSCIMO OU DESCONTO MAIOR QUE O TOTAL DO CUPOM FISCAL', bExibeMensagensErro);
                  17:  dm.MensagemErroECF('CUPOM FISCAL SEM ITEM VENDIDO', bExibeMensagensErro);
                  18:  dm.MensagemErroECF('COMANDO NÃO EFETIVADO', bExibeMensagensErro);
                  19:  dm.MensagemErroECF('SEM ESPAÇO PARA NOVAS FORMAS DE PAGAMENTO', bExibeMensagensErro);
                  20:  dm.MensagemErroECF('FORMA DE PAGAMENTO NÃO PROGRAMADA', bExibeMensagensErro);
                  21:  dm.MensagemErroECF('ÍNDICE MAIOR QUE NÚMERO DE FORMA DE PAGAMENTO', bExibeMensagensErro);
                  22:  dm.MensagemErroECF('FORMAS DE PAGAMENTO ENCERRADAS', bExibeMensagensErro);
                  23:  dm.MensagemErroECF('CUPOM NÃO TOTALIZADO', bExibeMensagensErro);
                  24:  dm.MensagemErroECF('COMANDO MAIOR QUE 7Fh (127d)', bExibeMensagensErro);
                  25:  dm.MensagemErroECF('CUPOM FISCAL ABERTO E SEM ÍTEM', bExibeMensagensErro);
                  26:  dm.MensagemErroECF('CANCELAMENTO NÃO IMEDIATAMENTE APÓS', bExibeMensagensErro);
                  27:  dm.MensagemErroECF('CANCELAMENTO JÁ EFETUADO', bExibeMensagensErro);
                  28:  dm.MensagemErroECF('COMPROVANTE DE CRÉDITO OU DÉBITO NÃO PERMITIDO OU JÁ EMITIDO', bExibeMensagensErro);
                  29:  dm.MensagemErroECF('MEIO DE PAGAMENTO NÃO PERMITE TEF', bExibeMensagensErro);
                  30:  dm.MensagemErroECF('SEM COMPROVANTE NÃO FISCAL ABERTO', bExibeMensagensErro);
                  31:  dm.MensagemErroECF('COMPROVANTE DE CRÉDITO OU DÉBITO JÁ ABERTO', bExibeMensagensErro);
                  32:  dm.MensagemErroECF('REIMPRESSÃO NÃO PERMITIDA', bExibeMensagensErro);
                  33:  dm.MensagemErroECF('COMPROVANTE NÃO FISCAL JÁ ABERTO', bExibeMensagensErro);
                  34:  dm.MensagemErroECF('TOTALIZADOR NÃO FISCAL NÃO PROGRAMADO', bExibeMensagensErro);
                  35:  dm.MensagemErroECF('CUPOM NÃO FISCAL SEM ÍTEM VENDIDO', bExibeMensagensErro);
                  36:  dm.MensagemErroECF('ACRÉSCIMO E DESCONTO MAIOR QUE TOTAL CNF', bExibeMensagensErro);
                  37:  dm.MensagemErroECF('MEIO DE PAGAMENTO NÃO INDICADO', bExibeMensagensErro);
                  38:  dm.MensagemErroECF('MEIO DE PAGAMENTO DIFERENTE DO TOTAL DO RECEBIMENTO', bExibeMensagensErro);
                  39:  dm.MensagemErroECF('NÃO PERMITIDO MAIS DE UMA SANGRIA OU SUPRIMENTO', bExibeMensagensErro);
                  40:  dm.MensagemErroECF('RELATÓRIO GERENCIAL JÁ PROGRAMADO', bExibeMensagensErro);
                  41:  dm.MensagemErroECF('RELATÓRIO GERENCIAL NÃO PROGRAMADO', bExibeMensagensErro);
                  42:  dm.MensagemErroECF('RELATÓRIO GERENCIAL NÃO PERMITIDO', bExibeMensagensErro);
                  43:  dm.MensagemErroECF('MFD NÃO INICIALIZADA', bExibeMensagensErro);
                  44:  dm.MensagemErroECF('MFD AUSENTE', bExibeMensagensErro);
                  45:  dm.MensagemErroECF('MFD SEM NÚMERO DE SÉRIE', bExibeMensagensErro);
                  46:  dm.MensagemErroECF('MFD JÁ INICIALIZADA', bExibeMensagensErro);
                  47:  dm.MensagemErroECF('MFD LOTADA', bExibeMensagensErro);
                  48:  dm.MensagemErroECF('CUPOM NÃO FISCAL ABERTO', bExibeMensagensErro);
                  49:  dm.MensagemErroECF('MEMÓRIA FISCAL DESCONECTADA', bExibeMensagensErro);
                  50:  dm.MensagemErroECF('MEMÓRIA FISCAL SEM NÚMERO DE SÉRIE DA MFD', bExibeMensagensErro);
                  51:  dm.MensagemErroECF('MEMÓRIA FISCAL LOTADA', bExibeMensagensErro);
                  52:  dm.MensagemErroECF('DATA INICIAL INVÁLIDA', bExibeMensagensErro);
                  53:  dm.MensagemErroECF('DATA FINAL INVÁLIDA', bExibeMensagensErro);
                  54:  dm.MensagemErroECF('CONTADOR DE REDUÇÃO Z INICIAL INVÁLIDO', bExibeMensagensErro);
                  55:  dm.MensagemErroECF('CONTADOR DE REDUÇÃO Z FINAL INVÁLIDO', bExibeMensagensErro);
                  56:  dm.MensagemErroECF('ERRO DE ALOCAÇÃO', bExibeMensagensErro);
                  57:  dm.MensagemErroECF('DADOS DO RTC INCORRETOS', bExibeMensagensErro);
                  58:  dm.MensagemErroECF('DATA ANTERIOR AO ÚLTIMO DOCUMENTO EMITIDO', bExibeMensagensErro);
                  59:  dm.MensagemErroECF('FORA DE INTERVENÇÃO TÉCNICA', bExibeMensagensErro);
                  60:  dm.MensagemErroECF('EM INTERVENÇÃO TÉCNICA', bExibeMensagensErro);
                  61:  dm.MensagemErroECF('ERRO NA MEMÓRIA DE TRABALHO', bExibeMensagensErro);
                  62:  dm.MensagemErroECF('JÁ HOUVE MOVIMENTO NO DIA', bExibeMensagensErro);
                  63:  dm.MensagemErroECF('BLOQUEIO POR RZ', bExibeMensagensErro);
                  64:  dm.MensagemErroECF('FORMA DE PAGAMENTO ABERTA', bExibeMensagensErro);
                  65:  dm.MensagemErroECF('AGUARDANDO PRIMEIRO PROPRIETÁRIO', bExibeMensagensErro);
                  66:  dm.MensagemErroECF('AGUARDANDO RZ', bExibeMensagensErro);
                  67:  dm.MensagemErroECF('ECF OU LOJA IGUAL A ZERO', bExibeMensagensErro);
                  68:  dm.MensagemErroECF('CUPOM ADICIONAL NÃO PERMITIDO', bExibeMensagensErro);
                  69:  dm.MensagemErroECF('DESCONTO MAIOR QUE TOTAL VENDIDO EM ICMS', bExibeMensagensErro);
                  70:  dm.MensagemErroECF('RECEBIMENTO NÃO FISCAL NULO NÃO PERMITIDO', bExibeMensagensErro);
                  71:  dm.MensagemErroECF('ACRÉSCIMO OU DESCONTO MAIOR QUE TOTAL NÃO FISCAL', bExibeMensagensErro);
                  72:  dm.MensagemErroECF('MEMÓRIA FISCAL LOTADA PARA NOVO CARTUCHO', bExibeMensagensErro);
                  73:  dm.MensagemErroECF('ERRO DE GRAVAÇÃO NA MF', bExibeMensagensErro);
                  74:  dm.MensagemErroECF('ERRO DE GRAVAÇÃO NA MFD', bExibeMensagensErro);
                  75:  dm.MensagemErroECF('DADOS DO RTC ANTERIORES AO ÚLTIMO DOC ARMAZENADO', bExibeMensagensErro);
                  76:  dm.MensagemErroECF('MEMÓRIA FISCAL SEM ESPAÇO PARA GRAVAR LEITURAS DA MFD', bExibeMensagensErro);
                  77:  dm.MensagemErroECF('MEMÓRIA FISCAL SEM ESPAÇO PARA GRAVAR VERSAO DO SB', bExibeMensagensErro);
                  78:  dm.MensagemErroECF('DESCRIÇÃO IGUAL A DEFAULT NÃO PERMITIDO', bExibeMensagensErro);
                  79:  dm.MensagemErroECF('EXTRAPOLADO NÚMERO DE REPETIÇÕES PERMITIDAS', bExibeMensagensErro);
                  80:  dm.MensagemErroECF('SEGUNDA VIA DO COMPROVANTE DE CRÉDITO OU DÉBITO NÃO PERMITIDO', bExibeMensagensErro);
                  81:  dm.MensagemErroECF('PARCELAMENTO FORA DA SEQUÊNCIA', bExibeMensagensErro);
                  82:  dm.MensagemErroECF('COMPROVANTE DE CRÉDITO OU DÉBITO ABERTO', bExibeMensagensErro);
                  83:  dm.MensagemErroECF('TEXTO COM SEQUÊNCIA DE ESC INVÁLIDA', bExibeMensagensErro);
                  84:  dm.MensagemErroECF('TEXTO COM SEQUÊNCIA DE ESC INCOMPLETA', bExibeMensagensErro);
                  85:  dm.MensagemErroECF('VENDA COM VALOR NULO', bExibeMensagensErro);
                  86:  dm.MensagemErroECF('ESTORNO DE VALOR NULO', bExibeMensagensErro);
                  87:  dm.MensagemErroECF('FORMA DE PAGAMENTO DIFERENTE DO TOTAL DA SANGRIA', bExibeMensagensErro);
                  88:  dm.MensagemErroECF('REDUÇÃO NÃO PERMITIDA EM INTERVENÇÃO TÉCNICA', bExibeMensagensErro);
                  89:  dm.MensagemErroECF('AGUARDANDO RZ PARA ENTRADA EM INTERVENÇÃO TÉCNICA', bExibeMensagensErro);
                  90:  dm.MensagemErroECF('FORMA DE PAGAMENTO COM VALOR NULO NÃO PERMITIDO', bExibeMensagensErro);
                  91:  dm.MensagemErroECF('ACRÉSCIMO E DESCONTO MAIOR QUE VALOR DO ÍTEM', bExibeMensagensErro);
                  92:  dm.MensagemErroECF('AUTENTICAÇÃO NÃO PERMITIDA', bExibeMensagensErro);
                  93:  dm.MensagemErroECF('TIMEOUT NA VALIDAÇÃO', bExibeMensagensErro);
                  94:  dm.MensagemErroECF('COMANDO NÃO EXECUTADO EM IMPRESSORA BILHETE DE PASSAGEM', bExibeMensagensErro);
                  95:  dm.MensagemErroECF('COMANDO NÃO EXECUTADO EM IMPRESSORA DE CUPOM FISCAL', bExibeMensagensErro);
                  96:  dm.MensagemErroECF('CUPOM NÃO FISCAL FECHADO', bExibeMensagensErro);
                  97:  dm.MensagemErroECF('PARÂMETRO NÃO ASCII EM CAMPO ASCII', bExibeMensagensErro);
                  98:  dm.MensagemErroECF('PARÂMETRO NÃO ASCII NUMÉRICO EM CAMPO ASCII NUMÉRICO', bExibeMensagensErro);
                  99:  dm.MensagemErroECF('TIPO DE TRANSPORTE INVÁLIDO', bExibeMensagensErro);
                  100: dm.MensagemErroECF('DATA E HORA INVÁLIDA', bExibeMensagensErro);
                  101: dm.MensagemErroECF('SEM RELATÓRIO GERENCIAL OU COMPROVANTE DE CRÉDITO OU DÉBITO ABERTO', bExibeMensagensErro);
                  102: dm.MensagemErroECF('NÚMERO DO TOTALIZADOR NÃO FISCAL INVÁLIDO', bExibeMensagensErro);
                  103: dm.MensagemErroECF('PARÂMETRO DE ACRÉSCIMO OU DESCONTO INVÁLIDO', bExibeMensagensErro);
                  104: dm.MensagemErroECF('ACRÉSCIMO OU DESCONTO EM SANGRIA OU SUPRIMENTO NÃO PERMITIDO', bExibeMensagensErro);
                  105: dm.MensagemErroECF('NÚMERO DO RELATÓRIO GERENCIAL INVÁLIDO', bExibeMensagensErro);
                  106: dm.MensagemErroECF('FORMA DE PAGAMENTO ORIGEM NÃO PROGRAMADA', bExibeMensagensErro);
                  107: dm.MensagemErroECF('FORMA DE PAGAMENTO DESTINO NÃO PROGRAMADA', bExibeMensagensErro);
                  108: dm.MensagemErroECF('ESTORNO MAIOR QUE FORMA PAGAMENTO', bExibeMensagensErro);
                  109: dm.MensagemErroECF('CARACTER NUMÉRICO NA CODIFICAÇÃO GT NÃO PERMITIDO', bExibeMensagensErro);
                  110: dm.MensagemErroECF('ERRO NA INICIALIZAÇÃO DA MF', bExibeMensagensErro);
                  111: dm.MensagemErroECF('NOME DO TOTALIZADOR EM BRANCO NÃO PERMITIDO', bExibeMensagensErro);
                  112: dm.MensagemErroECF('DATA E HORA ANTERIORES AO ÚLTIMO DOC ARMAZENADO', bExibeMensagensErro);
                  113: dm.MensagemErroECF('PARÂMETRO DE ACRÉSCIMO OU DESCONTO INVÁLIDO', bExibeMensagensErro);
                  114: dm.MensagemErroECF('ÍTEM ANTERIOR AOS TREZENTOS ÚLTIMOS', bExibeMensagensErro);
                  115: dm.MensagemErroECF('ÍTEM NÃO EXISTE OU JÁ CANCELADO', bExibeMensagensErro);
                  116: dm.MensagemErroECF('CÓDIGO COM ESPAÇOS NÃO PERMITIDO', bExibeMensagensErro);
                  117: dm.MensagemErroECF('DESCRICAO SEM CARACTER ALFABÉTICO NÃO PERMITIDO', bExibeMensagensErro);
                  118: dm.MensagemErroECF('ACRÉSCIMO MAIOR QUE VALOR DO ÍTEM', bExibeMensagensErro);
                  119: dm.MensagemErroECF('DESCONTO MAIOR QUE VALOR DO ÍTEM', bExibeMensagensErro);
                  120: dm.MensagemErroECF('DESCONTO EM ISS NÃO PERMITIDO', bExibeMensagensErro);
                  121: dm.MensagemErroECF('ACRÉSCIMO EM ÍTEM JÁ EFETUADO', bExibeMensagensErro);
                  122: dm.MensagemErroECF('DESCONTO EM ÍTEM JÁ EFETUADO', bExibeMensagensErro);
                  123: dm.MensagemErroECF('ERRO NA MEMÓRIA FISCAL CHAMAR CREDENCIADO', bExibeMensagensErro);
                  124: dm.MensagemErroECF('AGUARDANDO GRAVAÇÃO NA MEMÓRIA FISCAL', bExibeMensagensErro);
                  125: dm.MensagemErroECF('CARACTER REPETIDO NA CODIFICAÇÃO DO GT', bExibeMensagensErro);
                  126: dm.MensagemErroECF('VERSÃO JÁ GRAVADA NA MEMÓRIA FISCAL', bExibeMensagensErro);
                  127: dm.MensagemErroECF('ESTOURO DE CAPACIDADE NO CHEQUE', bExibeMensagensErro);
                  128: dm.MensagemErroECF('TIMEOUT NA LEITURA DO CHEQUE', bExibeMensagensErro);
                  129: dm.MensagemErroECF('MÊS INVÁLIDO', bExibeMensagensErro);
                  130: dm.MensagemErroECF('COORDENADA INVÁLIDA', bExibeMensagensErro);
                  131: dm.MensagemErroECF('SOBREPOSIÇÃO DE TEXTO', bExibeMensagensErro);
                  132: dm.MensagemErroECF('SOBREPOSIÇÃO DE TEXTO NO VALOR', bExibeMensagensErro);
                  133: dm.MensagemErroECF('SOBREPOSIÇÃO DE TEXTO NO EXTENSO', bExibeMensagensErro);
                  134: dm.MensagemErroECF('SOBREPOSIÇÃO DE TEXTO NO FAVORECIDO', bExibeMensagensErro);
                  135: dm.MensagemErroECF('SOBREPOSIÇÃO DE TEXTO NA LOCALIDADE', bExibeMensagensErro);
                  136: dm.MensagemErroECF('SOBREPOSIÇÃO DE TEXTO NO OPCIONAL', bExibeMensagensErro);
                  137: dm.MensagemErroECF('SOBREPOSIÇÃO DE TEXTO NO DIA', bExibeMensagensErro);
                  138: dm.MensagemErroECF('SOBREPOSIÇÃO DE TEXTO NO MÊS', bExibeMensagensErro);
                  139: dm.MensagemErroECF('SOBREPOSIÇÃO DE TEXTO NO ANO', bExibeMensagensErro);
                  140: dm.MensagemErroECF('USANDO MFD DE OUTRO', bExibeMensagensErro);
                  141: dm.MensagemErroECF('PRIMEIRO DADO DIFERENTE DE ESC OU 1C', bExibeMensagensErro);
                  142: dm.MensagemErroECF('NÃO PERMITIDO ALTERAR SEM INTERVENÇÃO TÉCNICA', bExibeMensagensErro);
                  143: dm.MensagemErroECF('DADOS DA ÚLTIMA RZ CORROMPIDOS', bExibeMensagensErro);
                  144: dm.MensagemErroECF('COMANDO NÃO PERMITIDO NO MODO INICIALIZAÇÃO', bExibeMensagensErro);
                  145: dm.MensagemErroECF('AGUARDANDO ACERTO DE RELÓGIO', bExibeMensagensErro);
                  146: dm.MensagemErroECF('MFD JÁ INICIALIZADA PARA OUTRA MF', bExibeMensagensErro);
                  147: dm.MensagemErroECF('AGUARDANDO ACERTO DO RELÓGIO OU DESBLOQUEIO PELO TECLADO', bExibeMensagensErro);
                  148: dm.MensagemErroECF('VALOR FORMA DE PAGAMENTO MAIOR QUE MÁXIMO PERMITIDO', bExibeMensagensErro);
                  149: dm.MensagemErroECF('RAZÃO SOCIAL EM BRANCO', bExibeMensagensErro);
                  150: dm.MensagemErroECF('NOME DE FANTASIA EM BRANCO', bExibeMensagensErro);
                  151: dm.MensagemErroECF('ENDEREÇO EM BRANCO', bExibeMensagensErro);
                  152: dm.MensagemErroECF('ESTORNO DE CDC NÃO PERMITIDO', bExibeMensagensErro);
                  153: dm.MensagemErroECF('DADOS DO PROPRIETÁRIO IGUAIS AO ATUAL', bExibeMensagensErro);
                  154: dm.MensagemErroECF('ESTORNO DE FORMA DE PAGAMENTO NÃO PERMITIDO', bExibeMensagensErro);
                  155: dm.MensagemErroECF('DESCRIÇÃO FORMA DE PAGAMENTO IGUAL JÁ PROGRAMADA', bExibeMensagensErro);
                  156: dm.MensagemErroECF('ACERTO DE HORÁRIO DE VERÃO SÓ IMEDIATAMENTE APÓS RZ', bExibeMensagensErro);
                  157: dm.MensagemErroECF('IT NÃO PERMITIDA MF RESERVADA PARA RZ', bExibeMensagensErro);
                  158: dm.MensagemErroECF('SENHA CNPJ INVÁLIDA', bExibeMensagensErro);
                  159: dm.MensagemErroECF('TIMEOUT NA INICIALIZAÇÃO DA NOVA MF', bExibeMensagensErro);
                  160: dm.MensagemErroECF('NÃO ENCONTRADO DADOS NA MFD', bExibeMensagensErro);
                  161: dm.MensagemErroECF('SANGRIA OU SUPRIMENTO DEVEM SER ÚNICOS NO CNF', bExibeMensagensErro);
                  162: dm.MensagemErroECF('ÍNDICE DA FORMA DE PAGAMENTO NULO NÃO PERMITIDO', bExibeMensagensErro);
                  163: dm.MensagemErroECF('UF DESTINO INVÁLIDA', bExibeMensagensErro);
                  164: dm.MensagemErroECF('TIPO DE TRANSPORTE INCOMPATÍVEL COM UF DESTINO', bExibeMensagensErro);
                  165: dm.MensagemErroECF('DESCRIÇÃO DO PRIMEIRO ÍTEM DO BILHETE DE PASSAGEM DIFERENTE DE TARIFA', bExibeMensagensErro);
                  166: dm.MensagemErroECF('AGUARDANDO IMPRESSÃO DE CHEQUE OU AUTENTICAÇÃO', bExibeMensagensErro);
                  167: dm.MensagemErroECF('NÃO PERMITIDO PROGRAMAÇAO CNPJ IE COM ESPAÇOS EM BRANCO', bExibeMensagensErro);
                  168: dm.MensagemErroECF('NÃO PERMITIDO PROGRAMAÇÃO UF COM ESPAÇOS EM BRANCO1', bExibeMensagensErro);
                  169: dm.MensagemErroECF('NÚMERO DE IMPRESSÕES DA FITA DETALHE NESTA INTERVENÇÃO TÉCNICA ESGOTADO', bExibeMensagensErro);
                  170: dm.MensagemErroECF('CF JÁ SUBTOTALIZADO', bExibeMensagensErro);
                  171: dm.MensagemErroECF('CUPOM NÃO SUBTOTALIZADO', bExibeMensagensErro);
                  172: dm.MensagemErroECF('ACRÉSCIMO EM SUBTOTAL JÁ EFETUADO', bExibeMensagensErro);
                  173: dm.MensagemErroECF('DESCONTO EM SUBTOTAL JÁ EFETUADO', bExibeMensagensErro);
                  174: dm.MensagemErroECF('ACRÉSCIMO NULO NÃO PERMITIDO', bExibeMensagensErro);
                  175: dm.MensagemErroECF('DESCONTO NULO NÃO PERMITIDO', bExibeMensagensErro);
                  176: dm.MensagemErroECF('CANCELAMENTO DE ACRÉSCIMO OU DESCONTO EM SUBTOTAL NÃO PERMITIDO', bExibeMensagensErro);
                  177: dm.MensagemErroECF('DATA INVÁLIDA', bExibeMensagensErro);
                  178: dm.MensagemErroECF('VALOR DO CHEQUE NULO NÃO PERMITIDO', bExibeMensagensErro);
                  179: dm.MensagemErroECF('VALOR DO CHEQUE INVÁLIDO', bExibeMensagensErro);
                  180: dm.MensagemErroECF('CHEQUE SEM LOCALIDADE NÃO PERMITIDO', bExibeMensagensErro);
                  181: dm.MensagemErroECF('CANCELAMENTO ACRÉSCIMO EM ÍTEM NÃO PERMITIDO', bExibeMensagensErro);
                  182: dm.MensagemErroECF('CANCELAMENTO DESCONTO EM ÍTEM NÃO PERMITIDO', bExibeMensagensErro);
                  183: dm.MensagemErroECF('NÚMERO MÁXIMO DE ÍTENS ATINGIDO', bExibeMensagensErro);
                  184: dm.MensagemErroECF('NÚMERO DE ÍTEM NULO NÃO PERMITIDO', bExibeMensagensErro);
                  185: dm.MensagemErroECF('MAIS QUE DUAS ALÍQUOTAS DIFERENTES NO BILHETE DE PASSAGEM NÃO PERMITIDO', bExibeMensagensErro);
                  186: dm.MensagemErroECF('ACRÉSCIMO OU DESCONTO EM ITEM NÃO PERMITIDO', bExibeMensagensErro);
                  187: dm.MensagemErroECF('CANCELAMENTO DE ACRÉSCIMO OU DESCONTO EM ITEM NÃO PERMITIDO', bExibeMensagensErro);
                  188: dm.MensagemErroECF('CLICHE JÁ IMPRESSO', bExibeMensagensErro);
                  189: dm.MensagemErroECF('TEXTO OPCIONAL DO CHEQUE EXCEDEU O MÁXIMO PERMITIDO', bExibeMensagensErro);
                  190: dm.MensagemErroECF('IMPRESSÃO AUTOMÁTICA NO VERSO NÃO PERMITIDO NESTE EQUIPAMENTO', bExibeMensagensErro);
                  191: dm.MensagemErroECF('TIMEOUT NA INSERÇÃO DO CHEQUE', bExibeMensagensErro);
                  192: dm.MensagemErroECF('OVERFLOW NA CAPACIDADE DE TEXTO DO COMPROVANTE DE CRÉDITO OU DÉBITO', bExibeMensagensErro);
                  193: dm.MensagemErroECF('PROGRAMAÇÃO DE ESPAÇOS ENTRE CUPONS MENOR QUE O MÍNIMO PERMITIDO', bExibeMensagensErro);
                  194: dm.MensagemErroECF('EQUIPAMENTO NÃO POSSUI LEITOR DE CHEQUE', bExibeMensagensErro);
                  195: dm.MensagemErroECF('PROGRAMAÇÃO DE ALÍQUOTA COM VALOR NULO NÃO PERMITIDO', bExibeMensagensErro);
                  196: dm.MensagemErroECF('PARÂMETRO BAUD RATE INVÁLIDO', bExibeMensagensErro);
                  197: dm.MensagemErroECF('CONFIGURAÇÃO PERMITIDA SOMENTE PELA PORTA DOS FISCO', bExibeMensagensErro);
                  198: dm.MensagemErroECF('VALOR TOTAL DO ITEM EXCEDE 11 DÍGITOS', bExibeMensagensErro);
                  199: dm.MensagemErroECF('PROGRAMAÇÃO DA MOEDA COM ESPAÇOS EM BRACO NÃO PERMITIDO', bExibeMensagensErro);
                  200: dm.MensagemErroECF('CASAS DECIMAIS DEVEM SER PROGRAMADAS COM 2 OU 3', bExibeMensagensErro);
                  201: dm.MensagemErroECF('NÃO PERMITE CADASTRAR USUÁRIOS DIFERENTES NA MESMA MFD', bExibeMensagensErro);
                  202: dm.MensagemErroECF('IDENTIFICAÇÃO DO CONSUMIDOR NÃO PERMITIDA PARA SANGRIA OU SUPRIMENTO', bExibeMensagensErro);
                  203: dm.MensagemErroECF('CASAS DECIMAIS EM QUANTIDADE MAIOR DO QUE A PERMITIDA', bExibeMensagensErro);
                  204: dm.MensagemErroECF('CASAS DECIMAIS DO UNITÁRIO MAIOR DO QUE O PERMITIDA', bExibeMensagensErro);
                  205: dm.MensagemErroECF('POSIÇÃO RESERVADA PARA ICMS', bExibeMensagensErro);
                  206: dm.MensagemErroECF('POSIÇÃO RESERVADA PARA ISS', bExibeMensagensErro);
                  207: dm.MensagemErroECF('TODAS AS ALÍQUOTAS COM A MESMA VINCULAÇÃO NÃO PERMITIDO', bExibeMensagensErro);
                  208: dm.MensagemErroECF('DATA DE EMBARQUE ANTERIOR A DATA DE EMISSÃO', bExibeMensagensErro);
                  209: dm.MensagemErroECF('ALÍQUOTA DE ISS NÃO PERMITIDA SEM INSCRIÇÃO MUNICIPAL', bExibeMensagensErro);
                  210: dm.MensagemErroECF('RETORNO PACOTE CLICHE FORA DA SEQUÊNCIA', bExibeMensagensErro);
                  211: dm.MensagemErroECF('ESPAÇO PARA ARMAZENAMENTO DO CLICHE ESGOTADO', bExibeMensagensErro);
                  212: dm.MensagemErroECF('CLICHE GRÁFICO NÃO DISPONÍVEL PARA CONFIRMAÇÃO', bExibeMensagensErro);
                  213: dm.MensagemErroECF('CRC DO CLICHE GRÁFICO DIFERENTE DO INFORMADO', bExibeMensagensErro);
                  214: dm.MensagemErroECF('INTERVALO INVÁLIDO', bExibeMensagensErro);
                  215: dm.MensagemErroECF('USUÁRIO JÁ PROGRAMADO', bExibeMensagensErro);
                  217: dm.MensagemErroECF('DETECTADA ABERTURA DO EQUIPAMENTO', bExibeMensagensErro);
                  218: dm.MensagemErroECF('CANCELAMENTO DE ACRÉSCIMO/DESCONTO NÃO PERMITIDO', bExibeMensagensErro);
                 end;
              end;
        end;
     if iACK = 21 then
        begin
           iAux:= 1;
           dm.MensagemErroECF('SEM COMUNICAÇÃO', bExibeMensagensErro);
        end;

     Result:= iAux;
  end;

procedure MensagemErroBematech(const iIndice : integer);
begin
   case iIndice of
      0: dm.MensagemErroECF('Erro de comunicação.', bExibeMensagensErro);
     -2: dm.MensagemErroECF('Parâmetro inválido na função.', bExibeMensagensErro);
     -3: dm.MensagemErroECF('Alíquota não programada.', bExibeMensagensErro);
     -4: dm.MensagemErroECF('O arquivo de inicialização BemaFI32.ini não foi encontrado no diretório de sistema do Windows.', bExibeMensagensErro);
     -5: dm.MensagemErroECF('Erro ao abrir a porta de comunicação.', bExibeMensagensErro);
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
             0: showmessage('Erro de comunicação');
           end;

           if bMFD then
              begin
                 iRetDaruma:= Daruma_FI_LeituraMemoriaFiscalData(pchar(sDataIni), pchar(sDataFin));
                 case iRetDaruma of
                   1: Analisa_Retorno_Daruma;
                   0: showmessage('Erro de comunicação');
                end;
              end
           else
              begin
                 if bCompleta then
                    begin
                       iRetDaruma:= Daruma_FI_LeituraMemoriaFiscalData(pchar(sDataIni), pchar(sDataFin));
                       case iRetDaruma of
                         1: Analisa_Retorno_Daruma;
                         0: showmessage('Erro de comunicação');
                       end;
                    end
                 else
                    showmessage(sMensagemECF);
              end;  }
        end;
   end;
end;


end.

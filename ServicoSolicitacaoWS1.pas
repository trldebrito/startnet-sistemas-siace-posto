// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : C:\Siace\Siac-Enterprise\FARMACIA\ServicoSolicitacaoWS.xml
// Encoding : UTF-8
// Version  : 1.0
// (28/11/2012 17:00:02 - 1.33.2.5)
// ************************************************************************ //

unit ServicoSolicitacaoWS1;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:double          - "http://www.w3.org/2001/XMLSchema"
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"

  MedicamentoDTO       = class;                 { "http://service.datasus.org/" }
  SolicitacaoDTO       = class;                 { "http://service.datasus.org/" }
  UsuarioDTO           = class;                 { "http://service.datasus.org/" }
  UsuarioFarmaciaDTO   = class;                 { "http://service.datasus.org/" }
  AutorizacaoDTO       = class;                 { "http://service.datasus.org/" }
  ConfirmacaoDTO       = class;                 { "http://service.datasus.org/" }
  ConfirmacaoAutorizacaoDTO = class;            { "http://service.datasus.org/" }
  RecebimentoDTO       = class;                 { "http://service.datasus.org/" }
  ConfirmacaoRecebimentoDTO = class;            { "http://service.datasus.org/" }
  PesquisaDTO          = class;                 { "http://service.datasus.org/" }
  ItemPesquisaDTO      = class;                 { "http://service.datasus.org/" }
  RetornoPesquisaDTO   = class;                 { "http://service.datasus.org/" }
  EstornoDTO           = class;                 { "http://service.datasus.org/" }
  ConfirmacaoEstornoDTO = class;                { "http://service.datasus.org/" }



  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  MedicamentoDTO = class(TRemotable)
  private
    FcoCodigoBarra: WideString;
    FdsUnidApresentacao: WideString;
    FinAutorizacaoEstorno: WideString;
    FinAutorizacaoMedicamento: WideString;
    FqtAutorizada: Double;
    FqtDevolvida: Double;
    FqtEstornada: Double;
    FqtPrescrita: Double;
    FqtSolicitada: Double;
    FstatusTransacao: WideString;
    FvlPrecoSubsidiadoMS: Double;
    FvlPrecoSubsidiadoPaciente: Double;
    FvlPrecoSubsidiadoPacientePosEstorno: Double;
    FvlPrecoVenda: Double;
    FvlrSubsidiadoMSPosEstorno: Double;
    FvlrTotalVendaPosEstorno: Double;
  published
    property coCodigoBarra: WideString read FcoCodigoBarra write FcoCodigoBarra;
    property dsUnidApresentacao: WideString read FdsUnidApresentacao write FdsUnidApresentacao;
    property inAutorizacaoEstorno: WideString read FinAutorizacaoEstorno write FinAutorizacaoEstorno;
    property inAutorizacaoMedicamento: WideString read FinAutorizacaoMedicamento write FinAutorizacaoMedicamento;
    property qtAutorizada: Double read FqtAutorizada write FqtAutorizada;
    property qtDevolvida: Double read FqtDevolvida write FqtDevolvida;
    property qtEstornada: Double read FqtEstornada write FqtEstornada;
    property qtPrescrita: Double read FqtPrescrita write FqtPrescrita;
    property qtSolicitada: Double read FqtSolicitada write FqtSolicitada;
    property statusTransacao: WideString read FstatusTransacao write FstatusTransacao;
    property vlPrecoSubsidiadoMS: Double read FvlPrecoSubsidiadoMS write FvlPrecoSubsidiadoMS;
    property vlPrecoSubsidiadoPaciente: Double read FvlPrecoSubsidiadoPaciente write FvlPrecoSubsidiadoPaciente;
    property vlPrecoSubsidiadoPacientePosEstorno: Double read FvlPrecoSubsidiadoPacientePosEstorno write FvlPrecoSubsidiadoPacientePosEstorno;
    property vlPrecoVenda: Double read FvlPrecoVenda write FvlPrecoVenda;
    property vlrSubsidiadoMSPosEstorno: Double read FvlrSubsidiadoMSPosEstorno write FvlrSubsidiadoMSPosEstorno;
    property vlrTotalVendaPosEstorno: Double read FvlrTotalVendaPosEstorno write FvlrTotalVendaPosEstorno;
  end;

  ArrayOfMedicamentoDTO = array of MedicamentoDTO;   { "http://service.datasus.org/" }


  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  SolicitacaoDTO = class(TRemotable)
  private
    FarrMedicamentoDTO: ArrayOfMedicamentoDTO;
    FcoSolicitacaoFarmacia: WideString;
    FdnaEstacao: WideString;
    FdtEmissaoReceita: TXSDateTime;
    FnuCnpj: WideString;
    FnuCpf: WideString;
    FnuCrm: WideString;
    FsgUfCrm: WideString;
  public
    destructor Destroy; override;
  published
    property arrMedicamentoDTO: ArrayOfMedicamentoDTO read FarrMedicamentoDTO write FarrMedicamentoDTO;
    property coSolicitacaoFarmacia: WideString read FcoSolicitacaoFarmacia write FcoSolicitacaoFarmacia;
    property dnaEstacao: WideString read FdnaEstacao write FdnaEstacao;
    property dtEmissaoReceita: TXSDateTime read FdtEmissaoReceita write FdtEmissaoReceita;
    property nuCnpj: WideString read FnuCnpj write FnuCnpj;
    property nuCpf: WideString read FnuCpf write FnuCpf;
    property nuCrm: WideString read FnuCrm write FnuCrm;
    property sgUfCrm: WideString read FsgUfCrm write FsgUfCrm;
  end;



  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  UsuarioDTO = class(TRemotable)
  private
    FsenhaFarmacia: WideString;
    FsenhaVendedor: WideString;
    FusuarioFarmacia: WideString;
    FusuarioVendedor: WideString;
  published
    property senhaFarmacia: WideString read FsenhaFarmacia write FsenhaFarmacia;
    property senhaVendedor: WideString read FsenhaVendedor write FsenhaVendedor;
    property usuarioFarmacia: WideString read FusuarioFarmacia write FusuarioFarmacia;
    property usuarioVendedor: WideString read FusuarioVendedor write FusuarioVendedor;
  end;



  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  UsuarioFarmaciaDTO = class(UsuarioDTO)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  AutorizacaoDTO = class(TRemotable)
  private
    FarrMedicamentoDTO: ArrayOfMedicamentoDTO;
    FcoSolicitacaoFarmacia: WideString;
    FdescMensagemErro: WideString;
    FinAutorizacaoSolicitacao: WideString;
    FnoPessoa: WideString;
    FnuAutorizacao: WideString;
  public
    destructor Destroy; override;
  published
    property arrMedicamentoDTO: ArrayOfMedicamentoDTO read FarrMedicamentoDTO write FarrMedicamentoDTO;
    property coSolicitacaoFarmacia: WideString read FcoSolicitacaoFarmacia write FcoSolicitacaoFarmacia;
    property descMensagemErro: WideString read FdescMensagemErro write FdescMensagemErro;
    property inAutorizacaoSolicitacao: WideString read FinAutorizacaoSolicitacao write FinAutorizacaoSolicitacao;
    property noPessoa: WideString read FnoPessoa write FnoPessoa;
    property nuAutorizacao: WideString read FnuAutorizacao write FnuAutorizacao;
  end;



  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  ConfirmacaoDTO = class(TRemotable)
  private
    FcoSolicitacaoFarmacia: WideString;
    FdescMensagem: WideString;
    FnuAutorizacao: WideString;
    FnuCupomFiscal: WideString;
  published
    property coSolicitacaoFarmacia: WideString read FcoSolicitacaoFarmacia write FcoSolicitacaoFarmacia;
    property descMensagem: WideString read FdescMensagem write FdescMensagem;
    property nuAutorizacao: WideString read FnuAutorizacao write FnuAutorizacao;
    property nuCupomFiscal: WideString read FnuCupomFiscal write FnuCupomFiscal;
  end;



  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  ConfirmacaoAutorizacaoDTO = class(TRemotable)
  private
    FarrMedicamentoDTO: ArrayOfMedicamentoDTO;
    FcoSolicitacaoFarmacia: WideString;
    FdescMensagemErro: WideString;
    FinAutorizacaoSolicitacao: WideString;
    FnoPessoa: WideString;
    FnuAutorizacao: WideString;
    FnuCupomFiscal: WideString;
    FstatusConfirmacao: WideString;
  public
    destructor Destroy; override;
  published
    property arrMedicamentoDTO: ArrayOfMedicamentoDTO read FarrMedicamentoDTO write FarrMedicamentoDTO;
    property coSolicitacaoFarmacia: WideString read FcoSolicitacaoFarmacia write FcoSolicitacaoFarmacia;
    property descMensagemErro: WideString read FdescMensagemErro write FdescMensagemErro;
    property inAutorizacaoSolicitacao: WideString read FinAutorizacaoSolicitacao write FinAutorizacaoSolicitacao;
    property noPessoa: WideString read FnoPessoa write FnoPessoa;
    property nuAutorizacao: WideString read FnuAutorizacao write FnuAutorizacao;
    property nuCupomFiscal: WideString read FnuCupomFiscal write FnuCupomFiscal;
    property statusConfirmacao: WideString read FstatusConfirmacao write FstatusConfirmacao;
  end;



  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  RecebimentoDTO = class(TRemotable)
  private
    FarrMedicamentoDTO: ArrayOfMedicamentoDTO;
    FnuAutorizacao: WideString;
    FnuCupomFiscal: WideString;
  public
    destructor Destroy; override;
  published
    property arrMedicamentoDTO: ArrayOfMedicamentoDTO read FarrMedicamentoDTO write FarrMedicamentoDTO;
    property nuAutorizacao: WideString read FnuAutorizacao write FnuAutorizacao;
    property nuCupomFiscal: WideString read FnuCupomFiscal write FnuCupomFiscal;
  end;



  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  ConfirmacaoRecebimentoDTO = class(TRemotable)
  private
    FarrMedicamentoDTO: ArrayOfMedicamentoDTO;
    FcodigoRetorno: WideString;
    FcupomVinculado: WideString;
    FmensagemRetorno: WideString;
    FnuAutorizacao: WideString;
    FstatusRecebimento: WideString;
  public
    destructor Destroy; override;
  published
    property arrMedicamentoDTO: ArrayOfMedicamentoDTO read FarrMedicamentoDTO write FarrMedicamentoDTO;
    property codigoRetorno: WideString read FcodigoRetorno write FcodigoRetorno;
    property cupomVinculado: WideString read FcupomVinculado write FcupomVinculado;
    property mensagemRetorno: WideString read FmensagemRetorno write FmensagemRetorno;
    property nuAutorizacao: WideString read FnuAutorizacao write FnuAutorizacao;
    property statusRecebimento: WideString read FstatusRecebimento write FstatusRecebimento;
  end;



  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  PesquisaDTO = class(TRemotable)
  private
    FdataFim: TXSDateTime;
    FdataInicio: TXSDateTime;
    FnuCnpj: WideString;
    FnuCnpjMatriz: WideString;
    FnumeroPagina: Integer;
    FstatusTransacao: WideString;
  public
    destructor Destroy; override;
  published
    property dataFim: TXSDateTime read FdataFim write FdataFim;
    property dataInicio: TXSDateTime read FdataInicio write FdataInicio;
    property nuCnpj: WideString read FnuCnpj write FnuCnpj;
    property nuCnpjMatriz: WideString read FnuCnpjMatriz write FnuCnpjMatriz;
    property numeroPagina: Integer read FnumeroPagina write FnumeroPagina;
    property statusTransacao: WideString read FstatusTransacao write FstatusTransacao;
  end;



  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  ItemPesquisaDTO = class(TRemotable)
  private
    FarrMedicamentoDTO: ArrayOfMedicamentoDTO;
    FcoSolicitacaoFarmacia: WideString;
    FdtAutorizacao: TXSDateTime;
    FdtRecebimento: TXSDateTime;
    FdtSolicitacao: TXSDateTime;
    FnuAutorizacao: WideString;
    FnuCpf: WideString;
    FnuCrm: WideString;
    FnuCupomFiscal: WideString;
    FsgUfCrm: WideString;
  public
    destructor Destroy; override;
  published
    property arrMedicamentoDTO: ArrayOfMedicamentoDTO read FarrMedicamentoDTO write FarrMedicamentoDTO;
    property coSolicitacaoFarmacia: WideString read FcoSolicitacaoFarmacia write FcoSolicitacaoFarmacia;
    property dtAutorizacao: TXSDateTime read FdtAutorizacao write FdtAutorizacao;
    property dtRecebimento: TXSDateTime read FdtRecebimento write FdtRecebimento;
    property dtSolicitacao: TXSDateTime read FdtSolicitacao write FdtSolicitacao;
    property nuAutorizacao: WideString read FnuAutorizacao write FnuAutorizacao;
    property nuCpf: WideString read FnuCpf write FnuCpf;
    property nuCrm: WideString read FnuCrm write FnuCrm;
    property nuCupomFiscal: WideString read FnuCupomFiscal write FnuCupomFiscal;
    property sgUfCrm: WideString read FsgUfCrm write FsgUfCrm;
  end;

  ArrayOfItemPesquisaDTO = array of ItemPesquisaDTO;   { "http://service.datasus.org/" }


  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  RetornoPesquisaDTO = class(TRemotable)
  private
    FarrItemPesquisaDTO: ArrayOfItemPesquisaDTO;
    FcodigoRetorno: WideString;
    FdataFim: TXSDateTime;
    FdataInicio: TXSDateTime;
    FmensagemRetorno: WideString;
    FnuCnpj: WideString;
    FnuCnpjMatriz: WideString;
    FnumeroPagina: Integer;
    FquantidadePaginas: Integer;
    FstatusTransacao: WideString;
    FtotalTransacoes: Integer;
    FtotalTransacoesPagina: Integer;
  public
    destructor Destroy; override;
  published
    property arrItemPesquisaDTO: ArrayOfItemPesquisaDTO read FarrItemPesquisaDTO write FarrItemPesquisaDTO;
    property codigoRetorno: WideString read FcodigoRetorno write FcodigoRetorno;
    property dataFim: TXSDateTime read FdataFim write FdataFim;
    property dataInicio: TXSDateTime read FdataInicio write FdataInicio;
    property mensagemRetorno: WideString read FmensagemRetorno write FmensagemRetorno;
    property nuCnpj: WideString read FnuCnpj write FnuCnpj;
    property nuCnpjMatriz: WideString read FnuCnpjMatriz write FnuCnpjMatriz;
    property numeroPagina: Integer read FnumeroPagina write FnumeroPagina;
    property quantidadePaginas: Integer read FquantidadePaginas write FquantidadePaginas;
    property statusTransacao: WideString read FstatusTransacao write FstatusTransacao;
    property totalTransacoes: Integer read FtotalTransacoes write FtotalTransacoes;
    property totalTransacoesPagina: Integer read FtotalTransacoesPagina write FtotalTransacoesPagina;
  end;



  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  EstornoDTO = class(TRemotable)
  private
    FarrMedicamentoDTO: ArrayOfMedicamentoDTO;
    FnuAutorizacao: WideString;
    FnuCnpj: WideString;
  public
    destructor Destroy; override;
  published
    property arrMedicamentoDTO: ArrayOfMedicamentoDTO read FarrMedicamentoDTO write FarrMedicamentoDTO;
    property nuAutorizacao: WideString read FnuAutorizacao write FnuAutorizacao;
    property nuCnpj: WideString read FnuCnpj write FnuCnpj;
  end;



  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // ************************************************************************ //
  ConfirmacaoEstornoDTO = class(TRemotable)
  private
    FarrMedicamentoDTO: ArrayOfMedicamentoDTO;
    FdescMensagemErro: WideString;
    FinSituacaoEstorno: WideString;
    FnuEstorno: WideString;
  public
    destructor Destroy; override;
  published
    property arrMedicamentoDTO: ArrayOfMedicamentoDTO read FarrMedicamentoDTO write FarrMedicamentoDTO;
    property descMensagemErro: WideString read FdescMensagemErro write FdescMensagemErro;
    property inSituacaoEstorno: WideString read FinSituacaoEstorno write FinSituacaoEstorno;
    property nuEstorno: WideString read FnuEstorno write FnuEstorno;
  end;


  // ************************************************************************ //
  // Namespace : http://service.datasus.org/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : ServicoSolicitacaoWSSoapBinding
  // service   : ServicoSolicitacaoWSService
  // port      : ServicoSolicitacaoWS
  // URL       : https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS
  // ************************************************************************ //
  ServicoSolicitacaoWS = interface(IInvokable)
  ['{9218C736-1352-E3E0-A9FF-53914A369AE5}']
    function  executarSolicitacao(const in0: SolicitacaoDTO; const in1: UsuarioFarmaciaDTO): AutorizacaoDTO; stdcall;
    function  confirmarAutorizacao(const in0: ConfirmacaoDTO; const in1: UsuarioFarmaciaDTO): ConfirmacaoAutorizacaoDTO; stdcall;
    function  confirmarRecebimento(const in0: RecebimentoDTO; const in1: UsuarioFarmaciaDTO): ConfirmacaoRecebimentoDTO; stdcall;
    function  pesquisarAutorizacoes(const in0: PesquisaDTO; const in1: UsuarioFarmaciaDTO): RetornoPesquisaDTO; stdcall;
    function  executarEstorno(const in0: EstornoDTO; const in1: UsuarioFarmaciaDTO): ConfirmacaoEstornoDTO; stdcall;
  end;

function GetServicoSolicitacaoWS(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ServicoSolicitacaoWS;


implementation

function GetServicoSolicitacaoWS(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ServicoSolicitacaoWS;
const
  defWSDL = 'C:\Siace\Siac-Enterprise\FARMACIA\ServicoSolicitacaoWS.xml';
  defURL  = 'https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS';
  defSvc  = 'ServicoSolicitacaoWSService';
  defPrt  = 'ServicoSolicitacaoWS';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as ServicoSolicitacaoWS);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor SolicitacaoDTO.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FarrMedicamentoDTO)-1 do
    if Assigned(FarrMedicamentoDTO[I]) then
      FarrMedicamentoDTO[I].Free;
  SetLength(FarrMedicamentoDTO, 0);
  if Assigned(FdtEmissaoReceita) then
    FdtEmissaoReceita.Free;
  inherited Destroy;
end;

destructor AutorizacaoDTO.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FarrMedicamentoDTO)-1 do
    if Assigned(FarrMedicamentoDTO[I]) then
      FarrMedicamentoDTO[I].Free;
  SetLength(FarrMedicamentoDTO, 0);
  inherited Destroy;
end;

destructor ConfirmacaoAutorizacaoDTO.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FarrMedicamentoDTO)-1 do
    if Assigned(FarrMedicamentoDTO[I]) then
      FarrMedicamentoDTO[I].Free;
  SetLength(FarrMedicamentoDTO, 0);
  inherited Destroy;
end;

destructor RecebimentoDTO.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FarrMedicamentoDTO)-1 do
    if Assigned(FarrMedicamentoDTO[I]) then
      FarrMedicamentoDTO[I].Free;
  SetLength(FarrMedicamentoDTO, 0);
  inherited Destroy;
end;

destructor ConfirmacaoRecebimentoDTO.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FarrMedicamentoDTO)-1 do
    if Assigned(FarrMedicamentoDTO[I]) then
      FarrMedicamentoDTO[I].Free;
  SetLength(FarrMedicamentoDTO, 0);
  inherited Destroy;
end;

destructor PesquisaDTO.Destroy;
begin
  if Assigned(FdataFim) then
    FdataFim.Free;
  if Assigned(FdataInicio) then
    FdataInicio.Free;
  inherited Destroy;
end;

destructor ItemPesquisaDTO.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FarrMedicamentoDTO)-1 do
    if Assigned(FarrMedicamentoDTO[I]) then
      FarrMedicamentoDTO[I].Free;
  SetLength(FarrMedicamentoDTO, 0);
  if Assigned(FdtAutorizacao) then
    FdtAutorizacao.Free;
  if Assigned(FdtRecebimento) then
    FdtRecebimento.Free;
  if Assigned(FdtSolicitacao) then
    FdtSolicitacao.Free;
  inherited Destroy;
end;

destructor RetornoPesquisaDTO.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FarrItemPesquisaDTO)-1 do
    if Assigned(FarrItemPesquisaDTO[I]) then
      FarrItemPesquisaDTO[I].Free;
  SetLength(FarrItemPesquisaDTO, 0);
  if Assigned(FdataFim) then
    FdataFim.Free;
  if Assigned(FdataInicio) then
    FdataInicio.Free;
  inherited Destroy;
end;

destructor EstornoDTO.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FarrMedicamentoDTO)-1 do
    if Assigned(FarrMedicamentoDTO[I]) then
      FarrMedicamentoDTO[I].Free;
  SetLength(FarrMedicamentoDTO, 0);
  inherited Destroy;
end;

destructor ConfirmacaoEstornoDTO.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FarrMedicamentoDTO)-1 do
    if Assigned(FarrMedicamentoDTO[I]) then
      FarrMedicamentoDTO[I].Free;
  SetLength(FarrMedicamentoDTO, 0);
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(ServicoSolicitacaoWS), 'http://service.datasus.org/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ServicoSolicitacaoWS), '');
  RemClassRegistry.RegisterXSClass(MedicamentoDTO, 'http://service.datasus.org/', 'MedicamentoDTO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfMedicamentoDTO), 'http://service.datasus.org/', 'ArrayOfMedicamentoDTO');
  RemClassRegistry.RegisterXSClass(SolicitacaoDTO, 'http://service.datasus.org/', 'SolicitacaoDTO');
  RemClassRegistry.RegisterXSClass(UsuarioDTO, 'http://service.datasus.org/', 'UsuarioDTO');
  RemClassRegistry.RegisterXSClass(UsuarioFarmaciaDTO, 'http://service.datasus.org/', 'UsuarioFarmaciaDTO');
  RemClassRegistry.RegisterXSClass(AutorizacaoDTO, 'http://service.datasus.org/', 'AutorizacaoDTO');
  RemClassRegistry.RegisterXSClass(ConfirmacaoDTO, 'http://service.datasus.org/', 'ConfirmacaoDTO');
  RemClassRegistry.RegisterXSClass(ConfirmacaoAutorizacaoDTO, 'http://service.datasus.org/', 'ConfirmacaoAutorizacaoDTO');
  RemClassRegistry.RegisterXSClass(RecebimentoDTO, 'http://service.datasus.org/', 'RecebimentoDTO');
  RemClassRegistry.RegisterXSClass(ConfirmacaoRecebimentoDTO, 'http://service.datasus.org/', 'ConfirmacaoRecebimentoDTO');
  RemClassRegistry.RegisterXSClass(PesquisaDTO, 'http://service.datasus.org/', 'PesquisaDTO');
  RemClassRegistry.RegisterXSClass(ItemPesquisaDTO, 'http://service.datasus.org/', 'ItemPesquisaDTO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfItemPesquisaDTO), 'http://service.datasus.org/', 'ArrayOfItemPesquisaDTO');
  RemClassRegistry.RegisterXSClass(RetornoPesquisaDTO, 'http://service.datasus.org/', 'RetornoPesquisaDTO');
  RemClassRegistry.RegisterXSClass(EstornoDTO, 'http://service.datasus.org/', 'EstornoDTO');
  RemClassRegistry.RegisterXSClass(ConfirmacaoEstornoDTO, 'http://service.datasus.org/', 'ConfirmacaoEstornoDTO');

end. 
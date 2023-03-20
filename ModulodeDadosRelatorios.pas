unit ModulodeDadosRelatorios;

interface

uses
  SysUtils, Classes,  ModulodeDadosConsultas, RpCon, RpConDS,
  RpBase, RpSystem, RpDefine, RpRave;

type
  TDMR = class(TDataModule)
    RvSystem1: TRvSystem;
    RvEstoque_Atual: TRvDataSetConnection;
    RvEstoque_Atual_Maximo: TRvDataSetConnection;
    RvEstoque_Atual_Minimo: TRvDataSetConnection;
    RvEstoque_Atual_Periodo: TRvDataSetConnection;
    RvEstoque_Atual_Fornecedor: TRvDataSetConnection;
    RvRelatorios: TRvProject;
    RvEstoque_Atual_Marca: TRvDataSetConnection;
    RvEstoque_Atual_Grupo: TRvDataSetConnection;
    RvEstoque_Atual_SubGrupo: TRvDataSetConnection;
    RvEstoque_Atual_Zerado: TRvDataSetConnection;
    RvCP_NA_For: TRvDataSetConnection;
    RvCP_NA_Data: TRvDataSetConnection;
    RvCP_A_For: TRvDataSetConnection;
    RvCP_A_Data: TRvDataSetConnection;
    RvCP_P_For: TRvDataSetConnection;
    Rv_CP_P_Data: TRvDataSetConnection;
    RvPedido: TRvDataSetConnection;
    RvPedidoItens: TRvDataSetConnection;
    RvConta_Cliente: TRvDataSetConnection;
    RvCliente_Conta: TRvDataSetConnection;
    RvEmpresa: TRvDataSetConnection;
    Rv_CaixaAnalitico: TRvDataSetConnection;
    Rv_BancoAnalitico: TRvDataSetConnection;
    Rv_CaixaEspecifico: TRvDataSetConnection;
    Rv_BancoEspecifico: TRvDataSetConnection;
    RvOrcamento: TRvDataSetConnection;
    RvOrcamentoItens: TRvDataSetConnection;
    RV_Cliente_Pedido: TRvDataSetConnection;
    RV_Cliente_Orcamento: TRvDataSetConnection;
    Rv_Duplicata: TRvDataSetConnection;
    RvDuplicataItens: TRvDataSetConnection;
    Rv_Cliente_Duplicata: TRvDataSetConnection;
    RvEst_Atual_Custo: TRvDataSetConnection;
    Rv_ChequesBaixarPeriodo: TRvDataSetConnection;
    Rv_ChequesBaixarTitular: TRvDataSetConnection;
    Rv_ChequesBaixadosPeriodo: TRvDataSetConnection;
    Rv_ChequesBaixadosTitular: TRvDataSetConnection;
    Rv_ChequesRetornadosGeral: TRvDataSetConnection;
    Rv_ChequesRetornadosaBaixar: TRvDataSetConnection;
    Rv_ChequesRetornadosBaixados: TRvDataSetConnection;
    Rv_ChequesExtornadosPeriodo: TRvDataSetConnection;
    Rv_ChequesExtornadosTitular: TRvDataSetConnection;
    Rv_ComissaoUsuario: TRvDataSetConnection;
    Rv_ComissaoGeral: TRvDataSetConnection;
    Rv_ExtComissaoUsuario: TRvDataSetConnection;
    Rv_ExtComissaoGeral: TRvDataSetConnection;
    Rv_EntradasPeriodo: TRvDataSetConnection;
    Rv_EntradasFrornecedor: TRvDataSetConnection;
    Rv_EntradasCodigo: TRvDataSetConnection;
    Rv_EntradasItens: TRvDataSetConnection;
    RvCrediarioReceberPeriodo: TRvDataSetConnection;
    RvCrediarioRecebidoCliente: TRvDataSetConnection;
    RvCrediarioRecebidoPeriodo: TRvDataSetConnection;
    Rv_CPNA_FOR: TRvDataSetConnection;
    Rv_CPNA_Data: TRvDataSetConnection;
    Rv_CPA_FOR: TRvDataSetConnection;
    Rv_CPA_DATA_For: TRvDataSetConnection;
    Rv_CPP_FOR: TRvDataSetConnection;
    Rv_CPP_Data: TRvDataSetConnection;
    Rv_CPNA_FORPl: TRvDataSetConnection;
    Rv_CPNA_DataPl: TRvDataSetConnection;
    Rv_CPA_FORPl: TRvDataSetConnection;
    Rv_CPA_DATA_ForPl: TRvDataSetConnection;
    Rv_CPP_FORPl: TRvDataSetConnection;
    Rv_CPP_DataPl: TRvDataSetConnection;
    Rv_Contratos: TRvDataSetConnection;
    Rv_Mov_caixa: TRvDataSetConnection;
    Rv_Cheques: TRvDataSetConnection;
    Rv_Parcelas_orc: TRvDataSetConnection;
    RvConta_Cliente_R: TRvDataSetConnection;
    Rv_Parc_Venda: TRvDataSetConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMR: TDMR;

implementation

uses ModulodeDadosConsultas2, ModulodeDadosBaixas, ModulodeDadosConsultas3,
  ModulodeDadosConsultas5;

{$R *.dfm}

procedure TDMR.DataModuleCreate(Sender: TObject);
begin
{with DM.SQLC do
begin
Close;
Params.Clear;
Params.LoadFromFile('C:\siace\siace.ini');
Open;
end;}
end;
end.

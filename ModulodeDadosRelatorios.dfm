object DMR: TDMR
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 359
  Top = 116
  Height = 608
  Width = 872
  object RvSystem1: TRvSystem
    TitleSetup = 'Configura'#231#245'es'
    TitleStatus = 'Mensagens'
    TitlePreview = 'SIACE - Relat'#243'rios'
    SystemFiler.StatusFormat = 'Gerando P'#225'gina: %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 97.800000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Imprimindo P'#225'gina: %p'
    SystemPrinter.Title = 'Imprimindo Relat'#243'rio'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 50
    Top = 49
  end
  object RvEstoque_Atual: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_Estoque_Atual
    Left = 141
    Top = 4
  end
  object RvEstoque_Atual_Maximo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_Estoque_Atual_Maximo
    Left = 369
    Top = 4
  end
  object RvEstoque_Atual_Minimo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_Estoque_Atual_Minimo
    Left = 256
    Top = 65531
  end
  object RvEstoque_Atual_Periodo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_Estoque_Atual_Periodo
    Left = 506
    Top = 3
  end
  object RvEstoque_Atual_Fornecedor: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_Estoque_Atual_Fornecedor
    Left = 652
    Top = 4
  end
  object RvRelatorios: TRvProject
    Engine = RvSystem1
    LoadDesigner = True
    ProjectFile = 'C:\Siace\Relatorios.rav'
    Left = 56
    Top = 1
  end
  object RvEstoque_Atual_Marca: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_Estoque_Atual_Marca
    Left = 148
    Top = 48
  end
  object RvEstoque_Atual_Grupo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_Estoque_Atual_Grupo
    Left = 279
    Top = 48
  end
  object RvEstoque_Atual_SubGrupo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_Estoque_Atual_SubGrupo
    Left = 402
    Top = 41
  end
  object RvEstoque_Atual_Zerado: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_Estoque_Atual_Zerado
    Left = 536
    Top = 48
  end
  object RvCP_NA_For: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_CPNA_FOR
    Left = 142
    Top = 93
  end
  object RvCP_NA_Data: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_CPNA_Data
    Left = 220
    Top = 96
  end
  object RvCP_A_For: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_CPA_FOR
    Left = 294
    Top = 94
  end
  object RvCP_A_Data: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_CPA_DATA
    Left = 369
    Top = 94
  end
  object RvCP_P_For: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_CPP_FOR
    Left = 436
    Top = 95
  end
  object Rv_CP_P_Data: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_CPP_DATA
    Left = 514
    Top = 99
  end
  object RvPedido: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_Pedidos
    Left = 24
    Top = 151
  end
  object RvPedidoItens: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_Pedido_Itens
    Left = 89
    Top = 153
  end
  object RvConta_Cliente: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMB.SDS_Crediario_Baixa
    Left = 616
    Top = 153
  end
  object RvCliente_Conta: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM.SDS_Clientes
    Left = 532
    Top = 152
  end
  object RvEmpresa: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DM.SDS_Empresa
    Left = 49
    Top = 94
  end
  object Rv_CaixaAnalitico: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_MOV_CAIXA
    Left = 446
    Top = 152
  end
  object Rv_BancoAnalitico: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_MOV_BANCO
    Left = 252
    Top = 152
  end
  object Rv_CaixaEspecifico: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_Mov_CaixaEspecifico
    Left = 442
    Top = 202
  end
  object Rv_BancoEspecifico: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_Mov_BancoEspecifico
    Left = 351
    Top = 151
  end
  object RvOrcamento: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_Orcamentos
    Left = 22
    Top = 203
  end
  object RvOrcamentoItens: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_Orcamento_Itens
    Left = 103
    Top = 202
  end
  object RV_Cliente_Pedido: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_Cliente
    Left = 157
    Top = 152
  end
  object RV_Cliente_Orcamento: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_CLIENTEO
    Left = 206
    Top = 202
  end
  object Rv_Duplicata: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC5.CDS_Pedidos
    Left = 20
    Top = 250
  end
  object RvDuplicataItens: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC5.SDS_Pedido_Itens
    Left = 96
    Top = 251
  end
  object Rv_Cliente_Duplicata: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC5.SDS_Cliente
    Left = 192
    Top = 252
  end
  object RvEst_Atual_Custo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_Est_Atual_Custo
    Left = 702
    Top = 56
  end
  object Rv_ChequesBaixarPeriodo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_ChequesBaixarPeriodo
    Left = 327
    Top = 202
  end
  object Rv_ChequesBaixarTitular: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_ChequesBaixarTitular
    Left = 552
    Top = 202
  end
  object Rv_ChequesBaixadosPeriodo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_ChequesBaixadosPeriodo
    Left = 732
    Top = 153
  end
  object Rv_ChequesBaixadosTitular: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_ChequesBaixadosTitular
    Left = 616
    Top = 100
  end
  object Rv_ChequesRetornadosGeral: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_ChequesRetornadosPeriodo
    Left = 688
    Top = 199
  end
  object Rv_ChequesRetornadosaBaixar: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_ChequesRetornadosBaixar
    Left = 320
    Top = 252
  end
  object Rv_ChequesRetornadosBaixados: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_ChequesRetornadosBaixados
    Left = 171
    Top = 298
  end
  object Rv_ChequesExtornadosPeriodo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_ChequesPagPeriodo
    Left = 443
    Top = 298
  end
  object Rv_ChequesExtornadosTitular: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC2.CDS_ChequesPagTitular
    Left = 470
    Top = 252
  end
  object Rv_ComissaoUsuario: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC3.CDS_PedidosUsuario
    Left = 596
    Top = 252
  end
  object Rv_ComissaoGeral: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC3.CDS_PedidosGeral
    Left = 694
    Top = 251
  end
  object Rv_ExtComissaoUsuario: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC3.CDS_ExtComissao
    Left = 579
    Top = 298
  end
  object Rv_ExtComissaoGeral: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC3.CDS_ExtComissaoGeral
    Left = 544
    Top = 351
  end
  object Rv_EntradasPeriodo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC3.CDS_ComprasPeriodo
    Left = 423
    Top = 358
  end
  object Rv_EntradasFrornecedor: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC3.CDS_ComprasFornecedor
    Left = 306
    Top = 298
  end
  object Rv_EntradasCodigo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_Entradas
    Left = 34
    Top = 298
  end
  object Rv_EntradasItens: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_EntradasItens
    Left = 33
    Top = 342
  end
  object RvCrediarioReceberPeriodo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC5.CDS_CrediarioReceber
    Left = 152
    Top = 342
  end
  object RvCrediarioRecebidoCliente: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC5.SDS_CrediarioRecebido
    Left = 659
    Top = 455
  end
  object RvCrediarioRecebidoPeriodo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC5.CDS_CrediarioRecebidoP
    Left = 708
    Top = 298
  end
  object Rv_CPNA_FOR: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 37
    Top = 403
  end
  object Rv_CPNA_Data: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 122
    Top = 396
  end
  object Rv_CPA_FOR: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 332
    Top = 356
  end
  object Rv_CPA_DATA_For: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 504
    Top = 412
  end
  object Rv_CPP_FOR: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 613
    Top = 397
  end
  object Rv_CPP_Data: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 661
    Top = 357
  end
  object Rv_CPNA_FORPl: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_CPNA_FOR
    Left = 29
    Top = 465
  end
  object Rv_CPNA_DataPl: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_CPNA_Data
    Left = 250
    Top = 354
  end
  object Rv_CPA_FORPl: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_CPA_FOR
    Left = 387
    Top = 418
  end
  object Rv_CPA_DATA_ForPl: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_CPA_DATA
    Left = 296
    Top = 410
  end
  object Rv_CPP_FORPl: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_CPP_FOR
    Left = 213
    Top = 395
  end
  object Rv_CPP_DataPl: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.CDS_CPP_DATA
    Left = 725
    Top = 363
  end
  object Rv_Contratos: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_Crediario_Contrato
    Left = 112
    Top = 463
  end
  object Rv_Mov_caixa: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.sds_mov_Caixa
    Left = 193
    Top = 465
  end
  object Rv_Cheques: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_CHEQUES
    Left = 292
    Top = 465
  end
  object Rv_Parcelas_orc: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.sds_parcelas_orc
    Left = 400
    Top = 480
  end
  object RvConta_Cliente_R: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC5.SDS_CliCrediario
    Left = 524
    Top = 464
  end
  object Rv_Parc_Venda: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMC.SDS_COND_PAGTO
    Left = 744
    Top = 424
  end
end

program Siace_Monitor;

uses
  Forms,
  Windows,
  Dialogs,
  Principal in 'Principal.pas' {FormPrincipal},
  Z_RotinasGerais in 'Z_RotinasGerais.pas',
  Acesso in 'Acesso.pas' {Form_Usuario},
  Z_CriptDecript in 'Z_CriptDecript.pas',
  Splash in 'Splash.pas' {FormSplash},
  Vendas in 'Vendas.pas' {formVendas},
  ModulodeDadosConsultas in 'ModulodeDadosConsultas.pas' {DMC: TDataModule},
  ModulodeDadosConsultas3 in 'ModulodeDadosConsultas3.pas' {DMC3: TDataModule},
  ModulodeDadosConsultas5 in 'ModulodeDadosConsultas5.pas' {DMC5: TDataModule},
  ModulodeDadosRelatorios in 'ModulodeDadosRelatorios.pas' {DMR: TDataModule},
  ModulodeDadosConsultas2 in 'ModulodeDadosConsultas2.pas' {DMC2: TDataModule},
  ModulodeDadosBaixas in 'ModulodeDadosBaixas.pas' {DMB: TDataModule},
  ModulodeDados in 'ModulodeDados.pas' {DM: TDataModule},
  ufrmStatus in 'ufrmStatus.pas' {frmStatus},
  VendasParcelamento in 'VendasParcelamento.pas' {FormParcelamento},
  Udmcob in 'Udmcob.pas' {DMCOB: TDataModule},
  Z_DeclaracoesBemaFi32 in 'Z_DeclaracoesBemaFi32.pas',
  UnitProcBicoEnc_Temp in 'UnitProcBicoEnc_Temp.pas' {VendaBicoEnc_TempListFrm},
  ECFTeste1 in 'ECFTeste1.pas' {formECF},
  ConsCondPagamento in 'ConsCondPagamento.pas' {FormConsCondPagamento},
  BoletosBanc in 'BoletosBanc.pas',
  chequesTroco in 'chequesTroco.pas' {FormCheques_troco},
  clientesaddVendas in 'clientesaddVendas.pas' {FormClientesAddVendas},
  ConfiguraSerial in 'ConfiguraSerial.pas' {frConfiguraSerial},
  ConsCfop in 'ConsCfop.pas' {FormConsCFOP},
  ConsClientes in 'ConsClientes.pas' {FormConsClientes},
  ConsContaBancariapas in 'ConsContaBancariapas.pas' {FormConsContaBancaria},
  ConsProdutos in 'ConsProdutos.pas' {FormConsProdutos},
  ConsProdutosVendas in 'ConsProdutosVendas.pas' {FormConsProdutosVendas},
  ConsultaPedidoDireto in 'ConsultaPedidoDireto.pas' {FormConsultaPedidoDireto},
  ConsUsuarios in 'ConsUsuarios.pas' {FormConsUsuarios},
  consvaletroco in 'consValeTroco.pas' {FormConsValetroco},
  Contrato in 'Contrato.pas' {FormContrato},
  ContratoVEnda in 'ContratoVEnda.pas' {FormContratoVenda},
  data_types in 'data_types.pas',
  debitos in 'debitos.pas' {FormDebitos},
  defs in 'Defs.pas',
  DesbloquearCliente in 'DesbloquearCliente.pas' {FormDesbloquearCliente},
  DetalhesCrediario in 'DetalhesCrediario.pas' {FormDetCrediario},
  dllcompanytec in 'dllcompanytec.pas',
  duplicata in 'duplicata.pas' {FormDuplicatas},
  EfetuaPagamento in 'EfetuaPagamento.pas' {frPagamento},
  EmiteEcf in 'EmiteEcf.pas' {FormEmEcf},
  Estenso in 'Estenso.pas',
  Formata_CPF_CNPJ in 'Formata_CPF_CNPJ.pas',
  FormPadrai in 'FormPadrai.pas' {FormPadrao},
  HistoricoCliente in 'HistoricoCliente.pas' {FormHistoricoCliente},
  ImpNotafiscal in 'ImpNotafiscal.pas' {FormImpNotafiscal},
  LancCheques in 'LancCheques.pas' {FormCheques},
  lancNotasFiscais in 'lancNotasFiscais.pas' {FormLancNotasFiscais},
  LeitorSerial in 'LeitorSerial.pas' {FormLeitorSerial},
  libera_desconto in 'libera_desconto.pas' {FormLiberaDesconto},
  Libera_Venda in 'Libera_Venda.pas' {FormLiberaVenda},
  ModuleDados1 in 'ModuleDados1.pas' {DM1: TDataModule},
  ModulodeDadosConsultas4 in 'ModulodeDadosConsultas4.pas' {DMC4: TDataModule},
  PEDIDO80COL in 'PEDIDO80COL.pas' {FormPedido40col},
  printPedidos in 'printPedidos.pas' {ImprimirPedidos},
  RelValeTroco in 'RelValeTroco.pas' {FormRelValeTroco},
  ServicoSolicitacaoWS1 in 'ServicoSolicitacaoWS1.pas',
  Titulos in 'Titulos.pas' {frmTitulos},
  UAlteraParcelaCTR in 'UAlteraParcelaCTR.pas' {FrmAlteraParcelaADM},
  Ubibli1 in 'Ubibli1.pas',
  UCadAdmCartaoCredito in 'UCadAdmCartaoCredito.pas',
  UCadNovo in 'UCadNovo.pas' {FrmCadastroNovo},
  UConsAdmCartaoCredito in 'UConsAdmCartaoCredito.pas',
  UConsBandeiraCartao in 'UConsBandeiraCartao.pas',
  UConsCTRAdm in 'UConsCTRAdm.pas' {FrmConsCTRAdm},
  UConsNovo in 'UConsNovo.pas' {FrmConsNovo},
  UCtrAdmRec in 'UCtrAdmRec.pas' {FrmCtrAdmRec},
  UCustos in 'UCustos.pas' {FormCustos},
  UDadosAdm in 'UDadosAdm.pas' {FrmDadosAdm},
  UDuplicataADM in 'UDuplicataADM.pas' {FrmDuplicataADM},
  uFarmaciaPopular2 in 'uFarmaciaPopular2.pas' {frmFarmaciaPopular},
  ULancCTRADM in 'ULancCTRADM.pas' {FrmLancCTRADM},
  UQRelCTRAdm in 'UQRelCTRAdm.pas' {FrmQRelCTRAdm},
  URecAdm in 'URecAdm.pas' {FrmRECADM},
  URelContasReceberCartao in 'URelContasReceberCartao.pas' {FrmRelContasReceberCartao},
  Utroco in 'Utroco.pas' {FormTroco},
  VendeItem in 'VendeItem.pas' {frVendeItem},
  CaixaAnalitico in 'CaixaAnalitico.pas' {FormCaixaAnalitico},
  CaixaEspecifico in 'CaixaEspecifico.pas' {FormCaixaEspecifico},
  LancamentosCaixa in 'LancamentosCaixa.pas' {FormLancamentosCaixa},
  LancamentosCaixaSaida in 'LancamentosCaixaSaida.pas' {FormLancamentosCaixaSaida},
  UAfeicao in 'UAfeicao.pas' {FormAfericao},
  consAfericao in 'consAfericao.pas' {FormConsAfericao},
  Logoff in 'Logoff.pas' {FormLogoff},
  caixa in '..\..\..\..\..\caixa.pas' {frmcaixa},
  caixa_abertura in '..\..\..\..\..\caixa_abertura.pas' {frmcaixa_abertura},
  caixa_abertura_individual in '..\..\..\..\..\caixa_abertura_individual.pas' {frmcaixa_abertura_individual},
  caixa_fechamento in '..\..\..\..\..\caixa_fechamento.pas' {frmcaixa_fechamento},
  caixa_ficha in '..\..\..\..\..\caixa_ficha.pas' {frmcaixa_ficha},
  lista_caixa2 in '..\..\..\..\..\lista_caixa2.pas' {frmlista_caixa2},
  Nfe in 'Nfe.pas' {FormNfe},
  gerNFce in '..\..\..\..\..\gerNFCe.pas' {FormGeraNFCe},
  DUPLICATA80COL in '..\..\..\..\..\DUPLICATA80COL.pas' {Formduplicata40col},
  xloc_caixa in '..\..\..\..\..\xloc_caixa.pas' {FormConsfechamento},
  BEMA_LeituraX in '..\..\..\..\..\BEMA_LeituraX.pas' {Form_LeituraX},
  BEMA_ReducaoZ in '..\..\..\..\..\BEMA_ReducaoZ.pas' {Form_ReducaoZ},
  lista_caixa1 in '..\..\..\..\..\lista_caixa1.pas' {frmlista_caixa1};

{$R *.RES}
 var
  F :   TFormSplash;
  Hswnd: Thandle;
begin
  F := TFormSplash.Create(Application);
  try
  F.Show;
  F.Update;
//  Sleep(1000);

  f.Repaint;
  Sleep(100); //O Sleep serve para o programa dar uma pausa no processamento...
  f.Label1.Caption := 'Verificando arquivos...';
  F.Gauge1.Progress:=25;
  F.Update;
  Sleep(200);
  //VerificarArquivos; //Executa o procedimento para verificar arquivos...
  F.Label1.Caption := 'Verificando registro...';
  F.Gauge1.Progress:= 45;
  F.Update;
  Sleep(200);
  //VerificarRegistro; //Executa o procedimento para verificar se o programa está registrado...
  F.Label1.Caption := 'Criando alias...';
  F.Gauge1.Progress:= 60;
  F.Update;
  Sleep(250);
  //CriarAlias; //Cria o alias automaticamente...
  F.Label1.Caption := 'Iniciando formulário principal...';
  F.Gauge1.Progress:= 80;
  F.Update;
  Sleep(300);
  F.Label1.Caption := 'Verificando usuário...';
  F.Gauge1.Progress:= 90;
  F.Update;
  Sleep(100);
  F.Label1.Caption := 'Registrando...';
  F.Gauge1.Progress:= 95;
  F.Update;
  Sleep(100);
  F.Label1.Caption := 'Licenciado para uso Próprio...';
  F.Gauge1.Progress:= 97;
  F.Update;
  Sleep(100);
  F.Label1.Caption := 'Verificando datas...';
  F.Gauge1.Progress:= 99;
  F.Update;
  Sleep(100);
  //ShareWare; //Verifica o tempo de uso do programa...
  F.Label1.Caption := 'Iniciando aplicativo...';
  F.Gauge1.Progress:= 100;
  F.Update;
  Sleep(150);
  F.Refresh;

 // Application.Initialize;
  Application.Title := 'SIACE - Monitoria de Postos';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMC, DMC);
  Application.CreateForm(TDMC3, DMC3);
  Application.CreateForm(TDMC5, DMC5);
  Application.CreateForm(TDMR, DMR);
  Application.CreateForm(TDMC2, DMC2);
  Application.CreateForm(TDMB, DMB);
  Application.CreateForm(TDMCOB, DMCOB);
  Application.CreateForm(TDM1, DM1);
  Application.CreateForm(TDMC4, DMC4);
  F.Hide;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;

finally
  F.Free;
end;
end.

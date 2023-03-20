unit uFarmaciaPopular2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, DBClient, Buttons,
  InvokeRegistry, RiO, SOAPHTTPClient, XSBuiltIns, Dateutils, FMTBcd,
  SqlExpr, Mask,  AppEvnts, IniFiles, ShellApi, ToolEdit, RzEdit, DBGrids,
  IBCustomDataSet, IBQuery, CurrEdit;

type
  TfrmFarmaciaPopular = class(TForm)
    Memo1: TMemo;
    HTTPRIO1: THTTPRIO;
    cbHomologacao: TCheckBox;
    edtCpf: TEdit;
    edtCRM: TEdit;
    edtUF: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtCNPJ: TEdit;
    Label7: TLabel;
    btnEnviarSolicitacao: TButton;
    ApplicationEvents1: TApplicationEvents;
    Label8: TLabel;
    edtChave: TEdit;
    edtVendedor: TEdit;
    edtSenhaVendedor: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Memo2: TMemo;
    Qry: TSQLQuery;
    edtDataReceita: TRzDateTimeEdit;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1UNDADES: TStringField;
    ClientDataSet1QUANT_SOLICITADA: TFMTBCDField;
    ClientDataSet1QUANT_PRESCRITA: TFMTBCDField;
    ClientDataSet1PRECO: TFMTBCDField;
    ClientDataSet1COD_SOLICITACAO: TStringField;
    ClientDataSet1COD_BARRAS: TStringField;
    ClientDataSet1N_CUPON: TStringField;
    ClientDataSet1COD_PRODUTO: TIntegerField;
    ClientDataSet1DESCRICAO: TStringField;
    QryCODIGO: TIntegerField;
    QryCODIGO_BARRAS: TStringField;
    QryDESCRICAO: TStringField;
    QryABREVIADO: TStringField;
    QryPRECO_CUSTO: TFMTBCDField;
    QryMARGEM_LUCRO: TFMTBCDField;
    QryCOMISSAO: TFMTBCDField;
    QryUNIDADE: TIntegerField;
    QryFRETE: TFMTBCDField;
    QryICMS: TFMTBCDField;
    QryIPI_IRPJ: TFMTBCDField;
    QryOUTROS_IMPOSTOS: TFMTBCDField;
    QryDESCONTOS: TFMTBCDField;
    QryCLASS_FISCAL: TStringField;
    QrySIT_TRIBUTARIA: TStringField;
    QryCUSTO_MEDIO: TFMTBCDField;
    QryPRECO_VENDA: TFMTBCDField;
    QryDESCONTO_MAXIMO: TFMTBCDField;
    QryCODIGO_GRUPO: TIntegerField;
    QryCODIGO_SUBGRUPO: TIntegerField;
    QryCODIGO_MARCA: TIntegerField;
    QryNOME_GRUPO: TStringField;
    QryNOME_SUBGRUPO: TStringField;
    QryNOME_MARCA: TStringField;
    QryNOME_FORNECEDOR: TStringField;
    QryCODIGO_FORNECEDORES: TIntegerField;
    QryFOTO: TBlobField;
    QryESTOQUE_ATUAL: TFMTBCDField;
    QryESTOQUE_VENDIDO: TFMTBCDField;
    QryESTOQUE: TFMTBCDField;
    QryVALOR_ESTOQUE_ATUAL: TFMTBCDField;
    QryVALOR_ESTOQUE: TFMTBCDField;
    QryESTOQUE_MINIMO: TIntegerField;
    QryESTOQUE_MAXIMO: TIntegerField;
    QryDATACAD: TDateField;
    QryUSERCAD: TStringField;
    QryVALOR_EST_CUSTO_ATUAL: TFMTBCDField;
    QryULTIMACOMPRA: TDateField;
    QryVALOR_EST_CUSTO: TFMTBCDField;
    QrySECCAO: TIntegerField;
    QryCATEGORIA: TIntegerField;
    QryLOCALIZACAO: TStringField;
    QryAPLICACAO: TStringField;
    QryESP_COD_AUX: TStringField;
    QryGARANTIA: TIntegerField;
    QryBALANCA: TStringField;
    QryETIQUETA: TStringField;
    QryATIVO: TStringField;
    QryREFERENCIA: TStringField;
    QryCOD_EMPRESA: TIntegerField;
    QryDESC_UNIDADE: TStringField;
    QryPESOBRUTO: TFMTBCDField;
    QryPESOLIQUIDO: TFMTBCDField;
    QryFONETICO: TStringField;
    QryDATAULTALTERACAO: TDateField;
    QryCUSTOREPOSICAO: TFMTBCDField;
    QryPRECO_ANT: TFMTBCDField;
    QryPRECO_PROMOCAO: TFMTBCDField;
    QryFLAG_PROMOCAO: TStringField;
    QryDT_INICIO_PROMO: TDateField;
    QryDT_FIM_PROMO: TDateField;
    QryCOD_LABORATORIO: TIntegerField;
    QryLABORATORIO: TStringField;
    QryPRINCIPIO_ATIVO: TStringField;
    QryMED_CONTROLADO: TStringField;
    QryQTD_FRACIONADA: TFMTBCDField;
    QryQTD_CAIXA: TFMTBCDField;
    QryMED_GENERICO: TStringField;
    QryLOTE_MED: TStringField;
    QryVALIDADE: TDateField;
    QryCHEK_BOX: TStringField;
    QryPRECO_VENDA2: TFMTBCDField;
    QryMARGEM_LUCRO2: TFMTBCDField;
    QryVALIDADE_PRODUTO: TStringField;
    QryPROD_SERV: TStringField;
    QryUNIDADE_ENT: TIntegerField;
    QryDESC_UNID_ENT: TStringField;
    QryQUANT_SAIDA: TFMTBCDField;
    QryQUANT_ENTRADA: TFMTBCDField;
    QryESTOQUE_FRACAO: TFMTBCDField;
    QryDATA_FABRICACAO: TDateField;
    QryFRACAO: TIntegerField;
    QryNCM_SH: TStringField;
    QryCOD_MS: TStringField;
    QryCONTOLAESTOQUE: TStringField;
    QryPRODUTOCOMPOSTO: TStringField;
    QryTIPO_ATIVIDADE: TStringField;
    QryCOD_PRODUTO_ESTOQUE: TIntegerField;
    QryCODIGO_LOCAL_ESTOQUE: TIntegerField;
    QryLISTA_ABC: TStringField;
    QryGRUPO_TRIBUTACAO: TIntegerField;
    QryCOMBUSTIVEL: TStringField;
    QryCOR: TIntegerField;
    QryENABLE_NUMSERIE: TIntegerField;
    QryID_PRODUTOS: TIntegerField;
    QryCOD_ANP: TStringField;
    DBGrid1: TDBGrid;
    QUpdAce: TIBQuery;
    Button1: TButton;
    QUpdAce1: TIBQuery;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure btnEnviarSolicitacaoClick(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    NroAutorizacao : string;
    CupVinculado : string;
    Paciente : string;
    CPF : string;
    ValorPaciente : double;
    ValorMS : Double;
    MEstorno : String;
    SEstorno : String;
    URL : String;
    WSDLLocation : string;
    { Public declarations }
    venda, PASS: string;
    IRETORNO : Integer;
  end;

var
  frmFarmaciaPopular: TfrmFarmaciaPopular;

implementation

uses ServicoSolicitacaoWS1,  ModulodeDados,
  Principal, Z_CriptDecript, Vendas, VendasParcelamento,
  ModulodeDadosConsultas, Z_DeclaracoesBemaFi32;

{$R *.dfm}

//Declarações
Function IdentificaEstacao: PChar; stdcall; external 'gbasmsb_library.dll';
Function PegaSolicitacao(cCNPJ, cCPJ, cCRM, cUFCRM, cDataEmissao: Pchar): Pchar; cdecl; external 'gbasmsb_library.dll';
Function PegaConfirmacao(cCNPJ, cNumAutorizacao, cCupomFiscal: Pchar): Pchar; cdecl; external 'gbasmsb_library.dll';

//Função
Function ObterSolicitacao(cCNPJ, cCPF, cCRM, cUFCRM, cDataEmissao: Pchar): Pchar;
begin
  result := PegaSolicitacao(cCNPJ, cCPF, cCRM, cUFCRM, cDataEmissao);
end;

function RemoveChar(Const Texto:String):String;
  //
  // Remove caracteres de uma string deixando apenas numeros
  //
  var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
  end;

procedure TfrmFarmaciaPopular.btnEnviarSolicitacaoClick(Sender: TObject);
Var
  Item : Integer;
  ItemRet : Integer;
  Datai : TXSDateTime;
  Dataf : TXSDateTime;
  Usuario: UsuarioFarmaciaDTO;
  Medicamentos : ArrayOfMedicamentoDTO;
  RetMedicamentos : ArrayOfMedicamentoDTO;
  Solicitacao : SolicitacaoDTO;
  Autorizacao : AutorizacaoDTO;
  ConfirmacaoAutorizacao : ConfirmacaoAutorizacaoDTO;
  Confirmacao : ConfirmacaoDTO;
  Recebimento : RecebimentoDTO;
  ConfirmacaoRecebimento : ConfirmacaoRecebimentoDTO;
  Pesquisa : PesquisaDTO;
  RetornoPesquisa : RetornoPesquisaDTO;
  ItemPesquisa: ArrayOfItemPesquisaDTO;
  Estorno : EstornoDTO;
  ConfirmacaoEstorno : ConfirmacaoEstornoDTO;
  p: ArrayOfItemPesquisaDTO;
  wsFarmaciaPopular : ServicoSolicitacaoWS;
  InAutoriza, DescMensagem, CodAutoriza, NrAutoriza, NoPessoa : WideString;
  s : WideString;
  par, produto : string;
  ret : cardinal;
  COO, cValorPago, NumeroCupom, CodFormaPagamento, sValor: String;
  dValor : Double ;
  iconta : Integer;
  cFormaPgto      : String;
begin
  //
  ThousandSeparator := '.';
  DecimalSeparator  := ',';
  //
  NroAutorizacao := '';
  Paciente := '';
  CPF := '';
  ValorPaciente := 0;
  ValorMs := 0;
  //
  MEstorno := '';
  SEstorno := '';
  //
  Memo1.Lines.Clear;

  //Application.ProcessMessages;

  //
  if (URL <> '') and (WSDLLocation <> '') then
  begin
    HTTPRIO1.URL          := URL;
    HTTPRIO1.WSDLLocation := WSDLLocation;
  end
  else
  begin
    if cbhomologacao.Checked then
    begin
      HTTPRIO1.URL          := 'https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS';
      HTTPRIO1.WSDLLocation := 'https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS?wsdl';
    end
    else
    begin
      HTTPRIO1.URL          := 'https://200.214.130.55:9443/farmaciapopular/services/ServicoSolicitacaoWS';
      HTTPRIO1.WSDLLocation := 'https://200.214.130.55:9443/farmaciapopular/services/ServicoSolicitacaoWS?wsdl';

    end;
  end;
  //
  HTTPRIO1.Service      := 'ServicoSolicitacaoWSService';
  HTTPRIO1.Port         := 'ServicoSolicitacaoWS';
  //
  wsFarmaciaPopular := HTTPRIO1 as ServicoSolicitacaoWS;
  //
//  Usuario := UsuarioFarmaciaDTO.Create;
  Usuario := UsuarioFarmaciaDTO.Create;
  Usuario.usuarioFarmacia := Trim(edtUsuario.Text);
  Usuario.senhaFarmacia   := edtSenha.Text;
  Usuario.usuarioVendedor := edtVendedor.Text;
  Usuario.senhaVendedor   := edtSenhaVendedor.Text;


  screen.cursor := crSQLWait;

  // Itens do Cupom Fiscal

  Item := 0;
  ClientDataSet1.First;
  while not ClientDataSet1.eof do
  begin
  //  Qry := TSQLQuery.Create(Self);
  //  Qry.SQLConnection := DM.SQLC;
    produto := ClientDataSet1COD_PRODUTO.Text;
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('select * from PRODUTOS where CODIGO > 0'+'');
    Qry.SQL.add('and CODIGO ='+QuotedStr(produto)+'');
    Qry.Open;
    //
   if QryFRACAO.AsInteger > 0 then
    begin
      if QryCODIGO_BARRAS.AsString <> '' then
      begin
        if QryQTD_CAIXA.AsFloat > 0 then
         inc(Item);
      end;
    end;
    //
    //freeandnil(Qry);
    //
   ClientDataSet1.Next;
    //
  end;
  //
  if Item = 0 then
  begin
    screen.cursor := crDefault;
    showmessage('Falta Definir Dosagem Diária, ou Quantidade de Apresentação do Produto');
    abort;
  end;
  //

    SetLength(Medicamentos, Item);
  Item := 0;
  //
  ClientDataSet1.First;
  while not ClientDataSet1.eof do
  begin
    //
    if QryQTD_CAIXA.AsFloat > 0 then
    begin
    produto := ClientDataSet1COD_PRODUTO.Text;
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('select * from PRODUTOS where CODIGO > 0'+'');
    Qry.SQL.add('and CODIGO ='+QuotedStr(produto)+'');
    Qry.Open;
      //
      if QryFRACAO.AsInteger > 0 then
      begin
        //
        if ClientDataSet1COD_BARRAS.AsString <> '' then
        begin
          //
          Medicamentos[Item] := MedicamentoDTO.Create;
          Medicamentos[Item].coCodigoBarra      := ClientDataSet1COD_BARRAS.AsString;
          Medicamentos[Item].dsUnidApresentacao := IntToStr(QryQTD_CAIXA.asinteger);
          //
       //  EDIT1.Clear;
       //   EDIT1.Text := Medicamentos[Item].dsUnidApresentacao;

          if frmFarmaciaPopular.Tag = 0 then
          begin
            Medicamentos[Item].qtPrescrita  := ClientDataSet1QUANT_PRESCRITA.AsCurrency;
            Medicamentos[Item].qtSolicitada := ClientDataSet1QUANT_SOLICITADA.AsCurrency * QryQTD_CAIXA.AsCurrency;
            Medicamentos[Item].qtDevolvida  := 0;

          end;
          //
          if frmFarmaciaPopular.Tag = 1 then
          begin
            Medicamentos[Item].qtPrescrita  := 0;
            Medicamentos[Item].qtSolicitada := 0;
            Medicamentos[Item].qtDevolvida  :=  ClientDataSet1QUANT_SOLICITADA.AsCurrency * QryQTD_CAIXA.AsCurrency;
          end;
          //
          Medicamentos[Item].vlPrecoVenda := (StrToFloatDef(ClientDataSet1PRECO.Text,0.00) /QryQTD_CAIXA.AsInteger);
          //
          Medicamentos[Item].inAutorizacaoEstorno := '';
          Medicamentos[Item].inAutorizacaoMedicamento := '';
          Medicamentos[Item].qtAutorizada := 0;
          Medicamentos[Item].qtEstornada := 0;
          Medicamentos[Item].statusTransacao := '';
          Medicamentos[Item].vlPrecoSubsidiadoMS := 0;
          Medicamentos[Item].vlPrecoSubsidiadoPaciente := 0;
          Medicamentos[Item].vlPrecoSubsidiadoPacientePosEstorno := 0;
          Medicamentos[Item].vlrSubsidiadoMSPosEstorno := 0;
          Medicamentos[Item].vlrTotalVendaPosEstorno := 0;
          //
          inc(item);
          //
        end;
      end;
      //
     // FreeAndNil(Qry);
      //
    end;
    //
    ClientDataSet1.Next;
    //
  end;
  //
  if frmFarmaciaPopular.Tag = 0 then   // Solicitacao de Venda
  begin
    //
    if edtCpf.Text = '' then
    begin
      showmessage('Número do CPF do Paciente Deve Ser Preenchido');
      abort;
    end;
    //
    if edtCrm.Text = '' then
    begin
      showmessage('CRM do Medico Deve Ser Preenchido');
      abort;
    end;
    //
    if edtUF.Text = '' then
    begin
      showmessage('UF do CRM do Medico Deve Ser Preenchida');
      abort;
    end;
    if edtSenha.Text = '' then
    begin
      showmessage('Senha da Farmácia deve Ser Preenchida');
      abort;
    end;
    if edtSenhaVendedor.Text = '' then
    begin
      showmessage('Senha do Vendedor deve Ser Preenchida');
      edtSenhaVendedor.SetFocus;
      abort;
    end;
    if edtVendedor.Text = '' then
    begin
      showmessage('Cpf do Vendedor deve Ser Preenchido');
      edtVendedor.SetFocus;
      abort;
    end;
    //
    if edtDataReceita.Date = 0 then
    begin
      showmessage('Data da Receita Deve Ser Preenchida');
      abort;
    end;
    //
    edtChave.Text := '';
    //
    //
    // S O L I C I T A C A O
    //
    Solicitacao := SolicitacaoDTO.Create;
    Solicitacao.arrMedicamentoDTO := Medicamentos;
    Solicitacao.coSolicitacaoFarmacia := ClientDataSet1COD_SOLICITACAO.AsString;
    //
    //    par := '--solicitacao '+edtCPF.Text+' '+edtCNPJ.Text+' '+edtCRM.Text+' '+edtUF.Text+' '+DateToStr(edtDataReceita.Date);
    //    Solicitacao.dnaEstacao := Trim( GetDosOutput('c:\projetos\novo\gbasmsb.exe ' + par ) );
    //
    Solicitacao.dnaEstacao := ObterSolicitacao(pchar(edtCNPJ.Text),pchar(edtCpf.Text),pchar(edtCRM.Text),pchar(edtUF.Text),Pchar(DateToStr(edtDataReceita.Date)));

    //    Solicitacao.dtEmissaoReceita := DateTimeToXSDateTime(edtDataReceita.Date);
    //
    Solicitacao.dtEmissaoReceita := TXSDateTime.Create;
    Solicitacao.dtEmissaoReceita.AsDateTime := Strtodate(edtDataReceita.text) + time;
    //
    Solicitacao.nuCnpj  := edtCNPJ.Text;
    Solicitacao.nuCpf   := edtCPF.Text;
    Solicitacao.nuCrm   := edtCRM.Text;
    Solicitacao.sgUfCrm := edtUF.Text;
    //
    // A U T O R I Z A C A O
    //
    Autorizacao := AutorizacaoDTO.Create;
    Autorizacao := wsFarmaciaPopular.executarSolicitacao(Solicitacao, Usuario);
     //

    Memo1.Lines.Clear;
    Memo1.Lines.Add('***** 1ª Fase *****');
    Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
    Memo1.Lines.Add('Solicitao: '+Autorizacao.coSolicitacaoFarmacia);
    Memo1.Lines.Add('Mensagem: '+Autorizacao.descMensagemErro);
    Memo1.Lines.Add('Autorizacao: '+Autorizacao.inAutorizacaoSolicitacao);
    Memo1.Lines.Add('Pessoa: '+Autorizacao.noPessoa);
    Memo1.Lines.Add('Autorizacao: '+Autorizacao.nuAutorizacao);
    Memo1.Lines.Add('Autorizacao med: '+Autorizacao.arrMedicamentoDTO[0].inAutorizacaoMedicamento);
    memo1.Lines.Add('Quantidade Solicitada: '+floattostr(Autorizacao.arrMedicamentoDTO[0].qtSolicitada));
    memo1.Lines.Add('Quantidade prescrita: '+floattostr(Autorizacao.arrMedicamentoDTO[0].qtPrescrita));
    memo1.Lines.Add('Unidade solicitada: '+Autorizacao.arrMedicamentoDTO[0].dsUnidApresentacao);
    //

    if Autorizacao.nuAutorizacao <> '' then
    begin
      //
      // M E D I C A M E N T O S   R E T O R N O
      //
      item := length(Autorizacao.arrMedicamentoDTO);
//    SetLength(RetMedicamentos, item );
      itemRet := 0;
      //
      CPF      := Solicitacao.nuCpf;
      Paciente := Autorizacao.noPessoa;
      //
      ValorPaciente := formVendas.Sds_pedidosVALOR_TOTAL.AsCurrency;
      CurrencyEdit1.Value :=  ValorPaciente;
      ValorMS := 0;

      //Edit1.Text :=  FloatToStr(ValorPaciente);
      //
      while itemRet < item do
      begin
        //
        memo1.Lines.Add('***** produto '+inttostr(itemRet+1)+' *****');
        memo1.Lines.Add('     Produto Autorizado: '+Autorizacao.arrMedicamentoDTO[itemRet].coCodigoBarra);
        memo1.Lines.Add('autorizacao medicamento: '+Autorizacao.arrMedicamentoDTO[itemRet].inAutorizacaoMedicamento);
        memo1.Lines.Add('  Quantidade Solicitada: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].qtSolicitada));
        memo1.Lines.Add('  Quantidade Autorizada: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].qtAutorizada));
        memo1.Lines.Add('       Valor do Produto: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].vlPrecoVenda));
        memo1.Lines.Add(' Valor Ministerio Saude: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].vlPrecoSubsidiadoMS));
        memo1.Lines.Add('      Valor do Paciente: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].vlPrecoSubsidiadoPaciente));

        //                                                    Autorizacao.arrMedicamentoDTO[itemRet].vlPrecoSubsidiadoPaciente
        ValorPaciente := ValorPaciente - Autorizacao.arrMedicamentoDTO[itemRet].vlPrecoSubsidiadoMS;
        ValorMS       := ValorMS       + Autorizacao.arrMedicamentoDTO[itemRet].vlPrecoSubsidiadoMS;
        //
        inc(itemRet);
        //
        CurrencyEdit2.Value := ValorMS * QryQTD_CAIXA.AsFloat;
        CurrencyEdit3.Value := CurrencyEdit1.Value - CurrencyEdit2.Value;
      end;

      //
      // C O N F I R M A C A O
      //
      Confirmacao := ConfirmacaoDTO.Create;
      Confirmacao.coSolicitacaoFarmacia := Autorizacao.coSolicitacaoFarmacia;
      Confirmacao.nuAutorizacao := Autorizacao.nuAutorizacao;
      Confirmacao.nuCupomFiscal := ClientDataSet1N_CUPON.text;
      //
      // C O N F I R M A C A O    A U T O R I Z A C A O
      //
      ConfirmacaoAutorizacao := ConfirmacaoAutorizacaoDTO.Create;
      ConfirmacaoAutorizacao := wsFarmaciaPopular.confirmarAutorizacao(Confirmacao, Usuario);
      //
      Memo1.lines.Add('');
      Memo1.Lines.Add('***** 2ª Fase *****');
      Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
      Memo1.Lines.Add('Solicitao: '+ConfirmacaoAutorizacao.coSolicitacaoFarmacia);
      Memo1.Lines.Add('Mensagem: '+ConfirmacaoAutorizacao.descMensagemErro);
      Memo1.Lines.Add('Autorizacao: '+ConfirmacaoAutorizacao.inAutorizacaoSolicitacao);
      Memo1.Lines.Add('Pessoa: '+ConfirmacaoAutorizacao.noPessoa);
      Memo1.Lines.Add('Autorizacao: '+ConfirmacaoAutorizacao.nuAutorizacao);
      Memo1.Lines.Add('Cupom Fiscal: '+ConfirmacaoAutorizacao.nuCupomFiscal);
      Memo1.Lines.Add('Status: '+ConfirmacaoAutorizacao.statusConfirmacao);
      //
     if ConfirmacaoAutorizacao.nuAutorizacao <> '' then
      begin
        //
        //
        // R E C E B I M E N T O
        //
        Recebimento := RecebimentoDTO.Create;
        Recebimento.arrMedicamentoDTO := Autorizacao.arrMedicamentoDTO;
        Recebimento.nuAutorizacao := ConfirmacaoAutorizacao.nuAutorizacao;
        Recebimento.nuCupomFiscal := ConfirmacaoAutorizacao.nuCupomFiscal;
        //
        // C O N F I R M A C A O    R E C E B I M E N T O
        //
        ConfirmacaoRecebimento := ConfirmacaoRecebimentoDTO.Create;
        ConfirmacaoRecebimento := wsFarmaciaPopular.confirmarRecebimento(Recebimento, Usuario);
        //
        Memo1.lines.Add('');
        Memo1.Lines.Add('***** 3ª Fase *****');
        Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
        Memo1.Lines.Add('Mensagem: '+ConfirmacaoRecebimento.mensagemRetorno);
        Memo1.Lines.Add('Autorizacao: '+ConfirmacaoRecebimento.nuAutorizacao);
        Memo1.Lines.Add('Codigo Retorno: '+ConfirmacaoRecebimento.codigoRetorno);
        Memo1.Lines.Add('Status: '+ConfirmacaoRecebimento.statusRecebimento);
        Memo1.Lines.Add('Cupom Vinculado');
        Memo1.lines.Add(ConfirmacaoRecebimento.cupomVinculado);

       CupVinculado := StringReplace(ConfirmacaoRecebimento.cupomVinculado,'@',#13+#10,[rfReplaceAll]);

       NroAutorizacao := ConfirmacaoRecebimento.nuAutorizacao;
        TRy
        if dm.IBTransaction.Active then
          dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
         try
            with QUpdAce do
               begin
                  close;
                  Parambyname('codven').AsInteger  := strtoint(formVendas.Sds_pedidosCODIGO.Text);
                  Parambyname('chave').AsString    := trim(NroAutorizacao);
                  ExecSQL;
               end;
            DM.IBTransaction.Commit;
          except
            DM.IBTransaction.Rollback;
            showmessage('Erro ao Gravar a Chave no banco de dados');
          end;
        finally
          QUpdAce.Close;
        end;
       //
        if ((ConfirmacaoRecebimento.codigoRetorno = '00R') or (ConfirmacaoRecebimento.codigoRetorno = '01R')) then
        begin
          screen.cursor := crDefault;
          frmFarmaciaPopular.BringToFront;
          showmessage('Venda Efetuada: '+ConfirmacaoRecebimento.nuAutorizacao);

          // CUPON VINCULADO
          btnEnviarSolicitacao.Enabled := False;

           if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '1' then
           begin
           for iConta := 1 to 6 do
           NumeroCupom := NumeroCupom + ' ';
           iRetorno := Bematech_FI_NumeroCupom( NumeroCupom );

           cFormaPgto := FormParcelamento.PAG;

           cValorPago := FormatFloat('0.00',DMC.CDS_PedidosVALOR_TOTAL.AsFloat);

           iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado( pchar( cFormaPgto), pchar( cValorPago ), pchar( NumeroCupom ) );

           iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( CupVinculado ) );

           iRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
           end;



           if dm.SDS_CONFIGURACOESMODELO_ECF.Text = '2' then
           begin
           COO := FormParcelamento.ACBrECF1.NumCupom ;

           cValorPago := DMC.CDS_PedidosVALOR_TOTAL.TEXT;

           CodFormaPagamento := FormParcelamento.edCod.Text ;
           sValor := cValorPago;

           sValor := StringReplace(StringReplace(sValor,'.',DecimalSeparator,[]),
                                   ',',DecimalSeparator,[]) ;
           dValor := StrToFloatDef(sValor,0) ;

           FormParcelamento.ACBrECF1.AbreCupomVinculado(COO,CodFormaPagamento,dValor) ;
           FormParcelamento.ACBrECF1.LinhaCupomVinculado( CupVinculado );
           FormParcelamento.ACBrECF1.FechaRelatorio;
           end;
          end  else
        begin
          Memo1.Lines.Add('***** 3ª Fase *****');
          Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
          Memo1.Lines.Add('Mensagem: NAO AUTORIZADO '+ConfirmacaoRecebimento.nuAutorizacao);
        end;
        //
      end else
      begin
        Memo1.Lines.Add('***** 2ª Fase *****');
        Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
        Memo1.Lines.Add('Mensagem: NAO AUTORIZADO '+ConfirmacaoAutorizacao.nuAutorizacao);
      end;
      //
    end
    else
    begin
      Memo1.Lines.Add('***** 1ª Fase *****');
      Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
      Memo1.Lines.Add('Mensagem: NAO AUTORIZADO '+Autorizacao.nuAutorizacao);
      //
      item := length(Autorizacao.arrMedicamentoDTO);
//      SetLength(RetMedicamentos, item );
      itemRet := 0;
      //
      while itemRet < item do
      begin
        //
        memo1.Lines.Add('***** produto '+inttostr(itemRet+1)+' *****');
        memo1.Lines.Add('     Produto Autorizado: '+Autorizacao.arrMedicamentoDTO[itemRet].coCodigoBarra);
        memo1.Lines.Add('autorizacao medicamento: '+Autorizacao.arrMedicamentoDTO[itemRet].inAutorizacaoMedicamento);
        memo1.Lines.Add('  Quantidade Solicitada: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].qtSolicitada));
        memo1.Lines.Add('  Quantidade Autorizada: '+floattostr(Autorizacao.arrMedicamentoDTO[itemRet].qtAutorizada));
        //
        inc(ItemRet);
        //
      end;
    end;
 end;

  if frmFarmaciaPopular.Tag = 1 then   // Solicitacao de Cancelamento
  begin
    //
    if edtChave.Text = '' then
    begin
      showmessage('Número da Autorização Deve Ser Preenchido');
      abort;
    end;
    //
    Estorno := EstornoDTO.Create;
    Estorno.arrMedicamentoDTO := Medicamentos;
    Estorno.nuAutorizacao := RemoveChar(edtChave.Text);
    Estorno.nuCnpj  := edtCNPJ.Text;
    //
    ConfirmacaoEstorno := ConfirmacaoEstornoDTO.Create;
    ConfirmacaoEstorno := wsFarmaciaPopular.executarEstorno(Estorno, Usuario);
    //
    NroAutorizacao := ConfirmacaoEstorno.nuEstorno;
    //
    if ConfirmacaoEstorno.inSituacaoEstorno = '00E' then
    begin
      //
      Memo1.lines.Add('');
      Memo1.Lines.Add('***** Cancelamento *****');
      Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
      Memo1.Lines.Add('Mensagem: '+ConfirmacaoEstorno.descMensagemErro);
      Memo1.Lines.Add('Situacao Estorno: '+ConfirmacaoEstorno.inSituacaoEstorno);
      Memo1.Lines.Add('Codigo Retorno: '+ConfirmacaoEstorno.nuEstorno);
      //
      //
      // M E D I C A M E N T O S   R E T O R N O
      //
      item := length(ConfirmacaoEstorno.arrMedicamentoDTO);
//      SetLength(RetMedicamentos, item );
      itemRet := 0;
      //
      while itemRet < item do
      begin
        //
        memo1.Lines.Add('***** produto '+inttostr(itemRet+1)+' *****');
        memo1.Lines.Add('     Produto Autorizado: '+ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].coCodigoBarra);
        memo1.Lines.Add('autorizacao medicamento: '+ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].inAutorizacaoMedicamento);
        memo1.Lines.Add('  Quantidade Solicitada: '+floattostr(ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].qtSolicitada));
        memo1.Lines.Add('  Quantidade Autorizada: '+floattostr(ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].qtAutorizada));
        memo1.Lines.Add('    autorizacao estorno: '+ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].inAutorizacaoEstorno);
        memo1.Lines.Add('   Quantidade Estornada: '+floattostr(ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].qtEstornada));
        memo1.Lines.Add('  Valor Total Venda Est: '+floattostr(ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].vlrTotalVendaPosEstorno));
        memo1.Lines.Add('          Valor M S Est: '+floattostr(ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].vlrSubsidiadoMSPosEstorno));
        memo1.Lines.Add('  Valor do Paciente Est: '+floattostr(ConfirmacaoEstorno.arrMedicamentoDTO[itemRet].vlPrecoSubsidiadoPacientePosEstorno));
        //
        inc(itemRet);
        //
      end;
      //
      MEstorno := ConfirmacaoEstorno.descMensagemErro;
      SEstorno := ConfirmacaoEstorno.inSituacaoEstorno;
      //
      screen.cursor := crDefault;
       frmFarmaciaPopular.BringToFront;
      showmessage('Cancelamento Efetuado: '+ConfirmacaoEstorno.nuEstorno);
  //    frmFarmaciaPopular.close;
      //
      btnEnviarSolicitacao.Enabled := False;
      TRy
        if dm.IBTransaction.Active then
          dm.IBTransaction.Commit;
         dm.IBTransaction.StartTransaction;
         try
            with QUpdAce1 do
               begin
                  close;
                  Parambyname('codven').AsInteger  := strtoint(DM.sds_vendasCODIGO.Text);
                  Parambyname('chave').AsString    := trim(ConfirmacaoEstorno.nuEstorno);
                  ExecSQL;
               end;
            DM.IBTransaction.Commit;
          except
            DM.IBTransaction.Rollback;
            showmessage('Erro ao Gravar a Chave de Cancelamento no banco de dados');
          end;
        finally
          QUpdAce1.Close;
        end;
    end
    else
    begin
      //
      Memo1.Lines.Add('***** Cancelamento *****');
      Memo1.Lines.Add('Data e Hora: '+DateTimeToStr(now));
      Memo1.Lines.Add('Mensagem: NAO AUTORIZADO '+ConfirmacaoEstorno.descMensagemErro);
      //}
    end;
    //
  end;
  //
  screen.cursor := crDefault;
 // frmFarmaciaPopular.BringToFront;
  //
end;

procedure TfrmFarmaciaPopular.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if frmFarmaciaPopular.Tag = 0 then
    btnEnviarSolicitacao.Enabled := (edtCpf.Text <> '') and (edtCRM.Text <> '') and (edtUF.Text <> '') and (edtDataReceita.Date > 0);
  //
  if frmFarmaciaPopular.Tag = 1 then
    btnEnviarSolicitacao.Enabled := (edtChave.Text <> '');
end;

procedure TfrmFarmaciaPopular.FormShow(Sender: TObject);
begin

  //
 { if DataSource1.DataSet.IsEmpty then
    DataSource1.DataSet := DM.Sds_Vendas_itens;
  //
  if DataSource1.DataSet.IsEmpty then
  begin
    showmessage('Falta Definir DataSet em DataSource');
    abort;
  end;   }
  //
  URL := '';
  WSDLLocation := '';


  //
  if frmFarmaciaPopular.Tag = 0 then
  begin
    frmFarmaciaPopular.Caption := 'Farmácia Popular (Venda)';
    edtCPF.Text           :=  REMOVECHAR(formVendas.Sds_pedidosCPF_CNPJ.Text);
    edtCNPJ.Text          :=  REMOVECHAR(dm.sds_empresaCnpj.text);
    edtUsuario.Text       :=  DM.SDS_CONFIGURACOESUSUARIO_FP.TEXT;
    edtSenha.Text         :=  DM.SDS_CONFIGURACOESSENHA_FP.TEXT;
    edtVendedor.Text      :=  RemoveChar(DM.SDS_UsuariosCPF_VENDEDOR.TEXT);
    edtSenhaVendedor.Text :=  '';
    edtDataReceita.Date   :=  Date;
    URL                   :=  '';
    WSDLLocation          :=  '';
    
     ClientDataSet1.Insert;
     ClientDataSet1COD_SOLICITACAO.Text := DM.Sds_Vendas_itensCODIGO_ID.Text;
     ClientDataSet1UNDADES.Text         := dm.Sds_Vendas_itensUNIDADE.Text;
     ClientDataSet1QUANT_SOLICITADA.Text:= dm.Sds_Vendas_itensQUANTIDADE.Text;
     ClientDataSet1PRECO.Text           := DM.Sds_Vendas_itensPRECO_UNITARIO.Text;
     ClientDataSet1COD_BARRAS.Text      := dm.Sds_Vendas_itensCODIGO_PRODUTO.Text;
     ClientDataSet1COD_PRODUTO.Text     := DM.Sds_Vendas_itensCODIGO_PROD.Text;
     ClientDataSet1QUANT_PRESCRITA.Text := dm.Sds_Vendas_itensQUANTIDADE.Text;
     ClientDataSet1N_CUPON.TEXT         := DM.sds_vendasN_CUPOM.Text;
     ClientDataSet1DESCRICAO.Text       := DM.Sds_Vendas_itensDESCRICAO_PRODUTO.Text;
     ClientDataSet1.Post;

     edtCPF.Enabled          :=  true;
     edtCRM.Enabled          := true;
     edtUF.Enabled           := true;
     edtDataReceita.Enabled  := true;
     Button1.Visible         := False;
  end;
  //
  if frmFarmaciaPopular.Tag = 1 then
  begin
    frmFarmaciaPopular.Caption := 'Farmácia Popular (Cancelamento)';
    edtChave.Text := DM.SDS_VENDAScHAVE_FP.TEXT;
    //edtChave.SetFocus;
     ClientDataSet1.Insert;
     ClientDataSet1COD_SOLICITACAO.Text := DM.Sds_Vendas_itensCODIGO_ID.Text;
     ClientDataSet1UNDADES.Text         := dm.Sds_Vendas_itensUNIDADE.Text;
     ClientDataSet1QUANT_SOLICITADA.Text:= dm.Sds_Vendas_itensQUANTIDADE.Text;
     ClientDataSet1PRECO.Text           := DM.Sds_Vendas_itensPRECO_UNITARIO.Text;
     ClientDataSet1COD_BARRAS.Text      := dm.Sds_Vendas_itensCODIGO_PRODUTO.Text;
     ClientDataSet1COD_PRODUTO.Text     := DM.Sds_Vendas_itensCODIGO_PROD.Text;
     ClientDataSet1QUANT_PRESCRITA.Text := dm.Sds_Vendas_itensQUANTIDADE.Text;
     ClientDataSet1N_CUPON.TEXT         := DM.sds_vendasN_CUPOM.Text;
     ClientDataSet1DESCRICAO.Text       := DM.Sds_Vendas_itensDESCRICAO_PRODUTO.Text;
     ClientDataSet1.Post;
     Button1.Visible         := False;
    
    edtCNPJ.Text          :=  REMOVECHAR(dm.sds_empresaCnpj.text);
    edtUsuario.Text       :=  DM.SDS_CONFIGURACOESUSUARIO_FP.TEXT;
    edtSenha.Text         :=  DM.SDS_CONFIGURACOESSENHA_FP.TEXT;
    edtVendedor.Text      :=  RemoveChar(DM.SDS_UsuariosCPF_VENDEDOR.TEXT);
    edtSenhaVendedor.Text :=  '';
    edtDataReceita.Date   :=  Date;
    edtCPF.Enabled          := False;
    edtCRM.Enabled          := False;
    edtUF.Enabled           := False;
    URL                   :=  '';
    WSDLLocation          :=  '';
  end;
  //
  if frmFarmaciaPopular.Tag = 2 then
  begin
    frmFarmaciaPopular.Caption := 'Farmácia Popular (Consulta Pendentes)';
    edtCPF.Text           :=  '';
    edtCNPJ.Text          :=  REMOVECHAR(dm.sds_empresaCnpj.text);
    edtUsuario.Text       :=  DM.SDS_CONFIGURACOESUSUARIO_FP.TEXT;
    edtSenha.Text         :=  DM.SDS_CONFIGURACOESSENHA_FP.TEXT;
    edtVendedor.Text      :=  RemoveChar(DM.SDS_UsuariosCPF_VENDEDOR.TEXT);
    edtSenhaVendedor.Text :=  '';
    edtDataReceita.Date   :=  Date;
    Button1.Visible         := True;
    edtCPF.Enabled          := False;
    edtCRM.Enabled          := False;
    edtUF.Enabled           := False;
    btnEnviarSolicitacao.Visible := False;
  end;
 //
 // DM.SDS_VENDAS_ITENS.First;
 //
end;

procedure TfrmFarmaciaPopular.FormKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    #13: begin
      key := #0;
      keybd_event(vk_tab, 1, 0, 0);
    end;
    #27: begin
      frmFarmaciaPopular.Close;
    end;
  end;
end;

procedure TfrmFarmaciaPopular.DataSource1StateChange(Sender: TObject);
begin
 { if DataSource1.DataSet.State in [dsInsert] then
  begin
    DataSource1.DataSet.Cancel;
    abort;
  end;   }
end;

procedure TfrmFarmaciaPopular.FormClose(Sender: TObject;
  var Action: TCloseAction);

 //  myFile : TextFile;
begin
  { AssignFile(myFile, 'FP.LOG');
   if not FileExists('FP.LOG') then
     rewrite(myfile)
   else
     Append(myFile);
     Writeln(myFile, Memo1.Lines.Text);
     CloseFile(myFile); }

  // Action := caFree;
  // frmFarmaciaPopular := nil;
end;

procedure TfrmFarmaciaPopular.FormCreate(Sender: TObject);
Var ArqINI : String;
    INI : TIniFile;
begin
     if FileExists('C:\SIACE\fp.xml') then
     begin
     DeleteFile('C:\SIACE\fp.xml');
     end;

 with ClientDataSet1 do
  Begin
  Filename:=ExtractFilepath(paramstr(0))+'fp.xml';
  if not FileExists(filename) then
  createdataset;
  open;
  end;

  //
//  PASS:= WDecriptografar(DM.SDS_USUARIOSSENHA.AsString,5);
   
 { ArqINI := ExtractFilePath(Application.ExeName)+'.INI';
  //
  INI := TIniFile.Create(ArqINI);
  try
    cbHomologacao.Checked := (INI.ReadString('FP','Homologacao','S') = 'S');
    edtCNPJ.Text          :=  INI.ReadString('FP','CNPJ'+ dm.sds_empresaCnpj.text,'');
    edtUsuario.Text       :=  INI.ReadString('FP','Usuario'+DM.SDS_CONFIGURACOESUSUARIO_FP.TEXT,'');
    edtSenha.Text         :=  INI.ReadString('FP','Senha'+DM.SDS_CONFIGURACOESSENHA_FP.TEXT,'');
    edtVendedor.Text      :=  INI.ReadString('FP','Vendedor'+DM.SDS_UsuariosCPF_VENDEDOR.TEXT,'');
    edtSenhaVendedor.Text :=  INI.ReadString('FP','SenhaVendedor','');
    URL                   :=  INI.ReadString('FP','URL','');
    WSDLLocation          :=  INI.ReadString('FP','WSDLLocation','');
  finally
    INI.Free;
  end ;  }
end;

procedure TfrmFarmaciaPopular.Button1Click(Sender: TObject);
var
    Item : Integer;
  ItemRet : Integer;
  Datai : TXSDateTime;
  Dataf : TXSDateTime;
  Usuario: UsuarioFarmaciaDTO;
  Medicamentos : ArrayOfMedicamentoDTO;
  RetMedicamentos : ArrayOfMedicamentoDTO;
  Solicitacao : SolicitacaoDTO;
  Autorizacao : AutorizacaoDTO;
  ConfirmacaoAutorizacao : ConfirmacaoAutorizacaoDTO;
  Confirmacao : ConfirmacaoDTO;
  Recebimento : RecebimentoDTO;
  ConfirmacaoRecebimento : ConfirmacaoRecebimentoDTO;
  Pesquisa : PesquisaDTO;
  RetornoPesquisa : RetornoPesquisaDTO;
  ItemPesquisa: ArrayOfItemPesquisaDTO;
  Estorno : EstornoDTO;
  ConfirmacaoEstorno : ConfirmacaoEstornoDTO;
  p: ArrayOfItemPesquisaDTO;
  wsFarmaciaPopular : ServicoSolicitacaoWS;
  InAutoriza, DescMensagem, CodAutoriza, NrAutoriza, NoPessoa : WideString;
  s : WideString;
  par, produto : string;
  ret : cardinal;
begin
  //
  ThousandSeparator := '.';
  DecimalSeparator  := ',';
  //
  NroAutorizacao := '';
  Paciente := '';
  CPF := '';
  ValorPaciente := 0;
  ValorMs := 0;
  //
  MEstorno := '';
  SEstorno := '';
  //
  Memo1.Lines.Clear;

  //Application.ProcessMessages;

  //
  if (URL <> '') and (WSDLLocation <> '') then
  begin
    HTTPRIO1.URL          := URL;
    HTTPRIO1.WSDLLocation := WSDLLocation;
  end
  else
  begin
    if cbhomologacao.Checked then
    begin
      HTTPRIO1.URL          := 'https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS';
      HTTPRIO1.WSDLLocation := 'https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS?wsdl';
    end
    else
    begin
      HTTPRIO1.URL          := 'https://200.214.130.55:9443/farmaciapopular/services/ServicoSolicitacaoWS';
      HTTPRIO1.WSDLLocation := 'https://200.214.130.55:9443/farmaciapopular/services/ServicoSolicitacaoWS?wsdl';

    end;
  end;
  //
  HTTPRIO1.Service      := 'ServicoSolicitacaoWSService';
  HTTPRIO1.Port         := 'ServicoSolicitacaoWS';
  //
  wsFarmaciaPopular := HTTPRIO1 as ServicoSolicitacaoWS;
  //
//  Usuario := UsuarioFarmaciaDTO.Create;
  Usuario := UsuarioFarmaciaDTO.Create;
  Usuario.usuarioFarmacia := Trim(edtUsuario.Text);
  Usuario.senhaFarmacia   := edtSenha.Text;
  Usuario.usuarioVendedor := edtVendedor.Text;
  Usuario.senhaVendedor   := edtSenhaVendedor.Text;


  if frmFarmaciaPopular.Tag = 2 then   // Consulta
  begin

    Pesquisa := PesquisaDTO.Create;
    Pesquisa.nuCnpj := edtCNPJ.Text;
    Pesquisa.nuCnpjMatriz := edtCNPJ.Text;
    Pesquisa.numeroPagina := 0;
    Pesquisa.dataInicio := DateTimeToXSDateTime(now-5);
    Pesquisa.dataFim := DateTimeToXSDateTime(now);
    Pesquisa.statusTransacao := '2F';

    RetornoPesquisa := RetornoPesquisaDTO.Create;
    RetornoPesquisa := wsFarmaciaPopular.pesquisarAutorizacoes(Pesquisa, Usuario);

//    ItemPesquisa := ArrayOfItemPesquisaDTO.Create;
    item := length(RetornoPesquisa.arrItemPesquisaDTO);
//    SetLength(RetornoPesquisa, item );

    memo1.lines.add(RetornoPesquisa.mensagemRetorno);

    itemRet := 0;
    //
    while itemRet < item do
    begin
      //
//      RetornoPesquisa.arrItemPesquisaDTO
      memo1.Lines.Add('autorizacao medicamento:'+RetornoPesquisa.arrItemPesquisaDTO[itemRet].coSolicitacaoFarmacia);
      memo1.Lines.Add('autorizacao medicamento:'+RetornoPesquisa.arrItemPesquisaDTO[itemRet].nuAutorizacao);
      memo1.Lines.Add('autorizacao medicamento:'+RetornoPesquisa.arrItemPesquisaDTO[itemRet].nuCupomFiscal);
//      memo1.Lines.Add('autorizacao medicamento:'+DateToStr(XMLTimeToDateTime(RetornoPesquisa.arrItemPesquisaDTO[itemRet].dtAutorizacao)));

      ItemPesquisa := RetornoPesquisa.arrItemPesquisaDTO;

      Medicamentos := ItemPesquisa[itemret].arrMedicamentoDTO;
      setlength(Medicamentos, length(ItemPesquisa[itemret].arrMedicamentoDTO));

   //   memo1.Lines.Add('autorizacao medicamento:'+inttostr(ItemPesquisa[ItemRet].arrItemPesquisaDTO[itemRet].coSolicitacaoFarmacia));

      inc(itemret);

    end;

//    frmFarmaciaPopular.Close;
  end;


end;

end.



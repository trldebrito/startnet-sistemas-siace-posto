unit UDadosAdm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Buttons, StdCtrls, AlignEdit, Grids, DBGrids,
  DB, IBCustomDataSet, IBDatabase, IBQuery, Mask,
  ToolEdit, CurrEdit, RXDBCtrl, FMTBcd, SqlExpr;

type
  TFrmDadosAdm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Label21: TLabel;
    EdtCodBandeira: TAlignEdit;
    BtnConsBandeira: TSpeedButton;
    EdtNomeBandeira: TEdit;
    Label22: TLabel;
    BtnOK: TBitBtn;
    BtnSair: TBitBtn;
    DBGrid1: TDBGrid;
    BtnExcluir: TBitBtn;
    QBuscaParcelas: TIBQuery;
    QDelParcela: TIBQuery;
    QGravaParcela: TIBQuery;
    DSQBuscaParc: TDataSource;
    Label1: TLabel;
    EdtTipo: TEdit;
    EdtValor: TCurrencyEdit;
    Label5: TLabel;
    Label2: TLabel;
    EdtParcelamento: TAlignEdit;
    QBuscaParcelasCODIGO: TIntegerField;
    QBuscaParcelasEMISSAO: TDateField;
    QBuscaParcelasVENCIMENTO: TDateField;
    QBuscaParcelasDESCRICAO: TIBStringField;
    BtnAlterar: TBitBtn;
    QBuscaParcelasVALOR: TFloatField;
    EdtVenda: TAlignEdit;
    EdtCli: TAlignEdit;
    dt_venda: TDBDateEdit;
    Memo1: TMemo;
    QBuscaParcelasTAXA: TFloatField;
    QBuscaParcelasHISTORICO: TIBStringField;
    EdtSeq: TAlignEdit;
    SPC_SEQ: TSQLStoredProc;
    qrcaixa_mov: TIBQuery;
    EdtCli1: TAlignEdit;
    procedure EdtCodBandeiraKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodBandeiraExit(Sender: TObject);
    procedure EdtCodBandeiraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsBandeiraClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BuscaParcelas;
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnOKClick(Sender: TObject);
    procedure Limpa;
    procedure EdtCodBandeiraEnter(Sender: TObject);
    procedure EdtParcelamentoEnter(Sender: TObject);
    procedure BtnConsCLiClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDadosAdm: TFrmDadosAdm;
  cTaxa : currency;
  iDias : integer;

implementation
Uses ModulodeDados, Ubibli1, UConsAdmCartaoCredito, ConsClientes,
  UAlteraParcelaCTR, Principal, UConsBandeiraCartao, Vendas;

{$R *.dfm}

procedure TFrmDadosAdm.Limpa;
begin
   EdtCodBandeira.Clear;
   EdtNomeBandeira.Clear;
   EdtTipo.Clear;
   EdtValor.Clear;
   EdtParcelamento.Text:= '1';
   EdtCodBandeira.SetFocus;
end;

procedure TFrmDadosAdm.BuscaParcelas;
begin
   IF EdtVenda.Text > '' then
   BEGIN
   if DM.IBTRAux.Active then
     DM.IBTRAux.Commit;
   DM.IBTRAux.StartTransaction;

   QBuscaParcelas.SQL.Clear;
   QBuscaParcelas.SQL.Add('SELECT C.CODIGO, C.EMISSAO, C.VENCIMENTO, C.VALOR, C.TAXA, B.DESCRICAO, C.HISTORICO FROM CONTAS_RECEBER_ADM_CARTAO C'+'');
   QBuscaParcelas.SQL.Add('INNER JOIN BANDEIRAS_CARTAO B ON (C.CODIGO_BANDEIRA = B.CODIGO) WHERE C.COD_VEN = :CODVEN ORDER BY C.CODIGO');
   with QBuscaParcelas do
      begin
         close;
         Parambyname('codven').AsInteger:= strtoint(EdtVenda.Text);
         Open;
      end;
   END else

   IF EdtSeq.Text >'' then
   begin
   if DM.IBTRAux.Active then
      DM.IBTRAux.Commit;
   DM.IBTRAux.StartTransaction;
   QBuscaParcelas.SQL.Clear;
   QBuscaParcelas.SQL.Clear;
   QBuscaParcelas.SQL.Add('SELECT C.CODIGO, C.EMISSAO, C.VENCIMENTO, C.VALOR, C.TAXA, B.DESCRICAO, C.HISTORICO FROM CONTAS_RECEBER_ADM_CARTAO C'+'');
   QBuscaParcelas.SQL.Add('INNER JOIN BANDEIRAS_CARTAO B ON (C.CODIGO_BANDEIRA = B.CODIGO) WHERE C.CODIGO_SEQUENCIA = :CODVEN ORDER BY C.CODIGO ');
   with QBuscaParcelas do
      begin
         close;
         Parambyname('codven').AsInteger:= strtoint(EdtSeq.Text);
         Open;
      end;
end;
end;

procedure TFrmDadosAdm.EdtCodBandeiraKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9', #13, #8]) then
      key := #0;
end;

procedure TFrmDadosAdm.EdtCodBandeiraExit(Sender: TObject);
begin
   if (BtnSair.Focused) or (DBGrid1.Focused) then
      exit;

   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.QConsulta do
          begin
             close;
             sql.Clear;
             sql.Text:= 'SELECT CODIGO, DESCRICAO, TAXA_CREDITO, TAXA_DEBITO, TIPO_CARTAO, ' +
                        'DIAS_CREDITO, DIAS_DEBITO, ATIVO ' +
                        'FROM BANDEIRAS_CARTAO ' +
                        'WHERE CODIGO = :CODIGO AND ATIVO = ' + #39 + 'S' + #39;
             Parambyname('codigo').AsInteger:= strtoint(EdtCodBandeira.Text);
             open;
             if not (fieldbyname('codigo').IsNull) then
                begin
                   EdtNomeBandeira.Text:= fieldbyname('descricao').AsString;
                   if trim(fieldbyname('TIPO_CARTAO').AsString) = 'C' then
                      begin
                         EdtTipo.Text:= 'CRÉDITO';
                         cTaxa := fieldbyname('TAXA_CREDITO').AsCurrency;
                         iDias := fieldbyname('DIAS_CREDITO').AsInteger;
                      end
                   else
                      begin
                         EdtTipo.Text:= 'DÉBITO';
                         cTaxa := fieldbyname('TAXA_DEBITO').AsCurrency;
                         iDias := fieldbyname('DIAS_DEBITO').AsInteger;
                      end;
                end
             else
                begin
                   showmessage('Bandeira não cadastrada');
                   EdtCodBandeira.SetFocus;
                end;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('Erro ao buscar os dados da bandeira');
     end;
   finally
     dm.QConsulta.Close;
   end;
end;

procedure TFrmDadosAdm.EdtCodBandeiraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsBandeira.Click;
end;

procedure TFrmDadosAdm.BtnConsBandeiraClick(Sender: TObject);
begin
   Application.CreateForm(TFrmConsBandeiraCartao, FrmConsBandeiraCartao);
   FrmConsBandeiraCartao.Tag := 1;
   FrmConsBandeiraCartao.ShowModal;

 //  EdtCodBandeira.text := dm.QAdmCartaoCODIGO.AsString;
  // EdtNomeBandeira.SetFocus;
 //  EdtCodBandeiraExit(Sender);
end;

procedure TFrmDadosAdm.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmDadosAdm.BtnExcluirClick(Sender: TObject);
var iAuxCodigo : integer;
begin
   if Application.MessageBox('Confirma a Exclusão da Parcela?', 'Atenção', mb_applmodal+mb_iconquestion+mb_yesno+mb_defbutton1) = 6 then
      begin
         iAuxCodigo:= QBuscaParcelasCODIGO.AsInteger;

         if DM.IBTransaction.Active then
            DM.IBTransaction.Commit;
         DM.IBTransaction.StartTransaction;
         try
           try
             with QDelParcela do
               begin
                  close;
                  Parambyname('codigo').AsInteger:= iAuxCodigo;
                  ExecSQL;
               end;
             DM.IBTransaction.Commit;
           except
             DM.IBTransaction.Rollback;
             showmessage('Erro ao Excluir a Parcela');
           end;
         finally
           QDelParcela.Close;
           Limpa;
           BuscaParcelas;
         end;
      end;
end;

procedure TFrmDadosAdm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if DM.IBTRAux.Active then
      DM.IBTRAux.Commit;

   if DM.IBTransaction.Active then
      DM.IBTransaction.Commit;

   QBuscaParcelas.Close;
   Action:= caFree;
end;

procedure TFrmDadosAdm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
      close;
end;

procedure TFrmDadosAdm.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         SelectNext(ActiveControl, True, True);
      end;
end;

procedure TFrmDadosAdm.BtnOKClick(Sender: TObject);
var i : integer;
begin
      if trim(EdtCodBandeira.Text) = '' then
      begin
         showmessage('Digite o código da bandeira');
         EdtCodBandeira.SetFocus;
         exit;
      end;

      if strtocurr(EdtValor.Text) = 0 then
      begin
         showmessage('Digite o valor');
         EdtValor.SetFocus;
         exit;
      end;

      if trim(EdtParcelamento.Text) = '' then
      begin
         showmessage('Digite a quantidade de parcelas');
         EdtParcelamento.SetFocus;
         exit;
      end;

      IF EdtVenda.Text > '' then
      BEGIN
      for i:= 1 to strtoint(EdtParcelamento.Text) do
      begin
         if DM.IBTransaction.Active then
            DM.IBTransaction.Commit;
         DM.IBTransaction.StartTransaction;
         try
           try
             with QGravaParcela do
                begin
                   close;
                   parambyname('band').AsInteger       := strtoint(EdtCodBandeira.Text);
                   parambyname('emissao').AsDate       := StrToDate(dt_venda.text);
                   parambyname('vencto').AsDate        := StrToDate(dt_venda.text) + (i * iDias);
                   parambyname('cai').AsInteger        := 1;//iCaixa;
                   parambyname('emp').AsInteger        := iEmp;
                   parambyname('ven').AsInteger        := StrToInt(EdtVenda.Text);
                   parambyname('valor').AsCurrency     := strtocurr(EdtValor.Text) / strtoint(EdtParcelamento.Text);
                   parambyname('taxa').AsCurrency      := cTaxa;
                   Parambyname('codcli').AsInteger     := strtoint(EdtCli.Text);
                   Parambyname('documento').Value      := null;
                   Parambyname('parcela').AsInteger    := i;
                   Parambyname('usuario').AsString     := Formprincipal.userlogado;
                   Parambyname('HISTORICO').AsString   := 'Recebimento no Cartão Ref: a Venda nº '+ EdtVenda.Text +' '+EdtCli.Text+'-'+EdtCli1.Text;
                   parambyname('SEQ').Value        := null;
                   ExecSQL;
                end;
             DM.IBTransaction.Commit;
           except
             DM.IBTransaction.Rollback;
             showmessage('Erro gravando parcela');
           end;
         finally
           QGravaParcela.Close;
         end;
         end;

                    if dm.IBTransaction.Active then
                    dm.IBTransaction.Commit;
                    dm.IBTransaction.StartTransaction;
                    qrcaixa_mov.close;
                    qrcaixa_mov.sql.clear;
                    qrcaixa_mov.sql.add('insert into movimento_diario');
                    qrcaixa_mov.SQL.add('(codigo,usuario,cod_usuario,data,valor_saida,Valor_entrada,valor,cod_plano,tipo_mov,historico, tipo, origem,codigo_venda)');
                    qrcaixa_mov.sql.add('values');
                    qrcaixa_mov.SQL.add('(:codigo,:usuario,:cod_usuario,:data,:valor_saida,:valor_entrada,:valor,:cod_plano,:tipo_mov,:historico,:tipo,:origem,:codigo_venda)');

                    qrcaixa_mov.parambyname('codigo').AsInteger     := 1;
                    qrcaixa_mov.parambyname('USUARIO').asstring     := Formprincipal.userlogado;
                    qrcaixa_mov.parambyname('cod_usuario').AsString := formprincipal.usuario_temp;
                    qrcaixa_mov.parambyname('data').asdatetime      := formVendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                    qrcaixa_mov.parambyname('Valor_saida').asfloat  := 0;
                    qrcaixa_mov.parambyname('valor_entrada').asfloat := 0; // strtocurr(EdtValor.Text);
                    qrcaixa_mov.parambyname('valor').asfloat := strtocurr(EdtValor.Text);

                    DM.SDS_CONFIGURACOES.open;
                    qrcaixa_mov.parambyname('cod_plano').asstring := dm.sds_configuracoes.fieldbyname('PLANO_VENDA_AV').asstring;
                    if EdtTipo.Text= 'DÉBITO' THEN
                    BEGIN
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 8; // CARTAO DE CREDITO
                    end else
                    if EdtTipo.Text= 'CRÉDITO' THEN
                    BEGIN
                    qrcaixa_mov.parambyname('tipo_mov').asINTEGER := 7; // CARTAO DE CREDITO
                    end;

                    qrcaixa_mov.parambyname('historico').asstring := 'Venda No. '+EdtVenda.Text+' - '+EdtCli1.Text;
                    qrcaixa_mov.parambyname('tipo').AsString  := 'F';
                    qrcaixa_mov.parambyname('ORIGEM').AsString  := 'CAR';
                    qrcaixa_mov.parambyname('codigo_venda').AsString  := EdtVenda.Text;
                    qrcaixa_mov.ExecSQL;
                    dm.IBTransaction.CommitRetaining;
      end else

     IF EdtSeq.Text > '' then
      BEGIN
      for i:= 1 to strtoint(EdtParcelamento.Text) do
      begin
         if DM.IBTransaction.Active then
            DM.IBTransaction.Commit;
         DM.IBTransaction.StartTransaction;
         try
           try
             with QGravaParcela do
                begin
                   close;
                   parambyname('band').AsInteger       := strtoint(EdtCodBandeira.Text);
                   parambyname('emissao').AsDate       := StrToDate(dt_venda.text);
                   parambyname('vencto').AsDate        := StrToDate(dt_venda.text) + (i * iDias);
                   parambyname('cai').AsInteger        := 1;//iCaixa;
                   parambyname('emp').AsInteger        := iEmp;
                   parambyname('ven').Value        := null;
                   parambyname('valor').AsCurrency     := strtocurr(EdtValor.Text) / strtoint(EdtParcelamento.Text);
                   parambyname('taxa').AsCurrency      := cTaxa;
                   Parambyname('codcli').AsInteger     := strtoint(EdtCli.Text);
                   Parambyname('documento').Value      := null;
                   Parambyname('parcela').AsInteger    := i;
                   Parambyname('usuario').AsString     := Formprincipal.userlogado;
                   Parambyname('HISTORICO').AsString   := Memo1.Text;
                   parambyname('SEQ').AsInteger        := strtoint(EdtSeq.Text);
                   ExecSQL;
                end;
             DM.IBTransaction.Commit;
          except
             DM.IBTransaction.Rollback;
             showmessage('Erro gravando parcela');
           end;
         finally
           QGravaParcela.Close;
         end;
      end;
      end;
      
 Limpa;
 BuscaParcelas;

 Close;
 
end;

procedure TFrmDadosAdm.EdtCodBandeiraEnter(Sender: TObject);
begin
   EdtCodBandeira.SelectAll;
end;

procedure TFrmDadosAdm.EdtParcelamentoEnter(Sender: TObject);
begin
   EdtParcelamento.SelectAll;
end;

procedure TFrmDadosAdm.BtnConsCLiClick(Sender: TObject);
begin
   Application.CreateForm(TFormConsClientes, FormConsCLientes);
   //FrmConsCli.Tag:= 9;
   FormConsClientes.ShowModal;
end;

procedure TFrmDadosAdm.BtnAlterarClick(Sender: TObject);
begin
   Application.CreateForm(TFrmAlteraParcelaADM, FrmAlteraParcelaADM);
   FrmAlteraParcelaADM.tag:= 0;
   FrmAlteraParcelaADM.EdtDataEmi.Text  := QBuscaParcelasEMISSAO.AsString;
   FrmAlteraParcelaADM.EdtDataVen.Text  := QBuscaParcelasVENCIMENTO.AsString;
   FrmAlteraParcelaADM.EdtCod.Text      := QBuscaParcelasCODIGO.AsString;
   FrmAlteraParcelaADM.EdtValor.Text    := QBuscaParcelasVALOR.AsString;
   FrmAlteraParcelaADM.showmodal;
end;

procedure TFrmDadosAdm.FormShow(Sender: TObject);
begin
   iEmp := dm.sds_empresacodigo.asinteger;
   //BuscaParcelas;
end;

procedure TFrmDadosAdm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if QBuscaParcelas.Eof then
begin
  ShowMessage('Parcelas não geradas favor gerara as parcelas');
  CanClose := False;
end;
end;

end.

unit UDuplicataADM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, AlignEdit, Buttons, StdCtrls, Grids,
  DBGrids, ExtCtrls, ComCtrls, IBDatabase, DB, IBCustomDataSet, IBQuery,
  RDprint, ToolEdit, CurrEdit;

type
  TFrmDuplicataADM = class(TForm)
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    PanelDoc: TPanel;
    GroupBox1: TGroupBox;
    EdtDoc: TEdit;
    BtnOK: TButton;
    BtnCancelar: TButton;
    BtnDoc: TButton;
    BtnImpressao: TButton;
    BtnSelecionar: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BtnConsVenda: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    EdtCodVenda: TAlignEdit;
    EdtData: TMaskEdit;
    EdtTotalVenda: TCurrencyEdit;
    EdtCodCli: TAlignEdit;
    EdtNomeCli: TEdit;
    EdtNF: TEdit;
    BtnConfirma: TButton;
    BtnSair: TButton;
    EdtCOO: TEdit;
    RDprint: TRDprint;
    QDuplicata: TIBQuery;
    QDuplicataCOD_DUPLICATA: TIntegerField;
    QParcelas: TIBQuery;
    DSQParcelas: TDataSource;
    IBTRParcelas: TIBTransaction;
    BtnAltera: TButton;
    QParcelasCODIGO: TIntegerField;
    QParcelasPARCELA: TIntegerField;
    QParcelasVALOR: TFloatField;
    QParcelasEMISSAO: TDateField;
    QParcelasVENCIMENTO: TDateField;
    QParcelasCOD_CLI: TIntegerField;
    QParcelasDOCUMENTO: TIBStringField;
    QParcelasCOD_VEN: TIntegerField;
    QParcelasCODIGO_DUPLICATA: TIntegerField;
    QParcelasNOME_RS: TIBStringField;
    QParcelasENDERECO: TIBStringField;
    QParcelasBAIRRO: TIBStringField;
    QParcelasCIDADE: TIBStringField;
    QParcelasCEP: TIBStringField;
    QParcelasUF: TIBStringField;
    QParcelasCPF_CNPJ: TIBStringField;
    QParcelasRG_IE: TIBStringField;
    QParcelasDESCRICAO: TIBStringField;
    QParcelasTIPO: TIBStringField;
    function BuscaParcelas : integer;
    function Quebra(const sAuxString : string) : integer;
    procedure BtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdtCodVendaEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtCodVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsVendaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnDocClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnImpressaoClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure BtnAlteraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDuplicataADM: TFrmDuplicataADM;

implementation
Uses ModulodeDados, Ubibli1, Extensos, UAlteraParcelaCTR,
  ConsultaPedidoDireto;
var  iQtdParcelas : integer;

{$R *.dfm}

function TFrmDuplicataADM.BuscaParcelas : integer;
begin
   if IBTRParcelas.Active then
      IBTRParcelas.Commit;
   IBTRParcelas.StartTransaction;
   with QParcelas do
      begin
         close;
         Parambyname('codven').AsInteger:= strtoint(EdtCodVenda.Text);
         open;
         Last;
         result:= RecordCount;
         First;
      end;
end;

function TFrmDuplicataADM.Quebra(const sAuxString : string) : integer;
var i : integer;
begin
   for i:= length(sAuxString) downto 1 do
      begin
         if sAuxString[i] = ' ' then
            begin
               Result:= i;
               Break;
            end;
      end;
end;

procedure TFrmDuplicataADM.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmDuplicataADM.FormShow(Sender: TObject);
begin
   PanelDoc.Visible:= false;
   Limpaedit(FrmDuplicataADM);
   EdtCodVenda.SetFocus;
end;

procedure TFrmDuplicataADM.EdtCodVendaEnter(Sender: TObject);
begin
   EdtCodVenda.SelectAll;
end;

procedure TFrmDuplicataADM.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         SelectNext(ActiveControl, True, True);
      end;
end;

procedure TFrmDuplicataADM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
      begin
         if PanelDoc.Visible then
            PanelDoc.Visible:= false
         else
            close;
      end;
end;

procedure TFrmDuplicataADM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if IBTRParcelas.Active then
      IBTRParcelas.Commit;
   QParcelas.Close;
   Action:= caFree;
end;

procedure TFrmDuplicataADM.EdtCodVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key = vk_f2 then
      BtnConsVenda.Click;
end;

procedure TFrmDuplicataADM.BtnConsVendaClick(Sender: TObject);
begin
   Application.CreateForm(TFormConsultaPedidoDireto, FormConsultaPedidoDireto);
   //FormConsultaPedidoDireto.Tag:= 4;
   FormConsultaPedidoDireto.showmodal;
   if not dm.sds_vendas.Eof then
   begin
   EdtCodVenda.Text := DM.sds_vendasCODIGO.Text;
   BtnConfirma.Click;
   end;
end;

procedure TFrmDuplicataADM.BtnConfirmaClick(Sender: TObject);
var bAux : boolean;
begin
   if EdtCodVenda.Text = '' then
      begin
         showmessage('Digite o código da venda');
         EdtCodVenda.SetFocus;
         exit;
         abort;
      end;

   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
    try
       with dm.QConsulta do
          begin
             close;
             sql.Clear;
             sql.add('SELECT V.CODIGO, V.DATA_PEDIDO, V.VALOR_TOTAL, V.CODIGO_CLIENTE,  ' +
                     'V.N_CUPOM, C.NOME_RS, N.NR_NOTA ' +
                     'FROM PEDIDOS V    ' +
                     'INNER JOIN CLIENTES C ' +
                     'ON (V.CODIGO_CLIENTE = C.CODIGO) ' +
                     'LEFT OUTER JOIN NFE_NOTA N ' +
                     'ON (V.NUM_NOTA  = N.NR_NOTA) ' +
                     'WHERE V.CODIGO = :CODVEN');
             Parambyname('codven').AsInteger:= strtoint(EdtCodVenda.Text);
             open;
             if fieldbyname('codigo').IsNull then
                begin
                   bAux:= false;
                   Limpaedit(FrmDuplicataADM);
                   showmessage('Venda não encontrada');
                   BtnSelecionar.Enabled := false;
                   BtnDoc.Enabled        := false;
                   BtnImpressao.Enabled  := false;
                   EdtCodVenda.SetFocus;
                end
             else
                begin
                   bAux:= true;
                   EdtData.Text      := fieldbyname('data_pedido').AsString;
                   EdtTotalVenda.Text:= fieldbyname('valor_total').AsString;
                   EdtCodCli.Text    := fieldbyname('codigo_cliente').AsString;
                   EdtNomeCli.Text   := fieldbyname('nome_rs').AsString;
                   EdtNF.Text        := fieldbyname('nr_nota').AsString;

                   if FieldByName('N_cupom').AsString > '' then
                      EdtCOO.Text:= fieldbyname('N_cupom').AsString
                   else
                      EdtCOO.Clear;
                end;
          end;
       dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
       showmessage('Erro ao buscar os dados da venda');
     end; 
   finally
     dm.QConsulta.Close;
   end;

   if bAux then
      begin
         iQtdParcelas:= BuscaParcelas;
         DBGrid1.SetFocus;
      end;

   if iQtdParcelas > 0 then
      begin
         BtnSelecionar.Enabled := true;
         BtnDoc.Enabled        := true;
         BtnImpressao.Enabled  := true;
         BtnAltera.Enabled     := true;
      end
   else
      begin
         BtnSelecionar.Enabled := false;
         BtnDoc.Enabled        := false;
         BtnImpressao.Enabled  := false;
         BtnAltera.Enabled     := false;
      end;
end;

procedure TFrmDuplicataADM.BtnDocClick(Sender: TObject);
begin
   PanelDoc.Visible:= true;
   EdtDoc.Text:= QParcelasDOCUMENTO.AsString;
   EdtDoc.SetFocus;
end;

procedure TFrmDuplicataADM.BtnCancelarClick(Sender: TObject);
begin
   DBGrid1.SetFocus;
   PanelDoc.Visible:= false;
end;

procedure TFrmDuplicataADM.BtnImpressaoClick(Sender: TObject);
var iAuxQuebra : integer;
    sAuxExtenso : string;
    i : integer;
    iDuplicata : integer;
begin
   { verifica se tem parcela selecionada }
   i:= 0;
   with QParcelas do
      begin
         First;
         while not Eof do
            begin
               if DBGrid1.SelectedRows.CurrentRowSelected then
                  inc(i);
               next;
            end;
      end;

   if i = 0 then
      begin
         showmessage('Nenhuma parcela selecionada');
         exit;
      end;

   RDprint.Abrir;
   QParcelas.First;
   while not QParcelas.Eof do
      begin
         if DBGrid1.SelectedRows.CurrentRowSelected then
            begin
               iDuplicata:= 0;

               if QParcelasCODIGO_DUPLICATA.IsNull then
                  begin
                     if dm.IBTransaction.Active then
                        dm.IBTransaction.Commit;
                     dm.IBTransaction.StartTransaction;
                     try
                     //  try
                         QDuplicata.Close;
                         QDuplicata.ParamByName('codigo').AsInteger:= QParcelasCODIGO.AsInteger;
                         QDuplicata.Open;
                         iDuplicata:= QDuplicataCOD_DUPLICATA.AsInteger;
                         dm.IBTransaction.Commit;
                       {except
                          dm.IBTransaction.Rollback;
                          iDuplicata:= 0;
                          showmessage('erro incluindo número da duplicata');
                       end;}
                     finally
                       QDuplicata.Close;
                     end;
                  end
               else
                  iDuplicata:= QParcelasCODIGO_DUPLICATA.AsInteger;

               RDprint.Imp(8, 71, QParcelasEMISSAO.AsString);

               rdprint.ImpVal(13, 25,'#,###,##0.00', strtocurr(EdtTotalVenda.text), []);

               RDprint.Imp(13, 45, QParcelasDOCUMENTO.AsString + '-' + QParcelasPARCELA.AsString + '/' + inttostr(iQtdParcelas) + '-C');

               rdprint.ImpVal(13, 68,'#,###,##0.00', QParcelasVALOR.AsCurrency, []);
               RDprint.Imp(13, 87, FormataStringD(IntToStr(iDuplicata), '6', '0'));
               RDprint.Imp(13, 100, QParcelasVENCIMENTO.AsString);

               RDprint.Imp(18, 36, QParcelasCOD_CLI.AsString + '-' + QParcelasNOME_RS.AsString);
               RDprint.Imp(20, 36, QParcelasENDERECO.AsString + ' - ' + QParcelasBAIRRO.AsString);
               RDprint.Imp(21, 36, QParcelasCIDADE.AsString);
               RDprint.Imp(21, 83, QParcelasCEP.AsString);
               RDprint.Imp(21, 108, QParcelasUF.AsString);
               RDprint.Imp(22, 36, QParcelasCIDADE.AsString);
               RDprint.Imp(24, 36, QParcelasCPF_CNPJ.AsString);

               if trim(QParcelasTIPO.AsString) = 'J' then
                  RDprint.Imp(24, 83, QParcelasRG_IE.AsString);

               sAuxExtenso:= Extenso(QParcelasVALOR.AsCurrency);
               if length(sAuxExtenso) > 73 then
                  begin
                     iAuxQuebra := Quebra(copy(sAuxExtenso, 1, 73));
                     RDprint.Imp(26, 32, copy(sAuxExtenso, 1, iAuxQuebra));
                     RDprint.Imp(27, 32, copy(sAuxExtenso, iAuxQuebra + 1, length(sAuxExtenso)));
                  end
               else
                  RDprint.Imp(26, 32, sAuxExtenso);
               RDprint.Novapagina;
            end;
         QParcelas.Next;
      end;
   RDprint.Fechar;
   BuscaParcelas;
end;

procedure TFrmDuplicataADM.BtnOKClick(Sender: TObject);
begin
   if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
   dm.IBTransaction.StartTransaction;
   try
     try
       with dm.Consulta do
          begin
             close;
             sql.Clear;
             sql.add('UPDATE CONTAS_RECEBER_ADM_CARTAO SET DOCUMENTO = :DOC ' +
                     'WHERE CODIGO = :CODIGO');
             if trim(EdtDoc.Text) = '' then
                Parambyname('doc').value:= null
             else
                Parambyname('doc').AsString  := trim(EdtDoc.Text);
             Parambyname('codigo').AsInteger := QParcelasCODIGO.AsInteger;
             ExecQuery;
          end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('Erro ao gravar o número do documento na parcela');
     end;
   finally
     dm.Consulta.Close;
     BtnConfirma.Click;
     DBGrid1.SetFocus;
     PanelDoc.Visible:= false;
   end;
end;

procedure TFrmDuplicataADM.BtnSelecionarClick(Sender: TObject);
begin
    QParcelas.First;
   while not QParcelas.EOF do
       begin
          DBGrid1.SelectedRows.CurrentRowSelected := true;
          QParcelas.Next;
       end;
   QParcelas.First;
end;

procedure TFrmDuplicataADM.BtnAlteraClick(Sender: TObject);
begin
   Application.CreateForm(TFrmAlteraParcelaADM, FrmAlteraParcelaADM);
   FrmAlteraParcelaADM.tag:= 1;
   FrmAlteraParcelaADM.EdtDataEmi.Text  := QParcelasEMISSAO.AsString;
   FrmAlteraParcelaADM.EdtDataVen.Text  := QParcelasVENCIMENTO.AsString;
   FrmAlteraParcelaADM.EdtCod.Text      := QParcelasCODIGO.AsString;
   FrmAlteraParcelaADM.EdtValor.Text    := QParcelasVALOR.AsString;

   FrmAlteraParcelaADM.showmodal;
end;

end.

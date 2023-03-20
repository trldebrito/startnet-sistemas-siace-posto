unit gerNFE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,  SUIEdit, Mask, ToolEdit, RXDBCtrl,
  Mylabel, SUIButton, SUIImagePanel, SUIGroupBox, SUIRadioGroup, Grids,
  XDBGrids, DB, DBClient, SimpleDS, ActiveX, wwdblook, Wwdbdlg, RzEdit,
  RzSpnEdt, ActnList, pcnNFeRTXT, ACBrNFe, IBCustomDataSet, IBDatabase,
  IBQuery, CurrEdit, DBGrids;

type
  TFormGefaNFe = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    myLabel3d2: TmyLabel3d;
    suiEdit2: TsuiEdit;
    Label2: TLabel;
    confirmar: TsuiButton;
    Label3: TLabel;
    Inserir: TsuiButton;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    btnCancelar: TsuiButton;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    suiEdit1: TsuiEdit;
    suiRadioGroup1: TsuiRadioGroup;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    RxDBComboEdit2: TComboEdit;
    Edit6: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SDS_NFE1: TSimpleDataSet;
    DTS_NFE1: TDataSource;
    SDS_NFE1NR_NOTA: TIntegerField;
    SDS_NFE1NR_PEDIDO: TIntegerField;
    ComboBox2: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    ComboBox3: TComboBox;
    SDS_NFE1N_NOTA_ENTRADA: TStringField;
    RxDBComboEdit1: TComboEdit;
    Label15: TLabel;
    ComboBox4: TComboBox;
    Edit7: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Edit8: TEdit;
    Label18: TLabel;
    Edit9: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    OpenDialog1: TOpenDialog;
    suiButton7: TsuiButton;
    QBuscaItens: TIBQuery;
    DSQBuscaItens: TDataSource;
    IBTRAce: TIBTransaction;
    QBuscaItensCODIGO: TIntegerField;
    QBuscaItensCODIGO_ID: TIntegerField;
    QBuscaItensITEN: TIntegerField;
    QBuscaItensCODIGO_PROD: TIntegerField;
    QBuscaItensCODIGO_PRODUTO: TIBStringField;
    QBuscaItensDESCRICAO_PRODUTO: TIBStringField;
    QBuscaItensPRECO_UNITARIO: TIBBCDField;
    QBuscaItensDESCONTO: TIBBCDField;
    QBuscaItensQUANTIDADE: TIBBCDField;
    QBuscaItensPRECO_TOTAL: TIBBCDField;
    QBuscaItensCOMISSAO: TIBBCDField;
    QBuscaItensDEV: TIBStringField;
    QBuscaItensQNT_DEV: TIBBCDField;
    QBuscaItensVAL_DEV: TIBBCDField;
    QBuscaItensENC_FINANCEIRO: TIBBCDField;
    QBuscaItensUNIDADE: TIBStringField;
    QBuscaItensSIT_TRIBUTARIA: TIBStringField;
    QBuscaItensVENDEDOR: TIntegerField;
    QBuscaItensFRACAO: TIntegerField;
    QBuscaItensCOD_NCM: TIBStringField;
    QBuscaItensPROD_SERV: TIBStringField;
    QBuscaItensPERC_ISS: TIBBCDField;
    QBuscaItensBASE_ISS: TIBBCDField;
    QBuscaItensVL_ISS: TIBBCDField;
    QBuscaItensPERC_ICM: TIBBCDField;
    QBuscaItensBASE_ICMS: TIBBCDField;
    QBuscaItensVL_ICM: TIBBCDField;
    QBuscaItensPERC_IPI: TIBBCDField;
    QBuscaItensBASE_IPI: TIBBCDField;
    QBuscaItensVL_IPI: TIBBCDField;
    QBuscaItensPERC_COFINS: TIBBCDField;
    QBuscaItensBASE_COFINS: TIBBCDField;
    QBuscaItensVL_COFINS: TIBBCDField;
    QBuscaItensPERC_ICMS_SUBST: TIBBCDField;
    QBuscaItensBASE_ICMS_SUBST: TIBBCDField;
    QBuscaItensVL_ICMS_SUBST: TIBBCDField;
    QBuscaItensPERC_PIS: TIBBCDField;
    QBuscaItensBASE_PIS: TIBBCDField;
    QBuscaItensVL_PIS: TIBBCDField;
    QBuscaItensIMPRIME: TIBStringField;
    QBuscaItensCOD_EMPRESA: TIntegerField;
    QBuscaItensICMS: TIBBCDField;
    QBuscaItensIPI_IRPJ: TIBBCDField;
    QBuscaItensOUTROS_IMPOSTOS: TIBBCDField;
    Edit1: TRxCalcEdit;
    QBuscaItensPERC_ALIQUOTA_PIS: TIBBCDField;
    QBuscaItensPERC_ALIQUOTA_COFINS: TIBBCDField;
    QBuscaItensFLAG_PIS_COFINS: TIBStringField;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QBuscaItensCFOP_EST_VENDA: TIBStringField;
    QBuscaItensCST_VENDA: TIBStringField;
    QBuscaItensNCM_SH: TIBStringField;
    QBuscaItensNCM_SH1: TIBStringField;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    QBuscaItensSIT_COFINS_VENDA_EST: TIBStringField;
    QBuscaItensSIT_PIS_VENDA_INTER_EST: TIBStringField;
    QBuscaItensSIT_COFINS_VENDA_INTER_EST: TIBStringField;
    QBuscaItensSIT_PIS_VENDA_EST: TIBStringField;
    QBuscaItensCST_IPI_SAIDA: TIBStringField;
    QBuscaItensCFOP_INTER_VENDA: TIBStringField;
    QBuscaItensCST_VENDA_INTER: TIBStringField;
    QBuscaItensCOD_ANP: TIBStringField;
    QBuscaItensCOMBUSTIVEL: TIBStringField;
    procedure InserirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure confirmarClick(Sender: TObject);
    procedure RxDBComboEdit2ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBComboEdit2Exit(Sender: TObject);
    procedure ComboEdit1Exit(Sender: TObject);
    procedure RxDBComboEdit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBComboEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBComboEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure suiButton7Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure CheckBox3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
   X, Y, Z, BX, By, BZ, B_ICM, B_ISS, B_IPI, ICM, IPI, ISS, B_PIS, B_COFINS, PIS, COFINS : Real;
  public
    { Public declarations }
    NItem, NValor:Integer;
  end;

var
  FormGefaNFe: TFormGefaNFe;
      E, N, Contador: Integer;
        NOTA : string;

implementation

uses Principal, Ubibli1, ModulodeDados, Vendas, Nfe, ConsCfop;

{$R *.dfm}

function Formatar(Texto : string; TamanhoDesejado : integer; AcrescentarADireita : boolean = true; CaracterAcrescentar : char = ' ') : string;
{
   OBJETIVO: Eliminar caracteres inválidos e acrescentar caracteres à esquerda ou à direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante deverá ter
   AcrescentarADireita: Indica se o carácter será acrescentado à direita ou à esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à direita
             Se o tamanho do texto form MAIOR que o desejado, eliminar primeiros caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar carácter à esquerda
             Se o tamanho do texto form MAIOR que o desejado, eliminar últimos caracteres do texto
   CaracterAcrescentar: Carácter que deverá ser acrescentado
}
var
   QuantidadeAcrescentar,
   TamanhoTexto,
   PosicaoInicial,
   i : integer;

begin
   case CaracterAcrescentar of
      '0'..'9','a'..'z','A'..'Z' : ;{Não faz nada}
      else
         CaracterAcrescentar := ' ';
   end;

   Texto := Trim(Texto);
   TamanhoTexto := Length(Texto);
   for i := 1 to (TamanhoTexto) do
   begin
      if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
      begin
         case Texto[i] of
            'á','Á' : Texto[i] := 'A';
            'é','É' : Texto[i] := 'E';
            'í','Í' : Texto[i] := 'I';
            'ó','Ó' : Texto[i] := 'O';
            'ú','Ú' : Texto[i] := 'U';
            'à','À' : Texto[i] := 'A';
            'è','È' : Texto[i] := 'E';
            'ì','Ì' : Texto[i] := 'I';
            'ò','Ò' : Texto[i] := 'O';
            'ù','Ù' : Texto[i] := 'U';
            'â','Â' : Texto[i] := 'A';
            'ê','Ê' : Texto[i] := 'E';
            'î','Î' : Texto[i] := 'I';
            'ô','Ô' : Texto[i] := 'O';
            'û','Û' : Texto[i] := 'U';
            'ä','Ä' : Texto[i] := 'A';
            'ë','Ë' : Texto[i] := 'E';
            'ï','Ï' : Texto[i] := 'I';
            'ö','Ö' : Texto[i] := 'O';
            'ü','Ü' : Texto[i] := 'U';
            'ç','Ç' : Texto[i] := 'C';
            'ñ','Ñ' : Texto[i] := 'N';
            else Texto[i] := ' ';
         end;
      end;
   end;

   QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
   if QuantidadeAcrescentar < 0 then
      QuantidadeAcrescentar := 0;
   if CaracterAcrescentar = '' then
      CaracterAcrescentar := ' ';
   if TamanhoTexto >= TamanhoDesejado then
      PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
   else
      PosicaoInicial := 1;

   if AcrescentarADireita then
      Texto := Copy(Texto,1,TamanhoDesejado) + StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar)
   else
      Texto := StringOfChar(CaracterAcrescentar,QuantidadeAcrescentar) + Copy(Texto,PosicaoInicial,TamanhoDesejado);

   Result := AnsiUpperCase(Texto);


end;

procedure TFormGefaNFe.InserirClick(Sender: TObject);
var
 tam: Integer;
begin
 NItem:=1;

DM.SDS_NFE.Active := False;
DM.SDS_NFE.Active := True;
DM.sds_nfe_itens.Active := False;
DM.sds_nfe_itens.Active := True;


if FormGefaNFe.combobox2.itemIndex = 0 then        // saida tela de vendas
begin

if SDS_NFE1.Locate('NR_PEDIDO',formVendas.n_VENDA.Text, [loCaseInsensitive]) = True then
 BEGIN
 if Application.MESSAGEBOX('Já existe uma NF-E cadastrada com esta Venda !, Deseja substitui-la?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
  sds_nfe1.delete;
  sds_nfe1.ApplyUpdates(0);
  DM.SDS_NFE.Active := False;
  DM.SDS_NFE.Active := True;
  DM.sds_nfe_itens.Active := False;
  DM.sds_nfe_itens.Active := True;
 end;
 //ShowMessage('Já existe um NF-E cadastrada com esta Venda !!!');
 RxDBComboEdit2.SetFocus;
  end;
if Application.MESSAGEBOX('Confirma a Geração da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 //Exit;
if  formVendas.Sds_pedidosNUMERO.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o Numero da Rua do cliente que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosCOD_IBGE.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o código do IBGE que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosCEP.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o CEP que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosENDERECO.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o Endereço do Cliente que esta em branco');
Exit;
Abort;
end else

if  formVendas.Sds_pedidosCIDADE.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o Nome da cidade que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosBAIRRO.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o Nome do Bairro que esta em branco');
Exit;
Abort;
end else
if  formVendas.Sds_pedidosCPF_CNPJ.Text ='' then
begin
ShowMessage('Favor Volte na venda e Corrija o CPF ou CNPJ que esta em branco');
Exit;
Abort;
end else

begin

dm.SDS_NFE.Insert;
dm.SDS_NFE.EDIT;
dm.SPC_NOTA_NFE.ExecProc;
N:= (DM.SPC_NOTA_NFE.ParamByName('NR_NOTA').AsInteger);
if Edit1.value = 0 then
begin
Edit1.Text := IntToStr(N);
dm.sds_nfeNr_nota.Text                :=  edit1.text;
end else
if Edit1.value > 0 then
begin
dm.sds_nfeNr_nota.Text                :=  edit1.text;
end;
DM.sds_nfeDt_emissao.AsDateTime       :=  formvendas.Sds_PedidosDATA_PEDIDO.AsDateTime;
DM.sds_nfeDt_lancamento.AsDateTime    :=  formvendas.Sds_PedidosDATA_PEDIDO.AsDateTime;
DM.sds_nfevl_mercadorias.Text         :=  formvendas.Sds_PedidosVALOR_ITENS.Text;
DM.sds_nfeVl_descontos.Text           :=  formvendas.Sds_PedidosVALOR_DESCONTO.Text;
DM.sds_nfeVl_total.Text               :=  formvendas.Sds_PedidosVALOR_TOTAL.Text;
dm.sds_nfecod_cliente.Text            :=  formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
dm.sds_nfeVl_acrescimos.text          :=  formvendas.Sds_PedidosENC_FINANCEIRO.Text;
DM.SDS_NFECOD_PGTO.Text               :=  formvendas.Sds_PedidosCOD_PAGTO.Text;
DM.SDS_NFECD_FUNCIONARIO.Text         :=  formvendas.Sds_PedidosCOD_VENDEDOR.text;
DM.SDS_NFESERIE_NF.Text               :=  '1';
DM.SDS_NFENR_PEDIDO.Text              :=  formvendas.N_venda.Text;
dm.SDS_NFEVL_AVISTA.Text              :=  formvendas.Sds_PedidosValor_avista.text;
DM.SDS_NFEVL_PRAZO.Text               :=  formvendas.Sds_PedidosValor_prazo.text;
dm.SDS_NFECD_EMPRESA.Text             :=  DM.SDS_EmpresaCODIGO.Text;
DM.SDS_NFEN_SEQUENCIA.Text            :=  '1';
DM.SDS_NFECD_CFOP.Text                :=  RxDBComboEdit2.Text;
DM.SDS_NFECFOP_DESC.Text              :=  suiEdit2.Text;
//dM.SDS_NFEVL_BASE_ICM.TEXT            :=  formvendas.Sds_PedidosVALOR_ITENS.TEXT;
dm.SDS_NFECD_TRANSPORTADORA.Text      :=  RxDBComboEdit1.Text;
DM.SDS_NFEPLACA_TRANSP.Text           :=  Edit5.Text;
DM.SDS_NFEQt_volumes.Text             :=  Edit3.text;
DM.SDS_NFEespecie_volumes.Text        :=  Edit4.text;
DM.SDS_NFEMarca_volumes.Text          := 'UN';
DM.SDS_NFENr_volumes.Text             :=  Edit3.text;
DM.SDS_NFEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFETP.TEXT                     :=  formVendas.Sds_pedidosTP.TEXT;
DM.SDS_NFENOME_CLIENTE_FOR.Text       :=  formVendas.Sds_pedidosNOME_CLIENTE.Text;
DM.SDS_NFEBAIRRO_CLIENTE_FORN.Text    :=  formVendas.Sds_pedidosBAIRRO.Text;
dm.SDS_NFEEND_NUM_CLIENTE.Text        :=  formVendas.Sds_pedidosNUMERO.Text;
DM.SDS_NFECEP_CLIENTE_FORN.Text       :=  formVendas.Sds_pedidosCEP.Text;
DM.SDS_NFETELEFONE.Text               :=  formVendas.Sds_pedidosFONE.Text;
dm.SDS_NFECPF_CNPJ_CLIENTE_FORN.text  :=  formVendas.Sds_pedidosCPF_CNPJ.Text;
dm.SDS_NFETIPO_PESSOA.text            :=  formVendas.Sds_pedidosTIPO.Text;
dm.SDS_NFECOD_IBGE.Text               :=  formVendas.Sds_pedidosCOD_IBGE.Text;
DM.SDS_NFEPRODUTOR_RURAL.Text         :=  formVendas.Sds_pedidosPROD_RURAL.Text;
DM.SDS_NFEIE_CLIENTE_FORN.Text        :=  formVendas.Sds_pedidosRG_IE.Text;
DM.SDS_NFEIE_PRODUTOR.Text            :=  formVendas.Sds_pedidosIE_PRODUTOR.Text;
dm.SDS_NFECIDADE_CLIENTE_FORN.text    :=  formVendas.Sds_pedidosCIDADE.Text;
DM.SDS_NFEUF_CLIENTE_FORN.Text        :=  formVendas.Sds_pedidosUF.Text;
dm.SDS_NFEENDERECO_CLI_FORN.Text      :=  formVendas.Sds_pedidosENDERECO.text;
DM.SDS_NFEPAGAMENTO.text              :=  formVendas.Sds_pedidosPAGAMENTO.text;
DM.SDS_NFESTATUS.Text                 :=  'N';

IF RxDBComboEdit1.Text >'' then
BEGIN
DM.SDS_NFECNPJ_TRANSP.Text            :=  DM.Sds_TransportadorCNPJ.Text;
DM.SDS_NFEIE_TRANSP.Text              :=  DM.Sds_TransportadorINSCRICAO.Text;
DM.SDS_NFENOME_TRANSP.Text            :=  DM.Sds_TransportadorNOME_TRANSP.TEXT;
DM.SDS_NFEEND_TRANSPORTADOR.TEXT      :=  DM.Sds_TransportadorENDERECO.Text +' ' + DM.Sds_TransportadorBAIRRO.Text;
DM.SDS_NFECIDADE_TRANSP.Text          :=  DM.Sds_TransportadorCD_CIDADE.Text;
DM.SDS_NFEUF_TRANSP.Text              :=  DM.Sds_TransportadorUF.Text;
end;
DM.SDS_NFE.Post;


formvendas.Sds_Pedidos_itens.First;
Contador := formvendas.Sds_Pedidos_itens.RecordCount;
For E:=1 to Contador do
 begin
dm.sds_nfe_itens.Insert;
dm.sds_nfe_itens.Edit;
 NValor:=1;
    tam := length(formvendas.Sds_Pedidos_itensCODIGO_PRODUTO.Text);

 NItem:=NItem+NValor;
dm.sds_nfe_itensITEN.AsInteger               := NItem;
dm.sds_nfe_itensNR_SEQUENCIA.Text            := '1';
dm.sds_nfe_itensNR_NOTA.Text                 := edit1.text;;
if tam = 13 then
    begin
dm.sds_nfe_itensCOD_PRODUTO.Text             := formvendas.Sds_Pedidos_itensCODIGO_PRODUTO.Text;
    end else
    begin
dm.sds_nfe_itensCOD_PRODUTO.Text             := '';
end;

   if IBTRAce.Active then
      IBTRAce.Commit;
   IBTRAce.StartTransaction;
   with QBuscaItens do
      begin
         close;
         Parambyname('cod_ven').AsInteger:= strtoint(formvendas.N_venda.Text);
         Parambyname('codpro').AsInteger:= strtoint(formvendas.Sds_Pedidos_itensCODIGO_PROD.Text);
         open;
         Last;
      end;
   IBTRAce.CommitRetaining;

DM.sds_nfe_itensCODIGO_PROD.Text             := formvendas.Sds_Pedidos_itensCODIGO_PROD.Text;
dm.sds_nfe_itensDESCRICAO_PRODUTO.Text       := formvendas.Sds_Pedidos_itensDESCRICAO_PRODUTO.Text;
dm.sds_nfe_itensVL_DESCONTO.Text             := formvendas.Sds_Pedidos_itensDESCONTO.TEXT;
dm.sds_nfe_itensQT_PRODUTO.AsFloat           := formvendas.Sds_Pedidos_itensQUANTIDADE.asfloat;
dm.sds_nfe_itensVL_UNITARIO.Text             := formvendas.Sds_Pedidos_itensPRECO_UNITARIO.Text;
dm.sds_nfe_itensVL_TOTAL.Text                := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Text;
dm.sds_nfe_itensDESC_UNIDADE.Text            := formvendas.Sds_Pedidos_itensUNIDADE.Text;
dm.sds_nfe_itensVL_OUTROS.Text               := formvendas.Sds_Pedidos_itensENC_FINANCEIRO.TEXT;
dm.sds_nfe_itensCD_CLIENTE.Text              := formvendas.Sds_PedidosCODIGO_CLIENTE.Text;
if CheckBox3.Checked = True then
begin
DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_EST_VENDA.Text;
dm.sds_nfe_itensCST.Text                     := QBuscaItensCST_VENDA.Text;
dm.sds_nfe_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_EST.Text;
dm.sds_nfe_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_EST.Text;
dm.sds_nfe_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
end else
if CheckBox4.Checked = True then
begin
DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_INTER_VENDA.Text;
dm.sds_nfe_itensCST.Text                     := QBuscaItensCST_VENDA_INTER.Text;
dm.sds_nfe_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_INTER_EST.Text;
dm.sds_nfe_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_INTER_EST.Text;
dm.sds_nfe_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
end;

IF QBuscaItensNCM_SH.Text > '' THEN
BEGIN
DM.sds_nfe_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
end else
IF QBuscaItensNCM_SH1.Text > '' THEN
begin
DM.sds_nfe_itensCOD_NCM.Text                 := QBuscaItensNCM_SH1.Text;
end;

dm.sds_nfe_itensALIQ_ICM.AsFloat               := formvendas.sds_pedidos_itensPERC_ICM.AsFloat ;
dm.sds_nfe_itensVL_ICM.AsFloat                 := formvendas.sds_pedidos_itensVL_ICM.AsFloat;
dm.sds_nfe_itensVL_BASE_ICM.AsFloat            := formvendas.sds_pedidos_itensBASE_ICMS.AsFloat;


dm.sds_nfe_itensALIQ_IPI.AsFloat               := formvendas.sds_pedidos_itensPERC_IPI.AsFloat ;
dm.sds_nfe_itensVL_IPI.AsFloat                 := formvendas.sds_pedidos_itensVL_IPI.AsFloat;
dm.sds_nfe_itensVL_BASE_IPI.AsFloat            := formvendas.sds_pedidos_itensBASE_IPI.AsFloat;



dm.sds_nfe_itensALIQ_ISS.AsFloat               := formvendas.sds_pedidos_itensPERC_ISS.AsFloat ;
dm.sds_nfe_itensVL_ISS.AsFloat                 := formvendas.sds_pedidos_itensVL_ISS.AsFloat;
dm.sds_nfe_itensVL_BASE_ISS.AsFloat            := formvendas.sds_pedidos_itensBASE_ISS.AsFloat ;



{CALCULO DO PIS E COFINS}
dm.sds_nfe_itensVL_BASE_PIS.AsFloat            := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
dm.sds_nfe_itensVL_BASE_COFINS.AsFloat         := formvendas.Sds_Pedidos_itensPRECO_TOTAL.Value;
DM.sds_nfe_itensALIQ_PIS.AsFloat               := formvendas.sds_pedidos_itensPERC_PIS.AsFloat;
DM.sds_nfe_itensALIQ_COFINS.AsFloat            := formvendas.Sds_Pedidos_itensPERC_COFINS.AsFloat;
dm.sds_nfe_itensVL_PIS.AsFloat                 := formvendas.sds_pedidos_itensVL_PIS.AsFloat ;
dm.sds_nfe_itensVL_COFINS.AsFloat              := formvendas.sds_pedidos_itensVL_COFINS.AsFloat ;

dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat      := formvendas.sds_pedidos_itensBASE_ICMS_SUBST.AsFloat ;
dm.sds_nfe_itensALIQ_ICM_SUBST.AsFloat         := formvendas.sds_pedidos_itensPERC_ICMS_SUBST.AsFloat;
dm.sds_nfe_itensVL_ICM_SUBST.AsFloat           := formvendas.sds_pedidos_itensVL_ICMS_SUBST.AsFloat  ;


dm.sds_nfe_itens.Post;
formvendas.Sds_Pedidos_itens.next;
end;


NOTA := EDIT1.TEXT;
DM.SDS_NFE.Filtered := False;
DM.SDS_NFE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
DM.SDS_NFE.Filtered := True;

BEGIN
dm.sds_nfe_itens.First;
X:= X + dm.sds_nfe_itensVl_ICM.AsFloat;
Y:= Y + dm.sds_nfe_itensVl_IPI.AsFloat;
Z:= Z + dm.sds_nfe_itensVl_ISS.AsFloat;
BX := BX + dm.sds_nfe_itensVL_BASE_ICM.AsFloat;
BY := BY + dm.sds_nfe_itensVL_BASE_IPI.AsFloat;
BZ := BZ + dm.sds_nfe_itensVL_BASE_ISS.AsFloat;

B_PIS := B_PIS +  dm.sds_nfe_itensVL_BASE_PIS.AsFloat;
PIS   :=  PIS + dm.sds_nfe_itensVL_PIS.AsFloat;
B_COFINS := B_COFINS + dm.sds_nfe_itensVL_BASE_COFINS.AsFloat;
COFINS   := COFINS + dm.sds_nfe_itensVL_COFINS.AsFloat;
dm.sds_nfe_itens.Next;
ICM:=X;
IPI:=Y;
Iss :=Z;
B_ICM := BX;
B_IPI := By;
B_ISS := BZ;

While not dm.sds_nfe_itens.Eof do
begin
X:= X + dm.sds_nfe_itensVl_ICM.AsFloat;
Y:= Y + dm.sds_nfe_itensVl_IPI.AsFloat;
Z:= Z + dm.sds_nfe_itensVl_ISS.AsFloat;
BX := BX + dm.sds_nfe_itensVL_BASE_ICM.AsFloat;
BY := BY + dm.sds_nfe_itensVL_BASE_IPI.AsFloat;
BZ := BZ + dm.sds_nfe_itensVL_BASE_ISS.AsFloat;

B_PIS := B_PIS +  dm.sds_nfe_itensVL_BASE_PIS.AsFloat;
PIS   :=  PIS + dm.sds_nfe_itensVL_PIS.AsFloat;
B_COFINS := B_COFINS + dm.sds_nfe_itensVL_BASE_COFINS.AsFloat;
COFINS   := COFINS + dm.sds_nfe_itensVL_COFINS.AsFloat;
dm.sds_nfe_itens.Next;

ICM:=X;
IPI:=Y;
Iss :=Z;
B_ICM := BX;
B_IPI := By;
B_ISS := BZ;
end;
dm.sds_nfe_itens.First;

DM.SDS_NFE.Edit;
DM.SDS_NFEVL_ICM.aSfloat := ICM;
DM.SDS_NFEVL_IPI.aSfloat := IPI;
DM.SDS_NFEVL_ISS.aSfloat := ISS;
DM.SDS_NFEVL_BASE_ICM.aSfloat := B_ICM;
DM.SDS_NFEVL_BASE_IPI.aSfloat := B_IPI;
DM.SDS_NFEVL_BASE_ISS.aSfloat := B_ISS;

DM.SDS_NFEVL_BASE_PIS.aSfloat := B_PIS;
DM.SDS_NFEVL_BASE_COFINS.aSfloat := B_COFINS;
DM.SDS_NFEVL_PIS.aSfloat := PIS;
DM.SDS_NFEVL_COFINS.aSfloat := COFINS;

DM.SDS_NFE.Post;
//dm.sds_nfe_itens.Post;
end;
confirmar.Enabled := True;
end;
END else

{if FormGefaNFe.combobox2.itemIndex = 1 then  ///nfe entrada
begin
if SDS_NFE1.Locate('N_NOTA_ENTRADA',FORMNOTASFISCAIS.SUIDBEDIT3.Text, [loCaseInsensitive]) = True then
 BEGIN
  if Application.MESSAGEBOX('Já existe uma NF-E cadastrada com esta Venda !, Deseja substitui-la?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
  sds_nfe1.delete;
  sds_nfe1.ApplyUpdates(0);
  DM.SDS_NFE.Active := False;
  DM.SDS_NFE.Active := True;
  DM.sds_nfe_itens.Active := False;
  DM.sds_nfe_itens.Active := True;
 end;
 //ShowMessage('Já existe um NF-E cadastrada com esta Venda !!!');
 RxDBComboEdit2.SetFocus;
  end;
if Application.MESSAGEBOX('Confirma a Geração da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 //Exit;
begin
dm.SDS_NFE.Insert;
dm.SDS_NFE.EDIT;
dm.SPC_NOTA_NFE.ExecProc;
N:= (DM.SPC_NOTA_NFE.ParamByName('NR_NOTA').AsInteger);
if Edit1.value = 0 then
begin
Edit1.Text := IntToStr(N);
dm.sds_nfeNr_nota.Text                :=  edit1.text;
end else
if Edit1.value > 0 then
begin
dm.sds_nfeNr_nota.Text                :=  edit1.text;
end;
DM.sds_nfeDt_emissao.AsDateTime       :=  date;
DM.sds_nfeDt_lancamento.AsDateTime    :=  Date;
DM.sds_nfevl_mercadorias.Text         :=  dm.SDS_NotasFiscaisVALOR_TOTAL_PRODUTOS.Text;
DM.sds_nfeVl_descontos.Text           :=  dm.SDS_NotasFiscaisVALOR_DESCONTO.Text;
DM.sds_nfeVl_total.Text               :=  dm.SDS_NotasFiscaisVALOR_TOTAL_PRODUTOS.Text;
dm.sds_nfecod_cliente.Text            :=  DM.sds_notasfiscaisCOD_Fornecedor.Text;
dm.sds_nfeVl_acrescimos.text          :=  DM.sds_notasfiscaisvalor_outras_despesas.Text;
//DM.SDS_NFECOD_PGTO.Text               :=  //formvendas.Sds_PedidosCOD_PAGTO.Text;
DM.SDS_NFECD_FUNCIONARIO.Text         :=  dm.SDS_UsuariosCodigo.text;
DM.SDS_NFESERIE_NF.Text               :=  '1';
DM.SDS_NFENR_PEDIDO.Text              :=  '';
dm.SDS_NFEVL_AVISTA.Text              := dm.SDS_NotasFiscaisValor_avista.text;
DM.SDS_NFEVL_PRAZO.Text               := dm.SDS_NotasFiscaisValor_prazo.text;
dm.SDS_NFECD_EMPRESA.Text             :=  DM.SDS_EmpresaCODIGO.Text;
DM.SDS_NFEN_SEQUENCIA.Text            :=  '1';
DM.SDS_NFECD_CFOP.Text                :=  RxDBComboEdit2.Text;
DM.SDS_NFECFOP_DESC.Text              :=  suiEdit2.Text;
//dM.SDS_NFEVL_BASE_ICM.TEXT            :=  formvendas.Sds_PedidosVALOR_ITENS.TEXT;
dm.SDS_NFECD_TRANSPORTADORA.Text      :=  RxDBComboEdit1.Text;
DM.SDS_NFEPLACA_TRANSP.Text           :=  Edit5.Text;
DM.SDS_NFEQt_volumes.Text             :=  Edit3.text;
DM.SDS_NFEespecie_volumes.Text        :=  Edit4.text;
DM.SDS_NFEMarca_volumes.Text          := 'UN';
DM.SDS_NFENr_volumes.Text             :=  Edit3.text;
DM.SDS_NFEPEso_liquido.Text           :=  Edit2.text;
Dm.SDS_NFEN_NOTA_ENTRADA.Text         :=  dm.SDS_NotasFiscaisNUM_NOTA.Text;
DM.SDS_NFETP.TEXT                     :=  dm.SDS_NotasFiscaisTP.TEXT;
DM.SDS_NFENOME_CLIENTE_FOR.Text       :=  dm.SDS_NotasFiscaisFORNECEDOR.Text;
DM.SDS_NFEBAIRRO_CLIENTE_FORN.Text    :=  dm.SDS_NotasFiscaisBAIRRO_CLIENTE_FORN.Text;
dm.SDS_NFEEND_NUM_CLIENTE.Text        :=  dm.SDS_NotasFiscaisEND_NUM_CLIENTE.Text;
DM.SDS_NFECEP_CLIENTE_FORN.Text       :=  dm.SDS_NotasFiscaisCEP_CLIENTE_FORN.Text;
DM.SDS_NFETELEFONE.Text               :=  dm.SDS_NotasFiscaisTELEFONE.Text;
dm.SDS_NFECPF_CNPJ_CLIENTE_FORN.text  :=  dm.SDS_NotasFiscaisCNPJ.Text;
dm.SDS_NFETIPO_PESSOA.text            :=  dm.SDS_NotasFiscaisTIPO_PESSOA.Text;
dm.SDS_NFECOD_IBGE.Text               :=  dm.SDS_NotasFiscaisCOD_IBGE.Text;
DM.SDS_NFEPRODUTOR_RURAL.Text         :=  'N';//dm.SDS_NotasFiscaisPROD_RURAL.Text;
DM.SDS_NFEIE_CLIENTE_FORN.Text        :=  dm.SDS_NotasFiscaisIE.Text;
DM.SDS_NFEIE_PRODUTOR.Text            :=  ''; //dm.SDS_NotasFiscaisIE_PRODUTOR.Text;
dm.SDS_NFECIDADE_CLIENTE_FORN.text    :=  dm.SDS_NotasFiscaisCIDADE_CLIENTE_FORN.Text;
DM.SDS_NFEUF_CLIENTE_FORN.Text        :=  dm.SDS_NotasFiscaisUF_CLIENTE_FORN.Text;
dm.SDS_NFEENDERECO_CLI_FORN.Text      :=  DM.SDS_NotasFiscaisENDERECO_CLI_FORN.Text;
DM.SDS_NFEPAGAMENTO.text              :=  dm.SDS_NotasFiscaisPagamento.text;
DM.SDS_NFESTATUS.Text                 :=  'N';

IF RxDBComboEdit1.Text >'' then
BEGIN
DM.SDS_NFECNPJ_TRANSP.Text            :=  DM.Sds_TransportadorCNPJ.Text;
DM.SDS_NFEIE_TRANSP.Text              :=  DM.Sds_TransportadorINSCRICAO.Text;
DM.SDS_NFENOME_TRANSP.Text            :=  DM.Sds_TransportadorNOME_TRANSP.TEXT;
DM.SDS_NFEEND_TRANSPORTADOR.TEXT      :=  DM.Sds_TransportadorENDERECO.Text +' ' + DM.Sds_TransportadorBAIRRO.Text;
DM.SDS_NFECIDADE_TRANSP.Text          :=  DM.Sds_TransportadorCD_CIDADE.Text;
DM.SDS_NFEUF_TRANSP.Text              :=  DM.Sds_TransportadorUF.Text;
end;
DM.SDS_NFE.Post;

dm.SDS_NotasFiscaisItens.First;
Contador := dm.SDS_NotasFiscaisItens.RecordCount;
For E:=1 to Contador do
 begin
dm.sds_nfe_itens.Insert;
dm.sds_nfe_itens.Edit;
  tam := length(dm.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text);
 NValor:=1;
 NItem:=NItem+NValor;
dm.sds_nfe_itensITEN.AsInteger               := NItem;
dm.sds_nfe_itensNR_SEQUENCIA.Text            := '1';
dm.sds_nfe_itensNR_NOTA.Text                 := edit1.text;
if tam = 13 then
    begin
dm.sds_nfe_itensCOD_PRODUTO.Text             := dm.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text;
    end else
    begin
dm.sds_nfe_itensCOD_PRODUTO.Text             := '';
end;
//dm.sds_nfe_itensCOD_PRODUTO.Text             := formatar(dm.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text,13,False,'0');
DM.sds_nfe_itensCODIGO_PROD.Text             := dm.SDS_NotasFiscaisItensCODIGO_PRODUTO.Text;
dm.sds_nfe_itensDESCRICAO_PRODUTO.Text       := dm.SDS_NotasFiscaisItensDESCRICAO.Text;
dm.sds_nfe_itensVL_DESCONTO.Text             := dm.SDS_NotasFiscaisItensVALOR_DESC.TEXT;
dm.sds_nfe_itensQT_PRODUTO.Text              := dm.SDS_NotasFiscaisItensQUANTIDADE.Text;
dm.sds_nfe_itensVL_UNITARIO.Text             := dm.SDS_NotasFiscaisItensvALOR_UNI.Text;
dm.sds_nfe_itensVL_TOTAL.Text                := dm.SDS_NotasFiscaisItensTOTAL_ITEM.Text;
dm.sds_nfe_itensDESC_UNIDADE.Text            := dm.SDS_NotasFiscaisItensDESC_UNIDADE.Text;
dm.sds_nfe_itensVL_OUTROS.Text               := '0';//dm.SDS_NotasFiscaisItensENC_FINANCEIRO.TEXT;
dm.sds_nfe_itensCD_CLIENTE.Text              :=  dm.SDS_NotasFiscaisCOD_FORNECEDOR.Text;
DM.sds_nfe_itensCFOP.Text                    :=  RxDBComboEdit2.Text;
DM.sds_nfe_itensCOD_NCM.Text                 := dm.SDS_NotasFiscaisItensNCM_SH.Text;
dm.sds_nfe_itensCST.text                     := DM.SDS_NotasFiscaisItensCST.TEXT;
dm.sds_nfe_itens.Post;
dm.SDS_NotasFiscaisItens.next;
end;
END;


NOTA := EDIT1.TEXT;
DM.SDS_NFE.Filtered := False;
DM.SDS_NFE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
DM.SDS_NFE.Filtered := True;
confirmar.Enabled := True;
end else  }


if FormGefaNFe.combobox2.itemIndex = 2 then  // saida tela de consultas vendas
begin

if SDS_NFE1.Locate('NR_PEDIDO',DM.sds_vendasCODIGO.Text, [loCaseInsensitive]) = True then
 BEGIN
 if Application.MESSAGEBOX('Já existe uma NF-E cadastrada com esta Venda !, Deseja substitui-la?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 begin
  sds_nfe1.delete;
  sds_nfe1.ApplyUpdates(0);
  DM.SDS_NFE.Active := False;
  DM.SDS_NFE.Active := True;
  DM.sds_nfe_itens.Active := False;
  DM.sds_nfe_itens.Active := True;
 end;
 //ShowMessage('Já existe um NF-E cadastrada com esta Venda !!!');
 RxDBComboEdit2.SetFocus;
 end;
if Application.MESSAGEBOX('Confirma a Geração da NF-e?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
 //Exit;
 if  DM.sds_vendasNUMERO.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o Numero da Rua do cliente que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasCOD_IBGE.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o código do IBGE que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasCEP.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o CEP que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasENDERECO.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o Endereço do Cliente que esta em branco');
Exit;
Abort;
end else

if  DM.sds_vendasCIDADE.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o Nome da cidade que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasBAIRRO.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o Nome do Bairro que esta em branco');
Exit;
Abort;
end else
if  DM.sds_vendasCPF_CNPJ.Text = '' then
begin
ShowMessage('Favor Volte na venda e Corrija o CPF ou CNPJ que esta em branco');
Exit;
Abort;
end else

begin
dm.SDS_NFE.Insert;
dm.SDS_NFE.EDIT;
dm.SPC_NOTA_NFE.ExecProc;
N:= (DM.SPC_NOTA_NFE.ParamByName('NR_NOTA').AsInteger);

if Edit1.value = 0 then
begin
Edit1.Text := IntToStr(N);
dm.sds_nfeNr_nota.Text                :=  edit1.text;
end else
if Edit1.value > 0 then
begin
dm.sds_nfeNr_nota.Text                :=  edit1.text;
end;
DM.sds_nfeDt_emissao.AsDateTime       :=  DM.sds_vendasDATA_PEDIDO.AsDateTime;
DM.sds_nfeDt_lancamento.AsDateTime    :=  DM.sds_vendasDATA_PEDIDO.AsDateTime;
DM.sds_nfevl_mercadorias.Text         :=  DM.sds_vendasVALOR_ITENS.Text;
DM.sds_nfeVl_descontos.Text           :=  DM.sds_vendasVALOR_DESCONTO.Text;
DM.sds_nfeVl_total.Text               :=  DM.sds_vendasVALOR_TOTAL.Text;
dm.sds_nfecod_cliente.Text            :=  DM.sds_vendasCODIGO_CLIENTE.Text;
dm.sds_nfeVl_acrescimos.text          :=  DM.sds_vendasENC_FINANCEIRO.Text;
DM.SDS_NFECOD_PGTO.Text               :=  DM.sds_vendasCOD_PAGTO.Text;
DM.SDS_NFECD_FUNCIONARIO.Text         :=  DM.sds_vendasCOD_VENDEDOR.text;
DM.SDS_NFESERIE_NF.Text               :=  '1';
DM.SDS_NFENR_PEDIDO.Text              :=  DM.sds_vendasCODIGO.Text;
dm.SDS_NFEVL_AVISTA.Text              :=  DM.sds_vendasValor_avista.text;
DM.SDS_NFEVL_PRAZO.Text               :=  DM.sds_vendasValor_prazo.text;
dm.SDS_NFECD_EMPRESA.Text             :=  DM.SDS_EmpresaCODIGO.Text;
DM.SDS_NFEN_SEQUENCIA.Text            :=  '1';
DM.SDS_NFECD_CFOP.Text                :=  RxDBComboEdit2.Text;
DM.SDS_NFECFOP_DESC.Text              :=  suiEdit2.Text;
//dM.SDS_NFEVL_BASE_ICM.TEXT            :=  formvendas.Sds_PedidosVALOR_ITENS.TEXT;
dm.SDS_NFECD_TRANSPORTADORA.Text      :=  RxDBComboEdit1.Text;
DM.SDS_NFEPLACA_TRANSP.Text           :=  Edit5.Text;
DM.SDS_NFEQt_volumes.Text             :=  Edit3.text;
DM.SDS_NFEespecie_volumes.Text        :=  Edit4.text;
DM.SDS_NFEMarca_volumes.Text          := 'UN';
DM.SDS_NFENr_volumes.Text             :=  Edit3.text;
DM.SDS_NFEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFEPEso_liquido.Text           :=  Edit2.text;
DM.SDS_NFETP.TEXT                     :=  DM.sds_vendasTP.TEXT;
DM.SDS_NFENOME_CLIENTE_FOR.Text       :=  DM.sds_vendasNOME_CLIENTE.Text;
DM.SDS_NFEBAIRRO_CLIENTE_FORN.Text    :=  DM.sds_vendasBAIRRO.Text;
dm.SDS_NFEEND_NUM_CLIENTE.Text        :=  DM.sds_vendasNUMERO.Text;
DM.SDS_NFECEP_CLIENTE_FORN.Text       :=  DM.sds_vendasCEP.Text;
DM.SDS_NFETELEFONE.Text               :=  DM.sds_vendasFONE.Text;
dm.SDS_NFECPF_CNPJ_CLIENTE_FORN.text  :=  DM.sds_vendasCPF_CNPJ.Text;
dm.SDS_NFETIPO_PESSOA.text            :=  DM.sds_vendasTIPO.Text;
dm.SDS_NFECOD_IBGE.Text               :=  DM.sds_vendasCOD_IBGE.Text;
DM.SDS_NFEPRODUTOR_RURAL.Text         :=  DM.sds_vendasPROD_RURAL.Text;
DM.SDS_NFEIE_CLIENTE_FORN.Text        :=  DM.sds_vendasRG_IE.Text;
DM.SDS_NFEIE_PRODUTOR.Text            :=  DM.sds_vendasIE_PRODUTOR.Text;
dm.SDS_NFECIDADE_CLIENTE_FORN.text    :=  DM.sds_vendasCIDADE.Text;
DM.SDS_NFEUF_CLIENTE_FORN.Text        :=  DM.sds_vendasUF.Text;
dm.SDS_NFEENDERECO_CLI_FORN.Text      :=  DM.sds_vendasENDERECO.text;
DM.SDS_NFEPAGAMENTO.text              :=  DM.sds_vendasPAGAMENTO.text;
DM.SDS_NFESTATUS.Text                 :=  'N';

IF RxDBComboEdit1.Text >'' then
BEGIN
DM.SDS_NFECNPJ_TRANSP.Text            :=  DM.Sds_TransportadorCNPJ.Text;
DM.SDS_NFEIE_TRANSP.Text              :=  DM.Sds_TransportadorINSCRICAO.Text;
DM.SDS_NFENOME_TRANSP.Text            :=  DM.Sds_TransportadorNOME_TRANSP.TEXT;
DM.SDS_NFEEND_TRANSPORTADOR.TEXT      :=  DM.Sds_TransportadorENDERECO.Text +' ' + DM.Sds_TransportadorBAIRRO.Text;
DM.SDS_NFECIDADE_TRANSP.Text          :=  DM.Sds_TransportadorCD_CIDADE.Text;
DM.SDS_NFEUF_TRANSP.Text              :=  DM.Sds_TransportadorUF.Text;
end;
DM.SDS_NFE.Post;

DM.sds_vendas_itens.First;
Contador := DM.sds_vendas_itens.RecordCount;
For E:=1 to Contador do
 begin
dm.sds_nfe_itens.Insert;
dm.sds_nfe_itens.Edit;
 tam := Length(DM.sds_vendas_itensCODIGO_PRODUTO.Text);
 NValor:=1;
 NItem:=NItem+NValor;
dm.sds_nfe_itensITEN.AsInteger               := NItem;
dm.sds_nfe_itensNR_SEQUENCIA.Text            := '1';
dm.sds_nfe_itensNR_NOTA.Text                 := edit1.text;
if tam = 13 then
    begin
dm.sds_nfe_itensCOD_PRODUTO.Text             := DM.sds_vendas_itensCODIGO_PRODUTO.Text;
    end else
    begin
dm.sds_nfe_itensCOD_PRODUTO.Text             := '';
end;

 if IBTRAce.Active then
      IBTRAce.Commit;
   IBTRAce.StartTransaction;
   with QBuscaItens do
      begin
         close;
         Parambyname('cod_ven').AsInteger:= strtoint(DM.sds_vendasCODIGO.Text);
         Parambyname('codpro').AsInteger:= strtoint(DM.Sds_Vendas_itensCODIGO_PROD.Text);
         open;
         Last;
      end;
   IBTRAce.CommitRetaining;

//dm.sds_nfe_itensCOD_PRODUTO.Text             := formatar(DM.sds_vendas_itensCODIGO_PRODUTO.Text,13,False,'0');
DM.sds_nfe_itensCODIGO_PROD.Text             := DM.sds_vendas_itensCODIGO_PROD.Text;
dm.sds_nfe_itensDESCRICAO_PRODUTO.Text       := DM.sds_vendas_itensDESCRICAO_PRODUTO.Text;
dm.sds_nfe_itensVL_DESCONTO.Text             := DM.sds_vendas_itensDESCONTO.TEXT;
dm.sds_nfe_itensQT_PRODUTO.Text              := DM.sds_vendas_itensQUANTIDADE.Text;
dm.sds_nfe_itensVL_UNITARIO.Text             := DM.sds_vendas_itensPRECO_UNITARIO.Text;
dm.sds_nfe_itensVL_TOTAL.Text                := DM.sds_vendas_itensPRECO_TOTAL.Text;
dm.sds_nfe_itensDESC_UNIDADE.Text            := DM.sds_vendas_itensUNIDADE.Text;
dm.sds_nfe_itensVL_OUTROS.Text               := DM.sds_vendas_itensENC_FINANCEIRO.TEXT;
dm.sds_nfe_itensCD_CLIENTE.Text              := DM.sds_vendasCODIGO_CLIENTE.Text;

if CheckBox3.Checked = True then
begin
DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_EST_VENDA.Text;
dm.sds_nfe_itensCST.Text                     := QBuscaItensCST_VENDA.Text;
dm.sds_nfe_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_EST.Text;
dm.sds_nfe_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_EST.Text;
dm.sds_nfe_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
end else
if CheckBox4.Checked = True then
begin
DM.sds_nfe_itensCFOP.Text                    := QBuscaItensCFOP_INTER_VENDA.Text;
dm.sds_nfe_itensCST.Text                     := QBuscaItensCST_VENDA_INTER.Text;
dm.sds_nfe_itensCST_PIS.Text                 := QBuscaItensSIT_PIS_VENDA_INTER_EST.Text;
dm.sds_nfe_itensCST_COFINS.Text              := QBuscaItensSIT_COFINS_VENDA_INTER_EST.Text;
dm.sds_nfe_itensCST_IPI.Text                 := QBuscaItensCST_IPI_SAIDA.Text;
end;

IF QBuscaItensNCM_SH.Text > '' THEN
BEGIN
DM.sds_nfe_itensCOD_NCM.Text                 := QBuscaItensNCM_SH.Text;
end else
IF QBuscaItensNCM_SH1.Text > '' THEN
begin
DM.sds_nfe_itensCOD_NCM.Text                 := QBuscaItensNCM_SH1.Text;
end;

dm.sds_nfe_itensALIQ_ICM.AsFloat               := DM.Sds_Vendas_itensPERC_ICM.AsFloat;
dm.sds_nfe_itensVL_ICM.AsFloat                 := DM.Sds_Vendas_itensVL_ICM.AsFloat ;
dm.sds_nfe_itensVL_BASE_ICM.AsFloat            := DM.Sds_Vendas_itensBASE_ICMS.ASFLOAT;

dm.sds_nfe_itensALIQ_IPI.AsFloat               := DM.Sds_Vendas_itensPERC_IPI.AsFloat;
dm.sds_nfe_itensVL_IPI.AsFloat                 := DM.Sds_Vendas_itensVL_IPI.AsFloat ;
dm.sds_nfe_itensVL_BASE_IPI.AsFloat            := DM.Sds_Vendas_itensBASE_IPI.AsFloat;


dm.sds_nfe_itensALIQ_ISS.AsFloat               := DM.Sds_Vendas_itensPERC_ISS.AsFloat;
dm.sds_nfe_itensVL_ISS.AsFloat                 := DM.Sds_Vendas_itensVL_ISS.AsFloat;
dm.sds_nfe_itensVL_BASE_ISS.AsFloat            := DM.Sds_Vendas_itensBASE_ISS.AsFloat;

dm.sds_nfe_itensVL_BASE_PIS.AsFloat            := DM.Sds_Vendas_itensBASE_PIS.AsFloat;
dm.sds_nfe_itensVL_BASE_COFINS.AsFloat         := DM.Sds_Vendas_itensBASE_COFINS.AsFloat;
DM.sds_nfe_itensALIQ_PIS.AsFloat               := DM.Sds_Vendas_itensPERC_PIS.AsFloat;
DM.sds_nfe_itensALIQ_COFINS.AsFloat            := DM.Sds_Vendas_itensPERC_COFINS.AsFloat;
dm.sds_nfe_itensVL_PIS.AsFloat                 := DM.Sds_Vendas_itensVL_PIS.AsFloat ;
dm.sds_nfe_itensVL_COFINS.AsFloat              := DM.Sds_Vendas_itensVL_COFINS.AsFloat ;

dm.sds_nfe_itensVL_BASE_ICM_SUBST.AsFloat      := DM.Sds_Vendas_itensBASE_ICMS_SUBST.AsFloat ;
dm.sds_nfe_itensALIQ_ICM_SUBST.AsFloat         := DM.Sds_Vendas_itensPERC_ICMS_SUBST.AsFloat;
dm.sds_nfe_itensVL_ICM_SUBST.AsFloat           := DM.Sds_Vendas_itensVL_ICMS_SUBST.AsFloat  ;

dm.sds_nfe_itens.Post;
DM.sds_vendas_itens.next;
end;

NOTA := EDIT1.TEXT;
DM.SDS_NFE.Filtered := False;
DM.SDS_NFE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
DM.SDS_NFE.Filtered := True;
BEGIN
dm.sds_nfe_itens.First;
X:= X + dm.sds_nfe_itensVl_ICM.AsFloat;
Y:= Y + dm.sds_nfe_itensVl_IPI.AsFloat;
Z:= Z + dm.sds_nfe_itensVl_ISS.AsFloat;
BX := BX + dm.sds_nfe_itensVL_BASE_ICM.AsFloat;
BY := BY + dm.sds_nfe_itensVL_BASE_IPI.AsFloat;
BZ := BZ + dm.sds_nfe_itensVL_BASE_ISS.AsFloat;

B_PIS := B_PIS +  dm.sds_nfe_itensVL_BASE_PIS.AsFloat;
PIS   :=  PIS + dm.sds_nfe_itensVL_PIS.AsFloat;
B_COFINS := B_COFINS + dm.sds_nfe_itensVL_BASE_COFINS.AsFloat;
COFINS   := COFINS + dm.sds_nfe_itensVL_COFINS.AsFloat;

dm.sds_nfe_itens.Next;
ICM:=X;
IPI:=Y;
Iss :=Z;
B_ICM := BX;
B_IPI := By;
B_ISS := BZ;

While not dm.sds_nfe_itens.Eof do
begin
X:= X + dm.sds_nfe_itensVl_ICM.AsFloat;
Y:= Y + dm.sds_nfe_itensVl_IPI.AsFloat;
Z:= Z + dm.sds_nfe_itensVl_ISS.AsFloat;
BX := BX + dm.sds_nfe_itensVL_BASE_ICM.AsFloat;
BY := BY + dm.sds_nfe_itensVL_BASE_IPI.AsFloat;
BZ := BZ + dm.sds_nfe_itensVL_BASE_ISS.AsFloat;

B_PIS := B_PIS +  dm.sds_nfe_itensVL_BASE_PIS.AsFloat;
PIS   :=  PIS + dm.sds_nfe_itensVL_PIS.AsFloat;
B_COFINS := B_COFINS + dm.sds_nfe_itensVL_BASE_COFINS.AsFloat;
COFINS   := COFINS + dm.sds_nfe_itensVL_COFINS.AsFloat;

dm.sds_nfe_itens.Next;
ICM:=X;
IPI:=Y;
Iss :=Z;
B_ICM := BX;
B_IPI := By;
B_ISS := BZ;
end;
dm.sds_nfe_itens.First;

DM.SDS_NFE.Edit;
DM.SDS_NFEVL_ICM.aSfloat := ICM;
DM.SDS_NFEVL_IPI.aSfloat := IPI;
DM.SDS_NFEVL_ISS.aSfloat := ISS;
DM.SDS_NFEVL_BASE_ICM.aSfloat := B_ICM;
DM.SDS_NFEVL_BASE_IPI.aSfloat := B_IPI;
DM.SDS_NFEVL_BASE_ISS.aSfloat := B_ISS;

DM.SDS_NFEVL_BASE_PIS.aSfloat := B_PIS;
DM.SDS_NFEVL_BASE_COFINS.aSfloat := B_COFINS;
DM.SDS_NFEVL_PIS.aSfloat := PIS;
DM.SDS_NFEVL_COFINS.aSfloat := COFINS;

DM.SDS_NFE.Post;
//dm.sds_nfe_itens.Post;
end;
confirmar.Enabled := True;
end;
end;
end;


procedure TFormGefaNFe.btnCancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFormGefaNFe.confirmarClick(Sender: TObject);

begin
 Try
{ IF CheckBox2.Checked = true then
 if Edit7.Text = '' Then
 begin
    ShowMessage('Chave da NFe deve ser informada para NFe complementar');
 end ELSE
 IF CheckBox1.Checked = true then
 if Edit8.Text = '' Then
 begin
    ShowMessage('Nº do cupom deve ser Informado');
 end ELSE  }

if DM.sds_nfe_itens.Locate('COD_NCM','',[])=True then
begin
  ShowMessage('Codigo do NCM tem que ser Preenchido.. Favor Corrigir');
end else

  begin
   DM.SDS_Crediario.Active := False;
   DM.SDS_Crediario.Active := True;

   if FormNFE=nil   then
    begin
     CoInitialize(nil);
     //Application.CreateForm(TFormNFE, FormNFE);
      FormNFE:=TFormNFE.Create(self);
      FormNFE.ShowModal;
       CoUninitialize;
      {
        FormGefaNFe.CHAVE.Clear;
        FormGefaNFe.PROT.Clear;
        FormGefaNFe.RECIBO.Clear;

        FormGefaNFe.CHAVE.Text := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe;
        FormGefaNFe.PROT.Text := ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt;
        FormGefaNFe.RECIBO.Text := ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec;
         }
      end;
      end;
     except
      //     ShowMessage('Erro ao Tentar Exibir o Formulário!!');
        //end;
  on E: EDatabaseError do
                ShowMessage(E.Message);
end;
end;


procedure TFormGefaNFe.RxDBComboEdit2ButtonClick(Sender: TObject);
begin
Try
if FormConsCFOP=nil   then
    begin
      FormConsCFOP:=TFormConsCFOP.Create(self);
      FormConsCFOP.ShowModal;
      SUIEdit2.text := dm.SDS_CFOPDESCRICAO.text;
      RxDBComboEdit2.Text := DM.SDS_CFOPCODIGO_CFOP.Text;
      CheckBox3.SetFocus;
      end;
      except
      ShowMessage('Erro ao Tentar Exibir o Formulário de CFOP!!');
end;
end;

procedure TFormGefaNFe.FormShow(Sender: TObject);
var
  CST : string;
begin
//dm.SDS_NFE.Active := False;
//DM.SDS_NFE.Active := True;
//dm.SDS_NFE.Active := False;
//DM.SDS_NFE.Active := True;
//SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
{IF DM.SDS_EmpresaREGIME.Text = 'S' then
begin
CST := 'B';
DM.SDS_CST.Active := False;
DM.SDS_CST.DataSet.CommandText:='SELECT * FROM CST WHERE CST_CSOSN ='+ QuotedStr(CST) +' ORDER BY CODIGO_CST ASC';
DM.SDS_CST.Active := True;
ComboEdit1.Text := '500';
if DM.SDS_CST.Locate('CODIGO_CST', ComboEdit1.Text,[])=True then
 begin
   SUIEdit3.Text := DM.SDS_CSTDESCRICAO_CST.Text;
 end;
end else

IF DM.SDS_EmpresaREGIME.Text = 'P' then
begin
CST := 'A';
DM.SDS_CST.Active := False;
DM.SDS_CST.DataSet.CommandText:='SELECT * FROM CST WHERE CST_CSOSN ='+QuotedStr(CST)+ 'ORDER BY CODIGO_CST ASC';
DM.SDS_CST.Active := True;
ComboEdit1.Text := '090';
if DM.SDS_CST.Locate('CODIGO_CST', ComboEdit1.Text,[])=True then
 begin
   SUIEdit3.Text := DM.SDS_CSTDESCRICAO_CST.Text;
 end;
end else

IF DM.SDS_EmpresaREGIME.Text = 'R' then
begin
CST := 'A';
DM.SDS_CST.Active := False;
DM.SDS_CST.DataSet.CommandText:='SELECT * FROM CST WHERE CST_CSOSN ='+QuotedStr(CST)+ 'ORDER BY CODIGO_CST ASC';
DM.SDS_CST.Active := True;
ComboEdit1.Text := '090';
if DM.SDS_CST.Locate('CODIGO_CST', ComboEdit1.Text,[])=True then
 begin
   SUIEdit3.Text := DM.SDS_CSTDESCRICAO_CST.Text;
 end;
end;}

dm.Sds_Transportador.Active := False;
dm.Sds_Transportador.Active := True;

{NOTA := EDIT1.TEXT;
DM.SDS_NFE.Filtered := False;
DM.SDS_NFE.Filter:='NR_NOTA ='+QuotedStr (NOTA);
DM.SDS_NFE.Filtered := True;}

SDS_NFE1.Active := False;
SDS_NFE1.Active := True;

Edit6.text := DM.SDS_CONFIGURACOESMSG_CUPOMFISCAL.Text;

RxDBComboEdit2.SetFocus;
end;

procedure TFormGefaNFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormGefaNFe := nil;
end;

procedure TFormGefaNFe.RxDBComboEdit2Exit(Sender: TObject);
begin
if RxDBComboEdit2.Text > '' then
begin
if DM.SDS_CFOP.Locate('CODIGO_CFOP', RxDBComboEdit2.Text,[])=True then
 begin
   SUIEdit2.Text := DM.SDS_CFOPDESCRICAO.Text;
   RxDBComboEdit1.SetFocus;
 end else
 if not DM.SDS_CFOP.Locate('CODIGO_CFOP', RxDBComboEdit2.Text,[])=True then
 begin
   ShowMessage('Codigo CFOP não localizado');
   RxDBComboEdit2.SetFocus;
 end;
 if RxDBComboEdit2.Text = '5929' then
 begin
  CheckBox1.Enabled := True;
  CheckBox1.Checked := True;
  CheckBox1Click(sender);
  edit8.SetFocus;
 end;

 if (RxDBComboEdit2.Text > '5000') and (RxDBComboEdit2.Text < '6000') then
 begin
  CheckBox3.Enabled := True;
  CheckBox3.Checked := True;
  CheckBox4.Enabled := False;
  CheckBox4.Checked := False;
 end;
 if (RxDBComboEdit2.Text > '6000') and (RxDBComboEdit2.Text < '8000') then
 begin
  CheckBox4.Enabled := True;
  CheckBox4.Checked := True;
  CheckBox3.Enabled := False;
  CheckBox3.Checked := False;
 end;
 end;
end;

procedure TFormGefaNFe.ComboEdit1Exit(Sender: TObject);
begin
//suiEdit3.Text := dm.SDS_CSTDESCRICAO_CST.text;
end;

procedure TFormGefaNFe.RxDBComboEdit1Exit(Sender: TObject);
begin

if RxDBComboEdit1.Text > '' then
begin
 if DM.Sds_Transportador.Locate('CD_TRANSPORTADOR', RxDBComboEdit1.Text,[])=True then
 begin
 suiEdit1.text := dm.Sds_TransportadorNOME_TRANSP.text;
 Edit5.SetFocus;
 end else
 if not DM.Sds_Transportador.Locate('CD_TRANSPORTADOR', RxDBComboEdit1.Text,[])=True then
 begin
   ShowMessage('Transportador não localizado');
   RxDBComboEdit1.SetFocus;
 end;
end;
end;

procedure TFormGefaNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key=VK_F3) then
      begin
      IF  Inserir.Enabled = TRUE THEN
      BEGIN
      InserirClick(Sender);
      end;
      end;

      if (Key=VK_F10) then
      begin
      IF  confirmar.Enabled = TRUE THEN
      BEGIN
      confirmarClick(Sender);
      end;
      end;

      if (Key=VK_F5) then
      begin
      IF  btncancelar.Enabled = TRUE THEN
      BEGIN
      btnCancelarClick(Sender);
      end;
      end;
      end;
procedure TFormGefaNFe.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

if not (ActiveControl is TCustomGrid) and NOT (ActiveControl is TRxDBComboEdit)then
    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;



procedure TFormGefaNFe.RxDBComboEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;

procedure TFormGefaNFe.ComboEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;

procedure TFormGefaNFe.RxDBComboEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if not(key in ['0'..'9', #8, #32]) then
          key := #0;
end;




procedure TFormGefaNFe.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked = false then
begin
  edit7.enabled      := false;
  suiButton7.Enabled := FALSE;
  //CheckBox1.Checked  := True;
end else
if CheckBox2.Checked = True then
begin
  edit7.enabled      := True;
  suiButton7.Enabled := True;
 // CheckBox2.Checked  := false;
end;
end;

procedure TFormGefaNFe.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = false then
begin
  edit8.enabled := false;
  edit9.enabled := false;
end else
if CheckBox1.Checked = True then
begin
  edit8.enabled := True;
  edit9.enabled := True;
end;
end;

procedure TFormGefaNFe.suiButton7Click(Sender: TObject);
var
  NFeRTXT: TNFeRTXT;
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := DM.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    DM.ACBrNFe1.NotasFiscais.Clear;
    //tenta TXT
    DM.ACBrNFe1.NotasFiscais.Add;
    NFeRTXT := TNFeRTXT.Create(DM.ACBrNFe1.NotasFiscais.Items[0].NFe);
    NFeRTXT.CarregarArquivo(OpenDialog1.FileName);
    if NFeRTXT.LerTxt then
       NFeRTXT.Free
    else
    begin
       NFeRTXT.Free;
       //tenta XML
       DM.ACBrNFe1.NotasFiscais.Clear;
       try
          DM.ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
       except
          ShowMessage('Arquivo NFe Inválido');
          exit;
       end;
    end;

    //trvwNFe.Items.Clear;

    for n:=0 to DM.ACBrNFe1.NotasFiscais.Count-1 do
    begin
    with DM.ACBrNFe1.NotasFiscais.Items[n].NFe do
     begin
      // trvwNFe.Items.AddChild(Node,'chNFe= '     +procNFe.chNFe);

      edit7.Text := procNFe.chNFe;
     end;
    end;
end;
end;

procedure TFormGefaNFe.ComboBox4Change(Sender: TObject);
begin
 IF ComboBox4.ItemIndex = 0 then
 begin
  CheckBox2.Enabled := False;
 // CheckBox1.Enabled := True;
 end else

 IF ComboBox4.ItemIndex = 1 then
 begin
 CheckBox2.Enabled := true;
 //CheckBox1.Enabled := true;
 end else
 IF ComboBox4.ItemIndex = 2 then
 begin
 CheckBox2.Enabled := true;
 //CheckBox1.Enabled := true;

 end;

end;

procedure TFormGefaNFe.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
{IF KEY = #13 then
BEGIN
if length(trim(Edit9.Text)) > 3 then
ShowMessage('Nº do ecf nao pode ter mais que 3 casas');
Edit9.SetFocus;}
end;


procedure TFormGefaNFe.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     { Para não deixar apagar o registro }
   if  Key = VK_DELETE then
       Key:= VK_NONAME;
       Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);

if Key = vk_down then
begin
 if DBGrid1.SelectedField = DM.sds_nfe_itensCOD_NCM then
begin
  if Length(DM.sds_nfe_itensCOD_NCM.Text) < 8 then
  begin
    MessageDlg( 'Quantidade de caracteres no NCM deve ser 08... Favor Corrigir....',mtInformation,[mbOK],0);
   DBGRID1.COLUMNS.Grid.Fields[5].FocusControl;
  end;
end;
end;

if key = vk_return then
begin
 if DBGrid1.SelectedField = DM.sds_nfe_itensCOD_NCM then
begin
  if Length(DM.sds_nfe_itensCOD_NCM.Text) < 8 then
  begin
    MessageDlg( 'Quantidade de caracteres no NCM deve ser 08... Favor Corrigir....',mtInformation,[mbOK],0);
   DBGRID1.COLUMNS.Grid.Fields[5].FocusControl;
  end;
  end;
end;
end;

procedure TFormGefaNFe.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{ Para não deixar apagar o registro }
   if  Key = VK_DELETE then
       Key:= VK_NONAME;
     Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);
end;

procedure TFormGefaNFe.DBGrid1ColExit(Sender: TObject);
begin
if DBGrid1.SelectedField = DM.sds_nfe_itensCOD_NCM then
begin
  if Length(DM.sds_nfe_itensCOD_NCM.Text) < 8 then
  begin
    MessageDlg( 'Quantidade de caracteres no NCM deve ser 08... Favor Corrigir....',mtInformation,[mbOK],0);
   DBGRID1.COLUMNS.Grid.Fields[5].FocusControl;
  end;
  end;

end;

procedure TFormGefaNFe.CheckBox3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
CheckBox4.Checked := False;
end;

procedure TFormGefaNFe.CheckBox4MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
CheckBox3.Checked := False;
end;

end.

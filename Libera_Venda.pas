unit Libera_Venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls, StdCtrls, SUIEdit, ExtCtrls, DB, RXCtrls, 
  Grids, XDBGrids, Mylabel, DBClient, SimpleDS;

type
  TFormLiberaVenda = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Image1: TImage;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    myLabel3d1: TmyLabel3d;
    Edit1: TsuiEdit;
    Edit11: TDBLookupComboBox;
    Confirma: TBitBtn;
    XDBGrid1: TXDBGrid;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    Timer1: TTimer;
    procedure confirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
    fecha: Boolean;
  end;

var
  FormLiberaVenda: TFormLiberaVenda;
  senhaatual, user : string ;

implementation

uses ModulodeDados, Z_CriptDecript, Z_RotinasGerais,
  ModulodeDadosConsultas3, ModulodeDadosConsultas, VendasParcelamento,
  Vendas;

{$R *.dfm}

Function GetStateK (Key: integer): boolean;
 begin
 Result := Odd (GetKeyState (Key));
 end;

procedure TFormLiberaVenda.confirmaClick(Sender: TObject);
begin
SenhaAtual:= Wcriptografar(Edit1.Text,5);
USER:=(edit11.Text);

 if not DM.SDS_Usuarios.Locate('Usuario;senha',VarArrayOf([user,SenhaAtual]),[locaseInsensitive])then
 begin
  ShowMessage('Usuário ou senha não Confere, Tente Novamente....');
  edit1.setfocus;
 end else

 if DM.SDS_UsuariosAUTORIZA.Text = '' then
 begin
  ShowMessage('Usuário não Está autorizado a fornecer autoriazação para Compras a Prazo...');
  edit1.setfocus;
 end else

 if DM.SDS_Usuarios.locate('Usuario;Senha',VarArrayOf([USER,SenhaAtual]),[locaseInsensitive])then
 if DM.SDS_UsuariosAUTORIZA.Text = 'S' then
 begin
        fecha := True;
        libera_cliente := True;
        DMC.sds_libera.Edit;
        DMC.sds_liberaAUTO_LIBERA.Text := 'S';
        DMC.sds_libera.Post;
        DMC.sds_libera.ApplyUpdates(0);
   close;
   end;
 end;
 
procedure TFormLiberaVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
{If Not fecha Then
 Action := caNone Else}
 Action := caFree;
formliberaVenda := nil;
end;

procedure TFormLiberaVenda.Edit1Exit(Sender: TObject);
begin
Confirma.SetFocus;
Confirma.Default := True;
end;

procedure TFormLiberaVenda.BitBtn1Click(Sender: TObject);
begin
    while not DMC.sds_libera.EOF do
    begin
    DMC.sds_libera.Delete;
    end;
DMC.sds_libera.Insert;
DMC.sds_libera.Edit;
DMC.sds_liberaCOD_CLIENTE.text := dmc.CDS_LIMITECODIGO.Text;
DMC.sds_liberaCOD_VENDA.text   := formVendas.N_venda.Text;
DMC.sds_liberaVALOR_SOLICITADO.Text := FORMVENDAS.Sds_pedidosVALOR_TOTAL.TEXT;
DMC.sds_liberaSolicita.text    := 'S';
DMC.sds_libera.Post;
DMC.sds_libera.ApplyUpdates(0);
end;

procedure TFormLiberaVenda.FormShow(Sender: TObject);
begin
       DMC.sds_libera.Active := False;
       DMC.sds_libera.Active := True;

      { DMC.SQLD_LIMITE.Active := False;
       DMC.CDS_LIMITE.Active := False;
       DMC.SQLD_LIMITE.Params[0].AsString := DMC.sds_liberaCOD_CLIENTE.Text;
       DMC.SQLD_LIMITE.Active := True;
       DMC.CDS_LIMITE.Active := True;   }
       if (tag = 0) then
       begin
        DMC.sds_libera.Insert;
        DMC.sds_libera.Edit;
        DMC.sds_liberaCOD_CLIENTE.text := dmc.CDS_LIMITECODIGO.Text;
        DMC.sds_liberaCOD_VENDA.Text := FORMVENDAS.SDS_PEDIDOSCODIGO.TEXT;
        DMC.sds_liberaVALOR_SOLICITADO.Text := FORMVENDAS.Sds_pedidosVALOR_TOTAL.TEXT;
        DMC.sds_liberaSolicita.text := 'N';
        DMC.sds_liberaAUTO_LIBERA.Text := 'N';
        DMC.sds_libera.Post;
        DMC.sds_libera.ApplyUpdates(0);

       if FormParcelamento.limite < 0 then
       begin
       Memo1.Lines.Add('!!! LIMITE DE CREDITO EXCEDIDO EM R$: ' + FormatFloat('##,##0.00',FormParcelamento.limite) + ' !!! ')
       end;

       if DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat > 0 then
       begin
       Memo1.Lines.Add('!!! DÉBITOS VENCIDOS NO VALOR DE R$: ' + FormatFloat('##,##0.00',DMC.CDS_LIMITEV_CRED_VENCIDO.AsCurrency) + ' !!! ')
       end;

       if DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat > 0 then
       begin
       Memo1.Lines.Add('!!! CHEQUES VENCIDOS NÃO COMPENSADOS NO VALOR DE R$: ' + FormatFloat('##,##0.00',DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsCurrency) + ' !!! ')
       end;
       end;

    {   if (tag = 1) then
       begin
        DMC.sds_libera.Insert;
        DMC.sds_libera.Edit;
        DMC.sds_liberaCOD_CLIENTE.text := dmc.CDS_LIMITECODIGO.Text;
        DMC.sds_liberaCOD_VENDA.Text := FormCupomFiscal.CLIENTDATASET1CODIGO.TEXT;
        DMC.sds_liberaSolicita.text := 'N';
        DMC.sds_liberaAUTO_LIBERA.Text := 'N';
        DMC.sds_libera.Post;
        DMC.sds_libera.ApplyUpdates(0);
        
        if FormPedidoParcela.limite < 0 then
       begin
       Memo1.Lines.Add('!!! LIMITE DE CREDITO EXCEDIDO EM R$: ' + FormatFloat('##,##0.00',FormPedidoParcela.limite) + ' !!! ')
       end;

       if DMC.CDS_LIMITEV_CRED_VENCIDO.AsFloat > 0 then
       begin
       Memo1.Lines.Add('!!! DÉBITOS VENCIDOS NO VALOR DE R$: ' + FormatFloat('##,##0.00',DMC.CDS_LIMITEV_CRED_VENCIDO.AsCurrency) + ' !!! ')
       end;

       if DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsFloat > 0 then
       begin
       Memo1.Lines.Add('!!! CHEQUES VENCIDOS NÃO COMPENSADOS NO VALOR DE R$: ' + FormatFloat('##,##0.00',DMC.CDS_LIMITEV_CHEQUE_COMPENSAR.AsCurrency) + ' !!! ')
       end;
       end;

       Edit11.SetFocus; }

end;


procedure TFormLiberaVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (Key = VK_F4) then Key := 0;

if (Key=VK_F12) then
      begin
      BitBtn1Click(Sender);
      end;

if (Key=VK_F11) then
      begin
        DMC.sds_libera.Refresh;
      if DMC.sds_liberaLIBERA.Text = 'S' then
      begin
        libera_cliente := True;
        close;                 
      end;
      end;

{ If GetStateK (VK_LMENU) And (Key = VK_F4) Then
 fecha := False }

 
end;

procedure TFormLiberaVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
//if key=#27 then close;

    If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;

end;

procedure TFormLiberaVenda.BitBtn2Click(Sender: TObject);
begin  
        fecha := True;
        libera_cliente := False;

        DMC.sds_libera.Edit;
        DMC.sds_liberaSolicita.text := 'N';
        DMC.sds_liberaAUTO_LIBERA.Text := 'N';
        DMC.sds_libera.Post;
        DMC.sds_libera.ApplyUpdates(0);

        CLOSE;
end;

procedure TFormLiberaVenda.Timer1Timer(Sender: TObject);
begin

      DMC.sds_libera.Refresh;
      DMC.sds_libera.Filtered := False;
      DMC.sds_libera.Filter := 'COD_VENDA =' + FORMVENDAS.SDS_PEDIDOSCODIGO.TEXT;
      DMC.sds_libera.Filtered := TRUE;

      if DMC.sds_liberaLIBERA.Text = 'S' then
      begin
        fecha := True;
        libera_cliente := True;
        DMC.sds_libera.Edit;
        DMC.sds_liberaAUTO_LIBERA.Text := 'S';
        DMC.sds_libera.Post;
        DMC.sds_libera.ApplyUpdates(0);
        close;
      end;
end;

end.

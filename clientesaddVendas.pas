unit clientesaddVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,  SUIButton,
  SUIDBCtrls;

type
   TFormClientesAddVendas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label13: TLabel;
    suiDBCheckBox1: TsuiDBCheckBox;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBRadioGroup1Exit(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  FormClientesAddVendas: TFormClientesAddVendas;

implementation

uses Z_RotinasGerais,Formata_CPF_CNPJ, Vendas, Principal, ModulodeDados;

{$R *.dfm}

procedure TFormClientesAddVendas.DBEdit1Enter(Sender: TObject);
begin
corentrada(Sender);
formvendas.Sds_Pedidos.Edit;
end;

procedure TFormClientesAddVendas.DBEdit1Exit(Sender: TObject);
begin
CorSaida(Sender);
dbedit2.Clear;
end;

procedure TFormClientesAddVendas.DBEdit2Enter(Sender: TObject);
begin
CorEntrada(sender);
end;

procedure TFormClientesAddVendas.DBEdit2Exit(Sender: TObject);
begin
CorSaida(sender);
dbedit3.Clear;
end;

procedure TFormClientesAddVendas.DBEdit6Exit(Sender: TObject);
begin
CorSaida(sender);
dbedit7.Clear;
end;

procedure TFormClientesAddVendas.DBEdit7Exit(Sender: TObject);
begin
CorSaida(sender);
dbedit3.Clear;
end;

procedure TFormClientesAddVendas.DBEdit3Enter(Sender: TObject);
begin
formvendas.Sds_Pedidos.Edit;
if formvendas.Sds_PedidosTIPO.Text = 'F' then
begin
formvendas.Sds_PedidosCPF_CNPJ.EditMask:= '999.999.999-99;1;_';
end else
if formvendas.Sds_PedidosTIPO.Text = 'J' then
begin
formvendas.Sds_PedidosCPF_CNPJ.EditMask:= '99.999.999/9999-99;1;_';
end;
end;

procedure TFormClientesAddVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:= caFree;
FormClientesAddVendas := nil;
end;

procedure TFormClientesAddVendas.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormClientesAddVendas.BitBtn1Click(Sender: TObject);
begin
formvendas.Sds_Pedidos.Edit;
formVendas.Desc_cliente.Text := DBEdit1.Text;

formvendas.Sds_Pedidos.Post;
BitBtn2Click(Sender);
end;

procedure TFormClientesAddVendas.DBEdit3Exit(Sender: TObject);
begin
  CorSaida(sender);
  dbedit4.Clear;
end;

procedure TFormClientesAddVendas.DBEdit5Exit(Sender: TObject);
begin
CorSaida(sender);
end;

procedure TFormClientesAddVendas.DBRadioGroup1Exit(Sender: TObject);
begin
if formvendas.Sds_PedidosTIPO.Text = 'F' then
begin
formvendas.Sds_PedidosCPF_CNPJ.EditMask:= '999.999.999-99;1;_';
end else
if formvendas.Sds_Pedidostipo.Text = 'J' then
begin
formvendas.Sds_PedidosCPF_CNPJ.EditMask:= '99.999.999/9999-99;1;_';
end;
end;

procedure TFormClientesAddVendas.DBRadioGroup1Click(Sender: TObject);
begin
formvendas.Sds_Pedidos.Edit;
end;

procedure TFormClientesAddVendas.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

end.

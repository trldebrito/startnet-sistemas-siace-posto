unit lancNotasFiscais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,  RXCtrls, DBCtrls, StdCtrls, Mask, Buttons,
  ToolEdit, RXDBCtrl;

type
  TFormLancNotasFiscais = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    RxLabel1: TRxLabel;
    DBEdit1: TDBEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    RxLabel4: TRxLabel;
    DBEdit4: TDBEdit;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    DBEdit5: TDBEdit;
    RxLabel7: TRxLabel;
    Label1: TLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    DBEdit6: TDBEdit;
    RxLabel10: TRxLabel;
    RxLabel11: TRxLabel;
    DBEdit7: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    RxLabel12: TRxLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit11: TDBEdit;
    RxLabel13: TRxLabel;
    procedure FormShow(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancNotasFiscais: TFormLancNotasFiscais;

implementation

uses Principal, ModulodeDados, Vendas;

{$R *.dfm}

procedure TFormLancNotasFiscais.FormShow(Sender: TObject);
begin
// SetWindowPos(Handle,HWND_TOPMOST,0,0,0,0,SWP_NOMOVE+swp_nosize);
dm.sds_partidas.Active := False;
dm.sds_partidas.Active := true;
formvendas.Sds_Pedidos.Edit;
formvendas.Sds_PedidosQUANT_VENDIDA.text := formvendas.Sds_Pedidos_itensQUANTIDADE.Text;
end;

procedure TFormLancNotasFiscais.DBEdit6Enter(Sender: TObject);
begin
formvendas.Sds_Pedidos.Edit;
end;

procedure TFormLancNotasFiscais.DBEdit7Enter(Sender: TObject);
begin
formvendas.Sds_Pedidos.Edit;
end;

procedure TFormLancNotasFiscais.BitBtn1Click(Sender: TObject);
var
  valor, VALOR1: Double;
begin
valor := StrToFloat(DBEdit10.Text);
VALOR1 := StrToFloat(DBEdit1.Text);

if valor > valor1 then
begin
ShowMessage('Saldo da Partida Insufiente para o lançamento');
DBEdit10.SetFocus;
end else

DM.Sds_partidas.Edit;
dm.Sds_partidasQUANT_VENDA.AsFloat := (dm.Sds_partidasQUANT_VENDA.AsFloat + valor);
formvendas.Sds_PedidosSALDO_VENDIDO.AsFloat := (valor1 - VALOR);
DM.Sds_partidas.Post;
DM.Sds_partidas.ApplyUpdates(0);

formvendas.Sds_Pedidos.Post;
formvendas.Sds_Pedidos.ApplyUpdates(0);
BitBtn1.Enabled := False;
end;

procedure TFormLancNotasFiscais.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormLancNotasFiscais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
FormLancNotasFiscais := nil;
end;

procedure TFormLancNotasFiscais.DBLookupComboBox1Enter(Sender: TObject);
begin
formvendas.Sds_Pedidos.Edit;
end;

procedure TFormLancNotasFiscais.FormKeyPress(Sender: TObject;
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

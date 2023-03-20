unit ClientesAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons;

type
  TFormClientesAdd = class(TForm)
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesAdd: TFormClientesAdd;

implementation

uses RegPedido, Formata_CPF_CNPJ;

{$R *.dfm}

procedure TFormClientesAdd.BitBtn1Click(Sender: TObject);
begin
FormCupomFiscal.ClientDataSet2.Edit;
FormCupomFiscal.E_Nome.Text := DBEdit1.Text;
FormCupomFiscal.ClientDataSet2.Post;

FormCupomFiscal.Edit1.Clear;
//FormCupomFiscal.E_Desconto.SetFocus;
Close;
end;

procedure TFormClientesAdd.DBEdit1Enter(Sender: TObject);
begin
FormCupomFiscal.ClientDataSet2.Edit;
end;

procedure TFormClientesAdd.DBEdit2Enter(Sender: TObject);
begin
FormCupomFiscal.ClientDataSet2.Edit
end;

procedure TFormClientesAdd.DBEdit3Enter(Sender: TObject);
begin
FormCupomFiscal.ClientDataSet2.Edit;
if RadioButton1.Checked then
begin
FormCupomFiscal.ClientDataSet2CPF_CNPJ.EditMask:= '999.999.999-99;1;_';
end else
if RadioButton2.Checked then
begin
FormCupomFiscal.ClientDataSet2CPF_CNPJ.EditMask:= '99.999.999/9999-99;1;_';
end;
end;

procedure TFormClientesAdd.DBEdit4Enter(Sender: TObject);
begin
FormCupomFiscal.ClientDataSet2.Edit
end;

procedure TFormClientesAdd.DBEdit5Enter(Sender: TObject);
begin
FormCupomFiscal.ClientDataSet2.Edit
end;

procedure TFormClientesAdd.BitBtn2Click(Sender: TObject);
begin
close;
FormCupomFiscal.Edit1.Clear;
//FormCupomFiscal.E_Desconto.SetFocus;
end;

procedure TFormClientesAdd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:= caFree;
FormClientesAdd := nil;
FormCupomFiscal.Edit1.Clear;
//FormCupomFiscal.E_Desconto.SetFocus;
end;

procedure TFormClientesAdd.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
   If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;
end;

procedure TFormClientesAdd.DBEdit1Exit(Sender: TObject);
begin
FormCupomFiscal.ClientDataSet2ENDERECO.Clear;
end;

procedure TFormClientesAdd.DBEdit2Exit(Sender: TObject);
begin
FormCupomFiscal.ClientDataSet2BAIRRO.Clear;
end;

procedure TFormClientesAdd.DBEdit6Exit(Sender: TObject);
begin
FormCupomFiscal.ClientDataSet2CIDADE.Clear;
end;

procedure TFormClientesAdd.DBEdit7Exit(Sender: TObject);
begin
FormCupomFiscal.ClientDataSet2CPF_CNPJ.Clear;
end;

procedure TFormClientesAdd.FormShow(Sender: TObject);
begin
//FormCupomFiscal.ClientDataSet2.Insert;
end;

end.

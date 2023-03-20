unit UAlteraParcelaCTR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Mask,
  AlignEdit, ExtCtrls, ToolEdit, CurrEdit;

type
  TFrmAlteraParcelaADM = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EdtCod: TAlignEdit;
    EdtDataEmi: TMaskEdit;
    EdtDataVen: TMaskEdit;
    EdtValor: TCurrencyEdit;
    Panel2: TPanel;
    BtnOK: TBitBtn;
    BtnSair: TBitBtn;
    StatusBar1: TStatusBar;
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOKClick(Sender: TObject);
    procedure EdtDataEmiExit(Sender: TObject);
    procedure EdtDataVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAlteraParcelaADM: TFrmAlteraParcelaADM;

implementation

uses ModulodeDados, UDadosADM, UDuplicataADM;

{$R *.dfm}

procedure TFrmAlteraParcelaADM.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmAlteraParcelaADM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:= caFree;
end;

procedure TFrmAlteraParcelaADM.BtnOKClick(Sender: TObject);
begin
   if edtvalor.Text = '0' then
      begin
         showmessage('Digite o valor');
         edtvalor.SetFocus;
         exit;
      end;

   if EdtDataEmi.Text = '  /  /    ' then
      begin
         showmessage('Digite a data de emissão');
         EdtDataEmi.SetFocus;
         exit;
      end;

   if EdtDataVen.Text = '  /  /    ' then
      begin
         showmessage('Digite a data de vencimento');
         EdtDataVen.SetFocus;
         exit;
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
            sql.Text:= 'UPDATE CONTAS_RECEBER_ADM_CARTAO ' +
                       'SET EMISSAO = :EMISSAO, VENCIMENTO = :VENCIMENTO, ' +
                       'VALOR = :VALOR ' +
                       'WHERE CODIGO = :CODIGO';

            Parambyname('emissao').AsDate      := strtodate(edtdataemi.Text);
            Parambyname('vencimento').AsDate   := strtodate(EdtDataVen.Text);
            Parambyname('valor').AsCurrency    := strtocurr(edtvalor.Text);
            Parambyname('codigo').AsInteger    := strtoint(edtcod.Text);
            ExecSQL;
         end;
       dm.IBTransaction.Commit;
     except
       dm.IBTransaction.Rollback;
       showmessage('erro ao alterar a parcela');
     end;
   finally
     dm.QConsulta.Close;
   end;

   if FrmAlteraParcelaADM.Tag = 0 then
      FrmDadosAdm.BuscaParcelas
   else
      FrmDuplicataADM.BtnConfirma.Click;

   close;
end;

procedure TFrmAlteraParcelaADM.EdtDataEmiExit(Sender: TObject);
begin
   try
     strtodate(edtdataemi.Text);
   except
     showmessage('Data Inválida');
     edtdataemi.SetFocus;
   end;
end;

procedure TFrmAlteraParcelaADM.EdtDataVenExit(Sender: TObject);
begin
   try
     strtodate(EdtDataVen.Text);
   except
     showmessage('Data Inválida');
     EdtDataVen.SetFocus;
   end;
end;

procedure TFrmAlteraParcelaADM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
      btnsair.Click;
end;

procedure TFrmAlteraParcelaADM.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         SelectNext(ActiveControl, True, True);
      end;
end;

end.

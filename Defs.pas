unit defs;

interface

uses Forms, Classes, SysUtils, QuickRpt,Buttons, IBDataBase,DBCtrls, Dialogs,
     Graphics, Controls,StdCtrls, Mask, ExtCtrls, Grids, DBGrids, ComCtrls;
type
 ReportEx = class(Exception);

 TReportProc = record
   RIndex: Integer;
   RName: String;
   RProc: procedure;
   DBNavigator1:TDBNavigator;
   BitBtn_Inserir:TBitBtn;
   BitBtn_Alterar:TBitBtn;
   BitBtn_Excluir:TBitBtn;
   BitBtn_Gravar:TBitBtn;
   BitBtn_Ignorar:TBitBtn;
   Desabilita:procedure;
   Habilita:procedure;
   Atualiza:procedure;
 end;

PClientInfo = ^TClientInfo;
_ClientInfo = record
        NOMEF,
        CIDADE,
        ESTADO,
        CNPJ,
        IE,
        BAIRRO,
        ENDERECO,
        FAX,
        NOMER,
        SITE,
        EMAIL,
        TELEFONE: String;
end;
{$EXTERNALSYM _ClientInfo}
 TClientInfo  = _ClientInfo;
{$EXTERNALSYM TClientInfo}

POperador = ^TOperador;
_Operador = record
        CODIGO: String[1];
        ALIAS  : String[10];
        PERMISS: String[3];
end;
{$EXTERNALSYM _Operador}
 TOperador = _Operador;
 Operador= _Operador;
{$EXTERNALSYM Operador}

PTerminal = ^TTerminal;
_Terminal = record
        CODIGO : String[1];
        NOME   : String[10];
        PERMISS: String[3];
end;
{$EXTERNALSYM _Terminal}
 TTerminal = _Terminal;
 Terminal  = _Terminal;
{$EXTERNALSYM Terminal}

PSystemInfo = ^TSystemInfo;
_SystemInfo = record
        Operador  : TOperador;
        Terminal  : TTerminal;
end;
{$EXTERNALSYM _SystemInfo}
 TSystemInfo  = _SystemInfo;
{$EXTERNALSYM _SystemInfo}

const
        acmiUndef = 0;
        acmiProdutos = 1;
        acmiClientes = 2;
        acmiEntregas = 3;
        acmiFornecedores = 4;
        acmiServicos = 5;
        acmiMovimento = 6;
        acmiVendedores= 7;
        acmiDespesas  = 8;
        acmiSistema   = 9;
        acmiExtra     = 10;

        __SYS_EMAIL   = 'startnet@cotrinet.com.br';
        __SYS_HOMEPAGE= 'www.startetInformatica.com.br';
        __SYS_VERSAO  = '1.0.0.2';
        __SYS_EMPRESA = 'StartNet Informática Ltda';
        __SYS_TELEFONE= '(66) 3555-1453';
        __SYS_SISTEMA = 'SIACE';
        __SYS_ENDERECO= 'Av. 20 de dezembro nº 47 - centro Cotriguaçu-MT';

        __strMasterKey  = 'acz';
       {$EXTERNALSYM __strMasterKey}
        __strMoedaSing  = 'Real';
       {$EXTERNALSYM __strMoedaSing}
        __strMoedaPlur  = 'Reais';
       {$EXTERNALSYM __strMoedaPlur}
        __strSMoeda     = 'R$';
       {$EXTERNALSYM __strsMoeda}

        titleConclude = 'Concluído';
        titleDelete   = 'Excluindo...';
        titleError    = 'Erro!';
        titleConfirm  = 'Confirmação...';
        titleAdmMsg   = 'Mensagem do Administrador...';
        titleConfig   = 'Configurações'  ;

 {Ponteiros para valores Booleanos}
      V = TRUE;
      F = FALSE;

  NullStr = '';
  NullChr = #0;
  NewLine = #10#13;
  Space = #32;


  

  vk_TAB = 9;
 {$EXTERNALSYM vk_Tab}
  YES = 6;
 {$EXTERNALSYM Yes}
  MB_WARNING  = $00000030;
 {$EXTERNALSYM MB_WARNING}
  MB_QUESTION = $00000020;
 {$EXTERNALSYM MB_QUESTION}
  MB_INFO     = $00000040;
 {$EXTERNALSYM MB_INFO}
  MB_SN       = $00000004;
 {$EXTERNALSYM MB_SN}
  MB_ERROR    = $00000010;
 {$EXTERNALSYM MB_ERROR}

 procedure PrinterSetup;
 procedure PreviewDlg(Aowner: TComponent; Qr: TQuickRep);
 procedure LoadForm(Form: TComponentClass; Modal: Integer = 1);
 function  TAM(Str: String): Integer;

var
 PrintDlg: TPrinterSetupDialog;

implementation

procedure PrinterSetup;
begin
 PrintDlg := TPrinterSetupDialog.Create(PrintDlg);
 PrintDlg.Execute;
 PrintDlg.Free;
end;

procedure LoadForm(FORM: TComponentClass; Modal: Integer = 1);
var
 F: TForm;
begin
 Application.CreateForm(FORM, F);
 F.Position := poScreenCenter;
 if Modal = 1 then
 begin
  F.ShowModal;
  FreeAndNil(F);
 end
 else
  F.Show;
end;

procedure PreviewDlg(Aowner: TComponent; Qr: TQuickRep);
{const
 vis = ' Visualização';}
begin
{ frm_preview := Tfrm_preview.Create(Aowner);
 Qr.OnPreview := frm_preview.qrpPreview;
 Qr.Preview;
 frm_preview.qprev.qrprinter := Qr.QrPrinter;
 frm_preview.Caption := (Aowner as TForm).Caption + vis;
 frm_preview.ShowModal;
 FreeAndNil(frm_preview);
}
end;

function TAM(Str: String): Integer;
begin
 result := Length(Trim(Str));
end;
procedure Desabilita;
begin

end;


end.


















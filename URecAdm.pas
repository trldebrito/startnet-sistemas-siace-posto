unit URecAdm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, AlignEdit,
  DB, IBCustomDataSet, IBQuery, Mask, IBDatabase,
   ToolEdit, CurrEdit;

type
  TFrmRECADM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Label21: TLabel;
    EdtCodAdm: TAlignEdit;
    BtnConsAdm: TSpeedButton;
    EdtNomeAdm: TEdit;
    Label22: TLabel;
    CheckEmp: TCheckBox;
    BtnOk: TButton;
    BtnSair: TButton;
    Panel3: TPanel;
    BtnSel: TButton;
    BtnRec: TButton;
    PC: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QRecAdm: TIBQuery;
    DSQRecAdm: TDataSource;
    Panel4: TPanel;
    Label4: TLabel;
    EdtTotalBruto: TCurrencyEdit;
    Label7: TLabel;
    EdtTotalLiq: TCurrencyEdit;
    Label6: TLabel;
    EdtValorTaxa: TCurrencyEdit;
    Label1: TLabel;
    EdtDesc: TCurrencyEdit;
    Label2: TLabel;
    EdtAcres: TCurrencyEdit;
    IBTRRecAdm: TIBTransaction;
    QRecAdmCODIGO: TIntegerField;
    QRecAdmCODIGO_BANDEIRA: TIntegerField;
    QRecAdmDOCUMENTO: TIBStringField;
    QRecAdmEMISSAO: TDateField;
    QRecAdmVENCIMENTO: TDateField;
    QRecAdmDATA_PAGAMENTO: TDateField;
    QRecAdmCOD_CAI: TIntegerField;
    QRecAdmCOD_EMP: TIntegerField;
    QRecAdmCOD_VEN: TIntegerField;
    QRecAdmVALOR: TFloatField;
    QRecAdmVALOR_PAGO: TFloatField;
    QRecAdmACRESCIMO: TFloatField;
    QRecAdmDESCONTO: TFloatField;
    QRecAdmTAXA: TFloatField;
    QRecAdmCODIGO_DUPLICATA: TIntegerField;
    QRecAdmCOD_CLI: TIntegerField;
    QRecAdmPARCELA: TIntegerField;
    QRecAdmLIQUIDO: TFloatField;
    QRecAdmNOME_RS: TIBStringField;
    QRecAdmDESCRICAO: TIBStringField;
    procedure BtnConsAdmClick(Sender: TObject);
    procedure EdtCodAdmEnter(Sender: TObject);
    procedure EdtCodAdmKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodAdmExit(Sender: TObject);
    procedure EdtCodAdmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOkClick(Sender: TObject);
    procedure PCChange(Sender: TObject);
    procedure BtnSelClick(Sender: TObject);
    procedure BtnRecClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRECADM: TFrmRECADM;

implementation
uses UConsAdmCartaoCredito, ModulodeDados, Ubibli1, UCtrAdmRec;
var  sSql : string;

{$R *.dfm}

procedure TFrmRECADM.BtnConsAdmClick(Sender: TObject);
begin
   Application.CreateForm(TFrmConsAdmCartaoCredito, FrmConsAdmCartaoCredito);
   FrmConsAdmCartaoCredito.Tag:= 4;
   FrmConsAdmCartaoCredito.ShowModal;
end;

procedure TFrmRECADM.EdtCodAdmEnter(Sender: TObject);
begin
   EdtCodAdm.SelectAll;
end;

procedure TFrmRECADM.EdtCodAdmKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in ['0'..'9', #13, #8]) then
      key := #0;
end;

procedure TFrmRECADM.EdtCodAdmExit(Sender: TObject);
begin
   if BtnSair.Focused then
     exit;
  CheckEmp.Checked := True;
  EdtNomeAdm.Text:= dm.RetornaStringTabela('descricao', 'administradora_cartao', 'codigo', strtoint(EdtCodAdm.Text));
  if trim(EdtNomeAdm.Text) = '' then
     begin
        showmessage('Bandeira não cadastrada');
        EdtCodAdm.SetFocus;
     end;
end;

procedure TFrmRECADM.EdtCodAdmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f2 then
     BtnConsAdm.Click;
end;

procedure TFrmRECADM.FormShow(Sender: TObject);
begin
   sSql:= QRecAdm.SQL.Text;
   EdtCodAdm.clear;
   EdtNomeAdm.Clear;
   pc.ActivePageIndex:= 0;
   EdtCodAdm.SetFocus;
end;

procedure TFrmRECADM.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmRECADM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if IBTRRecAdm.Active then
      IBTRRecAdm.Commit;
   QRecAdm.SQL.Clear;
   QRecAdm.SQL.Text:= sSql;
   QRecAdm.Close;
   Action:= caFree;
end;

procedure TFrmRECADM.BtnOkClick(Sender: TObject);
begin
   pc.ActivePageIndex:= 0;
   PCChange(pc);
end;

procedure TFrmRECADM.PCChange(Sender: TObject);
var cBruto, cTaxa, cAcres, cDesc : currency;
begin
   cBruto  := 0;
   cTaxa   := 0;
   cAcres  := 0;
   cDesc   := 0;

   if trim(EdtCodAdm.Text) = '' then
      begin
         showmessage('Digite o código da Administradora');
         EdtCodAdm.SetFocus;
         exit;
      end;

   if IBTRRecAdm.Active then
      IBTRRecAdm.Commit;
   IBTRRecAdm.StartTransaction;
   with QRecAdm do
      begin
         close;
         sql.Clear;
         sql.Text:= sSql;

         if pc.ActivePage = TabSheet1 then
            begin
               BtnSel.Enabled:= true;
               Btnrec.Enabled:= true;
               sql.add(' WHERE A.CODIGO = :CODADM AND R.DATA_PAGAMENTO IS NULL');
               if (not CheckEmp.Checked) then
                  begin
                     sql.Add(' AND R.COD_EMP = :CODEMP');
                     Parambyname('codemp').AsInteger:= iEmp;
                  end;
               sql.add(' ORDER BY R.VENCIMENTO, R.CODIGO');
            end
         else
            begin
               BtnSel.Enabled:= false;
               Btnrec.Enabled:= false;
               sql.add(' WHERE A.CODIGO = :CODADM AND R.DATA_PAGAMENTO IS NOT NULL');
               if (not CheckEmp.Checked) then
                  begin
                     sql.Add(' AND R.COD_EMP = :CODEMP');
                     Parambyname('codemp').AsInteger:= iEmp;
                  end;

               sql.add(' ORDER BY R.DATA_PAGAMENTO, R.CODIGO');
            end;
         Parambyname('codadm').AsInteger:= strtoint(EdtCodAdm.Text);
         open;
         First;
         while not eof do
            begin
               cBruto := cBruto   + QRecAdmVALOR.AsCurrency;
               cTaxa  := cTaxa    + ((QRecAdmVALOR.AsCurrency * QRecAdmTAXA.AsCurrency) / 100);
               cAcres := cAcres   + QRecAdmACRESCIMO.AsCurrency;
               cDesc  := cDesc    + QRecAdmDESCONTO.AsCurrency;
               next;
            end;
         EdtTotalBruto.Text := CurrToStr(cBruto);
         EdtValorTaxa.Text  := CurrToStr(cTaxa);
         EdtTotalLiq.Text   := CurrToStr(cBruto - cTaxa);
      end;
end;

procedure TFrmRECADM.BtnSelClick(Sender: TObject);
begin
   QRecAdm.First;
   while not QRecAdm.EOF do
       begin
          dbgrid1.SelectedRows.CurrentRowSelected := true;
          QRecAdm.Next;
       end;
   QRecAdm.First;
end;

procedure TFrmRECADM.BtnRecClick(Sender: TObject);
var ctOTAL : currency;
    iQuant : integer;
begin
   ctOTAL  := 0;
   iQuant  := 0;
   QRecAdm.First;
   while not QRecAdm.Eof do
      begin
         if DBGrid1.SelectedRows.CurrentRowSelected = true then
            begin
               ctOTAL := ctOTAL + QRecAdmLIQUIDO.AsCurrency;
               inc(iQuant);
            end;
         QRecAdm.Next;
      end;

   if iQuant = 0 then
      begin
         showmessage('Nenhuma parcela selecionada');
      end
   else
      begin
         Application.CreateForm(TFrmCtrAdmRec, FrmCtrAdmRec);
         FrmCtrAdmRec.EdtTotalBruto.Text:= currtostr(ctOTAL);
         FrmCtrAdmRec.EdtTotalLiq.Text  := currtostr(ctOTAL);
         FrmCtrAdmRec.EdtAcres.Text     := '0';
         FrmCtrAdmRec.EdtDesc.Text      := '0';
         frmCtrAdmRec.Edtdata.date      := date;
         FrmCtrAdmRec.showmodal;
      end;
end;

procedure TFrmRECADM.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
         Key := #0;
         SelectNext(ActiveControl, True, True);
      end;
end;

procedure TFrmRECADM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_escape then
      close;
end;

end.

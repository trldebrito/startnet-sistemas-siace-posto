unit ConsProdutosVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIImagePanel, ExtCtrls, RXCtrls,
  SUIButton, Grids, DBGrids, SUIDBCtrls, DB, DBTables, XDBGrids, DBCtrls,
  Mask, Buttons, RxLookup;

type
  TFormConsProdutosVendas = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    Edit1: TEdit;
    cbxpesquisa: TComboBox;
    RxLabel2: TRxLabel;
    XDBGrid1: TXDBGrid;
    Panel3: TPanel;
    RxLabel27: TRxLabel;
    RxLabel26: TRxLabel;
    RxLabel38: TRxLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    RxLabel3: TRxLabel;
    RxLabel28: TRxLabel;
    RxLabel5: TRxLabel;
    suiDBEdit11: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    RxLabel36: TRxLabel;
    RxLabel37: TRxLabel;
    DBMemo3: TDBMemo;
    RxLabel4: TRxLabel;
    DBMemo4: TDBMemo;
    RxLabel6: TRxLabel;
    DBEdit2: TDBEdit;
    RxLabel8: TRxLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    RxLabel7: TRxLabel;
    Edit2: TEdit;
    DBEdit8: TDBEdit;
    RxLabel10: TRxLabel;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    DBNavigator: TsuiDBNavigator;
    CheckBox1: TCheckBox;
    RxLabel12: TRxLabel;
    DBEdit9: TDBEdit;
    DBText2: TDBText;
    RxLabel11: TRxLabel;
    RxLabel9: TRxLabel;
    DBText1: TDBText;
    RxLabel19: TRxLabel;
    suiDBEdit15: TsuiDBEdit;
    suiDBEdit1: TsuiDBEdit;
    RxLabel13: TRxLabel;
    Label1: TLabel;
    DBImage1: TsuiDBImage;
    DBEdit1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure suiDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure XDBGrid1OrderChanged(Sender: TObject);
    procedure cbxpesquisaChange(Sender: TObject);
    procedure XDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TXColumn; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormConsProdutosVendas: TFormConsProdutosVendas;
  ATIVO : string;

implementation

uses ModulodeDados, Z_RotinasGerais, Principal, Vendas, ConsProdutos;


{$R *.dfm}

procedure TFormConsProdutosVendas.FormShow(Sender: TObject);
begin
cbxpesquisa.ItemIndex := DM.SDS_CONFIGURACOESPESQ_PADRAO.AsInteger;

 {//DM.SDS_SIMILARES.Active:= true;
 ATIVO := 'A';
 DM.SDS_PRODUTOS_c.Filtered := False;
 dm.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_c.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_c.RecordCount);
//XDBGrid1.RefreshDataSet; }

//Edit1.Clear;
Edit1.SetFocus;


if Edit1.Text > '' then
begin
BitBtn1Click(Sender);
end;

if DM.SDS_CONFIGURACOESUSA_FRACAO.Text = 'N' then
begin
XDBGRID1.Columns.Items[6].Visible := False;
end;

end;

procedure TFormConsProdutosVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=CaFree;
FormConsProdutos:=nil;
end;

procedure TFormConsProdutosVendas.Edit1Change(Sender: TObject);
begin
IF (Edit1.Text>='A') AND (Edit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EDIT1.Text>='0') AND (Edit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EDIT1.Text='' THEN
EDIT2.Text:=''
end;


procedure TFormConsProdutosVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsProdutosVendas.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsProdutosVendas.Edit1KeyPress(Sender: TObject; var Key: Char);
VAR
ACHOU:BOOLEAN;
cod :Integer;
begin
  ATIVO := 'A';
DM.SDS_SECCAO2.Active := False;
DM.SDS_SECCAO2.Active := True;

 if key=#13 then
 begin

     if CheckBox1.Checked = True then
     begin
     edit2.Clear;
       //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
     dm.SDS_PRODUTOS_c.Active := false;
     DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
     dm.SDS_PRODUTOS_c.Active := True;
     dm.SDS_PRODUTOS_C.Filtered := false;
     dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
     dm.SDS_PRODUTOS_C.Filtered := True;
     {dm.SDS_PRODUTOS.Filtered := false;
     dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
     dm.SDS_PRODUTOS.Filtered := True;}
     Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);

     If DM.SDS_PRODUTOS_C.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
      begin
          XDBGRID1.SetFocus;
      end;
     end else

     if cbxpesquisa.ItemIndex = 1 then           // por codigo de barras
      begin

         IF Edit1.Text = '' then
         begin
          // ShowMessage('É Necessario digitar algo para pesquisar');
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Edit1.SetFocus;
         end else

         if edit2.Text='LETRAS' THEN
         BEGIN
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         {dm.SDS_PRODUTOS.Filtered := false;
         dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
         dm.SDS_PRODUTOS.Filtered := True;}
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


         If DM.SDS_PRODUTOS_C.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
          begin
              XDBGRID1.SetFocus;
          end;
          end else

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
        dm.SDS_PRODUTOS_c.Active := false;
        DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
        dm.SDS_PRODUTOS_c.Active := True;
        ATIVO := 'A';
        DM.SDS_PRODUTOS_C.Filtered := False;
        DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
        dm.SDS_PRODUTOS_C.Filtered := True;

             If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
               SHOWMESSAGE('Produto Não Localizado');
               Edit1.Clear;
               Edit1.SetFocus;
              end;
        {ACHOU:=dm.Sds_produtos_c.Locate('CODIGO_BARRAS',EDIT1.Text,[]);

        IF ACHOU=FALSE THEN
        SHOWMESSAGE('Produto Não Localizado');
        Edit1.Clear;
        Edit1.SetFocus;
        //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        //ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

        IF ACHOU=TRUE THEN
        xDBGrid1.SetFocus;
        end;

      end else

    if cbxpesquisa.ItemIndex = 4 then      // por Codigo
     begin
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
        IF Edit1.Text = '' then
         begin
           ShowMessage('É Necessario digitar algo para pesquisar');
           Edit1.SetFocus;
         end else
         cod:=StrToInt(Edit1.Text);
         IF cod > 999999 then
         begin
           ShowMessage('Codigo invalido');
           Edit1.Clear;
           Edit1.SetFocus;
         end else

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where codigo like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

              If DM.SDS_PRODUTOS_C.locate('codigo', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('codigo', Edit1.Text,[])=True then
              begin
               SHOWMESSAGE('Refencia do Produto não Localizada...');
               Edit1.Clear;
               Edit1.SetFocus;
              end;
       end else


    if cbxpesquisa.ItemIndex = 3 then      // por referencia
     begin

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

              If DM.SDS_PRODUTOS_C.locate('REFERENCIA', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('REFERENCIA', Edit1.Text,[])=True then
              begin
             //  SHOWMESSAGE('Refencia do Produto não Localizada...');
              // Edit1.SetFocus;

        if edit2.Text='LETRAS' THEN
        BEGIN
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

        //IF ACHOU=FALSE THEN
        //SHOWMESSAGE('Produto Não Localizado');

        IF ACHOU=TRUE THEN
        xDBGrid1.SetFocus;

        END ELSE

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
        dm.SDS_PRODUTOS_c.Active := false;
        DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
        dm.SDS_PRODUTOS_c.Active := True;
        ATIVO := 'A';
        DM.SDS_PRODUTOS_C.Filtered := False;
        DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
        dm.SDS_PRODUTOS_C.Filtered := True;

              If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
               SHOWMESSAGE('Produto Não Localizado');
               Edit1.Clear;
               Edit1.SetFocus;
              end;
        {IF ACHOU=FALSE THEN
        //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

        IF ACHOU=TRUE THEN
        xDBGrid1.SetFocus;
        end;
        end;

     end else


{IF Edit1.Text = '' then
 begin
   ShowMessage('É Necessario digitar algo para pesquisar');
   Edit1.SetFocus;
 end else}

if cbxpesquisa.ItemIndex = 0 then      // por inicio da descricão
begin
if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 begin
 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
 dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_C.Filtered := True;
 {dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;}
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
  end;

//IF ACHOU=FALSE THEN
//SHOWMESSAGE('Produto Não Localizado');

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;

END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
       Edit1.Clear;
       Edit1.SetFocus;
      end;
{IF ACHOU=FALSE THEN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;


{IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');
EDIT1.Clear;

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus; }

end;
end;

{if cbxpesquisa.ItemIndex = 0 then
begin
dm.Sds_produtos.locate('DESCRICAO',Edit1.Text,[lopartialkey,loCaseinSensitive]);

end else
if cbxpesquisa.ItemIndex = 1 then
begin
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:='DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;
end else
if cbxpesquisa.ItemIndex = 2 then
begin
   dm.SDS_PRODUTOS.Filtered := false;
dm.Sds_produtos.locate('CODIGO_BARRAS',Edit1.Text,[lopartialkey,loCaseinSensitive]);

end else
if cbxpesquisa.ItemIndex = 3 then
begin
   dm.SDS_PRODUTOS.Filtered := false;
dm.Sds_produtos.locate('REFERENCIA',Edit1.Text,[lopartialkey,loCaseinSensitive]);
end;

end; }
end;
end;



procedure TFormConsProdutosVendas.Edit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);

   Edit1.SelectAll;
end;

procedure TFormConsProdutosVendas.Edit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
     XDBGrid1.SetFocus;
end;

procedure TFormConsProdutosVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

      if (Key=VK_F2) then
      begin
      EDIT1.SetFocus;
      end;

      if (Key=VK_F3) then
      begin
      cbxpesquisa.SetFocus;
      cbxpesquisa.DroppedDown;
      end;



     
end;


procedure TFormConsProdutosVendas.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsProdutosVendas.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
END;
end;

procedure TFormConsProdutosVendas.Edit2Enter(Sender: TObject);
begin
    CorEntrada(Sender);
end;

procedure TFormConsProdutosVendas.Edit2Exit(Sender: TObject);
begin
CORSAIDA(SENDER);
end;

procedure TFormConsProdutosVendas.XDBGrid1OrderChanged(Sender: TObject);
var
CurrentID, AOrderFields: string;
begin
 { AOrderFields := StringReplace(TXDBGrid(Sender).OrderFields, 'DESCRICAO', []);
  AOrderFields := StringReplace(AOrderFields, 'CODIGO_BARRAS', []);
//  AOrderFields := StringReplace(AOrderFields, 'CODIGO_BARRAS', 'CODIGO_BARRAS', []);
  AOrderFields := StringReplace(AOrderFields, 'REFERENCIA', []);
  AOrderFields := StringReplace(AOrderFields, 'DESC_UNIDADE', []);
  TXDBGrid(Sender).ChangeDataSetOrder(AOrderFields); }
end;

procedure TFormConsProdutosVendas.cbxpesquisaChange(Sender: TObject);
begin
{ ATIVO:='A';
if cbxpesquisa.ItemIndex = 0 THEN
begin
 dm.SDS_PRODUTOS_c.Filtered := false;
 dm.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_c.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_c.RecordCount);
end else
if cbxpesquisa.ItemIndex = 1 THEN
begin
 dm.SDS_PRODUTOS_c.Filtered := false;
 dm.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_c.Filtered := True;
// Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_c.RecordCount);
end else
if cbxpesquisa.ItemIndex = 2 then
begin
  DM.SDS_PRODUTOS_c.Filtered := False;
 dm.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_c.Filtered := True;
 //Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_c.RecordCount);
  end else
if cbxpesquisa.ItemIndex = 3 then
begin
  DM.SDS_PRODUTOS_c.Filtered := False;
  dm.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
  dm.SDS_PRODUTOS_c.Filtered := True;
 // Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS.RecordCount);
end;}

end;
procedure TFormConsProdutosVendas.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
   Var
    Check: Integer;
    R: TRect;
    estoque : Real;
begin
if not Odd(DM.SDS_PRODUTOS_C.RecNo) then
   if not(gdselected in State) then
   begin
    XDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    XDBGrid1.Canvas.FillRect(rect);
    XDBGrid1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;
  //Desenha um checkbox no dbgrid
if column.FieldName = 'ATIVO' then begin
XDBGrid1.Canvas.FillRect(Rect);
Check := 0;
if DM.SDS_PRODUTOS_CATIVO.AsString = 'A' then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
DrawFrameControl(XDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end;

IF Column.Field = dm.SDS_PRODUTOS_CESTOQUE THEN
begin
estoque:= Dm.SDS_ProdutosEstoque.AsFloat;
If estoque < 1 then
xDbgrid1.Canvas.Font.Color := clRed;
xDbgrid1.Canvas.Font.Style := xDbgrid1.Canvas.Font.Style + [fsbold];
If estoque >= 1 then
xDbgrid1.Canvas.Font.Color := clBlack;
xDbgrid1.Canvas.Font.Style := xDbgrid1.Canvas.Font.Style + [fsbold];
xDbgrid1.DefaultDrawDataCell(Rect, Column.field, State);
end;
end;

procedure TFormConsProdutosVendas.BitBtn1Click(Sender: TObject);
VAR ACHOU:BOOLEAN;
cod : Integer;
begin

  ATIVO := 'A';
  DM.SDS_SECCAO2.Active := False;
  DM.SDS_SECCAO2.Active := True;
  if CheckBox1.Checked = True then
     begin
       edit2.Clear;
       //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
     dm.SDS_PRODUTOS_c.Active := false;
     DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
     dm.SDS_PRODUTOS_c.Active := True;
     dm.SDS_PRODUTOS_C.Filtered := false;
     dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
     dm.SDS_PRODUTOS_C.Filtered := True;
     {dm.SDS_PRODUTOS.Filtered := false;
     dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
     dm.SDS_PRODUTOS.Filtered := True;}
     Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);

     If DM.SDS_PRODUTOS_C.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
      begin
          XDBGRID1.SetFocus;
      end;
     end else

     if cbxpesquisa.ItemIndex = 1 then           // por codigo de barras
      begin

         IF Edit1.Text = '' then
         begin
          // ShowMessage('É Necessario digitar algo para pesquisar');
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
           Edit1.SetFocus;
         end else
         if edit2.Text='LETRAS' THEN
         BEGIN
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         {dm.SDS_PRODUTOS.Filtered := false;
         dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
         dm.SDS_PRODUTOS.Filtered := True;}
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


         If DM.SDS_PRODUTOS_C.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
          begin
              XDBGRID1.SetFocus;
          end;
          end else

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
        dm.SDS_PRODUTOS_c.Active := false;
        DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
        dm.SDS_PRODUTOS_c.Active := True;
        ATIVO := 'A';
        DM.SDS_PRODUTOS_C.Filtered := False;
        DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
        dm.SDS_PRODUTOS_C.Filtered := True;

              If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
               SHOWMESSAGE('Produto Não Localizado');
               Edit1.Clear;
               Edit1.SetFocus;
              end;
        {ACHOU:=dm.Sds_produtos_C.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
        IF ACHOU=FALSE THEN
        SHOWMESSAGE('Produto Não Localizado');
        Edit1.Clear;
        Edit1.SetFocus;
        {//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

        IF ACHOU=TRUE THEN
        xDBGrid1.SetFocus;
        end;

      end else

    if cbxpesquisa.ItemIndex = 4 then      // por Codigo
     begin
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
        IF Edit1.Text = '' then
         begin
           ShowMessage('É Necessario digitar algo para pesquisar');
           Edit1.Clear;
           Edit1.SetFocus;
         end else
         cod:=StrToInt(Edit1.Text);
         IF cod > 999999 then
         begin
           ShowMessage('Codigo invalido');
           Edit1.Clear;
           Edit1.SetFocus;
         end else

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where codigo like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

              If DM.SDS_PRODUTOS_C.locate('codigo', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('codigo', Edit1.Text,[])=True then
              begin
               SHOWMESSAGE('Refencia do Produto não Localizada...');
               Edit1.Clear;
               Edit1.SetFocus;
              end;
       end else


    if cbxpesquisa.ItemIndex = 3 then      // por referencia
     begin

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

              If DM.SDS_PRODUTOS_C.locate('REFERENCIA', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('REFERENCIA', Edit1.Text,[])=True then
              begin
             //  SHOWMESSAGE('Refencia do Produto não Localizada...');
              // Edit1.SetFocus;

        if edit2.Text='LETRAS' THEN
        BEGIN
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

        //IF ACHOU=FALSE THEN
        //SHOWMESSAGE('Produto Não Localizado');

        IF ACHOU=TRUE THEN
        xDBGrid1.SetFocus;

        END ELSE

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        //ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
        dm.SDS_PRODUTOS_c.Active := false;
        DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
        dm.SDS_PRODUTOS_c.Active := True;
        ATIVO := 'A';
        DM.SDS_PRODUTOS_C.Filtered := False;
        DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
        dm.SDS_PRODUTOS_C.Filtered := True;

              If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
              begin
               SHOWMESSAGE('Produto Não Localizado');
               Edit1.Clear;
               Edit1.SetFocus;
              end;
        {IF ACHOU=FALSE THEN
        //Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
        ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

        IF ACHOU=TRUE THEN
        xDBGrid1.SetFocus;
        end;
        end;

     end else


{IF Edit1.Text = '' then
 begin
   ShowMessage('É Necessario digitar algo para pesquisar');
   Edit1.SetFocus;
 end else}

if cbxpesquisa.ItemIndex = 0 then      // por inicio da descricão
begin
if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 begin
 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
 dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_C.Filtered := True;
 {dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;}
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


  end;

//IF ACHOU=FALSE THEN
//SHOWMESSAGE('Produto Não Localizado');

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;

END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
       Edit1.Clear;
       Edit1.SetFocus;
      end;
{IF ACHOU=FALSE THEN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;


{IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');
EDIT1.Clear;

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus; }

end;
end;

{if cbxpesquisa.ItemIndex = 0 then
begin
dm.Sds_produtos.locate('DESCRICAO',Edit1.Text,[lopartialkey,loCaseinSensitive]);

end else
if cbxpesquisa.ItemIndex = 1 then
begin
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:='DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;
end else
if cbxpesquisa.ItemIndex = 2 then
begin
   dm.SDS_PRODUTOS.Filtered := false;
dm.Sds_produtos.locate('CODIGO_BARRAS',Edit1.Text,[lopartialkey,loCaseinSensitive]);

end else
if cbxpesquisa.ItemIndex = 3 then
begin
   dm.SDS_PRODUTOS.Filtered := false;
dm.Sds_produtos.locate('REFERENCIA',Edit1.Text,[lopartialkey,loCaseinSensitive]);
end;

end; }



{if cbxpesquisa.ItemIndex = 1 then           // por codigo de barras
begin
  IF Edit1.Text = '' then
 begin
  // ShowMessage('É Necessario digitar algo para pesquisar');
 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
   Edit1.SetFocus;
 end else
 if edit2.Text='LETRAS' THEN
 BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
 dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_C.Filtered := True;
 {dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


 If DM.SDS_PRODUTOS_C.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
  begin
      XDBGRID1.SetFocus;
  end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      // SHOWMESSAGE('Produto Não Localizado');
       Edit1.SetFocus;
      end;

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;
end;

 end else
    if cbxpesquisa.ItemIndex = 4 then      // por Codigo
     begin
        //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
        IF Edit1.Text = '' then
         begin
           ShowMessage('É Necessario digitar algo para pesquisar');
           Edit1.SetFocus;
         end else
         cod:=StrToInt(Edit1.Text);
         IF cod > 999999 then
         begin
           ShowMessage('Codigo invalido');
           Edit1.SetFocus;
         end else

         begin
         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where codigo like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;
         dm.SDS_PRODUTOS_C.Filtered := false;
         dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
         dm.SDS_PRODUTOS_C.Filtered := True;
         Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
         end;

              If DM.SDS_PRODUTOS_C.locate('codigo', Edit1.Text,[])=True then
              begin
              XDBGRID1.SetFocus;
              end else
              If not DM.SDS_PRODUTOS_C.locate('codigo', Edit1.Text,[])=True then
              begin
               SHOWMESSAGE('Refencia do Produto não Localizada...');
              // Edit1.SetFocus;
              end;
       end else


if cbxpesquisa.ItemIndex = 3 then      // por referencia
begin
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
IF Edit1.Text = '' then
 begin
   ShowMessage('É Necessario digitar algo para pesquisar');
   Edit1.SetFocus;
 end else

 begin
 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
 dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_C.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);
 end;

      If DM.SDS_PRODUTOS_C.locate('REFERENCIA', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.SDS_PRODUTOS_C.locate('REFERENCIA', Edit1.Text,[])=True then
      begin
      // SHOWMESSAGE('Produto Não Localizado');
       Edit1.SetFocus;
      end;
 {if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 begin
 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
 dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_C.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


  end;

//IF ACHOU=FALSE THEN
//SHOWMESSAGE('Produto Não Localizado');

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;

END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
       Edit1.SetFocus;
      end;

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;
end;
//end else



if cbxpesquisa.ItemIndex = 0 then      // por inicio da descricão
begin
if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 begin
 dm.SDS_PRODUTOS_c.Active := false;
 DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS_c.Active := True;
 dm.SDS_PRODUTOS_C.Filtered := false;
 dm.SDS_PRODUTOS_C.Filter:= 'ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS_C.Filtered := True;
 {dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS_C.RecordCount);


  end;

//IF ACHOU=FALSE THEN
//SHOWMESSAGE('Produto Não Localizado');

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;

END ELSE

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
dm.SDS_PRODUTOS_c.Active := false;
DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
dm.SDS_PRODUTOS_c.Active := True;
ATIVO := 'A';
DM.SDS_PRODUTOS_C.Filtered := False;
DM.SDS_PRODUTOS_c.Filter:='ATIVO ='+QuotedStr (ATIVO);
dm.SDS_PRODUTOS_C.Filtered := True;

      If DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.SDS_PRODUTOS_C.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      // SHOWMESSAGE('Produto Não Localizado');
       Edit1.SetFocus;
      end;

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;


{IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');
EDIT1.Clear;

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus; }

//end;
//end;

{if cbxpesquisa.ItemIndex = 0 then
begin
dm.Sds_produtos.locate('DESCRICAO',Edit1.Text,[lopartialkey,loCaseinSensitive]);

end else
if cbxpesquisa.ItemIndex = 1 then
begin
 dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:='DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;
end else
if cbxpesquisa.ItemIndex = 2 then
begin
   dm.SDS_PRODUTOS.Filtered := false;
dm.Sds_produtos.locate('CODIGO_BARRAS',Edit1.Text,[lopartialkey,loCaseinSensitive]);

end else
if cbxpesquisa.ItemIndex = 3 then
begin
   dm.SDS_PRODUTOS.Filtered := false;
dm.Sds_produtos.locate('REFERENCIA',Edit1.Text,[lopartialkey,loCaseinSensitive]);
end;

end; }
end;

procedure TFormConsProdutosVendas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{if DM.Sds_produtos_c.eof then
begin
  ShowMessage('Favor localizar algum produdo para inserir na tela de vendas!!!');
  CanClose := False;
end;}
if DM.Sds_produtos_c.Active = false then
begin
   DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + '1A1A' + '%' + #39+'' +'ORDER BY DESCRICAO';
   DM.Sds_produtos_c.Active := True;
end;
end;

procedure TFormConsProdutosVendas.CheckBox1Click(Sender: TObject);
begin
Edit2.Clear;
end;

procedure TFormConsProdutosVendas.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key= VK_DOWN then
begin
  XDBGrid1.SetFocus;
end;
end;

end.

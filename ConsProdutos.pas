unit ConsProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, SUIImagePanel, ExtCtrls, RXCtrls,
  SUIButton, Grids, DBGrids, SUIDBCtrls, DB, DBTables, XDBGrids, DBCtrls,
  Mask, ACBrBase, ACBrLCB, RxLookup;

type
  TFormConsProdutos = class(TForm)
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
    RxLabel9: TRxLabel;
    DBText1: TDBText;
    Edit2: TEdit;
    DBEdit8: TDBEdit;
    RxLabel10: TRxLabel;
    RxLabel7: TRxLabel;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    lUltimaLeitura: TLabel;
    ACBrLCB4: TACBrLCB;
    suiButton2: TsuiButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    RxLabel11: TRxLabel;
    DBText2: TDBText;
    Panel4: TPanel;
    suiButton1: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    suiButton3: TsuiButton;
    CheckBox4: TCheckBox;
    DBImage1: TsuiDBImage;
    suiDBEdit1: TsuiDBEdit;
    RxLabel8: TRxLabel;
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
    procedure suiButton3Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ACBrLCB4LeCodigo(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
    procedure Vende(Sender: TObject);
     procedure LerINI;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormConsProdutos: TFormConsProdutos;
  ATIVO : string;
implementation

uses ModulodeDados, Z_RotinasGerais, Principal, UCustos, 
  LeitorSerial, IniFiles;

{$R *.dfm}

procedure TFormConsProdutos.LerINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     ACBrLCB4.Porta := INI.ReadString('LEITOR','Porta', ACBrLCB4.Porta);
     ACBrLCB4.sufixo := INI.ReadString('LEITOR','Sulfixo',ACBrLCB4.Sufixo);
     ACBrLCB4.Device.Baud := INI.ReadInteger('LEITOR','baud',ACBrLCB4.Device.Baud);
     ACBrLCB4.ExcluirSufixo := INI.ReadBool('LEITOR','ExcluirSulfixo',ACBrLCB4.ExcluirSufixo);
     ACBrLCB4.Intervalo := INI.ReadInteger('LEITOR','Intervalo',ACBrLCB4.Intervalo);      ACBrLCB4.PrefixoAExcluir:= ini.readString('LEITOR','Prefixo',ACBrLCB4.PrefixoAExcluir);
  finally
     INI.Free ;
  end ;
end;

procedure TFormConsProdutos.FormShow(Sender: TObject);
begin
cbxpesquisa.ItemIndex := DM.SDS_CONFIGURACOESPESQ_PADRAO.AsInteger;
//DM.SDS_PRODUTOS.Filtered := False;
//Edit1.Clear;
Edit1.SetFocus;
//Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(dm.SDS_PRODUTOS.RecordCount);
Panel3.ENABLED := False;
if DM.SDS_CONFIGURACOESUSA_FRACAO.Text = 'N' then
begin
XDBGRID1.Columns.Items[6].Visible := False;
end;

if DM.SDS_UsuariosMOSTRA_CUSTOS.Text = 'S' then
begin
suiButton3.Enabled := False;
end;

 DM.Sds_produtos.Active := false;
end;

procedure TFormConsProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACBrLCB4.Desativar;
Action:=CaFree;
FormConsProdutos:=nil;
end;

procedure TFormConsProdutos.Edit1Change(Sender: TObject);
var Key: Word;
begin

IF (Edit1.Text>='A') AND (Edit1.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EDIT1.Text>='0') AND (Edit1.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EDIT1.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormConsProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;

  {  If Key = #13 then
    Begin
      Key := #0;
      Perform(WM_NextDlgCtl, 0, 0);
    End;    }
end;

procedure TFormConsProdutos.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsProdutos.Edit1KeyPress(Sender: TObject; var Key: Char);
VAR ACHOU:BOOLEAN;
begin
{if key=#13 then begin
 if cbxpesquisa.ItemIndex = 0 then
   begin
       if edit2.Text='LETRAS' THEN
       begin
        ACHOU := dm.SDS_PRODUTOS.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);


        XDBGrid1.SetFocus;
        Edit1.SetFocus;
         end else

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        ACHOU:=dm.SDS_PRODUTOS.Locate('CODIGO_BARRAS',EDIT1.Text,[]);

        IF ACHOU=TRUE THEN
        begin
        XDBGrid1.SetFocus;
        Edit1.SetFocus;
        end else

        IF ACHOU=FALSE THEN
        begin
        SHOWMESSAGE('Produto Não Localizado');
        EDIT1.Clear;
        end;
        end;

   end else

   if cbxpesquisa.ItemIndex = 1 then
   begin
   if edit2.Text='LETRAS' THEN
       begin
       dm.SDS_PRODUTOS.Filtered := false;
       dm.SDS_PRODUTOS.Filter:='DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
       dm.SDS_PRODUTOS.Filtered := True;

       XDBGrid1.SetFocus;
       Edit1.SetFocus;
         end else

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
        ACHOU:=dm.SDS_PRODUTOS.Locate('CODIGO_BARRAS',EDIT1.Text,[]);

        IF ACHOU=TRUE THEN
        begin
        xDBGrid1.SetFocus;
        Edit1.SetFocus;
        end ELSE

        IF ACHOU=FALSE THEN
        begin
        SHOWMESSAGE('Produto Não Localizado');
        EDIT1.Clear;
        end;
        end;

    end else

   if cbxpesquisa.ItemIndex = 3 then
   begin
      dm.SDS_PRODUTOS.Filtered := false;
      If DM.SDS_PRODUTOS.locate('REFERENCIA', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      if not dm.Sds_produtos.locate('REFERENCIA',Edit1.Text,[])= True then
        begin
       if edit2.Text='LETRAS' THEN
       begin
         dm.SDS_PRODUTOS.Filtered := false;
         dm.SDS_PRODUTOS.Filter:='DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
         dm.SDS_PRODUTOS.Filtered := True;

        XDBGrid1.SetFocus;
        Edit1.SetFocus;
         end else

        IF EDIT2.Text='NUMEROS' THEN
        BEGIN
            ACHOU:=dm.SDS_PRODUTOS.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
         end else

        IF ACHOU=TRUE THEN
        begin
        XDBGrid1.SetFocus;
        Edit1.SetFocus;
        end else

        IF ACHOU=FALSE THEN
        begin
        SHOWMESSAGE('Produto Não Localizado');
        EDIT1.Clear;
        end;
        end;
   end else

if cbxpesquisa.ItemIndex = 2 then
begin
if edit2.Text='LETRAS' THEN
ACHOU := dm.SDS_PRODUTOS.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;
Edit1.SetFocus;


IF EDIT2.Text='NUMEROS' THEN
BEGIN
ACHOU:=dm.SDS_PRODUTOS.Locate('CODIGO_BARRAS',EDIT1.Text,[]);

IF ACHOU=FALSE THEN
BEGIN
SHOWMESSAGE('Produto Não Localizado');
EDIT1.Clear;
end ELSE

      IF ACHOU=TRUE THEN
        begin
        xDBGrid1.SetFocus;
        Edit1.SetFocus;
        end
end;
end else

if cbxpesquisa.ItemIndex = 4 then
begin
if edit2.Text='LETRAS' THEN
ACHOU := dm.SDS_PRODUTOS.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

IF ACHOU=FALSE THEN
SHOWMESSAGE('Produto Não Localizado');

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;
Edit1.SetFocus;


IF EDIT2.Text='NUMEROS' THEN
BEGIN

ACHOU:=dm.SDS_PRODUTOS.Locate('CODIGO',EDIT1.Text,[]);

IF ACHOU=FALSE THEN
BEGIN
SHOWMESSAGE('Produto Não Localizado');
EDIT1.Clear;
end else

IF ACHOU=TRUE THEN
        begin
        xDBGrid1.SetFocus;
        Edit1.SetFocus;
        end

end;
end;
end; }

if key=#13 then begin

 if CheckBox4.Checked = True then
 begin
   edit2.Clear;
   //ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
 dm.SDS_PRODUTOS.Active := false;
 DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
 dm.SDS_PRODUTOS.Active := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);


 If DM.SDS_PRODUTOS.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
  begin
      XDBGRID1.SetFocus;
  end;
 end else


if cbxpesquisa.ItemIndex = 1 then           // por codigo de barras
begin

 IF Edit1.Text = '' then
 begin
 DM.Sds_produtos.Active := false;
 DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
 DM.Sds_produtos.Active := True;
   //ShowMessage('É Necessario digitar algo para pesquisar');
   Edit1.SetFocus;
 end else
 if edit2.Text='LETRAS' THEN
 BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 DM.Sds_produtos.Active := false;
 DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
 DM.Sds_produtos.Active := True;

 {dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;}
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);


 If DM.Sds_produtos.locate('DESCRICAO', Edit1.Text,[loPartialKey, loCaseInsensitive])=True then
  begin
      XDBGRID1.SetFocus;
  end;
  end else

IF EDIT2.Text='NUMEROS' THEN
BEGIN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
//ACHOU:=dm.Sds_produtos.Locate('CODIGO_BARRAS',EDIT1.Text,[]);
DM.Sds_produtos.Active := false;
DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
DM.Sds_produtos.Active := True;


      If DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
       Edit1.SetFocus;
      end;
{IF ACHOU=FALSE THEN
//Edit1.Text := FormatFloat('0000',StrToFloat(Edit1.Text));
ACHOU:=dm.Sds_produtos.Locate('REFERENCIA',EDIT1.Text,[]);   }

IF ACHOU=TRUE THEN
xDBGrid1.SetFocus;
end;

 end else

if cbxpesquisa.ItemIndex = 3 then      // por referencia
begin
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);
IF Edit1.Text = '' then
 begin
   //ShowMessage('É Necessario digitar algo para pesquisar');
  DM.Sds_produtos.Active := false;
  DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
  DM.Sds_produtos.Active := True;
   Edit1.SetFocus;
 end else

 begin
 DM.Sds_produtos.Active := false;
 DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where REFERENCIA like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 DM.Sds_produtos.Active := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);
 end;

      If DM.Sds_produtos.locate('REFERENCIA', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.Sds_produtos.locate('REFERENCIA', Edit1.Text,[])=True then
      begin
       //SHOWMESSAGE('Produto Não Localizado');
      // Edit1.SetFocus;

 if edit2.Text='LETRAS' THEN
BEGIN
//ACHOU := dm.Sds_produtos.Locate('DESCRICAO',EDIT1.Text,[loPartialKey, loCaseInsensitive]);

 begin
 DM.Sds_produtos.Active := false;
 DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 DM.Sds_produtos.Active := True;

 {dm.SDS_PRODUTOS.Filtered := false;
 dm.SDS_PRODUTOS.Filter:= 'ATIVO ='+QuotedStr (ATIVO)+' and DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'';
 dm.SDS_PRODUTOS.Filtered := True;}
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);


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
DM.Sds_produtos.Active := false;
DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
DM.Sds_produtos.Active := True;


      If DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
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
 DM.Sds_produtos.Active := false;
 DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where DESCRICAO like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
 DM.Sds_produtos.Active := True;
 Label1.Caption := 'N° Produtos Ativos Fitrados: ' + IntToStr(DM.Sds_produtos.RecordCount);


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
DM.Sds_produtos.Active := false;
DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + Edit1.Text + '%' + #39+'ORDER BY DESCRICAO';
DM.Sds_produtos.Active := True;


      If DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
      XDBGRID1.SetFocus;
      end else
      If not DM.Sds_produtos.locate('CODIGO_BARRAS', Edit1.Text,[])=True then
      begin
       SHOWMESSAGE('Produto Não Localizado');
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

DM.SDS_SECCAO1.Active := False;
DM.SDS_SECCAO1.Active := True;

end;
end;


procedure TFormConsProdutos.Edit1Enter(Sender: TObject);
begin
  inherited;
     CorEntrada(Sender);
end;

procedure TFormConsProdutos.Edit1Exit(Sender: TObject);
begin
  inherited;
     CorSaida(Sender);
     XDBGrid1.SetFocus;
end;

procedure TFormConsProdutos.FormKeyDown(Sender: TObject; var Key: Word;
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

     if (Key=VK_F4) then
      begin
      if DM.SDS_UsuariosMOSTRA_CUSTOS.Text = 'S' then
      begin
      suiButton3.Enabled := False;
      end else
      if DM.SDS_UsuariosMOSTRA_CUSTOS.Text = 'N' then
      begin
      suiButton1Click(Sender);
      end;
      end;
     if (Key=VK_F5) then
      begin
      suiButton3Click(Sender);
      end;
end;


procedure TFormConsProdutos.suiDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsProdutos.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
END;
end;

procedure TFormConsProdutos.Edit2Enter(Sender: TObject);
begin
    CorEntrada(Sender);
end;

procedure TFormConsProdutos.Edit2Exit(Sender: TObject);
begin
CORSAIDA(SENDER);
end;

procedure TFormConsProdutos.XDBGrid1OrderChanged(Sender: TObject);
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

procedure TFormConsProdutos.cbxpesquisaChange(Sender: TObject);
begin
if cbxpesquisa.ItemIndex = 0 THEN
begin
 DM.SDS_PRODUTOS.Filtered := False;
end else
if cbxpesquisa.ItemIndex = 2 then
begin
 DM.SDS_PRODUTOS.Filtered := False;
end else
if cbxpesquisa.ItemIndex = 3 then
begin
 DM.SDS_PRODUTOS.Filtered := False;
end;
end;

procedure TFormConsProdutos.XDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
   Var
    Check: Integer;
    R: TRect;
begin
if not Odd(DM.SDS_PRODUTOS.RecNo) then
   if not(gdselected in State) then
   begin
    XDBGrid1.Canvas.Brush.Color := $00FDE2BD;
    XDBGrid1.Canvas.FillRect(rect);
    XDBGrid1.DefaultDrawDataCell(Rect,Column.Field,state);
   end;

If DM.SDS_PRODUTOSATIVO.AsString = 'I' then // condição
  XDbgrid1.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
  XDbgrid1.DefaultDrawDataCell(Rect, Xdbgrid1.columns[datacol].field, State);


  //Desenha um checkbox no dbgrid
if column.FieldName = 'ATIVO' then begin
XDBGrid1.Canvas.FillRect(Rect);
Check := 0;
if DM.SDS_PRODUTOSATIVO.AsString = 'A' then
Check := DFCS_CHECKED
else Check := 0;
R:=Rect;
InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
DrawFrameControl(XDBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
end;
end;

procedure TFormConsProdutos.suiButton3Click(Sender: TObject);
begin
try
  if Formcustos=nil   then
    BEGIN
     Formcustos := TFormcustos.Create(self);
     Formcustos.showmodal;
     end;
      except
       ShowMessage('Erro ao Tentar Exibir a tela de Custos!!');
end;
end;

procedure TFormConsProdutos.suiButton1Click(Sender: TObject);
begin
{    // FormProdutos:=NIL;
      FormProdutos:=TFormProdutos.Create(self);
      FormProdutos.FormStyle := fsNormal;
       FormProdutos.Visible:= False;
       FormProdutos.btnLocalizar.Enabled :=False;
        FormProdutos.ShowModal;  }
end;


procedure TFormConsProdutos.FormCreate(Sender: TObject);
begin
 //  FormLeitorSerial:= tFormLeitorSerial.Create(self);
 // FormLeitorSerial.bAtivar.Click;
  IF DM.SDS_CONFIGURACOESLEITOT_SERIAL.Text = 'S' then
  BEGIN
  LerINI;
  ACBrLCB4.Ativar;
  end

end;

procedure TFormConsProdutos.ACBrLCB4LeCodigo(Sender: TObject);
begin
  //lUltimaLeitura.Caption := Converte1(ACBrLCB1.UltimaLeitura ) ;
  Edit1.Clear;
  if not ACBrLCB4.UsarFila then
     Vende(Sender)
  else
  Edit1.Assign( ACBrLCB4.Fila );
end;

procedure TFormConsProdutos.Vende;
begin
   Edit1.Text := ACBrLCB4.UltimoCodigo;
   suiButton2Click(Sender);
end;



procedure TFormConsProdutos.suiButton2Click(Sender: TObject);
begin
keybd_event(VK_RETURN, 0, 0, 0);
end;

procedure TFormConsProdutos.CheckBox1Click(Sender: TObject);
begin
 ATIVO := 'A';
 DM.SDS_PRODUTOS.Filtered := False;
 dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;
 CheckBox2.Checked := False;
 CheckBox3.Checked := False;
end;

procedure TFormConsProdutos.CheckBox2Click(Sender: TObject);
begin
 ATIVO := 'I';
 DM.SDS_PRODUTOS.Filtered := False;
 dm.SDS_PRODUTOS.Filter:='ATIVO ='+QuotedStr (ATIVO);
 dm.SDS_PRODUTOS.Filtered := True;
 CheckBox1.Checked := False;
 CheckBox3.Checked := False;

end;

procedure TFormConsProdutos.CheckBox3Click(Sender: TObject);
begin
  DM.SDS_PRODUTOS.Filtered := False;
 CheckBox2.Checked := False;
 CheckBox1.Checked := False;
end;

procedure TFormConsProdutos.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= VK_DOWN then
begin
  XDBGrid1.SetFocus;
end;
end;

end.

unit UnitProcBicoEnc_Temp;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 ExtCtrls, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, Variants,
 Placemnt, ComCtrls, Buttons;

type
 TVendaBicoEnc_TempListFrm = class(TForm)
    QryBicoEnc_Temp: TIBQuery;
    DtsQryBicoEnc_Temp: TDataSource;
   FormStorage1: TFormStorage;
    QryBicoEnc_TempCOD_BICOENC_TEMP: TIntegerField;
    QryBicoEnc_TempID_BOMBA: TIntegerField;
    QryBicoEnc_TempCOD_FRENTISTA: TIntegerField;
    QryBicoEnc_TempID_PRODUTOS: TIntegerField;
    QryBicoEnc_TempENC_LITROS: TIBBCDField;
    QryBicoEnc_TempENC_DINHEIRO: TIBBCDField;
    QryBicoEnc_TempPRODUTOS_DESC: TIBStringField;
    QryBicoEnc_TempNIVEL_PRECO: TIntegerField;
    QryBicoEnc_TempDINHEIRO: TIBBCDField;
    QryBicoEnc_TempPRECO: TIBBCDField;
    QryBicoEnc_TempDATAHORA: TDateTimeField;
    QryBicoEnc_TempLITROS: TIBBCDField;
    QryBicoEnc_TempID_TANQUE: TIntegerField;
    Panel1: TPanel;
    Label3: TLabel;
    Edit2: TEdit;
    QryBomba: TIBQuery;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    BoxBomba0: TGroupBox;
    Estado0: TImage;
    BoxBomba2: TGroupBox;
    Estado2: TImage;
    BoxBomba3: TGroupBox;
    Estado3: TImage;
    BoxBomba4: TGroupBox;
    Estado4: TImage;
    BoxBomba5: TGroupBox;
    Estado5: TImage;
    BoxBomba1: TGroupBox;
    Estado1: TImage;
    BoxBomba6: TGroupBox;
    Estado6: TImage;
    BoxBomba7: TGroupBox;
    Estado7: TImage;
    BoxBomba8: TGroupBox;
    Estado8: TImage;
    BoxBomba9: TGroupBox;
    Estado9: TImage;
    BoxBomba10: TGroupBox;
    Estado10: TImage;
    BoxBomba11: TGroupBox;
    Estado11: TImage;
    NaoAutorizadaImg: TImage;
    FimDeVendaImg: TImage;
    SpeedButton1: TSpeedButton;
    QryBicoEnc_TempID_BICO: TIBStringField;
    QryBicoEnc_TempUNIDADE: TIBStringField;
    QryBicoEnc_TempREGISTRO: TIntegerField;
   procedure Edit1Enter(Sender: TObject);
   procedure Edit1Exit(Sender: TObject);
   procedure DBGrid1KeyDown(Sender: TObject; var Key: word;
     Shift: TShiftState);
   procedure FormShow(Sender: TObject);
   procedure DBGrid1TitleClick(Column: TColumn);
   procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BoxBomba0Click(Sender: TObject);
    procedure BoxBomba0DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Localizar;
    procedure SpeedButton1Click(Sender: TObject);
    procedure AtualizaTela;
    private

   { Private declarations }
 public
   { Public declarations }
 end;

var
 VendaBicoEnc_TempListFrm: TVendaBicoEnc_TempListFrm;
 LastProdStr, LastRefProdStr, OrderByStr: string;
 id_Bomba_Default: integer;

implementation

uses ModulodeDados, Vendas;

{$R *.DFM}

procedure TVendaBicoEnc_TempListFrm.Edit1Enter(Sender: TObject);
begin
 Tedit(Sender).color := claqua;
 Tedit(Sender).selectall;
end;

procedure TVendaBicoEnc_TempListFrm.Edit1Exit(Sender: TObject);
begin
 Tedit(Sender).color := clwindow;
end;

procedure TVendaBicoEnc_TempListFrm.DBGrid1KeyDown(Sender: TObject; var Key: word;
 Shift: TShiftState);
begin
 if key = vk_escape then
   Edit2.SetFocus;

 if key = vk_return then
   DBGrid1DblClick(dbgrid1);
end;

procedure TVendaBicoEnc_TempListFrm.FormShow(Sender: TObject);
begin
 screen.cursor := crDefault;
end;

procedure TVendaBicoEnc_TempListFrm.DBGrid1TitleClick(Column: TColumn);
begin
 screen.cursor := crHourGlass;
 with QryBicoEnc_Temp do
  begin
   Close;
   UnPrepare;
   SQL.Delete(SQL.IndexOf(OrderbyStr));
   if OrderbyStr = 'ORDER BY ' + Column.FieldName then
    begin
     SQL.Add('ORDER BY ' + Column.FieldName + ' DESC');
     OrderbyStr := 'ORDER BY ' + Column.FieldName + ' DESC';
    end
   else
    begin
     SQL.Add('ORDER BY ' + Column.FieldName);
     OrderbyStr := 'ORDER BY ' + Column.FieldName;
    end;
   Prepare;
   Open;
  end;
 screen.cursor := crDefault;
end;

procedure TVendaBicoEnc_TempListFrm.DBGrid1DblClick(Sender: TObject);
begin
 if QryBicoEnc_Temp.RecordCount <> 0 then
  if QryBicoEnc_Temp['ID_BICO'] <> '0' then
   Begin
    {if QryBicoEnc_Temp['COD_FRENTISTA'] <> '0' then
    VendaFrm.DBLookupComboBox1.KeyValue := QryBicoEnc_Temp['COD_FRENTISTA'];}

         dm.SDS_PRODUTOS_c.Active := false;
         DM.Sds_produtos_c.DataSet.CommandText:= 'select * from PRODUTOS where codigo like ' + #39 + '%' + QryBicoEnc_Temp.FieldbyName('ID_PRODUTOS').AsString + '%' + #39+'ORDER BY DESCRICAO';
         dm.SDS_PRODUTOS_c.Active := True;

          If DM.SDS_PRODUTOS_C.locate('codigo', QryBicoEnc_Temp.FieldbyName('ID_PRODUTOS').AsString,[])=True then
          begin
          if formVendas.Sds_pedidos.RecordCount = 0 then
          formvendas.inserir.click
          else
          formvendas.NValor:=1;
          formvendas.NItem:=formvendas.NItem+formvendas.NValor;
         // formvendas.sds_pedidos_itens.insert;
          formvendas.sds_pedidos_itens.Edit;
          formvendas.Sds_pedidos_itensPreco_unitario.text     := formatcurr('0.000', QryBicoEnc_Temp['PRECO']);
          formvendas.sds_pedidos_itensDescricao_PRODUTO.text  := QryBicoEnc_Temp['PRODUTOS_DESC'];
          formvendas.Sds_pedidos_itensquantidade.text         := formatcurr('0.000', QryBicoEnc_Temp['LITROS']);
          formvendas.Sds_pedidos_itensDESCONTO.Text           := '0,00';
          formvendas.Sds_pedidos_itensCODIGO.AsInteger        := FORMVENDAS.NItem;
          formvendas.Sds_pedidos_itensCODIGO_PROD.Text        := QryBicoEnc_Temp.FieldbyName('ID_PRODUTOS').AsString;
          formvendas.sds_pedidos_itensCODIGO_PRODUTO.Text     := DM.Sds_produtos_cCODIGO_BARRAS.TEXT;
          formvendas.Sds_pedidos_itensCODIGO_ID.Text          := formvendas.N_venda.Text;
          formvendas.Sds_pedidos_itensUNIDADE.Text            := DM.SDS_PRODUTOS_CDESC_UNIDADE.TEXT;
          formvendas.Sds_pedidos_itensVENDEDOR.Text           := dm.SDS_UsuariosCODIGO.Text;
          formvendas.Sds_pedidos_itensSIT_TRIBUTARIA.Text     := DM.SDS_PRODUTOS_CSIT_TRIBUTARIA.text;
          formvendas.Sds_pedidos_itensFRACAO.AsFloat          := StrToFloatDef(DM.SDS_PRODUTOS_CFRACAO.Text,0);
          formvendas.Sds_pedidos_itensCOD_NCM.TEXT            := DM.Sds_produtos_cNCM_SH.Text;
          formvendas.Sds_pedidos_itensPROD_SERV.Text          := DM.Sds_produtos_cPROD_SERV.Text;
          formvendas.Sds_pedidos_itensITEN.AsInteger          := FORMVENDAS.NItem;
          formvendas.Sds_pedidos_itensCODIGO_BICO.Text        := QryBicoEnc_Temp['COD_BICOENC_TEMP'];
          formvendas.Sds_pedidos_itensPRECO_TOTAL.VALUE      :=  (formvendas.Sds_pedidos_itensquantidade.VALUE * formvendas.Sds_pedidos_itensPreco_unitario.VALUE);
          formvendas.Sds_pedidos_itens.post;
        //  IF not formvendas.sds_pedidos_itens.Eof then
         // begin
           formvendas.Sds_pedidos_itens.last;
          formvendas.sds_pedidos_itens.insert;
          formvendas.NValor:=1;
          formvendas.NItem:=formvendas.NItem+formvendas.NValor;
          formvendas.Sds_pedidos_itens.Edit;
          formvendas.Sds_pedidos_itensCODIGO.AsInteger:=(formvendas.NItem);
          formvendas.Sds_pedidos_itensITEN.AsInteger :=(formvendas.NItem);
          formvendas.Sds_pedidos_itensCODIGO_PROD.AsInteger := 1;
          formvendas.Sds_pedidos_itensCODIGO_ID.Text := formvendas.N_venda.Text;
          formvendas.Sds_pedidos_itensQUANTIDADE.Text := '0,00';
          formvendas.Sds_pedidos_itensPRECO_UNITARIO.Text := '0,00';
          formvendas.Sds_pedidos_itensDESCONTO.Text := '0,00';
          formvendas.Sds_pedidos_itensPRECO_TOTAL.Text := '0,00';
          formvendas.Sds_pedidos_itensFRACAO.Text := '1';

          formvendas.Sds_pedidos_itens.last;
          formvendas.DBGRID.COLUMNS.Grid.Fields[0].FocusControl;
          formvendas.Sds_pedidos_itens.Edit;
          formvendas.ComboEdit1.Visible := True;
          formvendas.ComboEdit1.SetFocus;
          end else
              If not DM.SDS_PRODUTOS_C.locate('codigo', QryBicoEnc_Temp.FieldbyName('ID_PRODUTOS').AsString,[])=True then
              begin
               SHOWMESSAGE('Produto não Localizado...');
               abort;
               Exit;
              end;

   { VendaFrm.Listview1.Items.Insert(0);
    VendaFrm.Listview1.Items.Item[0].Caption := QryBicoEnc_Temp.FieldbyName('ID_PRODUTOS').AsString ;
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(0, formatcurr('0.000', QryBicoEnc_Temp['LITROS']));
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(1, QryBicoEnc_Temp['PRODUTOS_DESC']);
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(2, formatcurr('0.000', QryBicoEnc_Temp['PRECO']));
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(3, formatcurr('0.00', QryBicoEnc_Temp['DINHEIRO']));
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(4, '0');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(5, '0');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(6, '0');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(7, '');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(8, QryBicoEnc_Temp.FieldbyName('ID_PRODUTOS').AsString); //Cod_produtos
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(9, '0');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(10, DateToStr(now));
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(11, DateToStr(now));
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(12, DateToStr(now));
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(13, DateToStr(now));
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(14, '');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(15, '0');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(16, '0');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(17, '0');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(18, '');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(19, '');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(20, '0');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(21, '0');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(22, '0'); //Valor ICMS
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(23, '0'); //Valor IPI
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(24, '');
    VendaFrm.Listview1.Items.Item[0].SubItems.Insert(25, QryBicoEnc_Temp['COD_BICOENC_TEMP']);
    VendaFrm.currencyedit2.Value := VendaFrm.currencyedit2.Value +
       strtofloat(VendaFrm.Listview1.Items.Item[0].SubItems.Strings[3]);
    VendaFrm.currencyedit2.displayformat := ',0.00';  }
   end;
 QryBicoEnc_Temp.Close;
 QryBicoEnc_Temp.sql.Clear;
 self.Close;
end;

procedure TVendaBicoEnc_TempListFrm.FormActivate(Sender: TObject);
begin
 AtualizaTela;
end;

procedure TVendaBicoEnc_TempListFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 DM.CloseIBArray([VendaBicoEnc_TempListFrm.QryBicoEnc_Temp, VendaBicoEnc_TempListFrm.QryBomba]);
 action := cafree;
end;

procedure TVendaBicoEnc_TempListFrm.Edit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

begin
 if Key = vk_Return then
  Localizar
 else if key = vk_Escape then
  self.close;
end;




procedure TVendaBicoEnc_TempListFrm.BoxBomba0Click(Sender: TObject);
var bomba: string;
begin
 Edit2.Text :=  '';
 if ((Sender = BoxBomba0) or (Sender = Estado0)) then
  Edit2.Text :=  '1'
 else  if ((Sender = BoxBomba1) or (Sender = Estado1)) then
  Edit2.Text :=  '2'
 else  if ((Sender = BoxBomba2) or (Sender = Estado2)) then
  Edit2.Text :=  '3'
 else  if ((Sender = BoxBomba3) or (Sender = Estado3)) then
  Edit2.Text :=  '4'
 else  if ((Sender = BoxBomba4) or (Sender = Estado4)) then
  Edit2.Text :=  '5'
 else  if ((Sender = BoxBomba5) or (Sender = Estado5)) then
  Edit2.Text :=  '6'
 else  if ((Sender = BoxBomba6) or (Sender = Estado6)) then
  Edit2.Text :=  '7'
 else  if ((Sender = BoxBomba7) or (Sender = Estado7)) then
  Edit2.Text :=  '8'
 else  if ((Sender = BoxBomba8) or (Sender = Estado8)) then
  Edit2.Text :=  '9'
 else  if ((Sender = BoxBomba9) or (Sender = Estado9)) then
  Edit2.Text :=  '10'
 else  if ((Sender = BoxBomba10) or (Sender = Estado10)) then
  Edit2.Text :=  '11'
 else  if ((Sender = BoxBomba11) or (Sender = Estado11)) then
  Edit2.Text :=  '12';

 if QryBicoEnc_Temp.Locate('ID_BOMBA', Edit2.Text, []) then
 begin
  if DBGrid1.CanFocus then
   DBGrid1.SetFocus;
 end
 else Edit2.SetFocus;
end;

procedure TVendaBicoEnc_TempListFrm.BoxBomba0DblClick(Sender: TObject);
var bomba: string;
begin
 Edit2.Text :=  '';
 if ((Sender = BoxBomba0) or (Sender = Estado0)) then
  Edit2.Text :=  '1'
 else  if ((Sender = BoxBomba1) or (Sender = Estado1)) then
  Edit2.Text :=  '2'
 else  if ((Sender = BoxBomba2) or (Sender = Estado2)) then
  Edit2.Text :=  '3'
 else  if ((Sender = BoxBomba3) or (Sender = Estado3)) then
  Edit2.Text :=  '4'
 else  if ((Sender = BoxBomba4) or (Sender = Estado4)) then
  Edit2.Text :=  '5'
 else  if ((Sender = BoxBomba5) or (Sender = Estado5)) then
  Edit2.Text :=  '6'
 else  if ((Sender = BoxBomba6) or (Sender = Estado6)) then
  Edit2.Text :=  '7'
 else  if ((Sender = BoxBomba7) or (Sender = Estado7)) then
  Edit2.Text :=  '8'
 else  if ((Sender = BoxBomba8) or (Sender = Estado8)) then
  Edit2.Text :=  '9'
 else  if ((Sender = BoxBomba9) or (Sender = Estado9)) then
  Edit2.Text :=  '10'
 else  if ((Sender = BoxBomba10) or (Sender = Estado10)) then
  Edit2.Text :=  '11'
 else  if ((Sender = BoxBomba11) or (Sender = Estado11)) then
  Edit2.Text :=  '12';

 Localizar;
end;

procedure TVendaBicoEnc_TempListFrm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key = vk_F1 then
  Edit2.Text :=  '1'
 else if key = vk_F2 then
  Edit2.Text :=  '2'
 else if key = vk_F3 then
  Edit2.Text :=  '3'
 else if key = vk_F4 then
  Edit2.Text :=  '4'
 else if key = vk_F5 then
  Edit2.Text :=  '5'
 else if key = vk_F6 then
  Edit2.Text :=  '6'
 else if key = vk_F7 then
  Edit2.Text :=  '7'
 else if key = vk_F8 then
  Edit2.Text :=  '8'
 else if key = vk_F9 then
  Edit2.Text :=  '9'
 else if key = vk_F10 then
  Edit2.Text :=  '10'
 else if key = vk_F11 then
  Edit2.Text :=  '11'
 else if key = vk_F12 then
  Edit2.Text :=  '12';

 if key in [vk_F1..vk_F12] then
   Localizar;
end;

procedure TVendaBicoEnc_TempListFrm.Localizar;
begin
 if (QryBicoEnc_Temp.Locate('ID_BOMBA', Edit2.Text, [])) then
   DBGrid1DblClick(nil)
   else
     begin
      application.MessageBox('Não há abastecimento em aberto referente a esta bomba.',
         'Atenção', mb_ok + mb_iconinformation);
      Edit2.Clear;
     end;
end;

procedure TVendaBicoEnc_TempListFrm.SpeedButton1Click(Sender: TObject);
begin
 AtualizaTela;
end;

procedure TVendaBicoEnc_TempListFrm.AtualizaTela;
var x : integer;
begin
 QryBicoEnc_Temp.Close;
 QryBicoEnc_Temp.SQL.Clear;
 QryBicoEnc_Temp.SQL.Add('select * from BICOENC_TEMP where COD_BICOENC_TEMP > 0');
 for x := 0 to FORMVENDAS.Sds_pedidos_itens.recordcount - 1 do
 begin
  if formvendas.sds_pedidos_itensCodigo_bico.text <> '' then
  begin
    QryBicoEnc_Temp.SQL.Add('and COD_BICOENC_TEMP <> :COD_BICOENC_TEMP' + inttostr(x));
    QryBicoEnc_Temp.ParamByName('COD_BICOENC_TEMP' + inttostr(x)).AsString :=
               formvendas.sds_pedidos_itensCodigo_bico.text;
  end;
 end;
 QryBicoEnc_Temp.Prepare;
 QryBicoEnc_Temp.Open;

 //Informações de Bomba
 With QryBomba do
  begin
   Close;
   Sql.Clear;
   Sql.add('select COD_BOMBA, ID_BOMBA, COD_FRENTISTA, QNT_BICO, AUTO_AUTORIZA from BOMBA');
   Sql.add('order by ID_BOMBA');
   Prepare;
   Open;
   FetchAll;
  end;
 //--- Mostra Objeto Bomba ---
 QryBomba.First;

 while not QryBomba.Eof do
  begin
   TControl(VendaBicoEnc_TempListFrm.FindComponent('BoxBomba' + inttostr(QryBomba.FieldByName('ID_BOMBA').asinteger - 1))).visible := true;
   TImage(VendaBicoEnc_TempListFrm.FindComponent('Estado' + inttostr(QryBomba.FieldByName('ID_BOMBA').asinteger - 1))).Picture.Bitmap := NaoAutorizadaImg.Picture.Bitmap;
   QryBomba.Next;
  end;

 QryBicoEnc_Temp.First;

 while not QryBicoEnc_Temp.Eof do
  begin
    TImage(VendaBicoEnc_TempListFrm.FindComponent('Estado' + inttostr(QryBicoEnc_Temp.FieldByName('ID_BOMBA').AsInteger - 1))).Picture.Bitmap := FimDeVendaImg.Picture.Bitmap;
    QryBicoEnc_Temp.Next;
  end;
end;

end.



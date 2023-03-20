unit Utroco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, SimpleDS, Grids, XDBGrids, StdCtrls, Mask,
  ToolEdit, CurrEdit, ExtCtrls, RXCtrls, DBGrids, AdvGlowButton, FMTBcd,
  SqlExpr;

type
  TFormTroco = class(TForm)
    Panel4: TPanel;
    PanelOK: TPanel;
    RxLabel3: TRxLabel;
    Shape8: TShape;
    RxLabel11: TRxLabel;
    edtDiferenca: TCurrencyEdit;
    EdtTroco: TCurrencyEdit;
    Panel8: TPanel;
    Label13: TLabel;
    DBGridFormas: TXDBGrid;
    qFormas: TSimpleDataSet;
    qFormasCOD_FORMA: TIntegerField;
    qFormasDESCRICAO: TStringField;
    qFormasTIPO_PAGTO: TStringField;
    qFormasMOSTRA_VENDA: TStringField;
    qFormasTELA_TROCO: TStringField;
    CDSFormas: TClientDataSet;
    CDSFormasCODIGO: TIntegerField;
    CDSFormasDESCRICAO: TStringField;
    CDSFormasTIPO: TStringField;
    CDSFormasCONCEDER_DESCONTO: TStringField;
    CDSFormastipo_pagto: TStringField;
    CDSFormasVALOR: TFloatField;
    DSFormas: TDataSource;
    Panel1: TPanel;
    BtnGravar: TAdvGlowButton;
    SPC_MOV_DIARIO: TSQLStoredProc;
    procedure FormShow(Sender: TObject);
    procedure DBGridFormasColEnter(Sender: TObject);
    procedure DBGridFormasEnter(Sender: TObject);
    procedure DBGridFormasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridFormasKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridFormasTotalsUpdated(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    function  TotalizaFormaPagamento(const sTipo : string) : currency;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridFormasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TXColumn;
      State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    vale, CHEQUE, dinheiro : Double;
    cTotalforma, Total1  : Double;

  end;

var
  FormTroco: TFormTroco;

  
implementation

uses ModulodeDadosBaixas, Ubibli1, ModulodeDados, ModuleDados1,
  chequesTroco, Principal, Vendas, RelValeTroco, VendasParcelamento;

    var
    sSql : string;
    iEmp :Integer;




{$R *.dfm}

function TFormTroco.TotalizaFormaPagamento(const sTipo : string) : currency;
begin
   cTotalForma:= 0;

   with CDSFormas do
      begin
         First;
         while not eof do
            begin
               if trim(CdsFormasTIPO.AsString) = trim(sTipo) then
                  cTotalForma:= cTotalForma + CDSFormasVALOR.AsCurrency;
               next;
            end;
      end;
   result:= cTotalForma;
end;

procedure TFormTroco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if dm.IBTransaction.Active then
      dm.IBTransaction.Commit;
      dm1.QConsValeTroco.SQL.Clear;
      dm1.QConsValeTroco.SQL.Text := sSql;
      dm1.QConsValeTroco.Close;
      Action := caFree;
      FormTroco:= nil;
end;


procedure TFormTroco.FormShow(Sender: TObject);
var
  tp : string;
  contador, z : Integer;
begin
    sSql := dm1.QConsValeTroco.SQL.Text;
    iEmp := dm.sds_empresacodigo.asinteger;

   qFormas.Close;
   qFormas.Open;

   cdsformas.Close;
   CDSFormas.CreateDataSet;
   CDSFormas.IndexFieldNames:= 'codigo';
   CDSFormas.Open;

   qFormas.First;
   TP:='S';
   qFormas.Filtered := False;
   qFormas.Filter := 'TELA_TROCO ='+QuotedStr(TP);
   qFormas.Filtered := True;
   Contador := 0;
   Contador:=qFormas.RecordCount;
   Z:=0;
   For Z:= 1 to Contador do
   begin
   CDSFormas.insert;
   CDSFormasCODIGO.Text    := qFormasCOD_FORMA.Text;
   CDSFormasDESCRICAO.Text := qFormasDESCRICAO.Text;
   CDSFormasTIPO.Text      := qFormasTIPO_PAGTO.Text;
   CDSFormasVALOR.Value    := 0;
   CDSFormas.Post;
   qFormas.Next;
   end;
   DBGridFormas.SetFocus;
   edttroco.Value := formVendas.Sds_pedidossaldo_troco.AsFloat;
end;

procedure TFormTroco.DBGridFormasColEnter(Sender: TObject);
begin
if DBGridFormas.SelectedIndex = 0 then
      DBGridFormas.SelectedIndex:= 1;

end;

procedure TFormTroco.DBGridFormasEnter(Sender: TObject);
begin
 CDSFormas.First;
   DBGridFormas.SelectedIndex:= 1;
end;

procedure TFormTroco.DBGridFormasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 { Para não deixar apagar o registro }
   if  Key = VK_DELETE then
       Key:= VK_NONAME;

   Key:= NaoInsereDBGrid(TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key);

   if Key = vk_space then
   begin
   CDSFormas.Edit;
   CDSFormasVALOR.Value :=0;


   Total1 := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...
   CDSFormas.Edit;
   CDSFormasVALOR.AsFloat := EdtTroco.Value - TOTAL1;
  // EdtTotalGeral.Value  := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...
   CDSFormas.Next;
   CDSFormas.Prior;
   end;
end;

procedure TFormTroco.DBGridFormasKeyPress(Sender: TObject; var Key: Char);
 var bPagou, bErroFormas : boolean;
    cSomaFormas : Real;
    TIPO : string;
begin

   { Verifica Formas de Pagamento }

   if Key =#13 then
   Begin
   DBGridFormasTotalsUpdated(Sender);
   //CDSFormas.Next;
   if CDSFormasTIPO.Text = 'A' then
   begin
   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   BtnGravar.Enabled := True;
   CDSFormas.Next;
  // CDSFormas.Prior;
   end;
   end;
   if CDSFormasTIPO.Text = 'V' then
   begin
   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   BtnGravar.Enabled := True;
    CDSFormas.Next;
  // CDSFormas.Prior;
   end;
   end;

   if CDSFormasTIPO.Text = 'H' then
   begin
   TIPO := 'H';
   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   FormCheques_troco := tFormCheques_troco.create(Self);
   FormCheques_troco.showmodal;
   BtnGravar.Enabled := True;
   CDSFormas.Edit;
   CDSFormasVALOR.Value := FormCheques_troco.currencyEdit2.value;
   CDSFormas.Post;
   CDSFormas.Next;
  // FormCheques_troco := caFree;
   FormCheques_troco := nil;
  // CDSFormas.Prior;
   end;
   end;

   if CDSFormasTIPO.Text = 'Q' then
   begin
   IF CDSFormasVALOR.AsFloat > 0 then
   BEGIN
   CHEQUE:=  CDSFormasVALOR.Value;
   FormCheques_troco := tFormCheques_troco.create(Self);
   FormCheques_troco.showmodal;
   BtnGravar.Enabled := True;
   CDSFormas.Edit;
   CDSFormasVALOR.Value := FormCheques_troco.currencyEdit1.value;
   CDSFormas.Post;
   CDSFormas.Next;
 //FormCheques_troco.Action := cafee;
   FormCheques_troco := nil;
 //  CDSFormas.Prior;
   end;
   end;
   CDSFormas.Next;
  end;
end;

procedure TFormTroco.DBGridFormasTotalsUpdated(Sender: TObject);
var
  cSomaFormas : Real;
begin
     //E_desconto.Text := DBGrid.Columns.Items[4].TotalFooter.Value;
     //edit60.Text  := DBGrid.Columns.Items[5].TotalFooter.Value; // pega o valor total da coluna somada...

      cSomaFormas  := DBGridFormas.Columns.Items[1].TotalFooter.Value; // pega o valor total da coluna somada...

     // if cSomaFormas - EdtTroco.VALUE  > 0.01 then
      begin
       edtDiferenca.Text :=  currtostr(cSomaFormas - EdtTroco.VALUE);
     // edtDiferenca.Value :=0;

      end;

end;


procedure TFormTroco.BtnGravarClick(Sender: TObject);
begin
             if edtDiferenca.Value > 0 then
             begin
                ShowMessage('total do troco difere do lançaco favor conferir');
                exit;
                abort;
             end;
             
             if edtDiferenca.Value < 0 then
             begin
                ShowMessage('total do troco difere do lançaco favor conferir');
                exit;
                abort;
             end;

              if TotalizaFormaPagamento('V') > 0 then
              begin
                VALE := cTotalForma;
              end;

             if TotalizaFormaPagamento('A') > 0 then
             begin
                      dinheiro := cTotalForma;


               {  if Application.MESSAGEBOX('Confirma a Geração do Vale Troco?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                 begin
                   dm1.ProxCod.Close;
                   dm1.ProxCod.SQL.Clear;
                   dm1.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM VALETROCO');
                   DM1.ProxCod.Open;

                   dm1.Sds_valeTroco.Open;
                   dm1.Sds_valeTroco.Insert;
                   DM1.Sds_valeTrocoCODIGO.ASINTEGER := DM1.ProxCodN_CODIGO.ASINTEGER + 1;
                   DM1.Sds_valeTrocoUSERCAD.Text:= FormPrincipal.UserLogado;
                   DM1.Sds_valeTrocoTOTAL_VENDA.AsFloat := FormParcelamento.EdtTotalGeral.Value;
                   DM1.Sds_valeTrocoTOTAL_PAGO.AsFloat := FormParcelamento.avista;
                   DM1.Sds_valeTrocoVALOR_VALETROCO.AsFloat := cTotalForma;
                   DM1.Sds_valeTrocoVALOR_UTILIZADO.AsFloat := 0;
                   DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat := cTotalForma;
                   DM1.Sds_valeTrocoDATACAD.Text:= datetostr(now);
                   DM1.Sds_valeTrocoDATA.Text:= datetostr(now);
                   DM1.Sds_valeTrocoHORA.Text:= TimeToStr(now);
                   DM1.Sds_valeTrocoDEBITOCREDITO.Text:= 'D';
                   dm1.Sds_valeTrocoCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
                   dm1.Sds_valeTrocoCOD_CLIENTE.Text := formVendas.Sds_pedidosCODIGO_CLIENTE.Text;
                   dm1.Sds_valeTrocoNOME_CLIENTE.Text := formVendas.Sds_pedidosNOME_CLIENTE.Text;
                   dm1.Sds_valeTrocoCOD_VENDA.Text := formVendas.N_venda.Text;
                   dm1.Sds_valeTroco.Post;
                   dm1.Sds_valeTroco.ApplyUpdates(0);

                     begin
                     // lancamento no caixa
                      SPC_MOV_DIARIO.Params[1].AsDate:= formVendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                      SPC_MOV_DIARIO.Params[2].AsString:= 'Troco em Vale da Venda nº' + FormVendas.N_venda.Text + ' - ' + FormVendas.Desc_cliente.Text;
                      SPC_MOV_DIARIO.Params[3].AsString:= Formprincipal.userlogado; //Formprincipal.userlogado;
                      SPC_MOV_DIARIO.Params[4].AsString:= 'C';
                      SPC_MOV_DIARIO.Params[5].Value:= 0;
                      SPC_MOV_DIARIO.Params[6].Value:= cTotalForma;
                      SPC_MOV_DIARIO.Params[7].Value:= null;
                      SPC_MOV_DIARIO.Params[8].Value:= null;
                      SPC_MOV_DIARIO.Params[9].Value:= FormVendas.N_venda.Text;
                      SPC_MOV_DIARIO.Params[10].Value:= 'VAL';
                      SPC_MOV_DIARIO.ExecProc;
                      // fim lancto no caixa
                      end;

                      if Application.MESSAGEBOX('Deseja Emitir o Vale Troco?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                      begin

                      if dm.IBTransaction.Active then
                        dm.IBTransaction.Commit;
                      dm.IBTransaction.StartTransaction;
                      with dm1.QConsValeTroco do
                        begin
                           close;
                           sql.Clear;
                           sql.Text:= sSql;
                              begin
                                 if DM1.Sds_valeTrocoCODIGO.Text > '' then
                                    begin
                                        begin
                                             sql.Add(' WHERE V.CODIGO = :COD_VALE AND V.COD_EMPRESA = :CODEMP');
                                             Parambyname('COD_VALE').AsInteger:= StrToInt(DM1.Sds_valeTrocoCODIGO.Text);
                                             Parambyname('codemp').AsInteger:= iEmp;
                                         end;
                                 open;
                                 end;

                            IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                            BEGIN
                            FormRelValeTroco:=TFormrELValetroco.Create(self);
                            FormRelValeTroco.RLReport1.DefaultFilter.Destroy;
                            FormRelValeTroco.RLReport1.Prepare;
                            FormRelValeTroco.RLReport1.PreviewModal;
                            end else
                            IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                            BEGIN
                            FormRelValeTroco:=TFormrELValetroco.Create(self);
                            //FormRelValeTroco.RLReport1.DefaultFilter.Destroy;
                            FormRelValeTroco.RLReport1.Prepare;
                            FormRelValeTroco.RLReport1.PreviewModal;
                            end;
                            end;
                            end;

                      end;
                      end else }
                 BtnGravar.Enabled := False;

                 begin
                 // lancamento no caixa
                  SPC_MOV_DIARIO.Params[1].AsDate:= formVendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                  SPC_MOV_DIARIO.Params[2].AsString:= 'Troco da Venda - ' + FormVendas.N_venda.Text + ' - em Dinh. -' + FormVendas.Desc_cliente.Text;                              SPC_MOV_DIARIO.Params[3].AsString:= Formprincipal.userlogado; //Formprincipal.userlogado;
                  SPC_MOV_DIARIO.Params[4].AsString:= 'C';
                  SPC_MOV_DIARIO.Params[5].Value:= 0;
                  SPC_MOV_DIARIO.Params[6].Value:= cTotalForma;
                  SPC_MOV_DIARIO.Params[7].Value:= null;
                  SPC_MOV_DIARIO.Params[8].Value:= null;
                  SPC_MOV_DIARIO.Params[9].Value:= FormVendas.N_venda.Text;
                  SPC_MOV_DIARIO.Params[10].Value:= 'VEN';
                  SPC_MOV_DIARIO.ExecProc;
                  // fim lancto no caixa
                  end;                       

                 begin
                   formVendas.Sds_pedidos.Edit;
                   formVendas.Sds_pedidossaldo_troco.AsFloat := 0;
                   formVendas.Sds_pedidossaldo_troco.AsFloat := formVendas.Sds_pedidossaldo_troco.AsFloat - dinheiro;
                   formVendas.Sds_pedidos.Post;
                   close;
                 end; 
                 end;



             if TotalizaFormaPagamento('H') > 0 then
             begin
              if Application.MESSAGEBOX('Confirma o Troco em Cheques Recebidos?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
              begin
                DMB.SDS_BaixarCheque.First;
                While not dmb.SDS_BaixarCheque.Eof do
                begin
                if dmb.SDS_BaixarChequeCHEK_BOX.AsString = 'X' then
                dmb.SDS_BaixarCheque.Edit;
                dmb.SDS_BaixarChequeCOMPENSADO.Text := 'S';
                dmb.SDS_BaixarCheque.Post;
                dmb.SDS_BaixarCheque.next;
                end;
                begin
               // lancamento no caixa
                SPC_MOV_DIARIO.Params[1].AsDate:= DATE;
                SPC_MOV_DIARIO.Params[2].AsString:= 'Troco da Venda - ' + FormVendas.N_venda.Text + ' - em CHEQUE. -' + FormVendas.Desc_cliente.Text;
                SPC_MOV_DIARIO.Params[3].AsString:= Formprincipal.userlogado;
                SPC_MOV_DIARIO.Params[4].AsString:= 'C';
                SPC_MOV_DIARIO.Params[5].Value:= 0;
                SPC_MOV_DIARIO.Params[6].Value:= cTotalForma;
                SPC_MOV_DIARIO.Params[7].Value:= null;
                SPC_MOV_DIARIO.Params[8].Value:= null;
                SPC_MOV_DIARIO.Params[9].Value:= FormVendas.N_venda.Text;
                SPC_MOV_DIARIO.Params[10].Value:= 'CHE';
                SPC_MOV_DIARIO.ExecProc;
               // fim lancto no caixa
                 end;
              end;
              begin
                   formVendas.Sds_pedidos.Edit;
                   formVendas.Sds_pedidossaldo_troco.AsFloat := 0;
                   formVendas.Sds_pedidossaldo_troco.AsFloat := formVendas.Sds_pedidossaldo_troco.asfloat - ctotalForma;
                   formVendas.Sds_pedidos.Post;

                CLOSE;
              end;
              end;

             if TotalizaFormaPagamento('Q') > 0 then
             begin
              //if Application.MESSAGEBOX('Confirma o Troco em Cheques Emitido?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
              //begin
                {DMB.SDS_BaixarCheque.First;
                While not dmb.SDS_BaixarCheque.Eof do
                begin
                if dmb.SDS_BaixarChequeCHEK_BOX.AsString = 'X' then
                dmb.SDS_BaixarCheque.Edit;
                dmb.SDS_BaixarChequeCOMPENSADO.Text := 'S';
                dmb.SDS_BaixarCheque.Post;
                dmb.SDS_BaixarCheque.next;
                end;}
              // end;
               begin
                formVendas.Sds_pedidos.Edit;
                formVendas.Sds_pedidossaldo_troco.AsFloat := 0;
                formVendas.Sds_pedidossaldo_troco.AsFloat := formVendas.Sds_pedidossaldo_troco.asfloat - vale;
                formVendas.Sds_pedidos.Post;CLOSE;
              end;
              end;

           if TotalizaFormaPagamento('V') > 0 then
           begin
              // if EdtTroco.Value > 0 then
            VALE := cTotalForma;
            IF FormParcelamento.VALE >  0 then
            begin

            if  DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat > 0 then
            begin
              if Application.MESSAGEBOX('Deseja Emitir o Vale Troco com o Saldo Atualizado?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
              begin
               // if Application.MESSAGEBOX('O Troco do Vale Troco sera em dinheiro?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
              begin
              SPC_MOV_DIARIO.Params[1].AsDate:= formVendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
              SPC_MOV_DIARIO.Params[2].AsString:= 'Troco do Vale -  Nº'+ dm1.Sds_valeTrocoCODIGO.Text+ ' ref vda Nº '+ FormVendas.N_venda.Text + ' - ' + FormVendas.Desc_cliente.Text;
              SPC_MOV_DIARIO.Params[3].AsString:= Formprincipal.userlogado;
              SPC_MOV_DIARIO.Params[4].AsString:= 'C';
              SPC_MOV_DIARIO.Params[5].Value:= 0;
              SPC_MOV_DIARIO.Params[6].Value:= cTotalForma;
              SPC_MOV_DIARIO.Params[7].Value:= null;
              SPC_MOV_DIARIO.Params[8].Value:= null;
              SPC_MOV_DIARIO.Params[9].Value:= FormVendas.N_venda.Text;
              SPC_MOV_DIARIO.Params[10].AsString:= 'VAL';
              SPC_MOV_DIARIO.ExecProc;
              end;

              if dm.IBTransaction.Active then
                dm.IBTransaction.Commit;
              dm.IBTransaction.StartTransaction;
              with dm1.QConsValeTroco do
                begin
                   close;
                   sql.Clear;
                   sql.Text:= sSql;
                      begin
                         if DM1.Sds_valeTrocoCODIGO.Text > '' then
                            begin
                                begin
                                     sql.Add(' WHERE V.CODIGO = :COD_VALE AND V.COD_EMPRESA = :CODEMP');
                                     Parambyname('COD_VALE').AsInteger:= StrToInt(FormParcelamento.EDIT3.Text);
                                     Parambyname('codemp').AsInteger:= iEmp;
                                 end;
                         open;
                         end;

                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                    BEGIN
                    FormRelValeTroco:=TFormrELValetroco.Create(self);
                    FormRelValeTroco.RLReport1.DefaultFilter.Destroy;
                    FormRelValeTroco.RLReport1.Prepare;
                    FormRelValeTroco.RLReport1.PreviewModal;
                    end else
                    IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                    BEGIN
                    FormRelValeTroco:=TFormrELValetroco.Create(self);
                    //FormRelValeTroco.RLReport1.DefaultFilter.Destroy;
                    FormRelValeTroco.RLReport1.Prepare;
                    FormRelValeTroco.RLReport1.PreviewModal;
                    end;
                    end;
                end;
               end;
              end;
              end else


            //  if Application.MESSAGEBOX('Confirma a Geração de um Novo Vale Troco?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                 begin
                   dm1.ProxCod.Close;
                   dm1.ProxCod.SQL.Clear;
                   dm1.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM VALETROCO');
                   DM1.ProxCod.Open;

                   dm1.Sds_valeTroco.Open;
                   dm1.Sds_valeTroco.Insert;
                   DM1.Sds_valeTrocoCODIGO.ASINTEGER := DM1.ProxCodN_CODIGO.ASINTEGER + 1;
                   DM1.Sds_valeTrocoUSERCAD.Text:= FormPrincipal.UserLogado;
                   DM1.Sds_valeTrocoTOTAL_VENDA.AsFloat := FormParcelamento.EdtTotalGeral.Value;
                   DM1.Sds_valeTrocoTOTAL_PAGO.AsFloat := FormParcelamento.avista;
                   DM1.Sds_valeTrocoVALOR_VALETROCO.AsFloat := vale;
                   DM1.Sds_valeTrocoVALOR_UTILIZADO.AsFloat := 0;
                   DM1.Sds_valeTrocoSALDO_ATUAL.AsFloat := VALE;
                   DM1.Sds_valeTrocoDATACAD.Text:= datetostr(now);
                   DM1.Sds_valeTrocoDATA.Text:= datetostr(now);
                   DM1.Sds_valeTrocoHORA.Text:= TimeToStr(now);
                   DM1.Sds_valeTrocoDEBITOCREDITO.Text:= 'D';
                   dm1.Sds_valeTrocoCOD_EMPRESA.Text := DM.SDS_EmpresaCODIGO.Text;
                   dm1.Sds_valeTrocoCOD_CLIENTE.Text := formVendas.Sds_pedidosCODIGO_CLIENTE.Text;
                   dm1.Sds_valeTrocoNOME_CLIENTE.Text := formVendas.Sds_pedidosNOME_CLIENTE.Text;
                   dm1.Sds_valeTrocoCOD_VENDA.Text := formVendas.N_venda.Text;
                   dm1.Sds_valeTroco.Post;
                   dm1.Sds_valeTroco.ApplyUpdates(0);

                   FormParcelamento.EDIT3.TEXT := DM1.Sds_valeTrocoCODIGO.TEXT;

                     begin
                     // lancamento no caixa
                      SPC_MOV_DIARIO.Params[1].AsDate:= formVendas.Sds_pedidosDATA_PEDIDO.AsDateTime;
                      SPC_MOV_DIARIO.Params[2].AsString:= 'Troco em Vale da Venda nº' + FormVendas.N_venda.Text + ' - ' + FormVendas.Desc_cliente.Text;
                      SPC_MOV_DIARIO.Params[3].AsString:= Formprincipal.userlogado; //Formprincipal.userlogado;
                      SPC_MOV_DIARIO.Params[4].AsString:= 'C';
                      SPC_MOV_DIARIO.Params[5].Value:= 0;
                      SPC_MOV_DIARIO.Params[6].Value:= VALE;
                      SPC_MOV_DIARIO.Params[7].Value:= null;
                      SPC_MOV_DIARIO.Params[8].Value:= null;
                      SPC_MOV_DIARIO.Params[9].Value:= FormVendas.N_venda.Text;
                      SPC_MOV_DIARIO.Params[10].Value:= 'VAL';
                      SPC_MOV_DIARIO.ExecProc;
                      // fim lancto no caixa
                      end;

                    //  if Application.MESSAGEBOX('Deseja Emitir o Vale Troco?', 'Confirmar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = ID_YES then
                      begin

                      if dm.IBTransaction.Active then
                        dm.IBTransaction.Commit;
                      dm.IBTransaction.StartTransaction;
                      with dm1.QConsValeTroco do
                        begin
                           close;
                           sql.Clear;
                           sql.Text:= sSql;
                              begin
                                 if DM1.Sds_valeTrocoCODIGO.Text > '' then
                                    begin
                                        begin
                                             sql.Add(' WHERE V.CODIGO = :COD_VALE AND V.COD_EMPRESA = :CODEMP');
                                             Parambyname('COD_VALE').AsInteger:= StrToInt(FormParcelamento.EDIT3.Text);
                                             Parambyname('codemp').AsInteger:= iEmp;
                                         end;
                                 open;
                                 end;

                            IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='P' THEN
                            BEGIN
                            FormRelValeTroco:=TFormrELValetroco.Create(self);
                            FormRelValeTroco.RLReport1.DefaultFilter.Destroy;
                            FormRelValeTroco.RLReport1.Prepare;
                            FormRelValeTroco.RLReport1.PreviewModal;
                            end else
                            IF DM.SDS_CONFIGURACOESIMPRESSAO.TEXT ='M' THEN
                            BEGIN
                            FormRelValeTroco:=TFormrELValetroco.Create(self);
                            //FormRelValeTroco.RLReport1.DefaultFilter.Destroy;
                            FormRelValeTroco.RLReport1.Prepare;
                            FormRelValeTroco.RLReport1.PreviewModal;
                            end;
                            end;
                            end;

                      end;
                      end;

              begin
                formVendas.Sds_pedidos.Edit;
                formVendas.Sds_pedidossaldo_troco.AsFloat := 0;
                formVendas.Sds_pedidossaldo_troco.AsFloat := formVendas.Sds_pedidossaldo_troco.asfloat - vale;
                formVendas.Sds_pedidos.Post;
                CLOSE;
              end;
            end;
end;


procedure TFormTroco.DBGridFormasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TXColumn;
  State: TGridDrawState);
begin
 if not odd(CDSFormas.RecNo) then
  if not (gdselected in State) then
    begin
    DBGridFormas.Canvas.Brush.Color := $00FDE2BD;
    DBGridFormas.Canvas.FillRect(Rect);
    DBGridFormas.DefaultDrawDataCell(Rect,Column.field,state);
  end;
end;

procedure TFormTroco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_F10 THEN
begin

   BtnGravar.Click;

 end;
end;

end.

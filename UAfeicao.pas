unit UAfeicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadNovo, ToolEdit, Mask, DBCtrls, StdCtrls, AdvGlowButton,
  ExtCtrls, AlignEdit, Grids, DBGrids, DB, CurrEdit, Buttons, ComCtrls,
  SUIDlg, RXDBCtrl, IBSQL;

type
  TFormAfericao = class(TFrmCadastroNovo)
    Label1: TLabel;
    Label10: TLabel;
    EdtCodPro: TAlignEdit;
    BtnConsPro: TSpeedButton;
    BtnAddPro: TSpeedButton;
    EdtNomePro: TEdit;
    Label11: TLabel;
    EdtQuant: TEdit;
    Label5: TLabel;
    edtVenda: TCurrencyEdit;
    Label14: TLabel;
    edtTotal: TCurrencyEdit;
    Label13: TLabel;
    qtdeFracao: TCurrencyEdit;
    Label12: TLabel;
    Label4: TLabel;
    EdtEstoque: TCurrencyEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    dt_venda: TDBDateEdit;
    EdtCodPro1: TAlignEdit;
    Edit2: TEdit;
    SQLVendas: TIBSQL;
    procedure AtualizaManutencao;
    procedure HabilitaPanel;
    procedure DesabilitaPanel;
    procedure HabilitaNovo;
    procedure BtnConsProClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnAddProClick(Sender: TObject);
    procedure EdtCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdtCodProChange(Sender: TObject);
    procedure EdtCodProExit(Sender: TObject);
    procedure EdtQuantExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAfericao: TFormAfericao;

implementation

uses ModuleDados1, ConsProdutos, ModulodeDados, Principal, 
  consAfericao, Z_RotinasGerais;

{$R *.dfm}

Procedure TFormAfericao.AtualizaManutencao;
begin
//DBNavigator.Enabled:= (DM1.Sds_Afericao.State = dsBrowse);
BTNNOVO.Enabled:= (DM1.Sds_Afericao.State = dsBrowse);
BTNEXCLUIR.Enabled:= (DM1.Sds_Afericao.State = dsBrowse);
BtnConsultar.Enabled:= (DM1.Sds_Afericao.State = dsBrowse);
BtnGravar.Enabled:= (DM1.Sds_Afericao.State in [dsInsert, dsEdit]);
BTNCANCELAR.Enabled:= (DM1.Sds_Afericao.State in [dsInsert, dsEdit]);
BtnAlterar.Enabled:= (DM1.Sds_Afericao.State = dsBrowse);

end;

procedure TFormAfericao.HabilitaPanel;
begin
Panel1.Enabled:= True;
end;

procedure TFormAfericao.DesabilitaPanel;
begin
Panel1.Enabled:= False;
end;

procedure TFormAfericao.HabilitaNovo;
begin
//Novo1.Enabled:=True;
//Editar1.Enabled:=False;
//Excluir1.Enabled:=False;
//Localizar1.Enabled:=False;
//Salvar1.Enabled:= False;
//Cancelar1.Enabled:=False;
BTNNOVO.Enabled:=TRUE;
BtnAlterar.Enabled:=FALSE;
BTNCANCELAR.Enabled:=FALSE;
BtnGravar.Enabled:=FALSE;
BTNEXCLUIR.Enabled:=FALSE;
BtnConsultar.Enabled:= False;
end;

procedure TFormAfericao.BtnConsProClick(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFormConsProdutos, FormConsProdutos);
 // FormConsProdutos.tag:= 4;
  FormConsProdutos.Edit1.Text := EdtCodPro.Text;
  FormConsProdutos.showmodal;
  edtcodpro.Text       := dm.SDS_PRODUTOSCODIGO_BARRAS.AsString;
 // edtcodpro1.Text      := dm.SDS_PRODUTOSCODIGO.AsString;
  edtnomepro.Text      := dm.SDS_PRODUTOSDESCRICAO.AsString;
  EdtEstoque.TEXT      := DM.SDS_PRODUTOSESTOQUE.Text;
  //EdtDataValidade.Text := dm.SDS_PRODUTOSVALIDADE.AsString;
  //QtdeFracionada.Text  := dm.SDS_PRODUTOSESTOQUE_FRACAO.AsString;
  qtdeFracao.Text      := dm.SDS_PRODUTOSFRACAO.AsString;
  edtVenda.Value       := dm.SDS_PRODUTOSPRECO_VENDA.AsFloat;
  //edtVenda2.Value      := dm.SDS_PRODUTOSPRECO_VENDA2.AsFloat;
  EdtQuant.TEXT := '1';
  EdtQuant.SetFocus;
end;

procedure TFormAfericao.btnNovoClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label3.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Inserir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label3.Caption ='S'then
begin
Try
   dm1.ProxCod.Close;
   dm1.ProxCod.SQL.Clear;
   dm1.ProxCod.SQL.Add('select max(codigo) as N_CODIGO FROM AFERICAO');
   DM1.ProxCod.Open;

   dm1.sds_Afericao.Open;
   dm1.sds_Afericao.Insert;
   DM1.SDS_afericaoCODIGO.ASINTEGER :=DM1.ProxCodN_CODIGO.ASINTEGER + 1;
   DM1.SDS_afericaoUSERCAD.Text:= FormPrincipal.UserLogado;
   DM1.SDS_afericaoDATACAD.Text:= datetostr(now);
   DM1.Sds_AfericaoDATA.Text:= datetostr(now);
   HabilitaPanel;
   AtualizaManutencao;
  // EdtCodPro.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;
end;

procedure TFormAfericao.BtnAlterarClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label2.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Editar Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label2.Caption ='S'then
begin
Try
     DM1.SDS_afericao.Edit;
     AtualizaManutencao;
     HabilitaPanel;
     EdtCodPro.SetFocus;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;
end;

procedure TFormAfericao.BtnCancelarClick(Sender: TObject);
begin
  inherited;
Try
     DM1.SDS_afericao.Cancel;
 if DM1.SDS_afericao.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
     DesabilitaPanel;
     //db_nome.Color:= $00E8E8E8;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;
end;

procedure TFormAfericao.BtnGravarClick(Sender: TObject);
begin
  inherited;
Try
      begin
          //DM1.Sds_AfericaoCODIGO_PROD.Text        := EdtCodPro1.Text;
        //  DM1.Sds_AfericaoQUANTIDADE.AsFloat      := StrToFloat(EdtQuant.Text);
        //  DM1.Sds_AfericaoVALOR_UNITARIO.AsFloat  := edtVenda.Value;
       //   DM1.Sds_AfericaoVALOR_TOTAL.AsFloat     := edtTotal.value;

          DM1.Sds_AfericaoCOD_USUARIO.Text := DM.SDS_UsuariosCODIGO.Text;
          DM1.SDS_afericao.Post;
          DM1.SDS_afericao.ApplyUpdates(0);
          AtualizaManutencao;
          DesabilitaPanel;

                       //--- Exclue abastecimentos em aberto

         if DM.IBTransaction.Active then
                DM.IBTransaction.Commit;
                DM.IBTransaction.StartTransaction;
         try
          try
              SQLVendas.Close;
              SQLVendas.SQL.Clear;
              SQLVendas.SQL.Add('delete from BICOENC_TEMP where COD_BICOENC_TEMP=:COD_BICOENC_TEMP');
              SQLVendas.Params.ByName('COD_BICOENC_TEMP').AsInteger := formprincipal.Cds_abastecidasCOD_BICOENC_TEMP.AsInteger;
              SQLVendas.Prepare;
              SQLVendas.ExecQuery;

           DM.IBTransaction.Commit;
          except
          DM.IBTransaction.Rollback;
          showmessage('Erro ao excluir os dados das leituras de bombas');
          end;
        finally
        SQLVendas.Close;
        end;
      end;
                     formprincipal.QryBicoEnc_Temp.Active := false;
                     formprincipal.cds_abastecidas.Active := false;
                     formprincipal.QryBicoEnc_Temp.Active := True;
                     formprincipal.cds_abastecidas.Active := True;

            Close;
   Except
   MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
   MsgErro.ShowModal;
   end;

end;

procedure TFormAfericao.BtnExcluirClick(Sender: TObject);
begin
  inherited;
if FormPrincipal.Label1.Caption ='N'then
begin
MsgInformacao.Text:= 'O usuário conectado não possui autorização para Excluir Registro. Contate o Administrador do Sistema para obter acesso!!! !!!';
MsgInformacao.ShowModal;
End;
if FormPrincipal.Label1.Caption ='S'then
begin
if MsgConfirmacao.ShowModal = mryes then
begin
Try
 Begin
    DM1.SDS_afericao.Delete;
    DM1.SDS_afericao.ApplyUpdates(0);
 end;
 if DM1.SDS_afericao.RecordCount = 0 then HabilitaNovo else AtualizaManutencao;
       Except
      MsgErro.Text:= 'Ocorreu um Erro. Reinicie o Sistema e tente novamente !!!';
      MsgErro.ShowModal;
end;
end;
end;
end;

procedure TFormAfericao.BtnSairClick(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFormAfericao.BtnAddProClick(Sender: TObject);
begin
  inherited;
{  Application.CreateForm(TFormProdutos, FormProdutos);
 // FormProdutos.tag:= 0;
  FormProdutos.showmodal; }
end;

procedure TFormAfericao.EdtCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if key = vk_f2 then
     BtnConsPro.Click
  else
     if key = vk_f3 then
        BtnAddPro.Click;

  if Key = VK_RETURN THEN
  BEGIN
  if (edtcodpro.Text = '') then
  ShowMessage('Código do Produto deve ser Informado');
  EdtCodPro.SetFocus;
  end;
end;

procedure TFormAfericao.BtnConsultarClick(Sender: TObject);
var bAux : boolean;
begin
  inherited;
     if FormConsAfericao=nil   then
      begin
       FormConsAfericao:=TFormConsAfericao.Create(self);
       FormConsAfericao.ShowModal;
       DM1.Sds_Afericao.Open;
       DM1.Sds_Afericao.Locate('codigo',DM1.QBuscaAfericaoCODIGO.Text, [loCaseInsensitive]);

       EdtCodPro1.Text := DM1.Sds_AfericaoCODIGO_PROD.Text;

       if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
  //  try
      with dm.QConsulta do
        begin
           close;
           sql.Clear;
          { if length(trim(EdtCodPro.Text)) > 7 then
              begin
                 sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, VALIDADE, FRACAO, ESTOQUE_FRACAO, CODIGO_LOCAL_ESTOQUE ' +
                         'FROM PRODUTOS WHERE CODIGO_BARRAS = ' + #39 + Trim(EdtCodPro.Text) + #39);
              end
           else }
              begin
                 sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, VALIDADE, FRACAO, ESTOQUE_FRACAO, CODIGO_LOCAL_ESTOQUE, ' +
                         'PRECO_VENDA, PRECO_VENDA2 FROM PRODUTOS WHERE CODIGO = :CODPRO');
                 Parambyname('codpro').AsString:= Trim(EdtCodPro1.Text);
                end;
           Open;
           if not FieldByName('CODIGO_BARRAS').IsNull then
              begin
                 bAux:= true;
                // EdtCodPro1.Text      := fieldbyname('CODIGO').AsString;
                 EdtCodPro.Text       := fieldbyname('CODIGO_BARRAS').AsString;
                 EdtNomePro.Text      := fieldbyname('DESCRICAO').AsString;
                // EdtEstoque.Value      := fieldbyname('ESTOQUE').Value;
                 qtdeFracao.Text      := fieldbyname('FRACAO').AsString;
                 edtVenda.Value       := dm1.Sds_AfericaoVALOR_UNITARIO.AsFloat;
                 edtTotal.Value       := dm1.Sds_AfericaoVALOR_TOTAL.AsFloat;
                 EdtQuant.TEXT :=     dm1.Sds_AfericaoQUANTIDADE.text;
               //  EdtQuant.SetFocus;
              end
           else
              begin
                 bAux:= false;
                // LimpaItens;
                 showmessage('Produto não Cadastrado');
              end;
        end;
      dm.IBTransaction.Commit;
  {  except
      dm.IBTransaction.Rollback;
       bAux:= false;
      showmessage('Erro ao buscar o produto');
   //   EdtCodPro.SetFocus;
    end;  }
  finally
    dm.QConsulta.Close;
  end;
                dm.SDS_PRODUTOS.Active := false;
                DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + edtcodpro.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
                dm.SDS_PRODUTOS.Active := True;
                if DM.Sds_produtosCODIGO_LOCAL_ESTOQUE.text='' then
                 begin
                 ShowMessage('Produtos nao Lancaço neste Local de Estoque');
                 Exit;
                // EdtCodPro.SetFocus;
                end;


//  EdtQuant.TEXT := '1';
  if bAux then
  EdtEstoque.Value:= dm.SDS_PRODUTOSESTOQUE.AsFloat;// currtostr(dm.BuscaEstoqueProduto(strtoint(EdtCodPro1.Text), iEmp));
end;
end;


procedure TFormAfericao.EdtCodProChange(Sender: TObject);
begin
  inherited;
IF (EdtCodPro.Text>='A') AND (EdtCodPro.Text<='Z') THEN
EDIT2.Text:='LETRAS';

IF (EdtCodPro.Text>='0') AND (EdtCodPro.Text<='9') THEN
EDIT2.Text:='NUMEROS';

IF EdtCodPro.Text='' THEN
EDIT2.Text:=''
end;

procedure TFormAfericao.EdtCodProExit(Sender: TObject);
var bAux : boolean;
begin
  inherited;

 if (edtcodpro.Text = '') then
     exit;
 // EdtCodPro.SetFocus;
  CorSaida(Sender);
  if edit2.Text='LETRAS' THEN
  BEGIN
   BtnConsProClick(Sender);
  end ELSE

 if  EDIT2.Text='NUMEROS' THEN
 BEGIN
  if dm.IBTransaction.Active then
     dm.IBTransaction.Commit;
  dm.IBTransaction.StartTransaction;
  try
    try
      with dm.QConsulta do
        begin
           close;
           sql.Clear;
          { if length(trim(EdtCodPro.Text)) > 7 then
              begin
                 sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, VALIDADE, FRACAO, ESTOQUE_FRACAO, CODIGO_LOCAL_ESTOQUE ' +
                         'FROM PRODUTOS WHERE CODIGO_BARRAS = ' + #39 + Trim(EdtCodPro.Text) + #39);
              end
           else }
              begin
                 sql.add('SELECT CODIGO, CODIGO_BARRAS, DESCRICAO, VALIDADE, FRACAO, ESTOQUE_FRACAO, CODIGO_LOCAL_ESTOQUE, ' +
                         'PRECO_VENDA, PRECO_VENDA2 FROM PRODUTOS WHERE CODIGO_BARRAS = :CODPRO');
                 Parambyname('codpro').AsString:= Trim(EdtCodPro.Text);
                end;
           Open;
           if not FieldByName('CODIGO_BARRAS').IsNull then
              begin
                 bAux:= true;
                 EdtCodPro1.Text      := fieldbyname('CODIGO').AsString;
                 EdtCodPro.Text       := fieldbyname('CODIGO_BARRAS').AsString;
                 EdtNomePro.Text      := fieldbyname('DESCRICAO').AsString;
                // EdtEstoque.Value      := fieldbyname('ESTOQUE').Value;
                 qtdeFracao.Text      := fieldbyname('FRACAO').AsString;
                 edtVenda.Value       := fieldbyname('PRECO_VENDA').Value;
                 edtTotal.Value       := fieldbyname('PRECO_VENDA').Value;
                 EdtQuant.TEXT := '1';
                 EdtQuant.SetFocus;
              end
           else
              begin
                 bAux:= false;
                // LimpaItens;
                 showmessage('Produto não Cadastrado');
              end;
        end;
      dm.IBTransaction.Commit;
    except
      dm.IBTransaction.Rollback;
       bAux:= false;
      showmessage('Erro ao buscar o produto');
      EdtCodPro.SetFocus;
    end;
  finally
    dm.QConsulta.Close;
  end;
                dm.SDS_PRODUTOS.Active := false;
                DM.Sds_produtos.DataSet.CommandText:= 'select * from PRODUTOS where CODIGO_BARRAS like ' + #39 + '%' + edtcodpro.Text + '%' + #39+'' +'ORDER BY DESCRICAO';
                dm.SDS_PRODUTOS.Active := True;
                if DM.Sds_produtosCODIGO_LOCAL_ESTOQUE.text='' then
                 begin
                 ShowMessage('Produtos nao Lancaço neste Local de Estoque');
                 Exit;
                 EdtCodPro.SetFocus;
                end;


   EdtQuant.TEXT := '1';
  if bAux then
  EdtEstoque.Value:= dm.SDS_PRODUTOSESTOQUE.AsFloat;// currtostr(dm.BuscaEstoqueProduto(strtoint(EdtCodPro1.Text), iEmp));
end;
end;

procedure TFormAfericao.EdtQuantExit(Sender: TObject);
begin
  inherited;
CorSaida(Sender);
IF EdtQuant.Text = '' THEN
begin
ShowMessage('Quantidade informada invalida');
EdtQuant.text :='1';
EdtQuant.SetFocus;
end else
begin
edtTotal.Value := (StrToFloat(EdtQuant.Text) * edtVenda.Value);
end;
end;

procedure TFormAfericao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
Action := caFree;
FormAfericao := nil;
end;

procedure TFormAfericao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if Key =#27 then
close;
end;

end.

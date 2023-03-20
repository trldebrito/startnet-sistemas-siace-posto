unit Z_RotinasGerais;

interface

uses Windows, SysUtils, Forms, ShellAPI, DB, DBTables, StdCtrls,
  Graphics, Mask, DBCtrls, RXDBCtrl, SUIEdit,    Messages,  Variants, Classes,  Controls,
  Dialogs, ExtCtrls,   SUIComboBox,
  SUIDBCtrls, SUIButton, Grids, DBGrids, FMTBcd, SqlExpr,
  DBClient, SimpleDS, SUIGroupBox, SUIRadioGroup, ToolEdit, SUIDlg,
  Buttons, ComCtrls, Provider, DBXpress, DBLocal, Menus,  CurrEdit, RxDBComb,
  EDBCombo;

// Declaração dos procedimentos
procedure InicioTabela;
procedure FimTabela;
procedure Mensagem(strTexto: string);
procedure NaoInclui;
procedure NaoExclui;
procedure PontoDecimal(var Key: char);
procedure CorEntrada(Sender: TObject);
procedure CorSaida(Sender: TObject);
procedure MostraErros(Sender: Tobject; E: Exception);

// Declaração das funções
function Confirma(strTexto: string): integer;
function MostraData(dtData: TDateTime): string;
function StrZero(strValor: string;intComprimento: integer): string;

implementation

procedure MostraErros(Sender: Tobject;
  E: Exception);
var
msg : string;
I, X: integer;
begin          //Verifica se o erro apresentado ocorre na base de dados
  If E is EdatabaseError then
  begin        //For para varrer o tamanho da mensagem
      for I := 1 To Length(e.Message) Do
          begin    //if para verificar o fim da mensagem definido pelo caracter '|'
            if (e.Message[I] = '|') then       //gravando posição do caracter indicativo
                  X := I;
          END;
              msg := copy(e.Message, 0, 1);
              //APRESENTANDO A MENSAGEM AO USUARIO
       MessageBox(Application.Handle, PChar(Msg), 'Erro', MB_OK + MB_ICONERROR);
   end

   //APRESENTANDO ERRO SEM FORMATÇÃO SE NÃO FOR ERRO DA BASE DE DADOS
   ELSE
   MessageBox(Application.Handle, PChar(e.Message), 'Erro', MB_OK + MB_ICONERROR);
 end;


// Rotina para apresentar mensagem de início dos registros.
procedure InicioTabela;
begin
     Application.MessageBox('Início dos registros','Mensagem',mb_OK + mb_IconInformation);
end;

// Rotina para apresentar mensagem de fim dos registros.
procedure FimTabela;
begin
     Application.MessageBox('Fim dos registros','Mensagem',mb_OK + mb_IconInformation);
end;

// Rotina para apresentar uma caixa de mensagem.
procedure Mensagem(strTexto: string);
begin
     Application.MessageBox(PChar(strTexto),'Mensagem',mb_OK + mb_IconInformation);
end;

// Função para pedir confirmação de uma operação.
function Confirma(strTexto: string): integer;
begin
     Result := Application.MessageBox(PChar(strTexto),'Confirmação',mb_YesNo+mb_DefButton2+mb_IconQuestion);
end;

// Função para apresentação de uma data no formato 'Dia da semanada - Dia do mês/Mês/Ano'.
function MostraData(dtData: TDateTime): string;
var
   intDiaSemana: integer;
   strDiaSemana: string;
begin
     intDiaSemana := DayOfWeek(dtData);
     case intDiaSemana of
          1: strDiaSemana := 'Domingo - ';
          2: strDiaSemana := 'Segunda-Feira - ';
          3: strDiaSemana := 'Terça-Feira - ';
          4: strDiaSemana := 'Quarta-Feira - ';
          5: strDiaSemana := 'Quinta-Feira - ';
          6: strDiaSemana := 'Sexta-Feira - ';
          7: strDiaSemana := 'Sábado - ';
     end;
     Result := strDiaSemana+DateToStr(dtData);
end;




// Funcao para preencher um valor numerico com zeros a esquerda
function StrZero(strValor: string;intComprimento: integer): string;
var
   strZeros,strRetorno: string;
   intTamanho,intContador: integer;
begin
     intTamanho := Length(Trim(strValor));
     strZeros   := '';
     for intContador := 1 to intComprimento do
         strZeros := strZeros + '0';
     strRetorno := Copy(Trim(strZeros)+Trim(strValor),intTamanho+1,intComprimento);
     Result     := strRetorno;
end;

// Procedimento para mostrar mensagem de impossibilidade de incluir registro
procedure NaoInclui;
begin
     Mensagem('Usuário não tem permissão'+#13+'para incluir/alterar registros !');
end;

// Procedimento para mostrar mensagem de impossibilidade de incluir registro
procedure NaoExclui;
begin
     Mensagem('Usuário não tem permissão'+#13+'para excluir registros !');
end;



// Procedimento para trocar ponto por virgula
procedure PontoDecimal(var Key: char);
begin
     if (Key <> Chr(8)) then
        if (Key = '.') then
           Key := ','
           else if ((Ord(Key) <> Ord(',')) and ((Ord(Key) < Ord('0')) or (Ord(Key) > Ord('9')))) then
                   Key := Chr(0);
end;

// Ajusta a cor do objeto quando este recebe o foco
procedure CorEntrada(Sender: TObject);
begin
        if (Sender is TsuiEdit) then
                (Sender as TsuiEdit).Color := clYellow
        else if (Sender is TEdit) then
                (Sender as TEdit).Color := clYellow
        else if (Sender is TCurrencyEdit) then
                (Sender as TCurrencyEdit).Color := clYellow
        else if (Sender is TComboEdit) then
                (Sender as TComboEdit).Color := clYellow
        else if (Sender is TMaskEdit) then
                (Sender as TMaskEdit).Color := clYellow
        else if (Sender is TDBComboBox) then
                (Sender as TDBComboBox).Color := clYellow
        else if (Sender is TMemo) then
                (Sender as TMemo).Color := clYellow
        else if (Sender is TDBEdit) then
                (Sender as TDBEdit).Color := clYellow
        else if (Sender is TDBDateEdit) then
                (Sender as TDBDateEdit).Color := clYellow
        else if (Sender is TDateEdit) then
                (Sender as TDateEdit).Color := clYellow
        else if (Sender is TDBLookupComboBox) then
                (Sender as TDBLookupComboBox).Color := clYellow
        else if (Sender is TsuiComboBox) then
                (Sender as TsuiComboBox).Color := clYellow
        else if (Sender is TDBMemo) then
                (Sender as TDBMemo).Color := clYellow
        else if (Sender is TRXDBCOMBOEDIT) then
                (Sender as TRXDBCOMBOEDIT).Color := clYellow
        else if (Sender is TRxDBCalcEdit) then
                (Sender as TRxDBCalcEdit).Color := clYellow
        else if (Sender is TRxDBCombobox) then
                (Sender as TRxDBcombobox).Color := clYellow
        else if (Sender is TevDBComboBox) then
                (Sender as TEvDBComboBox).Color := clYellow;
//
                //        else if (sender is dblookupComboBox) then
//                (sender as dblookupcombobox).color := clYellow;
end;

// Ajusta a cor do objeto quando este recebe o foco
procedure CorSaida(Sender: TObject);
begin
             if (Sender is TsuiEdit) then
                (Sender as TsuiEdit).Color := clWindow
        else if (Sender is TComboEdit) then
                (Sender as TComboEdit).Color := clWindow
        else if (Sender is TCurrencyEdit) then
                (Sender as TCurrencyEdit).Color := clWindow
        else if (Sender is TEdit) then
                (Sender as TEdit).Color := clWindow
        else if (Sender is TMaskEdit) then
                (Sender as TMaskEdit).Color := clWindow
        else if (Sender is TDBComboBox) then
                (Sender as TDBComboBox).Color := clWindow
        else if (Sender is TDBDateEdit) then
                (Sender as TDBDateEdit).Color := clWindow
        else if (Sender is TDateEdit) then
                (Sender as TDateEdit).Color := clWindow
        else if (Sender is TMemo) then
                (Sender as TMemo).Color := clWindow
        else if (Sender is TDBEdit) then
                (Sender as TDBEdit).Color := clWindow
        else if (Sender is TDBLookupComboBox) then
                (Sender as TDBLookupComboBox).Color := clWindow
        else if (Sender is TsuiComboBox) then
                (Sender as TsuiComboBox).Color := clWindow
        else if (Sender is TDBMemo) then
                (Sender as TDbMemo).Color := clWindow
        else if (Sender is TRXDBCOMBOEDIT) then
                (Sender as TRXDBCOMBOEDIT).Color := clWindow
        else if (Sender is TRxDBCalcEdit) then
                (Sender as TRxDBCalcEdit).Color := clWindow;
//                 else if (Sender is dblookupComboBox) then
//                (Sender as dblookupComboBox).Color := clWindow;
end;

end.

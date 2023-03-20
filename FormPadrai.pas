unit FormPadrai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SUIImagePanel, ExtCtrls,  StdCtrls, SUIEdit, SUIButton,
  SUIDBCtrls, Menus, ImgList, SUIDlg, DB, DBTables, Mask,
  DBCtrls, SUITabControl, RXCtrls, ToolEdit, RXDBCtrl, SUIPageControl,
  Grids, DBGrids,   ComCtrls, Buttons,DBXpress,ExtDlgs, SUIGroupBox;

type
  TFormPadrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnNovo: TsuiButton;
    btnEditar: TsuiButton;
    btnCancelar: TsuiButton;
    btnSalvar: TsuiButton;
    btnExcluir: TsuiButton;
    DBNavigator: TsuiDBNavigator;
    btnLocalizar: TsuiButton;
    MsgErro: TsuiMessageDialog;
    MsgAtencao: TsuiMessageDialog;
    MsgConfirmacao: TsuiMessageDialog;
    MsgInformacao: TsuiMessageDialog;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPadrao: TFormPadrao;

implementation

uses Principal;

{$R *.dfm}

procedure TFormPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;

end;

procedure TFormPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;
end;

end.

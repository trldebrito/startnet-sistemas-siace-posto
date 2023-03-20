unit ConsContaBancariapas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit,  ExtCtrls,  RXCtrls,
  SUIButton, Grids, DBGrids, SUIDBCtrls, DB, DBTables;

type
  TFormConsContaBancaria = class(TForm)
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    Panel2: TPanel;
    suiDBGrid1: TsuiDBGrid;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure suiDBGrid1DblClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsContaBancaria: TFormConsContaBancaria;

implementation

uses ModulodeDados,  Z_RotinasGerais, Principal, UCtrAdmRec;

{$R *.dfm}

procedure TFormConsContaBancaria.FormShow(Sender: TObject);
begin
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TFormConsContaBancaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
              if tag = 1 then //cancelamento
               begin
                 // Application.CreateForm(TFrmCancelaRecebimento, FrmCancelaRecebimento);
                  with FrmCtrAdmRec do
                     begin
                        EdtCodcONTA.Text   := DM.SDS_Conta_BancariaCODIGO.AsString;
                        edtnoMEcONTA.text  := DM.SDS_Conta_BancariaTITULAR.AsString;
                       // showmodal;
                     end; 
               end;
Action:=CaFree;
FormConsContaBancaria:=nil;
end;

procedure TFormConsContaBancaria.Edit1Change(Sender: TObject);
begin
DM.SDS_Conta_Bancaria.Locate('CONTA',Edit1.Text,[lopartialkey]);
end;

procedure TFormConsContaBancaria.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#27 then close;
end;

procedure TFormConsContaBancaria.suiDBGrid1DblClick(Sender: TObject);
begin
Close;
end;

procedure TFormConsContaBancaria.Edit1Enter(Sender: TObject);
begin
CorEntrada(Sender);
end;

procedure TFormConsContaBancaria.Edit1Exit(Sender: TObject);
begin
CorSaida(Sender);
end;

procedure TFormConsContaBancaria.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then begin
   key:=#0;
   selectnext(activecontrol,True,True);
Close;
end;
end;

procedure TFormConsContaBancaria.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key=VK_F1) then
      begin
       FormPrincipal.Calculator.Execute;
      end;
end;

end.

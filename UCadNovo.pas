unit UCadNovo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Buttons, ImgList, ToolWin, SUIButton,
  AdvGlowButton;

type
  TFrmCadastroNovo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnNovo: TAdvGlowButton;
    BtnAlterar: TAdvGlowButton;
    BtnCancelar: TAdvGlowButton;
    BtnExcluir: TAdvGlowButton;
    BtnGravar: TAdvGlowButton;
    BtnConsultar: TAdvGlowButton;
    BtnSair: TAdvGlowButton;
    procedure BtnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroNovo: TFrmCadastroNovo;

implementation

{$R *.dfm}

procedure TFrmCadastroNovo.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCadastroNovo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
     vk_escape : BtnSair.Click;
     vk_f2: begin
               if (BtnConsultar.Enabled) and (BtnNovo.Enabled) then
                  BtnConsultar.Click;
            end;
     vk_f5: begin
               if btnnovo.Enabled then
                  btnnovo.Click;
            end;
     vk_f6: begin
               if btngravar.Enabled then
                  btngravar.Click;
            end;
     vk_f7: begin
               if btncancelar.Enabled then
                  btncancelar.Click;
            end;
     vk_f8: begin
               if btnalterar.Enabled then
                  btnalterar.Click;
            end;
     vk_f9: begin
               if btnexcluir.Enabled then
                  btnexcluir.Click;
            end;
   end;
end;

procedure TFrmCadastroNovo.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      begin
         key:= #0;
         SelectNext(ActiveControl, true, true);
      end;
end;

end.

{$I ACBr.inc}

unit LeitorSerial;

interface

uses SysUtils, Windows, 
 {$IFDEF Delphi6_UP}Types, Variants, DateUtils, {$ELSE} ACBrD5,{$ENDIF}
  Classes, Forms, StdCtrls, Controls, ExtCtrls, ACBrLCB, ACBrBase, ACBrDevice ;

type
  TFormLeitorSerial = class(TForm)
    mProdutos: TMemo;
    Label1: TLabel;
    cbFila: TCheckBox;
    edIntervalo: TEdit;
    Label3: TLabel;
    cbxPorta: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    edSufixo: TEdit;
    mFila: TMemo;
    Label6: TLabel;
    bEmulador: TButton;
    cbExcluirSufixo: TCheckBox;
    Label2: TLabel;
    edAtraso: TEdit;
    pAtraso: TPanel;
    bApagarFila: TButton;
    bLerFila: TButton;
    lUltimaLeitura: TLabel;
    ACBrLCB1: TACBrLCB;
    Label7: TLabel;
    cbxBaud: TComboBox;
    Label8: TLabel;
    EditData: TEdit;
    Label9: TLabel;
    chbHard: TCheckBox;
    Label10: TLabel;
    chbSoft: TCheckBox;
    cbxParidade: TComboBox;
    cbxHandShake: TComboBox;
    cbxStop: TComboBox;
    Label11: TLabel;
    bAtivar: TButton;
    edPrefixo: TEdit;
    Label12: TLabel;
    procedure ACBrLCB1LeCodigo(Sender: TObject);
    procedure bEmuladorClick(Sender: TObject);
    procedure cbxPortaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edIntervaloChange(Sender: TObject);
    procedure cbFilaClick(Sender: TObject);
    procedure bApagarFilaClick(Sender: TObject);
    procedure bLerFilaClick(Sender: TObject);
    procedure ACBrLCB1LeFila(Sender: TObject);
    procedure bAtivarClick(Sender: TObject);
    procedure cbExcluirSufixoClick(Sender: TObject);
    procedure cbxHandShakeChange(Sender: TObject);
    procedure chbSoftClick(Sender: TObject);
    procedure chbHardClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Procedure GravarINI ;
    Procedure LerINI ;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Function Converte( cmd : String) : String;
    procedure Vende ;
    procedure VerificaFlow;
  public
    { Public declarations }
  end;

var
  FormLeitorSerial: TFormLeitorSerial;

implementation

Uses ACBrUtil, IniFiles ;

{$R *.dfm}

function TFormLeitorSerial.Converte(cmd: String): String;
var A : Integer ;
begin
  Result := '' ;
  For A := 1 to length( cmd ) do
  begin
     if not (cmd[A] in ['A'..'Z','a'..'z','0'..'9',
                        ' ','.',',','/','?','<','>',';',':',']','[','{','}',
                        '\','|','=','+','-','_',')','(','*','&','^','%','$',
                        '#','@','!','~',']' ]) then
        Result := Result + '#' + IntToStr(ord( cmd[A] )) + ' '
     else
        Result := Result + cmd[A] + ' ';
  end ;
end;

procedure TFormLeitorSerial.GravarINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     INI.WriteString('LEITOR','Porta',cbxPorta.Text);
     INI.Writestring('LEITOR','Sulfixo',edsufixo.text);
     INI.WriteString('LEITOR','Baud',cbxBaud.text);
     INI.WriteBool('LEITOR','ExcluirSulfixo',cbexcluirSufixo.Checked);
     INI.Writestring('LEITOR','Intervalo',edIntervalo.text);
     ini.WriteString('LEITOR','Prefixo',edPrefixo.text);
    finally
     INI.Free ;
  end ;
end;
procedure TFormLeitorSerial.LerINI;
  Var ArqINI : String ;
      INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     cbxPorta.Text := INI.ReadString('LEITOR','Porta',cbxPorta.Text);
     edsufixo.text := INI.ReadString('LEITOR','Sulfixo',edsufixo.text);
     cbxBaud.text := INI.ReadString('LEITOR','baud',cbxBaud.text);
     cbexcluirSufixo.Checked := INI.ReadBool('LEITOR','ExcluirSulfixo',cbexcluirSufixo.Checked);
     edIntervalo.text := INI.ReadString('LEITOR','Intervalo',edIntervalo.text);
     edPrefixo.Text := ini.readString('LEITOR','Prefixo',ACBrLCB1.PrefixoAExcluir);
 finally
     INI.Free ;
  end ;
end;

procedure TFormLeitorSerial.bEmuladorClick(Sender: TObject);
begin
  RunCommand('..\EmulaLCB\EmulaLCB.EXE');
end;

procedure TFormLeitorSerial.cbxPortaChange(Sender: TObject);
begin
  if ACBrLCB1.Ativo then
     bAtivar.Click ;
end;

procedure TFormLeitorSerial.FormCreate(Sender: TObject);
begin

  LerINI;

  cbxPorta.Text    := ACBrLCB1.Porta ;
  edIntervalo.Text := IntToStr(ACBrLCB1.Intervalo) ;
  edSufixo.Text    := ACBrLCB1.Sufixo ;
  cbFila.Checked   := ACBrLCB1.UsarFila ;
  cbExcluirSufixo.Checked := ACBrLCB1.ExcluirSufixo ;
  edPrefixo.Text   := ACBrLCB1.PrefixoAExcluir;
  VerificaFlow ;

  cbFilaClick( Sender );
end;

procedure TFormLeitorSerial.edIntervaloChange(Sender: TObject);
begin
  ACBrLCB1.Intervalo := StrToInt(edIntervalo.Text) ;
end;

procedure TFormLeitorSerial.cbFilaClick(Sender: TObject);
begin
  ACBrLCB1.UsarFila   := cbFila.Checked ;
  edSufixo.Text       := ACBrLCB1.Sufixo ;
  bLerFila.Enabled    := ACBrLCB1.UsarFila ;
  bApagarFila.Enabled := ACBrLCB1.UsarFila ;
end;

procedure TFormLeitorSerial.bApagarFilaClick(Sender: TObject);
begin
  ACBrLCB1.ApagarFila ;
end;

procedure TFormLeitorSerial.bLerFilaClick(Sender: TObject);
begin
  ACBrLCB1.LerFila ;
  ACBrLCB1LeCodigo( Sender );
end;

procedure TFormLeitorSerial.ACBrLCB1LeCodigo(Sender: TObject);
begin

  lUltimaLeitura.Caption := Converte( ACBrLCB1.UltimaLeitura ) ;

  if not ACBrLCB1.UsarFila then
     Vende
  else
     mFila.Lines.Assign( ACBrLCB1.Fila );
     
end;

procedure TFormLeitorSerial.ACBrLCB1LeFila(Sender: TObject);
begin
  mFila.Lines.Assign( ACBrLCB1.Fila );
  Vende ;
end;

procedure TFormLeitorSerial.Vende;
Var Atraso : Integer ;
begin
  mProdutos.Lines.Add( 'Cód: '+ACBrLCB1.UltimoCodigo ) ;

  Atraso := StrToIntDef(edAtraso.Text,0) ;
  if Atraso > 0 then
  begin
     pAtraso.Visible := true ;
     Application.ProcessMessages ;
     Sleep( Atraso );
     pAtraso.Visible := false ;
  end ;

end;

procedure TFormLeitorSerial.bAtivarClick(Sender: TObject);
begin

  if ACBrLCB1.Ativo then
   begin
     ACBrLCB1.Desativar;
     bAtivar.Caption := '&Ativar' ;
     mProdutos.Lines.Add('ACBrLCB - DESATIVADO') ;
   end
  else
   begin
    

     ACBrLCB1.Porta       := cbxPorta.Text ;
     ACBrLCB1.UsarFila    := cbFila.Checked ;
     ACBrLCB1.Device.Baud := StrToInt(cbxBaud.text) ;
     ACBrLCB1.Device.Data := StrToInt(EditData.text);

     ACBrLCB1.Sufixo        := edSufixo.Text ;
     ACBrLCB1.ExcluirSufixo := cbExcluirSufixo.Checked ;

     ACBrLCB1.Device.HandShake := TACBrHandShake( cbxHandShake.ItemIndex ) ;
     ACBrLCB1.Device.HardFlow  := chbHard.Checked;
     ACBrLCB1.Device.SoftFlow  := chbSoft.Checked;

     ACBrLCB1.Device.Parity := TACBrSerialParity( cbxParidade.ItemIndex ) ;
     ACBrLCB1.Device.Stop   := TACBrSerialStop( cbxStop.ItemIndex ) ;

     ACBrLCB1.PrefixoAExcluir := edPrefixo.Text;

     ACBrLCB1.Ativar;

     GravarINI;

     if ACBrLCB1.Ativo then
     begin
        bAtivar.Caption := '&Desativar' ;
        mProdutos.Lines.Add('ACBrLCB - ATIVADO') ;
     end ;
   end ;
end;

procedure TFormLeitorSerial.cbExcluirSufixoClick(Sender: TObject);
begin
  ACBrLCB1.ExcluirSufixo := cbExcluirSufixo.Checked ;
end;

procedure TFormLeitorSerial.VerificaFlow ;
begin
  cbxHandShake.ItemIndex := Integer( ACBrLCB1.Device.HandShake ) ;
  chbHard.Checked        := ACBrLCB1.Device.HardFlow ;
  chbSoft.Checked        := ACBrLCB1.Device.SoftFlow ;
end ;

procedure TFormLeitorSerial.cbxHandShakeChange(Sender: TObject);
begin
  if ACBrLCB1.Ativo then
     bAtivar.Click ;

  ACBrLCB1.Device.HandShake := TACBrHandShake( cbxHandShake.ItemIndex ) ;
  VerificaFlow ;
end;

procedure TFormLeitorSerial.chbSoftClick(Sender: TObject);
begin
  if ACBrLCB1.Ativo then
     bAtivar.Click ;

  ACBrLCB1.Device.SoftFlow  := chbSoft.Checked ;
  VerificaFlow ;
end;

procedure TFormLeitorSerial.chbHardClick(Sender: TObject);
begin
  if ACBrLCB1.Ativo then
     bAtivar.Click ;

  ACBrLCB1.Device.HardFlow  := chbHard.Checked ;
  VerificaFlow ;
end;

procedure TFormLeitorSerial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

 ACBrLCB1.Desativar;

Action := caFree;
FormLeitorSerial := nil;
end;

procedure TFormLeitorSerial.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then close;


end;

end.

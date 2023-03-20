unit Z_CriptDecript;

interface

uses
Windows, Messages, SysUtils, Variants, Classes, StdCtrls, ExtCtrls, ComCtrls;

function WCripto(Letra : Char; Codigo : Integer) : Char;
function WCriptografar(Texto : String; Codigo: Integer) : String;
function WDecripto(Letra : Char; Codigo : Integer) : Char;
function WDecriptografar(Texto : String; Codigo: Integer) : String;


implementation
//-------------------------------------------------------------------
function WCripto(Letra: Char; Codigo: Integer): Char;
  Var B : Byte;
begin
  B := Byte(Letra);
  Result := Char(B + Codigo + 31);
end;
//-------------------------------------------------------------------


//--------------------------------------------------------------------
function WCriptografar(Texto : String; Codigo: Integer): String;
Var Count, Poz : integer;
  L : Char;
  S : String;
begin
  Poz := 1;
  Count := Length(Texto);
  While Count >= Poz Do
   Begin
     L := Char(Texto[Poz]);
     S := S + wCripto(L, Codigo);

     Poz := Poz + 1;
     Result := S;
   end;
end;

//------------------------------------------------------------------- 


//-------------------------------------------------------------------
function WDecripto(Letra: Char; Codigo: Integer): Char;
  Var B : Byte;
begin
  B := Byte(Letra);
  Result := Char(B - Codigo - 31);

end;
//-------------------------------------------------------------------


//-------------------------------------------------------------------
function WDecriptografar(Texto : String; Codigo: Integer): String;
  Var Count, Poz : integer;
  L : Char;
  S : String;
begin
  Poz := 1;
  Count := Length(Texto);
  While Count >=  Poz Do
  begin
     L := Char(Texto[Poz]);
     S := S + wDecripto(L, Codigo);

     Poz := Poz + 1;
  end;

  Result := S;
end;
//-------------------------------------------------------------------


end.

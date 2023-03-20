unit Estenso;

interface

uses Forms, Classes, SysUtils, QuickRpt,Buttons, IBDataBase,DBCtrls, Dialogs,
     Graphics, Controls,StdCtrls, Mask, ExtCtrls, Grids, DBGrids, ComCtrls;


type

  TNumeroStr = string;

 

const

         Unidades: array[1..19] of TNumeroStr = ('UM', 'DOIS', 'TRÊS', 'QUATRO','CINCO', 'SEIS', 'SETE', 'OITO', 'NOVE', 'DEZ', 'ONZE', 'DOZE',

         'TREZE', 'QUATORZE', 'QUINZE', 'DEZESSEIS', 'DEZESSETE', 'DEZOITO','DEZENOVE');



         Dezenas: array[1..9] of TNumeroStr = ('DEZ', 'VINTE', 'TRINTE', 'QUARENTA','CINQUENTA', 'SESSENTA', 'SETENTA', 'OITENTA', 'NOVENTA');



         Centenas: array[1..9] of TNumeroStr = ('CEM', 'DUZENTOS', 'TREZENTOS','QUATROCENTOS', 'QUINHENTOS', 'SEISCENTOS', 'SETECENTOS', 'OITOCENTOS','NOVECENTOS');



         ErrorString = 'Valor fora da faixa';

         Min = 0.01;

         Max = 4294967295.99;

         Moeda = ' REAL ';

         Moedas = ' REAIS ';

         Centesimo = ' CENTAVO ';

         Centesimos = ' CENTAVOS ';



function NumeroParaExtenso(parmNumero: Real): string;

function ConversaoRecursiva(N: LongWord): string;

implementation

function NumeroParaExtenso(parmNumero: Real): string;

begin

        if (parmNumero >= Min) and (parmNumero <= Max) then

        begin

       {Tratar reais}

                Result := ConversaoRecursiva(Round(Int(parmNumero)));

                if Round(Int(parmNumero)) = 1 then

                    Result := Result + Moeda

                else

                    if Round(Int(parmNumero)) <> 0 then

                       Result := Result + Moedas;



                    {Tratar centavos}

                    if not(Frac(parmNumero) = 0.00) then

                    begin

                            if Round(Int(parmNumero)) <> 0 then

                                Result := Result + ' e ';

                                Result := Result + ConversaoRecursiva(Round(Frac(parmNumero) * 100));

                                if (Round(Frac(parmNumero) * 100) = 1) then

                                    Result := Result + centesimo

                                    else

                                            Result := Result + centesimos;

                                end;

                            end

                    else

                    raise ERangeError.CreateFmt('%g ' + ErrorString + ' %g..%g',[parmNumero, Min, Max]);

end;



function ConversaoRecursiva(N: LongWord): string;

begin

        case N of

                1..19:

                        Result := Unidades[N];

                20, 30, 40, 50, 60, 70, 80, 90:

                        Result := Dezenas[N div 10] + ' ';

                21..29, 31..39, 41..49, 51..59, 61..69, 71..79, 81..89, 91..99:

                        Result := Dezenas[N div 10] + ' E ' + ConversaoRecursiva(N mod 10);

                100, 200, 300, 400, 500, 600, 700, 800, 900:

                        Result := Centenas[N div 100] + ' ';

                101..199:

                        Result := ' CENTO E ' + ConversaoRecursiva(N mod 100);

                201..299, 301..399, 401..499, 501..599, 601..699, 701..799, 801..899, 901..999:

                        Result := Centenas[N div 100] + ' E ' + ConversaoRecursiva(N mod 100);

                1000..999999:

                        Result := ConversaoRecursiva(N div 1000) + ' MIL ' + ConversaoRecursiva(N mod 1000);

                1000000..1999999:

                        Result := ConversaoRecursiva(N div 1000000) + ' MILHÃO '+ ConversaoRecursiva(N mod 1000000);

                2000000..999999999:

                        Result := ConversaoRecursiva(N div 1000000) + ' MILHÕES '+ ConversaoRecursiva(N mod 1000000);

                1000000000..1999999999:

                        Result := ConversaoRecursiva(N div 1000000000) + ' BILHÃO ' + ConversaoRecursiva(N mod 1000000000);

                2000000000..4294967295:

                        Result := ConversaoRecursiva(N div 1000000000) + ' BILHÕES ' + ConversaoRecursiva(N mod 1000000000);

        end;

end;


end.

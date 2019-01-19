unit URotinasGerais;

interface

uses Windows, SysUtils, Forms;

Procedure Mensagem (strTexto: string);
Function Confirma (strTexto: string): integer;
Function MostraData (dtData: TDateTime): string;
Function StrZero (intValor,intComprimento: integer): string;

implementation
//Rotima para uma caixa de mensagem.
Procedure Mensagem (strTexto: string);
begin
Application.MessageBox(Pchar(strTexto) , 'Mensagem' ,mb_ok + mb_IconInformation);
end;

//Fun��o para pedir confirma��o de uma opera��o
Function Confirma (strTexto: string): integer;
begin
  Result :=
Application.MessageBox(Pchar(strTexto), 'Confirma��o',mb_YesNo+mb_DefButton2+mb_IconQuestion);
end;
//Fun��o para apresenta��o de uma data no formato dia da semana- Dia do M�s/M�s/Ano
Function MostraData (dtData: TDateTime): string;
Var
 intDiaSemana: integer;
 strDiaSemana: string;
begin
  intDiaSemana := DayOfWeek(dtData);
  Case intDiaSemana of
       1: strDiaSemana := 'Domingo - ';
       2: strDiaSemana := 'Segunda - ';
       3: strDiaSemana := 'Ter�a - ';
       4: strDiaSemana := 'Quarta - ';
       5: strDiaSemana := 'Quinta - ';
       6: strDiaSemana := 'Sexta - ';
       7: strDiaSemana := 'Sabado - ';
  end;
       Result := strDiaSemana+DateToStr(dtData);

end;
//Fun��o para converter valor num�rico inteiro em string com zeros a esquerda

Function StrZero (intValor, intComprimento: integer): string;
var
   strValor,strZeros,strRetorno: string;
   intTamanho,intContador: integer;
begin
  strValor := intToStr(intValor);
  intTamanho := Length (Trim(strvalor));
  strZeros := '';
  for intContador := 1 to intComprimento do
      strZeros := strZeros + '0';
      strRetorno := Copy(Trim(strZeros)+Trim(strValor),intTamanho+1,intComprimento);
      Result := strRetorno
end;
  end.
 
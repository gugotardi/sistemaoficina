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

//Função para pedir confirmação de uma operação
Function Confirma (strTexto: string): integer;
begin
  Result :=
Application.MessageBox(Pchar(strTexto), 'Confirmação',mb_YesNo+mb_DefButton2+mb_IconQuestion);
end;
//Função para apresentação de uma data no formato dia da semana- Dia do Mês/Mês/Ano
Function MostraData (dtData: TDateTime): string;
Var
 intDiaSemana: integer;
 strDiaSemana: string;
begin
  intDiaSemana := DayOfWeek(dtData);
  Case intDiaSemana of
       1: strDiaSemana := 'Domingo - ';
       2: strDiaSemana := 'Segunda - ';
       3: strDiaSemana := 'Terça - ';
       4: strDiaSemana := 'Quarta - ';
       5: strDiaSemana := 'Quinta - ';
       6: strDiaSemana := 'Sexta - ';
       7: strDiaSemana := 'Sabado - ';
  end;
       Result := strDiaSemana+DateToStr(dtData);

end;
//Função para converter valor numérico inteiro em string com zeros a esquerda

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
 
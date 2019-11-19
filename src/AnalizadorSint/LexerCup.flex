package AnalizadorSint;
import java_cup.runtime.Symbol;
%%

%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
%column

espacio = [" "|"\t"|"\r"|"\n"]+

Comparador = "<"|"<="|">"|">="|"<>"|"!="|"!>"|"!<"

%{
    private Symbol symbol(int type, Object value){
       return new Symbol(type, yyline, yycolumn, value);
    }
%}

%%
{espacio} {/*Ignore*/}
{Comparador} {return new Symbol(sym.Comparador, yychar, yyline, yytext());}
TRUNCATE {return new Symbol(sym.Truncate, yychar, yyline, yytext());}
TABLE {return new Symbol(sym.Table, yychar, yyline, yytext());}
ON {return new Symbol(sym.On, yychar, yyline, yytext());}
ASC {return new Symbol(sym.Asc, yychar, yyline, yytext());}
DESC {return new Symbol(sym.Desc, yychar, yyline, yytext());}
WHERE {return new Symbol(sym.Where, yychar, yyline, yytext());}
AND {return new Symbol(sym.And, yychar, yyline, yytext());}
IN {return new Symbol(sym.In, yychar, yyline, yytext());}
IS {return new Symbol(sym.Is, yychar, yyline, yytext());}
NOT {return new Symbol(sym.Not, yychar, yyline, yytext());}
OR {return new Symbol(sym.Or, yychar, yyline, yytext());}
NULL {return new Symbol(sym.Null, yychar, yyline, yytext());}
AS {return new Symbol(sym.As, yychar, yyline, yytext());}
DEFAULT {return new Symbol(sym.Default, yychar, yyline, yytext());}
INT {return new Symbol(sym.IntR, yychar, yyline, yytext());}
BIT {return new Symbol(sym.BitR, yychar, yyline, yytext());}
FLOAT {return new Symbol(sym.FloatR, yychar, yyline, yytext());}
VARCHAR {return new Symbol(sym.Varchar, yychar, yyline, yytext());}
SET {return new Symbol(sym.Set, yychar, yyline, yytext());}
COMMIT {return new Symbol(sym.Commit, yychar, yyline, yytext());}
ALL {return new Symbol(sym.All, yychar, yyline, yytext());}
INSERT {return new Symbol(sym.Insert, yychar, yyline, yytext());}
TOP {return new Symbol(sym.Top, yychar, yyline, yytext());}
PERCENT {return new Symbol(sym.Percent, yychar, yyline, yytext());}
INTO {return new Symbol(sym.Into, yychar, yyline, yytext());}
OPENQUERY {return new Symbol(sym.Openquery, yychar, yyline, yytext());}
VALUES {return new Symbol(sym.Values, yychar, yyline, yytext());}
FROM {return new Symbol(sym.From, yychar, yyline, yytext());}
DISTINCT {return new Symbol(sym.Distinct, yychar, yyline, yytext());}
SELECT {return new Symbol(sym.Select, yychar, yyline, yytext());}
AVG {return new Symbol(sym.Avg, yychar, yyline, yytext());}
MIN {return new Symbol(sym.Min, yychar, yyline, yytext());}
MAX {return new Symbol(sym.Max, yychar, yyline, yytext());}
COUNT {return new Symbol(sym.Count, yychar, yyline, yytext());}
SUM {return new Symbol(sym.Sum, yychar, yyline, yytext());}
INNER {return new Symbol(sym.Inner, yychar, yyline, yytext());}
LEFT {return new Symbol(sym.Left, yychar, yyline, yytext());}
RIGHT {return new Symbol(sym.Right, yychar, yyline, yytext());}
FULL {return new Symbol(sym.Full, yychar, yyline, yytext());}
GROUP {return new Symbol(sym.Group, yychar, yyline, yytext());}
BY {return new Symbol(sym.By, yychar, yyline, yytext());}
ORDER {return new Symbol(sym.Order, yychar, yyline, yytext());}
BEGIN {return new Symbol(sym.Begin, yychar, yyline, yytext());}
TRAN {return new Symbol(sym.Tran, yychar, yyline, yytext());}
TRANSACTION {return new Symbol(sym.Transaction, yychar, yyline, yytext());}
SAVE {return new Symbol(sym.Save, yychar, yyline, yytext());}
ROLLBACK {return new Symbol(sym.Rollback, yychar, yyline, yytext());}
GO {return new Symbol(sym.Go, yychar, yyline, yytext());}
DECLARE {return new Symbol(sym.Declare, yychar, yyline, yytext());}
Identificador {return new Symbol(sym.Id, yychar, yyline, yytext());}
Variable {{return new Symbol(sym.Var, yychar, yyline, yytext());}}
Bit {return new Symbol(sym.Bit, yychar, yyline, yytext());}
Int {return new Symbol(sym.Int, yychar, yyline, yytext());}
Float {return new Symbol(sym.Float, yychar, yyline, yytext());}
String {return new Symbol(sym.String, yychar, yyline, yytext());}
"." {return new Symbol(sym.Punto, yychar, yyline, yytext());}
"," {return new Symbol(sym.Coma, yychar, yyline, yytext());}
";" {return new Symbol(sym.Punto_Coma, yychar, yyline, yytext());}
"=" {return new Symbol(sym.Igual, yychar, yyline, yytext());}
"(" {return new Symbol(sym.Parentesis_a, yychar, yyline, yytext());}
")" {return new Symbol(sym.Parentesis_c, yychar, yyline, yytext());}
"+" {return new Symbol(sym.Mas, yychar, yyline, yytext());}
"-" {return new Symbol(sym.Menos, yychar, yyline, yytext());}
"*" {return new Symbol(sym.Asterisco, yychar, yyline, yytext());}
"/" {return new Symbol(sym.Dividir, yychar, yyline, yytext());}
"::" {return new Symbol(sym.Cuadro, yychar, yyline, yytext());}
"[" {return new Symbol(sym.Bracket_a, yychar, yyline, yytext());}
"]" {return new Symbol(sym.Bracket_c, yychar, yyline, yytext());}

 . {return new Symbol(sym.Error, yychar, yyline, yytext());}

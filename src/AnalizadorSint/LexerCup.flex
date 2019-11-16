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
//OperadorLogico = "<"|"<="|">"|">="|"=="|"!="|"&&"|"||"
//OperadorAritmetico = "+"|"-"|"*"|"/"|"%"
//OtroSimbolo = "["|"]"|"[]"|"("|")"|"{"|"}"|"()"|"{}"|"@"|"#"|"##"
Comparador = "<"|"<="|">"|">="|"<>"|"!="|"!>"|"!<"
Incrementador = "+="|"-="|"*="|"/="|"%="|"&="|"^="|"|="
%{
    private Symbol symbol(int type, Object value){
       return new Symbol(type, yyline, yycolumn, value);
    }
%}

%%
{espacio} {/*Ignore*/}
{Comparador} {return new Symbol(sym.Comparador, yychar, yyline, yytext());}
{Incrementador} {return new Symbol(sym.Incrementador, yychar, yyline, yytext());}
TRUNCATE {return new Symbol(sym.Truncate, yychar, yyline, yytext());}
DROP {return new Symbol(sym.Drop, yychar, yyline, yytext());}
CREATE {return new Symbol(sym.Create, yychar, yyline, yytext());}
DATABASE {return new Symbol(sym.Database, yychar, yyline, yytext());}
USER {return new Symbol(sym.User, yychar, yyline, yytext());}
INDEX {return new Symbol(sym.Index, yychar, yyline, yytext());}
VIEW {return new Symbol(sym.View, yychar, yyline, yytext());}
IF {return new Symbol(sym.If, yychar, yyline, yytext());}
EXISTS {return new Symbol(sym.Exists, yychar, yyline, yytext());}
TABLE {return new Symbol(sym.Table, yychar, yyline, yytext());}
ON {return new Symbol(sym.On, yychar, yyline, yytext());}
PRIMARY {return new Symbol(sym.Primary, yychar, yyline, yytext());}
NAMES {return new Symbol(sym.Names, yychar, yyline, yytext());}
FILE {return new Symbol(sym.File, yychar, yyline, yytext());}
SIZE {return new Symbol(sym.Size, yychar, yyline, yytext());}
COLLATE {return new Symbol(sym.Collate, yychar, yyline, yytext());}
UNIQUE {return new Symbol(sym.Unique, yychar, yyline, yytext());}
CLUSTERED {return new Symbol(sym.Clustered, yychar, yyline, yytext());}
NONCLUSTERED {return new Symbol(sym.Nonclustered, yychar, yyline, yytext());}
ASC {return new Symbol(sym.Asc, yychar, yyline, yytext());}
DESC {return new Symbol(sym.Desc, yychar, yyline, yytext());}
INCLUDE {return new Symbol(sym.Include, yychar, yyline, yytext());}
WHERE {return new Symbol(sym.Where, yychar, yyline, yytext());}
AND {return new Symbol(sym.And, yychar, yyline, yytext());}
IN {return new Symbol(sym.In, yychar, yyline, yytext());}
IS {return new Symbol(sym.Is, yychar, yyline, yytext());}
NOT {return new Symbol(sym.Not, yychar, yyline, yytext());}
NO {return new Symbol(sym.No, yychar, yyline, yytext());}
OR {return new Symbol(sym.Or, yychar, yyline, yytext());}
NULL {return new Symbol(sym.Null, yychar, yyline, yytext());}
AS {return new Symbol(sym.As, yychar, yyline, yytext());}
CONSTRAINT {return new Symbol(sym.Constraint, yychar, yyline, yytext());}
DEFAULT {return new Symbol(sym.Default, yychar, yyline, yytext());}
IDENTITY {return new Symbol(sym.Identity, yychar, yyline, yytext());}
FOR {return new Symbol(sym.For, yychar, yyline, yytext());}
REPLICATION {return new Symbol(sym.Replication, yychar, yyline, yytext());}
ROWGUIDCOL {return new Symbol(sym.Rowguidcol, yychar, yyline, yytext());}
INT {return new Symbol(sym.IntR, yychar, yyline, yytext());}
BIT {return new Symbol(sym.BitR, yychar, yyline, yytext());}
FLOAT {return new Symbol(sym.FloatR, yychar, yyline, yytext());}
VARCHAR {return new Symbol(sym.Varchar, yychar, yyline, yytext());}
KEY {return new Symbol(sym.Key, yychar, yyline, yytext());}
FOREIGN {return new Symbol(sym.Foreign, yychar, yyline, yytext());}
REFERENCES {return new Symbol(sym.References, yychar, yyline, yytext());}
DELETE {return new Symbol(sym.Delete, yychar, yyline, yytext());}
UPDATE {return new Symbol(sym.Update, yychar, yyline, yytext());}
SET {return new Symbol(sym.Set, yychar, yyline, yytext());}
ACTION {return new Symbol(sym.Action, yychar, yyline, yytext());}
CASCADE {return new Symbol(sym.Cascade, yychar, yyline, yytext());}
CHECK {return new Symbol(sym.Check, yychar, yyline, yytext());}
ALTER {return new Symbol(sym.Alter, yychar, yyline, yytext());}
CURRENT {return new Symbol(sym.Current, yychar, yyline, yytext());}
CURSOR {return new Symbol(sym.Cursor, yychar, yyline, yytext());}
CLOSE {return new Symbol(sym.Close, yychar, yyline, yytext());}
READ {return new Symbol(sym.Read, yychar, yyline, yytext());}
COMMIT {return new Symbol(sym.Commit, yychar, yyline, yytext());}
ONLY {return new Symbol(sym.Only, yychar, yyline, yytext());}
WRITE {return new Symbol(sym.Write, yychar, yyline, yytext());}
LOCAL {return new Symbol(sym.Local, yychar, yyline, yytext());}
GLOBAL {return new Symbol(sym.Global, yychar, yyline, yytext());}
OFF {return new Symbol(sym.Off, yychar, yyline, yytext());}
ADD {return new Symbol(sym.Add, yychar, yyline, yytext());}
COLUMN {return new Symbol(sym.Column, yychar, yyline, yytext());}
NOCHECK {return new Symbol(sym.Nocheck, yychar, yyline, yytext());}
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

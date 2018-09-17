/************************************************************************/
/*                                                                      */
/* FILE    : calc.lex                                                   */
/* PURPOSE :                                                            */
/*                                                                      */
/************************************************************************/

%{
	#include <stdio.h>
	#include "calc.tab.h"
%}

/************************************************************************/
/* Regular Definitions                                                  */
/************************************************************************/
delim	[ \t\n]
ws	{delim}+
letter	[A-Za-z]
digit	[0-9]
id	{letter}({letter}|{digit})*
number	{digit}+

%%
"+"	{printf("PLUS\n"); return(PLUS);}
"-"	{printf("MINUS\n"); return(MINUS);}
"*"	{printf("MULT\n"); return(MULT);}
"/"	{printf("DIV\n"); return(DIV);}
"("	{printf("OPEN\n"); return(OPEN);}
")"	{printf("CLOSE\n"); return(CLOSE);}
";"	{printf("SEMI\n"); return(SEMI);}
{ws} { }
{number} {
	yylval = atoi(yytext);
	printf("INTEGER\n");
	return(INTEGER);}
. {printf("ERROR\n"); return(ERROR);}
%%

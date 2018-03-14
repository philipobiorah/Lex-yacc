# Lex-yacc Simple Calculator by Philip Obiorah.
A simple calculator using lex and yacc . A grammer that allows calculation with a new Lex specification that recognizes  english words: 
Such that you can now do : Example  5 MINUS 2
                                    2 PLUS 2
                                    4 TIMES 5
                                    4 MULTIPLY 5
                                    15 DIVIDE 3


pas.l - is the lex file
pas.y  - i the yacc file

CAVEAT: Operator precedence yot yet handled! (keeping it simple for those new to LEX AND YACC) warning: 16 shift/reduce conflicts

Requirements : compatible versions of the cygwin distributions lex/yacc or Flex or Bison

Usage:
Commands to create our compiler, pas.exe, are listed below: 
lex  pas.l			                            # create lex.yy.c
yacc –d pas.y	                              # create y.tab.h, y.tab.c
cc lex.yy.c y.tab.c –o pas.exe              # compile/link

Acceptable tokens:
[0-9]+      { yylval = atoi(yytext);
                return INTEGER;
            }
[-+*/\n]    return *yytext;
PLUS        return '+';
MINUS       return '-';
TIMES       return '*';
MULTIPLY    return '*';
DIVIDE      return '/';
[ \t] ;     /* skip whitespace */


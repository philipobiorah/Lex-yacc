%{/*Declarations */
#include <stdlib.h>
void yyerror(char *);
#include "y.tab.h"
%}
%%/*Rules */
[0-9]+      { yylval = atoi(yytext);
                return INTEGER;
            }
[-+*/\n]    return *yytext;
ADD         return '+';
SUBTRACT    return '-';
MULTIPLY    return '*';
DIVIDE      return '/';
[ \t] ;     /* skip whitespace */
.           yyerror("invalid character");
%%   /* User Subroutines  */
int yywrap(void) {
return 1;
}
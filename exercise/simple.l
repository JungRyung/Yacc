%{
    #include "y.tab.h"
%}
%%
[a-zA-Z][0-9a-zA-Z]*	return ID;
[ \t]	;
\n    	return 0;
\+ 		return '+';
\*		return '*';
'\('		return '(';
'\)'		return ')';
. 		{ printf("error"); exit(-1); }
%%
int yywrap() {
    return 1;
}
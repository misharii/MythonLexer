%%
%class MythonLexer
%unicode
%integer

%{
// Define constants
public static final int
    DEF = 1,
    IF = 2,
    THEN = 3,
    ELSE = 4,
    REPEAT = 5,
    UNTIL = 6,
    LPAREN = 7,
    RPAREN = 8,
    COLON = 9,
    COMMA = 10,
    SEMICOLON = 11,
    ASSIGN = 12,
    PLUS = 13,
    MINUS = 14,
    TIMES = 15,
    DIVIDE = 16,
    EQ = 17,
    GT = 18,
    LT = 19,
    LE = 20,
    GE = 21,
    NE = 22,
    IDENTIFIER = 23,
    INTEGER_LITERAL = 24,
    EOF = 0;
%}

%% /* Rules */

[ \t\r\n]+                { /* Ignore whitespace */ }
"def"                       { return DEF; }
"if"                        { return IF; }
"then"                      { return THEN; }
"else"                      { return ELSE; }
"repeat"                    { return REPEAT; }
"until"                     { return UNTIL; }
"("                         { return LPAREN; }
")"                         { return RPAREN; }
":"                         { return COLON; }
","                         { return COMMA; }
";"                         { return SEMICOLON; }
"="                         { return ASSIGN; }
"+"                         { return PLUS; }
"-"                         { return MINUS; }
"*"                         { return TIMES; }
"/"                         { return DIVIDE; }
"=="                        { return EQ; }
">="                        { return GE; }
"<="                        { return LE; }
"!="                        { return NE; }
">"                         { return GT; }
"<"                         { return LT; }
[a-zA-Z][a-zA-Z0-9_]*       { return IDENTIFIER; }
[0-9]+                      { return INTEGER_LITERAL; }
.                           { throw new Error("Illegal character: " + yytext()); }

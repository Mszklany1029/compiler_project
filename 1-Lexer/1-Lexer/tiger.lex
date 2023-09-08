type pos = int
type lexresult = Tokens.token

val lineNum = ErrorMsg.lineNum
val linePos = ErrorMsg.linePos
fun err(p1,p2) = ErrorMsg.error p1

fun eof() = let val pos = hd(!linePos) in Tokens.EOF(pos, pos) end


%%
%structure TigerLexFun
%%
\n	    => (lineNum := !lineNum+1; linePos := yypos :: !linePos; continue());
var  	=> (Tokens.VAR(yypos, yypos + 3));
","	=> (Tokens.COMMA(yypos, yypos + 1));
"123"	=> (Tokens.INT(123, yypos, yypos + 3));
.       => (ErrorMsg.error yypos ("illegal character " ^ yytext); continue());
<INITIAL> => (Tokens.TYPE(yypos,yypos));
<INITIAL> => (Tokens.VAR(yypos,yypos));
<INITIAL> => (Tokens.FUNCTION(yypos,yypos));
<INITIAL> => (Tokens.BREAK(yypos,yypos));
<INITIAL> => (Tokens.OF(yypos,yypos));
<INITIAL> => (Tokens.END(yypos,yypos));
<INITIAL> => (Tokens.IN(yypos,yypos));
<INITIAL> => (Tokens.NIL(yypos,yypos));
<INITIAL> => (Tokens.LET(yypos,yypos));
<INITIAL> => (Tokens.DO(yypos,yypos));
<INITIAL> => (Tokens.TO(yypos,yypos));
<INITIAL> => (Tokens.FOR(yypos,yypos));
<INITIAL> => (Tokens.WHILE(yypos,yypos));
<INITIAL> => (Tokens.ELSE(yypos,yypos));
<INITIAL> => (Tokens.THEN(yypos,yypos));
<INITIAL> => (Tokens.IF(yypos,yypos));
<INITIAL> => (Tokens.ARRAY(yypos,yypos));
<INITIAL> => (Tokens.ASSIGN(yypos,yypos));
<INITIAL> => (Tokens.OR(yypos,yypos));
<INITIAL> => (Tokens.AND(yypos,yypos));
<INITIAL> => (Tokens.GE(yypos,yypos));
<INITIAL> => (Tokens.GT(yypos,yypos));
<INITIAL> => (Tokens.LE(yypos,yypos));
<INITIAL> => (Tokens.LT(yypos,yypos));
<INITIAL> => (Tokens.NEQ(yypos,yypos));
<INITIAL> => (Tokens.EQ(yypos,yypos));
<INITIAL> => (Tokens.DIVIDE(yypos,yypos));
<INITIAL> => (Tokens.TIMES(yypos,yypos));
<INITIAL> => (Tokens.MINUS(yypos,yypos));
<INITIAL> => (Tokens.PLUS(yypos,yypos));
<INITIAL> => (Tokens.DOT(yypos,yypos));
<INITIAL> => (Tokens.RBRACE(yypos,yypos));
<INITIAL> => (Tokens.LBRACE(yypos,yypos));
<INITIAL> => (Tokens.RBRACK(yypos,yypos));
<INITIAL> => (Tokens.LBRACK(yypos,yypos));
<INITIAL> => (Tokens.RPAREN(yypos,yypos));
<INITIAL> => (Tokens.LPAREN(yypos,yypos));
<INITIAL> => (Tokens.SEMICOLON(yypos,yypos));
<INITIAL> => (Tokens.COLON(yypos,yypos));
<INITIAL> => (Tokens.COMMA(yypos,yypos));
<INITIAL> => (Tokens.STRING(yypos,yypos));
<INITIAL> => (Tokens.INT(yypos,yypos));
<INITIAL> => (Tokens.ID(yypos,yypos));
<INITIAL> => (Tokens.EOF(yypos,yypos));


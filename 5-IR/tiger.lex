type svalue = Tokens.svalue
type pos = int
type ('a, 'b) token = ('a, 'b) Tokens.token
type lexresult = (svalue, pos) token

val lineNum = ErrorMsg.lineNum
val linePos = ErrorMsg.linePos
fun err(p1,p2) = ErrorMsg.error p1
val x = ref 0 : int ref
val str = ref "" : string ref
val str_switch = ref 0 : int ref


fun eof() = let val pos = hd(!linePos) in ( if (!x <> 0) orelse (!str_switch = 1) then ErrorMsg.error (!lineNum) "Error" else (); Tokens.EOF(pos, pos)) end




fun asciiz(conv : string) : string = Char.toString(Char.chr(valOf(Int.fromString(substring(conv, 1, 3)))))

%%
%header (functor TigerLexFun(structure Tokens: Tiger_TOKENS));
%s COMMENT STRING;
%%
<INITIAL> [\r?\n] => (lineNum := !lineNum+1; linePos := yypos :: !linePos; continue());

<INITIAL> "," => (Tokens.COMMA(yypos, yypos + 1));

<INITIAL> "\ " => (continue());
<INITIAL> "\t" => (continue());
<INITIAL> "type" => (Tokens.TYPE(yypos,yypos + 4));
<INITIAL> "var" => (Tokens.VAR(yypos,yypos + 3));
<INITIAL> "function" => (Tokens.FUNCTION(yypos,yypos + 8));
<INITIAL> "break" => (Tokens.BREAK(yypos,yypos + 5));
<INITIAL> "of" => (Tokens.OF(yypos,yypos + 2));
<INITIAL> "end" => (Tokens.END(yypos,yypos + 3));
<INITIAL> "in" => (Tokens.IN(yypos,yypos + 2));
<INITIAL> "nil" => (Tokens.NIL(yypos,yypos + 3));
<INITIAL> "let" => (Tokens.LET(yypos,yypos + 3));
<INITIAL> "do" => (Tokens.DO(yypos,yypos + 2));
<INITIAL> "to" => (Tokens.TO(yypos,yypos + 2));
<INITIAL> "for" => (Tokens.FOR(yypos,yypos + 3));
<INITIAL> "while" => (Tokens.WHILE(yypos,yypos + 5));
<INITIAL> "else" => (Tokens.ELSE(yypos,yypos + 4));
<INITIAL> "then" => (Tokens.THEN(yypos,yypos + 4));
<INITIAL> "if" => (Tokens.IF(yypos,yypos + 2));
<INITIAL> "array"  => (Tokens.ARRAY(yypos,yypos + 5));
<INITIAL> ":=" => (Tokens.ASSIGN(yypos,yypos + 2));
<INITIAL> "|" => (Tokens.OR(yypos,yypos + 1));
<INITIAL> "&" => (Tokens.AND(yypos,yypos + 1));
<INITIAL> ">=" => (Tokens.GE(yypos,yypos + 2));
<INITIAL> ">" => (Tokens.GT(yypos,yypos + 1));
<INITIAL> "<=" => (Tokens.LE(yypos,yypos + 2));
<INITIAL> "<" => (Tokens.LT(yypos,yypos + 1));
<INITIAL> "<>" => (Tokens.NEQ(yypos,yypos + 2));
<INITIAL> "=" => (Tokens.EQ(yypos,yypos + 1));
<INITIAL> "/" => (Tokens.DIVIDE(yypos,yypos + 1));
<INITIAL> "*" => (Tokens.TIMES(yypos,yypos + 1));
<INITIAL> "-" => (Tokens.MINUS(yypos,yypos + 1));
<INITIAL> "+" => (Tokens.PLUS(yypos,yypos + 1));
<INITIAL> "." => (Tokens.DOT(yypos,yypos + 1));
<INITIAL> "}" => (Tokens.RBRACE(yypos,yypos + 1));
<INITIAL> "{" => (Tokens.LBRACE(yypos,yypos + 1));
<INITIAL> "]" => (Tokens.RBRACK(yypos,yypos + 1));
<INITIAL> "[" => (Tokens.LBRACK(yypos,yypos + 1));
<INITIAL> ")" => (Tokens.RPAREN(yypos,yypos + 1));
<INITIAL> "(" => (Tokens.LPAREN(yypos,yypos + 1));
<INITIAL> ";" => (Tokens.SEMICOLON(yypos,yypos + 1));
<INITIAL> ":" => (Tokens.COLON(yypos,yypos + 1));
<INITIAL> "," => (Tokens.COMMA(yypos,yypos + 1));

<INITIAL> [0-9]+ => (Tokens.INT(valOf(Int.fromString yytext), yypos, yypos + String.size yytext));
<INITIAL> [a-zA-Z]+[a-zA-Z0-9_]* => (Tokens.ID(yytext, yypos, yypos + String.size yytext));

<INITIAL> "/*" => (YYBEGIN COMMENT; x := !x+1; continue());
<COMMENT> "/*" => (x := !x + 1; continue());
<COMMENT> . => (continue());
<COMMENT> \n => (continue());
<COMMENT> "*/" => (x := !x-1; if !x = 0 then YYBEGIN INITIAL else (); continue());

<INITIAL> "\"" => (YYBEGIN STRING; str_switch := 1; str := ""; continue());
<STRING> "\\\\" => (str := !str ^ "\\"; continue());
<STRING> [\\][\n|\r|\t|\ ]*[\\] => (continue());

<STRING> [\\][0-9]{3} => (str := !str ^ asciiz(yytext); continue());

<STRING>  "\\\"" => (str := !str ^ "\""; continue());

<STRING> "\\t" => (str := !str ^ "\t"; continue());
<STRING> "\\n"=> (str := !str ^ "\n"; continue());

<STRING> "\\" => (str := !str ^ "\\"; continue());

<STRING> "\"" => (YYBEGIN INITIAL; str_switch := 0; Tokens.STRING(!str, yypos, yypos + String.size yytext));

<STRING> . => (str := !str ^ yytext; continue());

<INITIAL> . => (ErrorMsg.error yypos ("illegal character " ^ yytext); continue());


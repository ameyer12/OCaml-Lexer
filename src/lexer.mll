{
  open Ast
}

let digit = ['0'-'9']
let int = '-'? digit+
let whitespace = [' ' '\t']
let identifier = ['A'-'Z' 'a'-'z'] ['A'-'Z' 'a'-'z' '0'-'9' '_'] *

rule read = 
  parse
  | '\n' { read lexbuf }
  | whitespace { read lexbuf }
  | int { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | '+' | '-' | '*' | '/' | '=' | "==" | "!=" { OPERATOR ((Lexing.lexeme lexbuf)) }
  (* List of all OCAML keywords from https://v2.ocaml.org/releases/4.07/htmlman/manual049.html *)
  | "and" | "as" | "asr" | "assert" | "begin" | "class" | "constraint" | "do" | "done" | "downto" | "else" | "end" | "exception" | "external" | "false" | "for" | "fun" | "function" | "functor" | "if" | "in" | "include" | "inherit" | "initializer" | "land" | "lazy" | "let" | "lor" | "lsl" | "lsr" | "lxor" | "match" | "method" | "mod" | "module" | "mutable" | "new" | "nonrec" | "object" | "of" | "open" | "open!" | "or" | "private" | "rec" | "sig" | "struct" | "then" | "to" | "true" | "try" | "type" | "val" | "virtual" | "when" | "while" | "with" { KEYWORD ((Lexing.lexeme lexbuf)) }
  | '(' | ')' | '{' | '}' | ';' { PUNCTUATION ((Lexing.lexeme lexbuf)) }
  | identifier { IDENTIFIER ((Lexing.lexeme lexbuf)) }
  | eof { EOF }
  | _ { UNKNOWN ((Lexing.lexeme lexbuf))}




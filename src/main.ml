open Printf
  
let () = begin
  print_endline "Program started.";
  try
    let lexbuf = Lexing.from_channel stdin in
    while true do
      let result = Lexer.read lexbuf in
      match result with
      | OPERATOR(i) -> printf "Operator: %s" i; print_newline();
      | KEYWORD(i) -> printf "Keyword: %s" i; print_newline();
      | PUNCTUATION(i) -> printf "Punctuation: %s" i; print_newline();
      | INT(i) -> printf "IntLiteral: %d" i; print_newline();
      | IDENTIFIER(i) -> printf "Identifier: %s" i; print_newline();
      | UNKNOWN(i) -> printf "Unknown: %s" i; print_newline()
      | EOF -> print_string "EOF reached"; print_newline();
    done
  with 
  | _ ->
    print_endline "Syntax error encountered. Please check your input.";
    exit 1
end
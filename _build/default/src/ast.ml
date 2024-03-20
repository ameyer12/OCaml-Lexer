type expr =
  | INT of int
  | OPERATOR of string
  | KEYWORD of string
  | PUNCTUATION of string
  | IDENTIFIER of string
  | UNKNOWN of string
  | EOF



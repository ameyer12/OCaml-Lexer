# CSCE 5450 Project #1: Lexical Analyzer

This is my implementation of Project #1 for CSCE 5450. The technologies utilized were OCaml, ocamllex, and Dune.

## Project Description:

The project is a simple lexer able to categorize keywords, operators, punctuation, integer literals, identifiers, and unknown tokens. The system generates a lexer using ocamllex and the lexer.mll file, which converts a stream of input characters into a stream of logical tokens. The resulting abstract syntax tree, defined in ast.ml, is then utilized in the main.ml file to identify each token and print the output to the console.

## Project Structure

The source code for this project is organized as follows:

* src/dune: The Dune file to compile and build the project.
* src.lexer.mll: Defines the rules for the lexer and leverages ocamllex to convert a stream of input characters into a stream of logical tokens.
* src/ast.ml: Defines the AST structure used by the parser.
* src/main.ml: The main program that uses lexer and parser to read input and output tokens.
* dune-project: Used to specify project configurations.

## Setup and Run Locally

Prerequisites

Ensure you have have OCaml, Dune, and ocamllex installed on your system. 

```bash
  opam install dune
```

Compile and build the project

```bash
  dune build
```

Run the project

```bash
  dune utop src
```

After running 'dune utop src', input characters into the terminal and press enter to view the outputted tokens.# OCaml-Lexer

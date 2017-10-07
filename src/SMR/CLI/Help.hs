
module SMR.CLI.Help where


helpCommands
 = unlines $
 [ ":quit          Quit the REPL."
 , ":help          Show this Help page."
 , ":grammar       Show the language grammar."
 , ":prims         Show the list of primitive operators."
 , ":parse  EXP    Parse an expression and print it back."
 , ":push   EXP    Push down substitutions in an expression."
 , ":step   EXP    Single step evaluate an expression."
 , ":steps  EXP    Multi-step evaluate an expression."
 , ":trace  EXP    Multi-step evaluate an expression, showing intermediate states." ]


helpGrammar
 = unlines $
 [ "Decl  ::= '@' Name Param* '=' Exp ';'    (Macro declaration)"
 , "       |  '+' Name        '=' Exp ';'    (Set member declaration)"
 , ""
 , "Exp   ::=  Ref                           (External reference)"
 , "       |   Key Exp                       (Keyword  application)"
 , "       |   Exp Exp+                      (Function application)"
 , "       |   Name ('^' Nat)?               (Variable with lifting specifier)"
 , "       |   '\\' Param+ '.' Exp            (Function abstraction)"
 , "       |   Train      '.' Exp            (Substitution train)"
 , ""
 , "Ref   ::= '@' Name                       (Macro reference)"
 , "       |  '+' Name                       (Set reference)"
 , "       |  '%' Name                       (Symbol reference)"
 , "       |  '#' Name                       (Primitive reference)"
 , ""
 , "Key   ::= '##tag'                        (Tag an expression)"
 , "       |  '##seq'                        (Sequence evaluation)"
 , "       |  '##box'                        (Box an expression, delaying evaluation)"
 , "       |  '##run'                        (Run an expression, forcing  evaluation)"
 , ""
 , "Param ::= Name                           (Call-by-value parameter)"
 , "       |  '!' Name                       (Explicitly call-by-value parameter)"
 , "       |  '~' Name                       (Explicitly call-by-name  parameter)"
 ]


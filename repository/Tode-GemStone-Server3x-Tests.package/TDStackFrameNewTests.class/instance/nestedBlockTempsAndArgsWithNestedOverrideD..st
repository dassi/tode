block methods
nestedBlockTempsAndArgsWithNestedOverrideD: arg1
  | a b |
  a := 1.
  b := 2.
  [ | c |
  c := 3.
  true
    ifTrue: [ b := 4 ].
  [ a halt ] value ] value
block methods
nestedBlockTempsAndArgsWithNestedOverrideC: arg1
  | a b |
  a := 1.
  b := 2.
  [ | c |
  c := 3.
  #(1 2 3 4) do: [ :index | b := index ].
  [ a halt ] value ] value
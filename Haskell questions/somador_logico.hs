main = do
  input1 <- getLine
  input2 <- getLine
  input3 <- getLine
  input4 <- getLine
  let result = somadorLogico(read input1) (read input2) (read input3) input4
  print result

somadorLogico :: Bool -> Bool -> Bool -> String -> Bool
somadorLogico x y z str = if str == "AND" then (x && y && z) else (x || y || z)
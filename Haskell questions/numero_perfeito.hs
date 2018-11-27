main = do
  entrada <- getLine
  print (numero_perfeito(read entrada))
  
numero_perfeito :: Int -> Bool
numero_perfeito num
		| ((sum (fatores num)) == num) = True
		| otherwise = False
		
fatores :: Int -> [Int]
fatores num = [ x | x <- [1 .. num-1], ((mod num x) == 0)]

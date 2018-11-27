main = do
  input <- getLine
  let resultado = eh_primo_casado(read input)
  print resultado
  
eh_primo_casado :: Int -> String
eh_primo_casado num
	| eh_primo(num+2) && eh_primo(num) = "PRIMO CASADO!"
	| eh_primo(num) = "PRIMO!"
	| otherwise = "NAO PRIMO!"
  
listaDivisores :: Int -> [Int]
listaDivisores n = [ x | x <- [1 .. n], ((mod n x) == 0)]

eh_primo :: Int -> Bool
eh_primo n = if (listaDivisores n) == [1,n] then True else False

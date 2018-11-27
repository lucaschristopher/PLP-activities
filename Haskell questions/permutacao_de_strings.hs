main = do
	string1 <- getLine
	string2 <- getLine
	let resultado = eh_permutacao string1 string2
	print resultado

eh_permutacao :: String -> String -> Bool
eh_permutacao string1 string2
	| string1 == reverse string2 = True
	| otherwise = False
	


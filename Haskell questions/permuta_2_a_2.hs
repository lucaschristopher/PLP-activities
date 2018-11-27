muda_sequencia :: [char] -> [char]
muda_sequencia [] = []
muda_sequencia (x:xs) = [head xs] ++ [x] ++ muda_sequencia (tail xs)

main = do
	nome <- getLine
	let result = muda_sequencia nome 
	putStrLn result

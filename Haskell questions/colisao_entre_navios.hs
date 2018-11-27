pos_ocupadas _ _ 0 _ = []
pos_ocupadas x y t s
	| s == "vertical" = (x,y) : pos_ocupadas x (y+1) (t-1) s
	| otherwise = (x,y) : pos_ocupadas (x+1) y (t-1) s

compara_listas [] _ = True
compara_listas _ [] = True
compara_listas (x:xs) y 
	| x `elem` y = False
	| otherwise = compara_listas xs y 


main = do
	x_n1 <- getLine
	y_n1 <- getLine
	
	tam_n1 <- getLine
	sentido_n1 <- getLine
	
	x_n2 <- getLine
	y_n2 <- getLine
	
	tam_n2 <- getLine
	sentido_n2 <- getLine

	let pos_n1 = pos_ocupadas (read x_n1) (read y_n1) (read tam_n1) sentido_n1 
	let pos_n2 = pos_ocupadas (read x_n2) (read y_n2) (read tam_n2) sentido_n2 

	let result = compara_listas pos_n1 pos_n2

	print result

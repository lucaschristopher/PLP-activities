travessia ::  String -> Double -> Double
travessia veiculo qtd_pessoas
	| veiculo == "carro" = (qtd_pessoas * preco_pessoa) + 5.0
	| veiculo == "moto" = (qtd_pessoas * preco_pessoa) + 2.0
	| veiculo == "van" = (qtd_pessoas * preco_pessoa) + 15.0
	| veiculo == "onibus" =  (qtd_pessoas * preco_pessoa) + 50.0
	| veiculo == "bicicleta" = (qtd_pessoas * preco_pessoa) + 0.0
	where preco_pessoa = 1.5
	
main = do 
	veiculo <- getLine
	qtd_pessoas <- getLine
	let result = travessia veiculo (read qtd_pessoas)
	print result



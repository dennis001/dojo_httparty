Dado('que eu tenha o link da api') do
  @adelmera = HTTParty.get("https://viacep.com.br/ws/06330130/json")
  puts @adelmera.size
  puts @adelmera["logradouro"] + "\n" + @adelmera["bairro"] + "\n" + @adelmera["localidade"]
end

Entao('o meu status code tem que ser igual a {int}') do |valor|
  puts @adelmera.message if expect(@adelmera.code).to eq valor
end
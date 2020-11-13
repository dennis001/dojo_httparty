Dado('que eu tenha o link da api') do
  @resp = HTTParty.get("https://viacep.com.br/ws/06330130/json")
  puts @resp.size
  puts @resp["logradouro"] + "\n" + @resp["bairro"] + "\n" + @resp["localidade"]
end

Entao('o meu status code tem que ser igual a {int}') do |valor|
  puts @resp.message if expect(@resp.code).to eq valor
end
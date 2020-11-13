Dado('que eu adicione as informacoes que serao adicionadas na api') do
  @resp = Dados.new.criar
  print @resp.body
end

Entao('o meu status code retorna como {int}') do |valor|
  print @resp.message if expect(@resp.code).to eq valor
end
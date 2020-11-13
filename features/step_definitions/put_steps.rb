Dado('que eu tenha a lista de api') do
  @edit = Editar.new
  @response = @edit.get_api(2385)
  @response.code
end

Quando('eu altero um email especifico') do
  @response = @edit.edit_contact(2385)
  print @response.body
  print @response.size
end

Entao('meu status code tem que ser igual a {int}') do |valor|
  print @response.message if expect(@response.code).to eq valor
end
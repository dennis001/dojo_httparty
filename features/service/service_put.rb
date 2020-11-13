class Editar

  include HTTParty

  base_uri "http://api-de-tarefas.herokuapp.com"

  def get_api(index)
    self.class.get("/contacts/#{index}",
                   :body => {"type" => ''}.to_json)
  end

  def edit_contact(index)

    @nome_alterado = Faker::Name.name
    @email_alterado = Faker::Internet.free_email

    @body = {
        :'name' => @nome_alterado,
        :'last_name' => 'amaral',
        :'email' => @email_alterado,
        :'age' => 27,
        :'phone' => 11954953222,
        :'address' => 'rua rua',
        :'state' => 'estado estado',
        :'city' => 'cidade cidade'}.to_json

    self.class.put("/contacts/#{index}",
                    :body => @body,
                    :headers => {'Accept' => 'application/vnd.taskmanager.v2', 'Content-Type' => 'application/json'})
  end
end
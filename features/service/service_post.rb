class Dados

  include HTTParty

  base_uri "http://api-de-tarefas.herokuapp.com"

  def criar
    @nome = Faker::Name.name
    @email = Faker::Internet.free_email
    self.class.post("/contacts",
    :body => { "name" => @nome,
               "last_name" => "amaral",
               "email" => @email,
               "age" => 27,
               "phone" => 11954953222,
               "address" => "rua rua",
               "state" => "estado estado",
               "city" => "cidade cidade"}.to_json,
    :headers => {'Accept' => 'application/vnd.taskmanager.v2', 'Content-Type' => 'application/json'})
  end
end
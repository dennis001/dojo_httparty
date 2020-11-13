#language: pt
#utf-8

  Funcionalidade: Metodo Get
  Eu como cliente
  Quero acessar a api jsonplacer
  Para entender melhor o funcionamento de uma api

  Cenario: testando o funcionamento da api
    Dado que eu tenha o link da api
    Entao o meu status code tem que ser igual a 200

  @criar
  Cenario: Criando um post na api
    Dado que eu adicione as informacoes que serao adicionadas na api
    Entao o meu status code retorna como 201

  @editar
  Cenario: Editando um post na api
    Dado que eu tenha a lista de api
    Quando eu altero um email especifico
    Entao  meu status code tem que ser igual a 200

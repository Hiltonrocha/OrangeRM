  # language: pt
  # utf-8
  
  Funcionalidade: Cadastrar/Editar Funcionarios
  Eu como Administrador
  Quero conseguir cadastrar e editar funcionarios
  
 
  Contexto: Login como Admin
  Dado que acesse a Home
  E esteja autenticado como Administrador
   
  @n1
  Cenário: Cadastrar Funcionarios
  Dado que acesse o menu Novo Funcionario
  Quando entrar com os dados de cadastro
      | name   | Antonio | 
      | middle | Pereira | 
      | last   | Silva   | 
  Então o funcionario deve ser cadastrado com sucesso
  
  @n2
  Cenario: Editar cadastro de funcionarios
  Dado fizer uma busca por funcionario por id "0040"
  Quando clicar em edit os dados poderão ser editados
  Então cadastro será editado com sucesso
#encoding: utf-8

Dado(/^que acesse a Home$/) do
 visit ('https://enterprise-demo.orangehrmlive.com/')
end

Dado(/^esteja autenticado como Administrador$/) do
  @logar = LoginPage.new
  @logar.adm_login
end

Dado(/^que acesse o menu Novo Funcionario$/) do
  @cadastro = CadastroPage.new
  @cadastro.clicar_novofuncionario
end

Quando(/^entrar com os dados de cadastro$/) do |table|
  @name = table.rows_hash['name']
  @middle = table.rows_hash['middle']
  @last = table.rows_hash['last']
  @cadastro.cadastrar_funcionario(@name, @middle, @last )
end

Então(/^o funcionario deve ser cadastrado com sucesso$/) do
  expect(find(:css, '.personalDetails').text).to include 'Successfully Saved' 
  @logar.deslogar
end
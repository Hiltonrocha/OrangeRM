

#encoding: utf-8

include Capybara::DSL
include RSpec::Matchers


logar = LoginPage.new
cadastrar = CadastroPage.new

Dado(/^que esteja autenticado como admin, usuario "([^"]*)", senha "([^"]*)"$/) do |login, password|

visit ('https://enterprise-demo.orangehrmlive.com/')
sleep 2
logar.logar_admin(login, password)

end

Quando(/^clicar em Novo funcionario$/) do
  cadastrar.clicar_novofuncionario

  
end

Quando(/^preencher os campos obrigatorios do cadastro$/) do
  cadastrar.cadastrar_funcionario
end

Então(/^o funcionario deve ser cadastrado com sucesso$/) do
  cadastrar.valida_cadastro
  logar.deslogar
end
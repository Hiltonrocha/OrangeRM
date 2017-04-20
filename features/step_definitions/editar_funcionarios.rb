#encoding: utf-8

include Capybara::DSL
include RSpec::Matchers


logar = LoginPage.new
buscar = CadastroPage.new

Dado(/^que eu esteja autenticado como admin$/) do

visit ('https://enterprise-demo.orangehrmlive.com/')
sleep 2
logar.adm_login
sleep 2


end

Dado(/^fizer uma busca por funcionario por id "([^"]*)"$/) do |id|
  buscar.busca_funcionario(id)
  end

Quando(/^clicar em edit os dados poderão ser editados$/) do
  buscar.editar_funcionario
end

Então(/^cadastro será editado com sucesso$/) do
  buscar.valida_cadastro
  logar.deslogar
end
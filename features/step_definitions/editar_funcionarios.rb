#encoding: utf-8
#language: pt

Dado(/^fizer uma busca por funcionario por id "([^"]*)"$/) do |id|
  @cadastro = CadastroPage.new
  @cadastro.busca_funcionario(id)
end

Quando(/^clicar em edit os dados poderão ser editados$/) do
 @cadastro.editar_funcionario
 sleep 2
end

Então(/^cadastro será editado com sucesso$/) do
  expect(find(:css, '.personalDetails').text).to include 'Successfully Saved' 
  @logar.deslogar
end
# language: pt
# utf-8

Funcionalidade: Cadastrar/Editar Funcionarios
	Eu como Administrador
	Quero conseguir cadastrar e editar funcionarios

	#@cadastrar_funcionarios
	Esquema do Cenario: Cadastrar Funcionarios
		Dado que esteja autenticado como admin, usuario "<txtlogin>", senha "<txtpassword>"
		Quando clicar em Novo funcionario
		E preencher os campos obrigatorios do cadastro
		Então o funcionario deve ser cadastrado com sucesso
		Exemplos:
		|txtlogin|txtpassword|
		|admin   |admin      |

	#@editar_funcionarios
	Cenario: Editar cadastro de funcionarios
		Dado que eu esteja autenticado como admin
		E fizer uma busca por funcionario por id "0040"
		Quando clicar em edit os dados poderão ser editados
		Então cadastro será editado com sucesso
		

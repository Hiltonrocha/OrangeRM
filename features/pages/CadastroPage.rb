class CadastroPage

	def clicar_novofuncionario()
		page.find(:id, 'menu_pim_viewPimModule').click
		page.find(:id, 'menu_pim_addEmployee').click
	end

	def cadastrar_funcionario(n, m, l)
		fill_in('firstName', :with => n)
		fill_in('middleName', :with => m)
		fill_in('lastName', :with => l)
		select('Australian Regional HQ', :from => 'location')
		find('input[type="button"]').click
		sleep 2
	end

	def busca_funcionario(id)
		page.find(:id, 'menu_pim_viewPimModule').click
		page.find(:id, 'menu_pim_viewEmployeeList').click
		fill_in('empsearch_id', :with => id)
		click_button 'searchBtn'
		sleep 3
		click_link id
	end

	def editar_funcionario()
		click_button 'btnSave'
		fill_in('personal_txtEmpFirstName', :with => 'Maria Bonita')
		click_button 'btnSave'
		sleep 2
	end
end

class LoginPage 

	def logar_admin(login, password)
		fill_in('txtUsername', :with => login)
		fill_in('txtPassword', :with => password)
		click_button('btnLogin')
	end

	def adm_login()
		fill_in('txtUsername', :with => 'admin')
		fill_in('txtPassword', :with => 'admin')
		click_button('btnLogin')

	end
	def deslogar
		page.find(:id, 'welcome').click
		click_link 'Logout'
	end
end


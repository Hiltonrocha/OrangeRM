class LoginPage 

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


# -*- encoding : utf-8 -*-
include ApplicationHelper

def sign_in(user)
	visit login_path
	fill_in "Login", with: user.login
	fill_in	"Hasło", with: user.password
	click_button "Zaloguj"
  session[:user_id] = user.id
end

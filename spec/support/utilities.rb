# -*- encoding : utf-8 -*-
include ApplicationHelper

def sign_in(user, options={})
  if options[:no_capybara]
    session[:user_id] = user.id
  else
	  visit login_path
	  fill_in "Login", with: user.login
	  fill_in	"Hasło", with: user.password
	  click_button "Zaloguj"
  end
end

class OnlyAdminController < ApplicationController
	before_filter :admin_user
end

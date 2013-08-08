# -*- encoding : utf-8 -*-
class OnlyAdminController < ApplicationController
	before_filter :admin_user
end

# -*- encoding : utf-8 -*-
class VersionsController < OnlyAdminController

	def index
		@versions = Version.all	
	end

	def edit
		@version = Version.find(params[:id])
	end

	def update
		@version = Version.find(params[:id])
		if @version.update_attributes(params[:version])
			redirect_to root_path, notice: edit_string("wersje samochodu.")
		else
			render action: 'edit'
		end	
	end

	def new
		@version = Version.new
	end

	def create
		@version = Version.new(params[:version])
		if @version.save
			redirect_to root_path, new_string("wersje samochodu.")
		else
			render action: 'new'
		end
	end

	def destroy
		@version = Version.find(params[:id])
		@version.destroy
		redirect_to versions_url, notice: destroy_string("wersje samochodu.")
	end




end

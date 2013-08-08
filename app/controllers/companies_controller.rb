# -*- encoding : utf-8 -*-
class CompaniesController < OnlyAdminController

	def index
		@companies = Company.all()
	end

	def new
		@company = Company.new()
	end
	
	def create
		@company = Company.new(params[:company])
		if @company.save
			redirect_to root_path, notice: new_string("markę samochodu")
		else
			render action: 'new'
		end
	end

	def edit
		@company = Company.find(params[:id])
	end
	
	def update
		@company = Company.find(params[:id])
		if @company.update_attributes(params[:company])
			redirect_to root_path, notice: edit_string("markę samochodu")
		else
			render action: 'edit'
		end
	end

	def destroy
		@company = Company.find(params[:id])
		@company.destroy
		redirect_to companies_url, notice: destroy_string("markę samochodu")
	end
end

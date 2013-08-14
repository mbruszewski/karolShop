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
			redirect_to root_path, notice: t("flash.new", item: t("controller.company"))
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
			redirect_to root_path, notice: t("flash.edit", item: t("controller.company"))
		else
			render action: 'edit'
		end
	end

	def destroy
		@company = Company.find(params[:id])
		@company.destroy
		redirect_to companies_url, notice: t("flash.delete", item: t("controller.company"))
	end
end

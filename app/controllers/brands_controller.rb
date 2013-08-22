# -*- encoding : utf-8 -*-
class BrandsController < OnlyAdminController

	def index
		@brands = Brand.all()
	end

	def new
		@brand = Brand.new()
	end	

	def create
		@brand = Brand.new(params[:brand])	
		if @brand.save()
			redirect_to brands_url, notice: t("flash.new", item: t("controller.brand"))
		else	
			render action: 'new'
		end
	end

	def edit
		@brand = Brand.find(params[:id])
	end

	def update 
		@brand = Brand.find(params[:id])
		if @brand.update_attributes(params[:address])
			redirect_to brands_url, notice: t("flash.edit", item: t("controller.brand"))
		else
			render action: "edit"
		end
	end

	def destroy
		@brand = Brand.find(params[:id])
		@brand.destroy
		redirect_to brands_url, notice: t("flash.delete", item: t("controller.brand"))
	end
end

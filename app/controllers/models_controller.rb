# -*- encoding : utf-8 -*-
class ModelsController < OnlyAdminController
	@controller_string = "model samochodu"

	def index
		@models = Model.all
	end
		
	def new
		@model = Model.new
	end
	
	def create
		@model = Model.new(params[:model])
		if @model.save
			redirect_to root_path, notice: t("flash.new", item: t("controller.model"))
		else
			render action: 'new'
		end
	end

	def edit
		@model = Model.find(params[:id])
	end
	
	def update
		@model = Model.find(params[:id])
		if @model.update_attributes(params[:id])
			redirect_to root_path, notice: t("flash.edit", item: t("controller.model"))
		end
	end

	def destroy
		@model = Model.find(params[:id])
		@model.destroy
		redirect_to models_url, notice: t("flash.delete", item: t("controller.model"))
	end


end

class RegulaminsController < OnlyAdminController
  def index
    @regulamins = Regulamin.all
  end

  def new
    @regulamin = Regulamin.new
  end

  def create
    @regulamin = Regulamin.new(params[:regulamin])
    if @regulamin.save
      redirect_to regulamins_path, :notice => "Successfully created regulamin."
    else
      render :action => 'new'
    end
  end

  def edit
    @regulamin = Regulamin.find(params[:id])
  end

  def update
    @regulamin = Regulamin.find(params[:id])
    if @regulamin.update_attributes(params[:regulamin])
      redirect_to regulamins_path, :notice  => "Successfully updated regulamin."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @regulamin = Regulamin.find(params[:id])
    @regulamin.destroy
    redirect_to regulamins_url, :notice => "Successfully destroyed regulamin."
  end
end

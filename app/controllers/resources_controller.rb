class ResourcesController < ApplicationController
  def index
    @resources = current_user.resources

  end

  def show
    @resource = Resource.find(params[:id])
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new
    @resource.network_id = params[:network_id]
    @resource.name = params[:name]
    @resource.status = params[:status]
    @resource.theme_id = params[:theme_id]

    if @resource.save
      redirect_to "/resources", :notice => "Resource created successfully."
    else
      render 'new'
    end
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])

    @resource.network_id = params[:network_id]
    @resource.name = params[:name]
    @resource.status = params[:status]
    @resource.theme_id = params[:theme_id]

    if @resource.save
      redirect_to "/resources", :notice => "Resource updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @resource = Resource.find(params[:id])

    @resource.destroy

    redirect_to "/resources", :notice => "Resource deleted."
  end
end

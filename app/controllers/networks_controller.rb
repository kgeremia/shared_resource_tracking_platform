class NetworksController < ApplicationController
  def index
    #@networks = Network.where({ :user_id => current_user.id })
    @networks = current_user.networks
  end

  def show
    @network = Network.find(params[:id])


  end



  def new
    @network = Network.new
  end

  def create
    @network = Network.new
    @network.user_id = params[:user_id]
    @network.name = params[:name]

    if @network.save
      redirect_to "/networks", :notice => "Network created successfully."
    else
      render 'new'
    end
  end

  def edit
    @network = Network.find(params[:id])
  end

  def update
    @network = Network.find(params[:id])

    @network.user_id = params[:user_id]
    @network.name = params[:name]

    if @network.save
      redirect_to "/networks", :notice => "Network updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @network = Network.find(params[:id])

    @network.destroy

    redirect_to "/networks", :notice => "Network deleted."
  end
end

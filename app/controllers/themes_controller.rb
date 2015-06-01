class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find(params[:id])
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new
    @theme.name = params[:name]

    if @theme.save
      redirect_to "/themes", :notice => "Theme created successfully."
    else
      render 'new'
    end
  end

  def edit
    @theme = Theme.find(params[:id])
  end

  def update
    @theme = Theme.find(params[:id])

    @theme.name = params[:name]

    if @theme.save
      redirect_to "/themes", :notice => "Theme updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @theme = Theme.find(params[:id])

    @theme.destroy

    redirect_to "/themes", :notice => "Theme deleted."
  end
end

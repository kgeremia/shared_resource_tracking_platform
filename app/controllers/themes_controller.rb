class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end


  def show
    @theme = Theme.find(params[:id])
    @teachers = current_user.teachers
    #Teacher.attendances.last.theme_id => params[:id]
    #Teacher.where(:id => Network.attendances.met_on.last)

  #   # Create a hash
  #   @array = Array.new
  #   @teachers.each do |teacher|
  #     if teacher.attendances.last.theme_id == @theme.id
  #       tch_name = teacher.name
  #       tch_ntw = teacher.network.name
  #       @array.push tch_name
  #       @array.push tch_ntw
  #     end
  # end

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

class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new
    @teacher.network_id = params[:network_id]
    @teacher.name = params[:name]
    @teacher.school_id = params[:school_id]
    @teacher.address = params[:address]
    @teacher.phone_number = params[:phone_number]

    if @teacher.save
      redirect_to "/teachers", :notice => "Teacher created successfully."
    else
      render 'new'
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])

    @teacher.network_id = params[:network_id]
    @teacher.name = params[:name]
    @teacher.school_id = params[:school_id]
    @teacher.address = params[:address]
    @teacher.phone_number = params[:phone_number]

    if @teacher.save
      redirect_to "/teachers", :notice => "Teacher updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])

    @teacher.destroy

    redirect_to "/teachers", :notice => "Teacher deleted."
  end
end

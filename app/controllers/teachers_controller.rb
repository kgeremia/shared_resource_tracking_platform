class TeachersController < ApplicationController
  def index
    @teachers = current_user.teachers
  end


  def show
    @teacher = Teacher.find(params[:id])

    running_total = 0
        @teacher.attendances.each do |attendance|
          if attendance.attendance == "Present"
            temp = 1
          else
            temp = 0
          end
        running_total=running_total + temp
      end

    count = @teacher.attendances.count.to_f
    present = running_total.to_f

    @attendance = (present/count*100).round(0)

  end

  def new
    @teacher = Teacher.new
    @networks = current_user.networks
  end

  def create
    @school = School.new
    @school.network_id = params[:network_id]
    @school.name = params[:school_id]
    @school.save

    @teacher = Teacher.new
    @teacher.network_id = params[:network_id]
    @teacher.name = params[:name]
    @teacher.school_id = School.find_by({:name => params[:school_id]}).id
    @teacher.address = params[:address]
    @teacher.phone_number = params[:phone_number]
    @teacher.avatar = params[:avatar]

    puts "teacher saved"

    if @teacher.save
      redirect_to "/teachers", :notice => "Teacher created successfully."
    else
      render 'new'
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
    @networks = current_user.networks
    @schools = current_user.schools
  end

  def update
    @networks = current_user.networks
    @schools = current_user.schools

    @teacher = Teacher.find(params[:id])

    @teacher.network_id = params[:network_id]
    @teacher.name = params[:name]
    @teacher.school_id = params[:school_id]
    @teacher.address = params[:address]
    @teacher.phone_number = params[:phone_number]

    @test1 = School.find_by({ :id => params[:school_id]}).network_id
    @test2 = params[:network_id]

    if School.find_by({ :id => params[:school_id]}).network_id.to_s != params[:network_id].to_s
      redirect_to "/teachers/#{@teacher.id}/edit", :alert => "The school you specified is not in your selected network. Please try again."
    elsif @teacher.save
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

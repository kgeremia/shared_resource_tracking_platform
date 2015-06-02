class AttendancesController < ApplicationController
  def index
    @attendances = current_user.attendances
  end

  def show
    @attendance = Attendance.find(params[:id])
  end

  def new
    @attendance = Attendance.new
  end

  def create
    @attendance = Attendance.new
    @attendance.meeting_id = params[:meeting_id]
    @attendance.teacher_id = params[:teacher_id]
    @attendance.attendance = params[:attendance]
    @attendance.note = params[:note]
    @attendance.theme_id = params[:theme_id]

    if @attendance.save
      redirect_to "/attendances", :notice => "Attendance created successfully."
    else
      render 'new'
    end
  end

  def edit
    @attendance = Attendance.find(params[:id])
  end

  def update
    @attendance = Attendance.find(params[:id])

    @attendance.meeting_id = params[:meeting_id]
    @attendance.teacher_id = params[:teacher_id]
    @attendance.attendance = params[:attendance]
    @attendance.note = params[:note]
    @attendance.theme_id = params[:theme_id]

    if @attendance.save
      redirect_to "/attendances", :notice => "Attendance updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @attendance = Attendance.find(params[:id])

    @attendance.destroy

    redirect_to "/attendances", :notice => "Attendance deleted."
  end
end

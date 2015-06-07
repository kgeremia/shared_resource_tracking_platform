class MeetingsController < ApplicationController
  def index
    #@meetings = Meeting.all
    @meetings = current_user.meetings
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

  def new
    @meeting = Meeting.new
    @networks = current_user.networks
    @teachers = Teacher.where({ :network_id => params[:network_id]})

  end

  def create
    @networks = current_user.networks
    @teachers = Teacher.where({ :network_id => params[:network_id]})
    #Network.where({ :user_id => current_user.id })

    @meeting = Meeting.new
    @meeting.network_id = params[:network_id]
    @meeting.met_on = params[:met_on]

    if @meeting.met_on == nil
      redirect_to "/meetings/new", :notice => "Please enter the date of the meeting before continuting."

    else

      if @meeting.save

        @teachers.each do |teacher|
          a=Attendance.new
          a.meeting_id = @meeting.id
          a.teacher_id = teacher.id
          a.attendance = "Present"
          a.note = "test 2"
          a.theme_id = ""

          a.save
        end


        redirect_to "/attendances/#{@meeting.network_id}/#{@meeting.id}/edit_all", :notice => "Meeting created successfully. Now please record attendance."

      else
        render 'new'
      end

    end

  end

  def edit
    @meeting = Meeting.find(params[:id])
  end

  def update
    @meeting = Meeting.find(params[:id])

    @meeting.network_id = params[:network_id]
    @meeting.met_on = params[:met_on]

    if @meeting.save
      redirect_to "/meetings", :notice => "Meeting updated successfully."
    else
      render 'edit'
    end
  end


  def destroy
    @meeting = Meeting.find(params[:id])

    @meeting.destroy

    redirect_to "/meetings", :notice => "Meeting deleted."
  end
end

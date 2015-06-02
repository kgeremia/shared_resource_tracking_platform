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
  end

  def create
    @meeting = Meeting.new
    @meeting.network_id = params[:network_id]
    @meeting.met_on = params[:met_on]

    if @meeting.save
      redirect_to "/meetings", :notice => "Meeting created successfully."
    else
      render 'new'
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

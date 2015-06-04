class Attendance < ActiveRecord::Base

  belongs_to :meeting
  belongs_to :teacher
  belongs_to :network

end

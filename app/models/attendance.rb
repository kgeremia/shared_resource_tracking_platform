class Attendance < ActiveRecord::Base

  belongs_to :meeting
  belongs_to :teacher

end

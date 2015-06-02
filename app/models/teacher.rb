class Teacher < ActiveRecord::Base

  belongs_to :school
  belongs_to :network

end

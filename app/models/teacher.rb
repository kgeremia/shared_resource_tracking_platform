class Teacher < ActiveRecord::Base

  belongs_to :school
  belongs_to :network
  has_many :attendances


end

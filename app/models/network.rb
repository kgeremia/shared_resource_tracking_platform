class Network < ActiveRecord::Base

has_many :resources
has_many :schools
#has_many :teachers, :through => :school
has_many :teachers
has_many :meetings
has_many :attendances, :through => :teacher
belongs_to :user

end

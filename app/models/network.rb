class Network < ActiveRecord::Base

has_many :resources
has_one :school
has_many :teachers, :through => :school
has_many :meetings

end

class School < ActiveRecord::Base
  has_many :teachers
  belongs_to :network
end

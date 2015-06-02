class School < ActiveRecord::Base
  has_one :teacher
  belongs_to :network
end

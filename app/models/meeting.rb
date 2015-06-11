class Meeting < ActiveRecord::Base

  has_many :attendances, :dependent => :destroy
  belongs_to :network

end

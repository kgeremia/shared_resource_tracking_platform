class Meeting < ActiveRecord::Base

  validates_uniqueness_of :met_on, :scope => :network_id

  has_many :attendances, :dependent => :destroy
  belongs_to :network

end

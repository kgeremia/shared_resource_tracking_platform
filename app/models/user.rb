class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :networks
  has_many :teachers, :through => :networks
  has_many :meetings, :through => :networks
  has_many :attendances, :through => :meetings
  has_many :schools, :through => :networks
  has_many :resources, :through => :networks

end

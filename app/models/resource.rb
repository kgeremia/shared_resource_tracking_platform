class Resource < ActiveRecord::Base
  belongs_to :theme
  belongs_to :network
end

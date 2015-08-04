class Collection < ActiveRecord::Base
  belongs_to :admin
  has_many :titles
end

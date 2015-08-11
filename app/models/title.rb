class Title < ActiveRecord::Base
  belongs_to :collection
  extend Dragonfly::Model
  dragonfly_accessor :image
end

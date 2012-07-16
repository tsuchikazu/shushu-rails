class BoardItem < ActiveRecord::Base
  belongs_to :board
  attr_accessible :image, :url
end

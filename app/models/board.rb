class Board < ActiveRecord::Base
  attr_accessible :template_id, :commet
  belongs_to :template
  has_many :board_items

  def self.new_with_initial_items
    new do |board|
      (0..3).each_with_index do |num, index|
        board.board_items.build
      end
    end
  end
end

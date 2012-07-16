class CreateBoardItems < ActiveRecord::Migration
  def change
    create_table :board_items do |t|
      t.references :board
      t.string :image
      t.string :url

      t.timestamps
    end
    add_index :board_items, :board_id
  end
end

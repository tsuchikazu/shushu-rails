class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.text :commet

      t.timestamps
    end
  end
end

class AddTemplateIdToBoard < ActiveRecord::Migration
  def change
    add_column :boards, :template_id, :integer
  end
end

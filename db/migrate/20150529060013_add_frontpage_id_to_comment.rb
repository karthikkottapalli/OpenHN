class AddFrontpageIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :frontpage_id, :integer, null: false
    add_index :comments, :frontpage_id
  end
end

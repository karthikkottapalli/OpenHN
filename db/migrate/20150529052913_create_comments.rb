class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :frontpages, index: true
      t.references :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :frontpages
    add_foreign_key :comments, :users
  end
end

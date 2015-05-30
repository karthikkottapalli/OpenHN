class CreateFrontpages < ActiveRecord::Migration
  def change
    create_table :frontpages do |t|
      t.string :title
      t.text :desc
      t.integer :upvotes

      t.timestamps null: false
    end
  end
end

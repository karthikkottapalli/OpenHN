class AddUserToFrontpages < ActiveRecord::Migration
  def change
    add_reference :frontpages, :user, index: true
    add_foreign_key :frontpages, :users
  end
end

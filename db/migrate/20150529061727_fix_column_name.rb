class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :comments, :frontpages_id, :frontpage_id
  end
end

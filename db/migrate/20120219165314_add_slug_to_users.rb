class AddSlugToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :slug, :string
    add_index :users, :slug
  end

  def self.down
    remove_column :users, :slug
  end
end

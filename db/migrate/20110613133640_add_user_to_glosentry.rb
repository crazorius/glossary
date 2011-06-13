class AddUserToGlosentry < ActiveRecord::Migration
  def self.up
    add_column :glosentries, :user, :int
  end

  def self.down
    remove_column :glosentries, :user
  end
end

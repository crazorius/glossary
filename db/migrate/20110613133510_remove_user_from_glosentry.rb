class RemoveUserFromGlosentry < ActiveRecord::Migration
  def self.up
    remove_column :glosentries, :user
  end

  def self.down
    add_column :glosentries, :user, :string
  end
end

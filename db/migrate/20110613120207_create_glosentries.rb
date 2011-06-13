class CreateGlosentries < ActiveRecord::Migration
  def self.up
    create_table :glosentries do |t|
      t.string :keyword, :limit => 64, :null => false 
      t.text :explanation

      t.timestamps
    end
  end

  def self.down
    drop_table :glosentries
  end
end

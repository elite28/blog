class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :name
      t.string :contact
      t.text :content
      t.integer :post_id
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end

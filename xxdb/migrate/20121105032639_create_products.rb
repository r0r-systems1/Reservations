class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, :null => false
      t.text :description, :null => false
      t.string :image_url, :null => false
      t.decimal :price, :precision => 8, :scale =>2

      t.timestamps
    end
  end
  
  def self.down
  drop_table :products
  end
  
end

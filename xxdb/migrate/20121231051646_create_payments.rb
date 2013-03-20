class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :name, :limit => 35, :null => false
      t.string :address, :limit => 60, :null => false
      t.string :locality, :limit => 25, :null => false
      t.string :state, :limit => 5, :null => false
      t.string :country, :limit => 25, :null => false
      t.string :postcode,:limit=> 7, :null => false
      t.string :phone, :limit => 16, :null => false
      t.integer :paymt_amount,:limit=> 2, :null => false
      t.string :paymt_type, :limit => 20, :null => false
      t.string :paymt_number, :limit => 35, :null => false

      t.timestamps
    end
    
    add_index :payments, :name
    add_index :payments, :state
  end
  
   def self.down 
   drop_table :payments
   end
   
end

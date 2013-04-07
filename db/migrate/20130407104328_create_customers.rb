class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :age, :null =>false
      t.string :gender, :null =>false
      t.string :fname, :null =>false
      t.string :lname, :null =>false
      t.string :eck_id, :null =>false
      t.string :address, :null =>false
      t.string :state, :null =>false
      t.string :country, :null =>false
      t.string :contact, :null =>false
      t.string :designation, :null =>false
      t.integer :donation, :null =>false

      t.timestamps
    end
  end
end

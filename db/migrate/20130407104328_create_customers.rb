class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :age
      t.string :gender
      t.string :fname
      t.string :lname
      t.string :eck_id
      t.string :address
      t.string :state
      t.string :country
      t.string :contact
      t.string :designation
      t.integer :donation

      t.timestamps
    end
  end
end

class DropTableCustomers < ActiveRecord::Migration
  def up
  drop_table :customers
  end

  def down
  
  end
end

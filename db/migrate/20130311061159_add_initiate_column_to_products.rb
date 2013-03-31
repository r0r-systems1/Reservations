class AddInitiateColumnToProducts < ActiveRecord::Migration
  def up 
  change_table :products do |t|
    t.string :initiate, :null =>false
  end
end

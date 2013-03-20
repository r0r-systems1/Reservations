class AddInitiateColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :initiate, :string
  end
end

class CreateProductMemberTypes < ActiveRecord::Migration
  def change
    create_table :product_member_types do |t|
      t.integer :mtype_id, :null =>false
      t.integer :prodtype_id, :null =>false

      t.timestamps
    end
  end
end

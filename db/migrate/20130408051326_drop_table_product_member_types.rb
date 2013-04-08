class DropTableProductMemberTypes < ActiveRecord::Migration
  def up
  drop_table :product_member_types
  end

  def down
  raise ActiveRecord::IrreversibleMigration
  end
end

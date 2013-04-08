class DropTableMemberTypes < ActiveRecord::Migration
  def up
  drop_table :member_types
  end

  def down
  raise ActiveRecord::IrreversibleMigration
  end
end

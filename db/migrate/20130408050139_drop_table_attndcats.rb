class DropTableAttndcats < ActiveRecord::Migration
  def up
  drop_table :attndcats
  end

  def down
  raise ActiveRecord::IrreversibleMigration
  end
end

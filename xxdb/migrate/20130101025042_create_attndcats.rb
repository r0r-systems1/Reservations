class CreateAttndcats < ActiveRecord::Migration
  def change
    create_table :attndcats do |t|
      t.integer :attendee_id, :null => false
      t.integer :eas_type, :null => false

      t.timestamps
    end
  end
end

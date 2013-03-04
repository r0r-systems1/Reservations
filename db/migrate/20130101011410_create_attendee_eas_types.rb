class CreateAttendeeEasTypes < ActiveRecord::Migration
  def change
    create_table :attendee_eas_types do |t|
      t.integer :eas_types_id, :null => false
      t.integer :attendee_id, :null => false

      t.timestamps
    end
  end
end

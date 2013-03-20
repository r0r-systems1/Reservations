class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :name, :null => false, :limit => 80
      t.string :eck_id, :null => false, :limit => 9
      t.string :phone, :null => false, :limit => 16

      t.timestamps
    end
  end
end

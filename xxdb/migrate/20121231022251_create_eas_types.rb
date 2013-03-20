class CreateEasTypes < ActiveRecord::Migration
  def change
    create_table :eas_types do |t|
      t.string :name, :null => false
      t.integer :early, :null => false
      t.integer :normal, :null => false

      t.timestamps
    end
  end
end

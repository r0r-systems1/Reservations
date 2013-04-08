class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :name
      t.string :eck_id
      t.integer :age
      t.integer :seminar
      t.integer :hi_conf
      t.integer :YF_campout
      t.integer :total

      t.timestamps
    end
  end
end

class CreateMemberTypes < ActiveRecord::Migration
  def change
    create_table :member_types do |t|
      t.string :m_type, :null =>false

      t.timestamps
    end
  end
end

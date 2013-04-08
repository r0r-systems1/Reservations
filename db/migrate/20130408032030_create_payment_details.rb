class CreatePaymentDetails < ActiveRecord::Migration
  def change
    create_table :payment_details do |t|
      t.string :address
      t.string :suburb
      t.string :state
      t.string :pcode
      t.string :country
      t.string :email
      t.string :pay_by
      t.string :card_number
      t.string :expiry_date
      t.string :Name_on_Card
      t.integer :Donation

      t.timestamps
    end
  end
end

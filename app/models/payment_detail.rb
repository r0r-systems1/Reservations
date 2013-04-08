class PaymentDetail < ActiveRecord::Base
  attr_accessible :Donation, :Name_on_Card, :address, :card_number, :country, :email, :expiry_date, :pay_by, :pcode, :state, :suburb

  has_many :line_items
  has_one :cart
  
  validates :Donation, :numericality => true
  validates :Name_on_Card, :length => { :maximum => 30 }
  validates :address, :country, :locality, :phone, :postcode, :state, :presence =>true
  validates :card_number, :presence => {:message => 'card number: 0000 0000 0000 0000.'}
  validates :country, :length => { :maximum => 15 }
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
  validates :expiry_date, :length => { :maximum => 8 }
  validates :pay_by, :presence => {:message => 'Payment Method: Visa, Mastercard, etc.'}
  validates :pcode, :length => { :maximum => 16 }, :numericality => true
  validates :state, :length => { :maximum => 10 }, :exclusion => { :in => %w(admin superuser) }
  validates :suburb, :length => { :maximum => 30 }, :exclusion => { :in => %w(admin superuser) }
  
  

end

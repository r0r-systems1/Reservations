class PaymentDetail < ActiveRecord::Base
  attr_accessible :Donation, :Name_on_Card, :address, :card_number, :country, :email, :expiry_date, :pay_by, :pcode, :state, :suburb

  
  validates_presence_of :Donation, :numericality => true
  validates_presence_of :Name_on_Card, :length => { :maximum => 30 }
  validates_presence_of :address, :country, :locality, :phone, :postcode, :state, :presence =>true
  validates :card_number, :presence => {:message => 'card number: 0000 0000 0000 0000.'}
  validates_presence_of :country, :length => { :maximum => 15 }
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
  validates_presence_of :expiry_date, :length => { :maximum => 8 }
  validates_presence_of :pay_by, :presence => {:message => 'Payment Method: Visa, Mastercard, etc.'}
  validates :pcode, :length => { :maximum => 16 }, :numericality => true
  validates_presence_of :state, :length => { :maximum => 10 }, :exclusion => { :in => %w(admin superuser) }
  validates :suburb, :length => { :maximum => 30 }, :exclusion => { :in => %w(admin superuser) }
  
  belongs_to :name
  has_many :names, :dependent => :destroy
  has_one :cart
  has_many :eas_types
  has_many :line_items

end

class Payment < ActiveRecord::Base
  attr_accessible :address, :country, :locality, :name, :paymt_amount, :paymt_number, :paymt_type, :phone, :postcode, :state
  
  has_many :attendee_eas_types
  has_many :attendees, :through => :attendee_eas_types
  has_many :line_items
  has_one :cart
  
  validates :address, :country, :locality, :phone, :postcode, :state, :presence =>true
  
  validates  :name, :length => { :maximum => 30 }, :exclusion => { :in => %w(admin superuser) }
  
  validates  :state, :length => { :maximum => 6 }, :exclusion => { :in => %w(admin superuser) }
  
  validates  :country, :length => { :maximum => 15 }, :exclusion => { :in => %w(admin superuser) }
  
  validates :paymt_amount, :numericality => true
  
  validates  :paymt_number, :presence => {:message => 'Chq, Visa or Bank Transfer number.'}
  
  validates :paymt_type, :presence => {:message => 'Payment Method: Visa, Mastercard, etc.'}, :exclusion => { :in => %w(admin superuser) }
  
  validates :phone, :length => { :maximum => 16 }, :numericality => true
  
end

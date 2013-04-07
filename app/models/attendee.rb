class Attendee < ActiveRecord::Base
  attr_accessible :eck_id, :name, :phone
  
  validates :eck_id, :name, :phone, :presence => true
  has_many :products
  has_one :cart
  has_many :attndcats
  has_many :eas_types, :through => :attndcats
  has_one :payment
end

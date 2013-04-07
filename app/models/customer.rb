class Customer < ActiveRecord::Base
  attr_accessible :address, :age, :contact, :country, :designation, :donation, :eck_id, :fname, :gender, :lname, :state

  validates :age, :inclusion => { :in => 0..99 }
  validates :gender, :inclusion => %w(male female)
  validates :address, :presence => true, :length => { :maximum => 55 }
  validates :contact, :presence => true, :length => { :maximum => 16 }
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
  validates :designation, :presence => true, :length => { :maximum => 15 }
  validates :donation, :presence => true, :numericality => {:greater_than => 0}
  validates :eck_id, :presence => true, :uniqueness => true
  validates :fname, :presence => true, :length => { :maximum => 15 }, :exclusion => { :in => %w(admin superuser) }
  validates :lname, :presence => true, :length => { :maximum => 15 }, :exclusion => { :in => %w(admin superuser) }
  validates :state, :presence => true, :length => { :maximum => 3 }
  
  has_one :cart
  has_one :payment
  has_many :line_items
  has_many :products
end

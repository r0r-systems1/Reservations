class Customer < ActiveRecord::Base
  attr_accessible :address, :age, :contact, :country, :designation, :donation, :eck_id, :fname, :gender, :lname, :state
end

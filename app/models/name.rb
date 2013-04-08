class Name < ActiveRecord::Base
  attr_accessible :YF_campout, :age, :eck_id, :hi_conf, :name, :seminar, :total
  Validates :YF_campout, 
  Validates :age, 
  Validates :eck_id, 
  Validates :hi_conf, 
  Validates :name, 
  Validates :seminar,
  Validates :total
  
  has_one :payment_detail
  has_many :eas_types
  has_many :line_items
  
end

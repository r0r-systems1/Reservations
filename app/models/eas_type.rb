class EasType < ActiveRecord::Base
  attr_accessible :early, :name, :normal
  
  validates :name, :presence => true, :length => { :maximum => 35 }
  validates :early, :numericality => {:greater_than_or_equal_to =>0.01}
  validates :normal, :numericality => {:greater_than_or_equal_to =>0.01}
  
  belongs_to :attendee
  

end

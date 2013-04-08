class Name < ActiveRecord::Base
  attr_accessible :YF_campout, :age, :eck_id, :hi_conf, :name, :seminar, :total
  validates :YF_campout,  :numericality => true
  validates :age, :numericality => true
  validates_presence_of :eck_id, :length => { :maximum => 12 }
  validates :hi_conf, :numericality => true
  validates_presence_of :name, :length => { :maximum => 30 }, :exclusion => { :in => %w(admin superuser) }
  validates :seminar, :numericality => true
  validates :total, :numericality => true
  
  has_one :payment_detail
  has_one :cart
  has_many :eas_types
  has_many :line_items
  
  def total_of_donations
       @sum_seminar = :hi_conf + :seminar
       @sum_all = :hi_conf + :seminar + :YF_campout
   end
  
end

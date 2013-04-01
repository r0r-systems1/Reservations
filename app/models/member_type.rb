class MemberType < ActiveRecord::Base
  attr_accessible :m_type
  validates :m_type, :presence => true
  has_many :product_member_types
  has_many :products, :through => :product_member_types
end

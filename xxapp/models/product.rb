class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  default_scope :order => 'title'
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
   
  validates :title, :description, :image_url, :presence => true
  validates :image_url, :format => {:with => %r{\.(gif|jpg|jpeg|png)$}i, :message => 'must be a URL for gif, jpg or png image'
  }
  validates :price, :numericality => {:greater_than_or_equal_to =>0.01} ## checked against the /test/functional/product_test.rb
  validates :title, :uniqueness =>true
  

  
end
 private
   # ensure that there are no line items referencing this product

def ensure_not_referenced_by_any_line_item
   if line_items.empty?
     return true
   else
     errors.add(:base, 'Line Item Pesent')
     return false
   end
end

class Product < ActiveRecord::Base
  attr_accessible :address, :adult_price, :contact, :description, :event_date, :event_time, :event_type, :fam_price, :image_url, :initiate, :num_days, :pens_price, :quote, :quote_auth, :quote_ref, :title, :venue, :youth_price
    
   validates :title, :length => { :maximum => 45 }
	validates :event_type, :length => { :maximum => 45 }
	validates :description, :length => { :maximum => 1000 }
	validates :contact, :length => { :maximum => 45 }
	validates :address, :length => { :maximum => 45 }
	validates :quote, :length => { :maximum => 1000 }
	validates :quote_auth, :length => { :maximum => 30}
	validates :quote_ref, :length => { :maximum => 120 } 
   validates :initiate, :length => { :maximum => 26 }
      
    default_scope :order => 'title'
    has_many :line_items
    before_destroy :ensure_not_referenced_by_any_line_item
    
    has_many :product_member_types
    has_many :member_types, :through => :product_member_types
    
#    private
# ensure that there are no line items referencing this product

def ensure_not_referenced_by_any_line_item
		if line_items.count.zero?
	  return true
	else
		errors.add(:base, 'Line Items present')
	  return false
	end
end
    
end

class LineItem < ActiveRecord::Base
  attr_accessible :product, :cart_id, :product_id, :updated_at, :created_at
  belongs_to :product
  belongs_to :cart
end

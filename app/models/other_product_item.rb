class OtherProductItem < ApplicationRecord
  belongs_to :other_product
  belongs_to :order_item
end

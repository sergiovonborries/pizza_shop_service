class OtherProductItem < ApplicationRecord
  belongs_to :other_product
  has_many :order_items, as: :orderable
end

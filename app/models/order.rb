class Order < ApplicationRecord
    has_many :order_items
    has_one :delivery
    accepts_nested_attributes_for :delivery, :order_items
end

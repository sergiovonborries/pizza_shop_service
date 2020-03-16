FactoryBot.define do
  factory :order_item do
    quantity { 1 }
    order { nil }
    orderable_id { 1 }
    orderable_type { "MyString" }
  end
end

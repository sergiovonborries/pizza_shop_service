FactoryBot.define do
  factory :pizza_item do
    cheese { 1 }
    sauce { 1 }
    crust { 1 }
    custom_slices { 1 }
    pizza_size { nil }
  end
end

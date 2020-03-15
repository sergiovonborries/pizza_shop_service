class PizzaSizeSerializer < ActiveModel::Serializer
  attributes :id, :description, :default_slices
end

class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :orderable_id, :orderable_type
  belongs_to :orderable

  class << self
    def serializer_for(model, options)
      return PizzaItemSerializer if model.class == PizzaItem
      return OtherProductItemSerializer if model.class == OtherProductItem

      super
    end
  end
end

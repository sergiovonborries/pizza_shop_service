class PizzaProductionProcessSerializer < ActiveModel::Serializer
  attributes :id, :minutes
  attribute :name do
    object.production_process.name
  end
end

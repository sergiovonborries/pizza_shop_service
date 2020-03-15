require "rails_helper"

RSpec.describe PizzaItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pizza_items").to route_to("pizza_items#index")
    end

    it "routes to #show" do
      expect(get: "/pizza_items/1").to route_to("pizza_items#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pizza_items").to route_to("pizza_items#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pizza_items/1").to route_to("pizza_items#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pizza_items/1").to route_to("pizza_items#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pizza_items/1").to route_to("pizza_items#destroy", id: "1")
    end
  end
end

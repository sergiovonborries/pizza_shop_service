require "rails_helper"

RSpec.describe OtherProductItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/other_product_items").to route_to("other_product_items#index")
    end

    it "routes to #show" do
      expect(get: "/other_product_items/1").to route_to("other_product_items#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/other_product_items").to route_to("other_product_items#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/other_product_items/1").to route_to("other_product_items#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/other_product_items/1").to route_to("other_product_items#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/other_product_items/1").to route_to("other_product_items#destroy", id: "1")
    end
  end
end

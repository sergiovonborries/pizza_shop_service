require "rails_helper"

RSpec.describe OtherProductsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/other_products").to route_to("other_products#index")
    end

    it "routes to #show" do
      expect(get: "/other_products/1").to route_to("other_products#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/other_products").to route_to("other_products#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/other_products/1").to route_to("other_products#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/other_products/1").to route_to("other_products#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/other_products/1").to route_to("other_products#destroy", id: "1")
    end
  end
end

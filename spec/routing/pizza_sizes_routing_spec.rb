require "rails_helper"

RSpec.describe Api::V1::PizzaSizesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/v1/pizza_sizes").to route_to("api/v1/pizza_sizes#index")
    end

    it "routes to #show" do
      expect(get: "/api/v1/pizza_sizes/1").to route_to("api/v1/pizza_sizes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/api/v1/pizza_sizes").to route_to("api/v1/pizza_sizes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/api/v1/pizza_sizes/1").to route_to("api/v1/pizza_sizes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/api/v1/pizza_sizes/1").to route_to("api/v1/pizza_sizes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/api/v1/pizza_sizes/1").to route_to("api/v1/pizza_sizes#destroy", id: "1")
    end
  end
end

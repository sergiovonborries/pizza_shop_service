require "rails_helper"

RSpec.describe PizzaSizesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pizza_sizes").to route_to("pizza_sizes#index")
    end

    it "routes to #show" do
      expect(get: "/pizza_sizes/1").to route_to("pizza_sizes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pizza_sizes").to route_to("pizza_sizes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pizza_sizes/1").to route_to("pizza_sizes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pizza_sizes/1").to route_to("pizza_sizes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pizza_sizes/1").to route_to("pizza_sizes#destroy", id: "1")
    end
  end
end

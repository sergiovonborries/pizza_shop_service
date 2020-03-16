require "rails_helper"

RSpec.describe ProductionProcessesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/production_processes").to route_to("production_processes#index")
    end

    it "routes to #show" do
      expect(get: "/production_processes/1").to route_to("production_processes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/production_processes").to route_to("production_processes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/production_processes/1").to route_to("production_processes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/production_processes/1").to route_to("production_processes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/production_processes/1").to route_to("production_processes#destroy", id: "1")
    end
  end
end

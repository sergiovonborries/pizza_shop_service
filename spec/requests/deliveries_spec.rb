require 'rails_helper'

RSpec.describe "/deliveries", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Delivery. As you add validations to Delivery, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # DeliveriesController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }

  describe "GET /index" do
    it "renders a successful response" do
      Delivery.create! valid_attributes
      get deliveries_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      delivery = Delivery.create! valid_attributes
      get delivery_url(delivery), as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Delivery" do
        expect {
          post deliveries_url,
               params: { delivery: valid_attributes }, headers: valid_headers, as: :json
        }.to change(Delivery, :count).by(1)
      end

      it "renders a JSON response with the new delivery" do
        post deliveries_url,
             params: { delivery: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Delivery" do
        expect {
          post deliveries_url,
               params: { delivery: invalid_attributes }, as: :json
        }.to change(Delivery, :count).by(0)
      end

      it "renders a JSON response with errors for the new delivery" do
        post deliveries_url,
             params: { delivery: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested delivery" do
        delivery = Delivery.create! valid_attributes
        patch delivery_url(delivery),
              params: { delivery: invalid_attributes }, headers: valid_headers, as: :json
        delivery.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the delivery" do
        delivery = Delivery.create! valid_attributes
        patch delivery_url(delivery),
              params: { delivery: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq("application/json")
      end
    end

    context "with invalid parameters" do
      it "renders a JSON response with errors for the delivery" do
        delivery = Delivery.create! valid_attributes
        patch delivery_url(delivery),
              params: { delivery: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested delivery" do
      delivery = Delivery.create! valid_attributes
      expect {
        delete delivery_url(delivery), headers: valid_headers, as: :json
      }.to change(Delivery, :count).by(-1)
    end
  end
end

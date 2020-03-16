module Api::V1
  class OtherProductItemsController < ApplicationController
    before_action :set_other_product_item, only: [:show, :update, :destroy]

    # GET /other_product_items
    def index
      @other_product_items = OtherProductItem.all

      render json: @other_product_items
    end

    # GET /other_product_items/1
    def show
      render json: @other_product_item
    end

    # POST /other_product_items
    def create
      @other_product_item = OtherProductItem.new(other_product_item_params)

      if @other_product_item.save
        render json: @other_product_item, status: :created, location: @other_product_item
      else
        render json: @other_product_item.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /other_product_items/1
    def update
      if @other_product_item.update(other_product_item_params)
        render json: @other_product_item
      else
        render json: @other_product_item.errors, status: :unprocessable_entity
      end
    end

    # DELETE /other_product_items/1
    def destroy
      @other_product_item.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_other_product_item
        @other_product_item = OtherProductItem.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def other_product_item_params
        params.require(:other_product_item).permit(:other_product_id)
      end
  end
end

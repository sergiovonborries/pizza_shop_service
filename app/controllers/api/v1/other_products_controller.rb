module Api::V1
  class OtherProductsController < ApplicationController
    before_action :set_other_product, only: [:show, :update, :destroy]

    # GET /other_products
    def index
      @other_products = OtherProduct.all

      render json: @other_products
    end

    # GET /other_products/1
    def show
      render json: @other_product
    end

    # POST /other_products
    def create
      @other_product = OtherProduct.new(other_product_params)

      if @other_product.save
        render json: @other_product, status: :created, location: @other_product
      else
        render json: @other_product.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /other_products/1
    def update
      if @other_product.update(other_product_params)
        render json: @other_product
      else
        render json: @other_product.errors, status: :unprocessable_entity
      end
    end

    # DELETE /other_products/1
    def destroy
      @other_product.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_other_product
        @other_product = OtherProduct.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def other_product_params
        params.require(:other_product).permit(:name)
      end
  end
end

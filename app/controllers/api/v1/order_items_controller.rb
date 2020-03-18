module Api::V1
  class OrderItemsController < ApplicationController
    before_action :set_order_item, only: [:show, :update, :destroy]

    # GET /order_items
    def index
      @order_items = OrderItem.all

      render json: @order_items
    end

    # GET /order_items/1
    def show
      render json: @order_item
    end

    # POST /order_items
    def create
      @order_item = OrderItem.new(order_item_params)

      if @order_item.save
        render json: @order_item, status: :ok
      else
        render json: @order_item.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /order_items/1
    def update
      if @order_item.update(order_item_params)
        render json: @order_item
      else
        render json: @order_item.errors, status: :unprocessable_entity
      end
    end

    # DELETE /order_items/1
    def destroy
      @order_item.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_order_item
        @order_item = OrderItem.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def order_item_params
        params.require(:order_item).permit(:quantity, :order_id, 
                                            other_product_item_attributes: [ :id, :other_product_id ],
                                            pizza_item_attributes: [ :id, :cheese, :sauce, :crust, :custom_slices, :pizza_size_id, :pizza_id,
                                              pizza_item_toppings_attributes: [ :id, :pizza_item_id, :topping_id ],
                                              pizza_item_ingredients_attributes: [ :id, :pizza_item_id, :ingredient_id ] ])
      end
  end
end

module Api::V1
  class OrdersController < ApplicationController
    before_action :set_order, only: [:show, :update, :destroy]

    # GET /orders
    def index
      @orders = Order.all

      render json: @orders, include: "*.*"
    end

    # GET /orders/1
    def show
      render json: @order, include: "*.*"
    end

    # POST /orders
    def create
      @order = Order.new(order_params)

      if @order.save
        render json: @order, include: "*.*", status: :ok
      else
        render json: @order.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /orders/1
    def update
      if @order.update(order_params)
        render json: @order, include: "*.*"
      else
        render json: @order.errors, status: :unprocessable_entity
      end
    end

    # DELETE /orders/1
    def destroy
      @order.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_order
        @order = Order.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def order_params
        params.require(:order).permit(:customer_name, :comment, delivery_attributes: [ :id, :address, :ask_for],
                                      order_items_attributes: [ :id, :quantity, 
                                        other_product_item_attributes: [ :id, :other_product_id ],
                                        pizza_item_attributes: [ :id, :cheese, :sauce, :crust, :custom_slices, :pizza_size_id, :pizza_id,
                                          pizza_item_toppings_attributes: [ :id, :pizza_item_id, :topping_id ],
                                          pizza_item_ingredients_attributes: [ :id, :pizza_item_id, :ingredient_id ] ]
                                        ] )
      end
  end
end

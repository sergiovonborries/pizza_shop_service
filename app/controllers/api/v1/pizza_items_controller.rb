module Api::V1 
  class PizzaItemsController < ApplicationController
    before_action :set_pizza_item, only: [:show, :update, :destroy]

    # GET /pizza_items
    def index
      @pizza_items = PizzaItem.all

      render json: @pizza_items
    end

    # GET /pizza_items/1
    def show
      render json: @pizza_item
    end

    # POST /pizza_items
    def create
      @pizza_item = PizzaItem.new(pizza_item_params)
      if @pizza_item.save
        render json: @pizza_item, status: :ok
      else
        render json: @pizza_item.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /pizza_items/1
    def update
      if @pizza_item.update(pizza_item_params)
        render json: @pizza_item
      else
        render json: @pizza_item.errors, status: :unprocessable_entity
      end
    end

    # DELETE /pizza_items/1
    def destroy
      @pizza_item.destroy
    end

    def get_cheeses
      @data = PizzaItem.cheeses
      render json: @data
    end

    def get_sauces
      @data = PizzaItem.sauces
      render json: @data
    end

    def get_crusts
      @data = PizzaItem.crusts
      render json: @data
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_pizza_item
        @pizza_item = PizzaItem.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def pizza_item_params
        params.require(:pizza_item).permit(:cheese, :sauce, :crust, :custom_slices, :pizza_size_id, :pizza_id, 
                                          pizza_item_toppings_attributes: [ :id, :pizza_item_id, :topping_id ],
                                          pizza_item_ingredients_attributes: [ :id, :pizza_item_id, :ingredient_id ] )
      end
  end
end

module Api::V1 
  class PizzaSizesController < ApplicationController
    before_action :set_pizza_size, only: [:show, :update, :destroy]

    # GET /pizza_sizes
    def index
      @pizza_sizes = PizzaSize.all

      render json: @pizza_sizes
    end

    # GET /pizza_sizes/1
    def show
      render json: @pizza_size
    end

    # POST /pizza_sizes
    def create
      @pizza_size = PizzaSize.new(pizza_size_params)

      if @pizza_size.save
        render json: @pizza_size, status: :created, location: @pizza_size
      else
        render json: @pizza_size.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /pizza_sizes/1
    def update
      if @pizza_size.update(pizza_size_params)
        render json: @pizza_size
      else
        render json: @pizza_size.errors, status: :unprocessable_entity
      end
    end

    # DELETE /pizza_sizes/1
    def destroy
      @pizza_size.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_pizza_size
        @pizza_size = PizzaSize.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def pizza_size_params
        params.require(:pizza_size).permit(:description, :default_slices)
      end
  end
end

module Api::V1 
  class ProductionProcessesController < ApplicationController
    before_action :set_production_process, only: [:show, :update, :destroy]

    # GET /production_processes
    def index
      @production_processes = ProductionProcess.all

      render json: @production_processes
    end

    # GET /production_processes/1
    def show
      render json: @production_process
    end

    # POST /production_processes
    def create
      @production_process = ProductionProcess.new(production_process_params)

      if @production_process.save
        render json: @production_process, status: :created, location: @production_process
      else
        render json: @production_process.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /production_processes/1
    def update
      if @production_process.update(production_process_params)
        render json: @production_process
      else
        render json: @production_process.errors, status: :unprocessable_entity
      end
    end

    # DELETE /production_processes/1
    def destroy
      @production_process.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_production_process
        @production_process = ProductionProcess.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def production_process_params
        params.require(:production_process).permit(:name)
      end
  end
end

class BusesController < ApplicationController
  before_action :find_bus_by_id, only: [:show]

  def index
    @buses = Bus.all 
    render json: @buses 
  end

  def show
    render json: @bus
  end

  def create
    @bus = Bus.create(bus_params)
    render json: @bus
  end

  def update
  end

  def destroy
  end

  private

  def bus_params
    params.require(:bus).permit(:tag, :driver, :current_route, :capacity)
  end

  def find_bus_by_id
    @bus = Bus.find(params[:id])
  end

end

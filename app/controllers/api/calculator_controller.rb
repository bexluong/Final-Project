class Api::CalculatorController < ApplicationController
  def index
    origin, destination = beautify_params(params[:origin], params[:destination])

    bike = Bicycle_Calculator.new(origin, destination)
    @bike_response = bike.route_details

    car = Car.new(origin, destination)
    @car_response = car.route_details

    transit = Transit.new(origin, destination)
    @transit_response = transit.route_details

    walking = Walking.new(origin, destination)
    @walking_response = walking.route_details

    respond_to do |format|
      format.json do
        render json: { bike: @bike_response,
                       car: @car_response,
                       transit: @transit_response,
                       walking: @walking_response }
      end
    end
  end

  def bike
    origin, destination = beautify_params(params[:origin], params[:destination])

    bike = Bicycle_Calculator.new(origin, destination)
    @bike_response = bike.result

    render json: @bike_response
  end

  def walking
    origin, destination = beautify_params(params[:origin], params[:destination])

    walking = Walking.new(origin, destination)
    @walking_response = walking.route_details
    render json: @walking_respons
  end

  private

  def beautify_params(origin, destination)
    [(origin.gsub! /\s+/, '+'), (destination.gsub! /\s+/, '+')]
  end
end

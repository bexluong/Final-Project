class Api::CalculatorController < ApplicationController
  def bike
    origin, destination = beautify_params(params[:origin], params[:destination])

    bike = Bicycle_Calculator.new(origin, destination)
    @bike_response = bike.metrics

    render json: @bike_response
  end

  def walking
    origin, destination = beautify_params(params[:origin], params[:destination])

    walking = Walking.new(origin, destination)
    @walking_response = walking.route_details
    render json: @walking_response
  end

  def transit
    origin, destination = beautify_params(params[:origin], params[:destination])

    transit = Transit.new(origin, destination)
    @transit_response = transit.route_details
    render json: @transit_response
  end


  def car
    origin, destination = beautify_params(params[:origin], params[:destination])

    car = Car.new(origin, destination)
    @car_response = car.route_details
    render json: @car_response
  end

  private

  def beautify_params(origin, destination)
    [(origin.gsub! /\s+/, '+'), (destination.gsub! /\s+/, '+')]
  end
end

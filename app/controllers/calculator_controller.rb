class CalculatorController < ApplicationController
  def index
  end

  def search
    origin, destination = beautify_params(params[:origin], params[:destination])

    bike_calculation(origin, destination)

    car = Car.new(origin, destination)
    car.route_details
    @car_cost = car.calculate_cost
    @car_co2 = car.calculate_co2
    @car_time = car.calculate_time

    transit = Transit.new(origin, destination)
    transit.route_details
    @transit_cost = transit.calculate_cost
    @transit_co2 = transit.calculate_co2
    @transit_time = transit.calculate_time

    walking = Walking.new(origin, destination)
    walking.route_details
    @walking_cost = walking.calculate_cost
    @walking_co2 = walking.calculate_co2
    @walking_time = walking.calculate_time

  end

  private

  def bike_calculation(origin, destination)
    bike = Bicycle_Calculator.new(origin, destination)
    bike.route_details
    @bike_cost = bike.calculate_cost
    @bike_co2 = bike.calculate_co2
    @bike_time = bike.calculate_time
  end

  def beautify_params(origin, destination)
    return (origin.gsub! /\s+/, '+'), (destination.gsub! /\s+/, '+')
  end

end

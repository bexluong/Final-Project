class CalculateController < ApplicationController
  def index
  end

  def search
    origin, destination = beautify_params(params[:origin], params[:destination])
    newcalc = Calculate.new(origin, destination)
    response = newcalc.fetch_data
    CREATE INSTANCES OF THE METHODS

      bike.calculate_bicycling_cost
      bike.calculate_bicycling_co2
      bike.calculate_bicycling_time

  end



  private
  def beautify_params(origin, destination)
    return (origin.gsub! /\s+/, '+'), (destination.gsub! /\s+/, '+')
  end

end

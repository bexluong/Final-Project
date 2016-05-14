class CalculatorController < ApplicationController
  def index
  end

  def search
    origin, destination = beautify_params(params[:origin], params[:destination])
    bike = Bicycle_Calculator.new(origin, destination)
    response = bike.fetch_data(@mode)
    # CREATE INSTANCES OF THE METHODS


  end

  private

  def beautify_params(origin, destination)
    return (origin.gsub! /\s+/, '+'), (destination.gsub! /\s+/, '+')
  end

end

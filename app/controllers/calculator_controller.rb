class CalculatorController < ApplicationController
  def index
  end

  def search(origin, destination)
    origin, destination = beautify_params(params[:origin], params[:destination])
    bike = Bicycle_Calculator.new
    bike.route_details

  end
  
  private

  def beautify_params(origin, destination)
    [(origin.gsub! /\s+/, '+'), (destination.gsub! /\s+/, '+')]
  end
end

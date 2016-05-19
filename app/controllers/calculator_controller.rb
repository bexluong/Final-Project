class CalculatorController < ApplicationController
  def index
  end

  def search
    origin, destination = beautify_params(params[:origin], params[:destination])
    bike = Bicycle_Calculator.new(origin, destination)
    bike.route_details
    render search
  end

  private

  def beautify_params(origin, destination)
    [(origin.gsub! /\s+/, '+'), (destination.gsub! /\s+/, '+')]
  end
end

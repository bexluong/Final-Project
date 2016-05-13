class CalculateController < ApplicationController
  def index
  end

  def search
    origin, destination = beautify_params(params[:origin], params[:destination])
    newcalc = Calculate.new(origin, destination)
    response = newcalc.fetch_data
  
  end



  private
  def beautify_params(origin, destination)
    return (origin.gsub! /\s+/, '+'), (destination.gsub! /\s+/, '+')
  end

end

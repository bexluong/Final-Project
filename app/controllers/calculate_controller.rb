class CalculateController < ApplicationController
  def index
  end

  def search
    originraw = params[:origin]
    @origin = originraw.gsub! /\s+/, '+'
    destinationraw = params[:destination]
    @destination = destinationraw.gsub! /\s+/, '+'
  end

end

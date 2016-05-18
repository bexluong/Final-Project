class CalculatorController < ApplicationController
  def index
  end

  def search
    bike = Bicycle_Calculator.new
    bike.route_details

  end

end

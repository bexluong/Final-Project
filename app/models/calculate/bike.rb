class Calculate_Bike < Calculate
  require "net/http"

  def initialize(origin, destination)
  super
    @mode = 'bicycling'
    @distance_in_metres = JSON.parse(@response.body)["routes"][0]["legs"][0]["distance"]["value"]
    @time_in_seconds = JSON.parse(@response.body)["routes"][0]["legs"][0]["duration"]["value"]
    @co2 = 21
    @monthly_bike_cost = 9.65

  end

  def calculate_bicycling
    @total_co2 = @distance_in_metres * @co2
    @total_time = ( time_in_seconds / 60 ) * 40 #monthly
  end

end

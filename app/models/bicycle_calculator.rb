class Bicycle_Calculator < Calculator

    require "net/http"

    def initialize(origin, destination)
    super
      @mode = 'bicycling'
      @co2 = 21
    end

    def calculate_cost
      @monthly_bike_cost = 9.65
    end

    def calculate_distance
      @total_co2 = @distance_in_metres * @co2
    end

    def calculate_time
      @total_time = ( time_in_seconds / 60 ) * 40 #monthly
    end

    def data
      @data ||= fetch_data
    end

    def route_details
      {
       distance: JSON.parse(data.body)["routes"][0]["legs"][0]["distance"]["value"],
       time:
       JSON.parse(@response.body)["routes"][0]["legs"][0]["duration"]["value"]
     }
    end

end

class Car < Calculator
    def initialize(origin, destination)
    super
      @mode = 'driving'
    end

    def calculate_cost
      litres_burned = (0.065 * (@route_deets[:distance]/1000)) * 40
      total_cost = ((litres_burned * 1.28) + 55).round(2)

    end

    def calculate_co2
      total_co2 = ((@route_deets[:distance]/1000) * 271).round
    end

    def calculate_time
      total_time = (( @route_deets[:time] * 43.33  ) / 3600).round #monthly
      #in hours
    end

    def data
      @data ||= fetch_data
      # if@data is nil then fetch_data
    end

    def route_details
      # this calls on data,
      @route_deets =
      {
       distance: JSON.parse(data.body)["routes"][0]["legs"][0]["distance"]["value"],
       time:
       JSON.parse(data.body)["routes"][0]["legs"][0]["duration"]["value"]
     }
    end

end

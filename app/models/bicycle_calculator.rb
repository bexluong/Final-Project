class Bicycle_Calculator < Calculator
  def initialize(origin, destination)
    super
    @mode = 'bicycling'
  end

  def calculate_cost
    @monthly_bike_cost = 9.65
  end

  def calculate_co2
    @total_co2 = ((@route_deets[:distance] / 1000) * 21).round
  end

  def calculate_time
    @total_time = ((@route_deets[:time] * 43.33) / 3600).round # monthly
    # in hours
  end

  def data
    @data ||= fetch_data
    # if@data is nil then fetch_data
  end

  def route_details
    # this calls on data,
    @route_deets =
      {
        distance: JSON.parse(data.body)['routes'][0]['legs'][0]['distance']['value'],
        time:
       JSON.parse(data.body)['routes'][0]['legs'][0]['duration']['value']
      }
  end
end

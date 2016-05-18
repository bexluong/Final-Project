class Bicycle_Calculator < Calculator
  def initialize(origin, destination)
    super
    @mode = 'bicycling'
  end

  def metrics
    @data_sum = {
      cost: @monthly_cost,
      time: @total_time,
      co2: @total_co2
    }

  def calculate_cost
    @monthly_cost = 9.65
  end

  def calculate_co2
    @total_co2 = ((@route_deets[:distance] / 1000) * 21).round
  end

  def calculate_time
    @total_time = ((@route_deets[:time] * 43.33) / 3600).round #
  end

  def data
    @data ||= fetch_data
  end

  def route_details
    @route_deets =
      {
        distance: JSON.parse(data.body)['routes'][0]['legs'][0]['distance']['value'],
        time:
       JSON.parse(data.body)['routes'][0]['legs'][0]['duration']['value']
      }
  end
end

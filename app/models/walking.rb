class Walking < Calculator

  def initialize(origin, destination)
  super
    @mode = 'walking'
  end

  def calculate_cost
    total_cost = 0
  end

  def calculate_co2
    total_co2 = 0
  end

  def calculate_time
    total_time = (( @route_deets[:time] * 43.33) / 3600).round   end

  def data
    @data ||= fetch_data
  end

  def route_details
    @route_deets =
    {
     distance: JSON.parse(data.body)["routes"][0]["legs"][0]["distance"]["value"],
     time:
     JSON.parse(data.body)["routes"][0]["legs"][0]["duration"]["value"]
   }
  end




end

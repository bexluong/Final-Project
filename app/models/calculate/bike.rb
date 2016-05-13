class Calculate_Bike < Calculate
  require "net/http"

  def initialize(origin, destination)
  super
    @mode = 'bicycling'
  end

  API_BASE_URL = 'https://maps.googleapis.com/maps/api/directions/json?origin=' + @origin + '&destination=' + @destination + "&mode=" + @mode + "&key=" + @key

  # def calculate_bicycling
  #   fetch_data(@mode)
  #
  #
  # def

  end
  end

class Calculator < ActiveRecord::Base
  require "net/http"

  def initialize(origin, destination)
    @origin = origin
    @destination = destination
    @key= ENV["GOOGLE_MAPS_API_KEY"]
  end

  API_BASE_URL = 'https://maps.googleapis.com/maps/api/directions/json?origin='

  def fetch_data
    url = API_BASE_URL + @origin + '&destination=' + @destination + "&mode=" + @mode + "&key=" + @key
    uri = URI.parse(URI.escape(url))
    @response = Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
      request = Net::HTTP::Get.new uri
      http.request request
    end
  end

end

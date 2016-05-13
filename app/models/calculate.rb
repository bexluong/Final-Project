class Calculate < ActiveRecord::Base
  require "net/http"

  def initialize(origin, destination)
    @origin = origin
    @destination = destination
    @key= ENV["GOOGLE_MAPS_API_KEY"]
    @response = nil

  end

  API_BASE_URL = 'https://maps.googleapis.com/maps/api/directions/json?origin='

  def fetch_data
    @mode = "bicycling"
    url = API_BASE_URL + @origin + '&destination=' + @destination + "&mode=" + @mode + "&key=" + @key
    uri = URI.parse(URI.escape(url))
    @response = Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
      request = Net::HTTP::Get.new uri
      http.request request
    end

    @response
    calculate_bicycling
  end

def calculate_bicycling
distance_in_metres = JSON.parse(@response.body["routes"][0]["legs"][0]["distance"]["value"])
time_in_minutes = JSON.parse(@response.body["routes"][0]["legs"][0]["distance"]["value"])
binding.pry
end

end

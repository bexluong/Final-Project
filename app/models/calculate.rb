class Calculate < ActiveRecord::Base
  require "net/http"



  def initialize(origin, destination)
    @origin = origin
    @destionation = destination
    @key= 'AIzaSyDaljhwqza0E_tfS7tkPupnpmDzWM47unQ'
  end

  API_BASE_URL = 'https://maps.googleapis.com/maps/api/directions/json?origin=' + @origin + '&destination=' + @destination

  def fetch_bicycle
    url =
    uri = URI(url)
    response = Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
      request = Net::HTTP::Get.new uri
      http.request request # Net::HTTPResponse object​
    end
    puts response.body

  def
    hasharray = JSON.parse(response.body)
  end
  end

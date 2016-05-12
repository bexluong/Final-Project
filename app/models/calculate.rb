class Calculate < ActiveRecord::Base
  require "net/http"

  API_BASE_URL = https://maps.googleapis.com/maps/api/directions/json?origin=
def initialize(origin, destination)
  @origin = origin
  @destionation = destination
end


def fetch
  url = "https://maps.googleapis.com/maps/api/directions/json?origin=Carrer+de+Girona,+79,+08009+Barcelona,+Spain&destination=Passatge+hort+dels+velluters,+5,+Barcelona&mode=bicycling&key=AIzaSyDaljhwqza0E_tfS7tkPupnpmDzWM47unQ"
  uri = URI(url)
  response = Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
    request = Net::HTTP::Get.new uri
    http.request request # Net::HTTPResponse object​
  end

  puts response.body


def
  hash = JSON.parse(response.body)
end
end

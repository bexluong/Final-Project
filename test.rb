require "net/http"

url = "https://maps.googleapis.com/maps/api/directions/json?origin=Carrer+de+Girona,+79,+08009+Barcelona,+Spain&destination=Passatge+hort+dels+velluters,+5,+Barcelona&mode=bicycling&key=AIzaSyDaljhwqza0E_tfS7tkPupnpmDzWM47unQ"
uri = URI(url)

response = Net::HTTP.start(uri.host, uri.port, use_ssl: true) do |http|
  request = Net::HTTP::Get.new uri
  http.request request # Net::HTTPResponse object​
end

puts response.body

hash = JSON.parse(response.body)

#
# require "net/http"
# url = "https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=40.6655101,-73.89188969999998&destinations=40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.659569%2C-73.933783%7C40.729029%2C-73.851524%7C40.6860072%2C-73.6334271%7C40.598566%2C-73.7527626%7C40.659569%2C-73.933783%7C40.729029%2C-73.851524%7C40.6860072%2C-73.6334271%7C40.598566%2C-73.7527626&key=AIzaSyDaljhwqza0E_tfS7tkPupnpmDzWM47unQ"
# uri = URI.parse(url)
# http = Net::HTTP.new(uri.host, uri.port)
# http.use_ssl = true
# # http.verify_mode = OpenSSL::SSL::VERIFY_NONE # read into this
# @data = http.get(uri.request_uri)
# @data.body

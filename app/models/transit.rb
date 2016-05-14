class Transit < Calculator
      def initialize(origin, destination)
      super
        @mode = 'transit'
      end

      def calculate_cost
        total_cost = 52.75

      end

      def calculate_co2
        total_co2 = (@route_deets[:distance]/1000) * 101
      end

      def calculate_time
        total_time = ( @route_deets[:time] * 40  ) / 3600 #monthly
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

end

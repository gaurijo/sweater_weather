class RoadtripSerializer
  def self.get_destination(from, to)
  roadtrip = RoadtripFacade.find_roadtrip(from, to)
  
    if roadtrip.traveltime.nil?
      {
      "data": {
        "id": nil,
        "type": "roadtrip",
        "attributes": {
              "start_city": from,
              "end_city": to,
              "travel_time": roadtrip.bad_route,
          }
        }
      }
    else

  {
    "data": {
      "id": nil,
      "type": "roadtrip",
      "attributes": {
            "start_city": from,
            "end_city": to,
            "travel_time": roadtrip.travelhours,
            "weather_at_eta": {
              "temperature": roadtrip.weather_at_eta,
              "conditions": roadtrip.conditions_at_eta
        }
      }
    }
  }
    end
  end
end
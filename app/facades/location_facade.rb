class LocationFacade 
  def self.find_location(search)
    location_hash = LocationService.get_location(search)
    
    first_result = location_hash[:results].first
    # require 'pry'; binding.pry 
    first_location = first_result[:locations].first
    first_coordinate = first_location[:latLng]

    lat = first_coordinate[:lat]
    long = first_coordinate[:lng]

    [lat,long]
    
  end
end
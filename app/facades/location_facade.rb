class LocationFacade 
  def self.find_location(search)
    result = LocationService.get_location(search)
    # require 'pry'; binding.pry 

    lat = result[:results][0][:locations][0][:latLng][:lat]
    long = result[:results][0][:locations][0][:latLng][:lng]

    [lat,long]
    
  end
end
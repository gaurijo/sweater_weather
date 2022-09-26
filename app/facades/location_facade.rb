class LocationFacade 
  def self.find_location(search)
    result = LocationService.get_location(search)
    # require 'pry'; binding.pry 

    #result = result of getting location by search on line 3
    #first result of that location data -> 
    #access first locations --> 
    #access first latlong coordinate --> 
    #abstract the lat and then long and return as an array of 2 elements which gets passed in as location params in the controller
    lat = result[:results][0][:locations][0][:latLng][:lat]
    long = result[:results][0][:locations][0][:latLng][:lng]

    [lat,long]
    
  end
end
class LocationFacade 
  def self.find_location(location)
    result = LocationService.get_location(location)
  end
end
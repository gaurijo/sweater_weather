class RoadtripFacade 
  def self.find_roadtrip(origin, destination)

    destination_hash = RoadtripService.get_roadtrip(origin, destination)
    # require 'pry'; binding.pry 
  end
end
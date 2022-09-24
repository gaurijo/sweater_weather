class LocationService 
  def self.conn 
    Faraday.new("http://www.mapquestapi.com") do |faraday|
      faraday.params['key'] = ENV['map_quest_api']
    end
  end

  def self.get_location(location)
    response = conn.get("/geocoding/v1/address?key=#{ENV['map_quest_api']}&location=#{location}")
    parsed = JSON.parse(response.body, symbolize_names: true)
    # require 'pry'; binding.pry 
  end
end
class RoadtripService 
  def self.conn 
    Faraday.new("http://www.mapquestapi.com") do |faraday| 
      faraday.params['key'] = ENV['map_quest_api']
      
    end
  end
  
  def self.get_roadtrip(origin, destination)
    response = conn.get("/directions/v2/route?key=#{ENV['map_quest_api']}&from=#{origin}&to=#{destination}&outFormat=json") do |faraday|
      faraday.params['from'] = origin
      faraday.params['to'] = destination
    end
    parsed = JSON.parse(response.body, symbolize_names: true)
    # require 'pry'; binding.pry 
  end
end
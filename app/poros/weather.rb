class Weather 
  attr_reader :id, 
              :datetime, 
              :sunrise, 
              :sunset, 
              :temperature, 
              :feels_like, 
              :humidity,
              :dew_point, 
              :uvi,
              :visibility, 
              :conditions,
              :icon, 
              :dt 
  def initialize(data)
    @id = nil 
    @datetime = Time.at(data[:current][:dt])
    @sunrise = Time.at(data[:current][:sunrise])
    @sunset = Time.at(data[:current][:sunset])
    @temperature = data[:current][:temp]
    @feels_like = data[:current][:feels_like]
    @humidity = data[:current][:humidity]
    @dew_point = data[:current][:dew_point]
    @uvi = data[:current][:uvi]
    @visibility = data[:current][:visibility]
    @conditions = data[:current][:weather][0][:description]
    @icon = data[:current][:weather][0][:string]
  end
end
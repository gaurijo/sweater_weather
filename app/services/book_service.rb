class BookService 
  def self.conn 
    Faraday.new("http://openlibrary.org")
  end

  def self.get_books(location)
    response = conn.get("/search.json?q=#{location}")
    parsed = JSON.parse(response.body, symbolize_names: true)
    # require 'pry'; binding.pry 
  end
end
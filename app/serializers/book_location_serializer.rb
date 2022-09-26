class BookLocationSerializer  
  def self.format_books(location, weather, books)
  # require 'pry'; binding.pry 
    # response = {
    {
      data: {
        id: nil, 
        type: "books",
        attributes: {
          destination: location,
          forecast: {
            summary: weather.first.first.conditions,
            temperature: weather.first.first.temperature
          }
        },
      total_books_found: books[1], 
      books: books.first.each do |book|
        book 
      end
      }
    }
  end
end

#   {"isbn": [book.isbn], 
      #   "title": book.title, 
      #   "publisher": [book.publisher]
      #   }
      # ]
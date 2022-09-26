class BookFacade 
  def self.get_books(location, quantity)
    json = BookService.get_books(location)

    books = []
    total_books = json[:numFound]

    json[:docs].first(quantity.to_i).map do |book| 
      books << Book.new(book)
    end
    return books, total_books
    # require 'pry'; binding.pry 
  end
end
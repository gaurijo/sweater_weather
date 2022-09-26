require 'rails_helper'

RSpec.describe BookFacade do 
  it 'returns a nested array of books based on a location and quantity and a total number of books' do 
    book = BookFacade.get_books("Denver,Co", 5)

    expect(book).to be_a(Array)
    expect(book.first[0]).to be_a(Book)
    expect(book.first.count).to eq(5)
    # require 'pry'; binding.pry 
  end
end
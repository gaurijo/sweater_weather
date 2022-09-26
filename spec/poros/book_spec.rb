require 'rails_helper'

RSpec.describe Book do 
  it "exists and has attributes" do 

    book = Book.new(isbn: [2345, 6789], title: "A Book", publisher: ["Penguin Books"])

    expect(book).to be_a(Book)
    expect(book.isbn).to eq([2345, 6789])
    expect(book.title).to eq("A Book")
    expect(book.publisher).to eq(["Penguin Books"])
  end
end
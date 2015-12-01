require './src/library'

describe "Library" do
  
  describe "#list_books" do

    it 'should print headers and list all the books inside library' do
      book1 = double("Book")
      book2 = double("Book")
      library = Library.new([book1, book2])
      expected_headers = "Available books are : \n" + "%-50s %-50s" % ["Name", "Author"] + "Year of Publication\n" + "-"*120 + "\n"

      allow(book1).to receive("to_str").and_return "book1"
      allow(book2).to receive("to_str").and_return "book2"

      expect(library.list_books).to eq(expected_headers + "book1book2")
    end
  end
end
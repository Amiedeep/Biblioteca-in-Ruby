require './src/library'

describe "Library" do

  let(:book1) { double("Book") }
  let(:book2) { double("Book") }
  let(:library) { Library.new([book1, book2]) }

  describe "#list_books" do

    it 'should print headers and list all the books inside library' do
      expected_headers = "Available books are : \n" + "%-50s %-50s" % ["Name", "Author"] + "Year of Publication\n" + "-"*120 + "\n"

      allow(book1).to receive("to_str").and_return "book1"
      allow(book2).to receive("to_str").and_return "book2"

      expect(library.list_books).to eq(expected_headers + "book1book2")
    end
  end
  
  describe '#check_out_book' do

    it 'should not delete book from available_books if book name passed is nil' do

      library.checkout_book nil
    end

    it 'should not delete book from available_books if book name does not matches' do
      expect(book1).to receive("name?").with('some random book').and_return(false)
      expect(book2).to receive("name?").with('some random book').and_return(false)

      library.checkout_book 'some random book'
    end

    it 'should delete book from available_books if book name matches' do
      expect(book1).to receive("name?").with('some random book').and_return(true)

      library.checkout_book 'some random book'
    end
  end
end
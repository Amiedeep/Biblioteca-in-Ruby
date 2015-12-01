require './src/book'

describe "Book" do

  describe "#to_str" do

    let(:book) { Book.new "The passionate programmer", "Amandeep Singh", 2010 }

    expected_string = "%-50s %-50s" % ["The passionate programmer", "Amandeep Singh"] + "2010\n"
    it 'should return formatted book in String' do
      expect(book.to_str).to eq(expected_string)
    end
  end
end
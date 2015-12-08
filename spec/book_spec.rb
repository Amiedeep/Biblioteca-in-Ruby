require './src/book'

describe "Book" do

  let(:book) { Book.new "The passionate programmer", "Amandeep Singh", 2010 }

  describe "#to_str" do

    expected_string = "%-50s %-50s" % ["The passionate programmer", "Amandeep Singh"] + "2010\n"

    it 'should return formatted book in String' do
      expect(book.to_str).to eq(expected_string)
    end
  end

  describe "#name?" do

    it 'should return true if the name passed is same as the name of book' do
      expect(book.name?('The passionate programmer')).to be_truthy
    end

    it 'should return false if the name passed is null' do
      expect(book.name?(nil)).to be_falsey
    end
  end
end
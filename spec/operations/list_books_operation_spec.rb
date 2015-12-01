require './src/operations/list_books_operation'

describe 'ListBooksOperation' do

  describe '#execute' do

    it 'should print all the books on console' do

      library = double('Library')
      list_books_operation = ListBooksOperation.new library

      expect(library).to receive("list_books").and_return("some books")
      expect(STDOUT).to receive("puts").with("\nsome books")

      list_books_operation.execute
    end
  end
end
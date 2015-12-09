require './src/interpreter'
require './src/operations/list_books_operation'
require './src/operations/check_out_book_operation'
require './src/operations/quit_operation'
require './src/operations/invalid_option_operation'

describe "Interpreter" do

  describe "#interpret" do

    before(:each) {
      @library = double("Library")
      @interpreter = Interpreter.new @library
    }

    context 'when it gets 1 as parameter' do

      it 'should return list book operation' do
        operation = @interpreter.interpret('1')

        expect(operation.class).to eq(ListBooksOperation)
      end
    end

    context 'when it gets 2 as parameter' do

      it 'should return checkout book operation' do
        operation = @interpreter.interpret('2')

        expect(operation.class).to eq(CheckOutBookOperation)
      end
    end

    context 'when it gets q as parameter' do

      it 'should return quit operation' do
        operation = @interpreter.interpret('q')

        expect(operation.class).to eq(QuitOperation)
      end
    end

    context 'when it gets invalid option as parameter' do

      it 'should return invalid option message' do
        operation = @interpreter.interpret('29')

        expect(operation.class).to eq(InvalidOptionOperation)
      end
    end
  end
end
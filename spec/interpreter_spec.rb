require './src/interpreter'

describe "Interpreter" do

  describe "#interpret" do

    before(:each) {
      @library = double("Library")
      @interpreter = Interpreter.new @library
      @kernel = double("Kernel")
    }

    context 'when it gets 1 as parameter' do

      it 'should call library for books' do
        expect(@library).to receive("list_books")

        @interpreter.interpret('1')
      end
    end

    context 'when it gets invalid option as parameter' do

      it 'should exit the system' do
        expect(@kernel).to receive("exit").with(0)
        allow(@library).to receive("list_books")

        @interpreter.interpret('29', @kernel)
      end
    end
  end
end